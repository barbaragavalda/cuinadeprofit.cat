'use strict';

const CustomMap = function (staticDomain, dictionary, Map, AdvancedMarkerElement) {

    let _infoWindow = null;

    const icons = {
        'bar-done': staticDomain + 'marker-bar-done.png',
        'bar-to-do': staticDomain + 'marker-bar-to-do.png',
        'bar-top': staticDomain + 'marker-bar-top.png',
        'restaurant-done': staticDomain + 'marker-restaurant-done.png',
        'restaurant-to-do': staticDomain + 'marker-restaurant-to-do.png',
        'restaurant-top': staticDomain + 'marker-restaurant-top.png',
        'closed': staticDomain + 'marker-closed.png'
    };

    function init(items) {
        const bounds = new google.maps.LatLngBounds();
        const map = new Map(document.getElementById('map'), {
            minZoom: 0,
            maxZoom: 17,
            center: {lat: 41.38289, lng: 2.17743},
            mapId: '5c25a3c7e5b7ba85',
            zoomControl: true,
            mapTypeControl: false,
            scaleControl: true,
            streetViewControl: false,
            rotateControl: false,
            fullscreenControl: true
        });

        const markers = [];
        for (let i = 0; i < items.length; i++) {
            const position = {lat: parseFloat(items[i].latitude), lng: parseFloat(items[i].longitude)};
            const marker = new AdvancedMarkerElement({
                position: position,
                map: map,
                content: getPin(icons[getType(items[i])], 0),
            });
            bounds.extend(position);
            markers.push(marker);
            marker.id = i;

            marker.addListener('click', () => {
                if (_infoWindow != null) {
                    _infoWindow.close();
                }

                const id = marker.id;
                let html = `
                    <div class="map-info">
                        <a href="${items[id].link}" class="secondary-color" target="_blank">
                        <h2 class="secondary-font">${items[id].name}</h2>
                    </a>`;
                if (items[id]['is_closed'] == 1) {
                    html += `<small class="badge closed secondary-bg white-color">${dictionary['closed'].toUpperCase()}</small>`;
                }
                if (isNotEmpty(items[id].image)) {
                    html += `<img src="${items[id].image}" alt="${items[id].name}" />`;
                }
                if (isNotEmpty(items[id].address)) {
                    html += `<p><b>Adreça:</b> ${items[id].address}</p>`;
                }
                if (isNotEmpty(items[id].last_visit)) {
                    html += `<p><b>Última visita:</b> ${items[id].last_visit}</p>`;
                }
                if (isNotEmpty(items[id].text)) {
                    html += `<div class="hint">${items[id].text}</div>`;
                }
                if (typeof (items[id].reviews) != 'undefined' && items[id].reviews.length > 0) {
                    const reviews = items[id].reviews;
                    html += `<ul class="reviews">`;
                    for (let j = 0; j < reviews.length; j++) {
                        let scoreTable = '';
                        let classBadge = 'main-bg white-color';
                        if (reviews[j].score < 5) {
                            classBadge = 'secondary-bg black-color';
                        }
                        if (reviews[j].score >= 8) {
                            classBadge = 'tertiary-bg black-color';
                        }

                        if (isNotEmpty(reviews[j].price) || isNotEmpty(reviews[j].amount) || isNotEmpty(reviews[j].potatoes) || isNotEmpty(reviews[j].sauce)) {
                            scoreTable = `
                            <table>
                                <tr>
                                    <th class="grey-border ${classBadge}">${dictionary.price}</th>
                                    <th class="grey-border ${classBadge}">${dictionary.amount}</th>
                                    <th class="grey-border ${classBadge}">${dictionary.potatoes}</th>
                                    <th class="grey-border ${classBadge}">${dictionary.sauce}</th>
                                </tr>
                                <tr>
                                    <th class="grey-border">${reviews[j].price}</th>
                                    <th class="grey-border">${reviews[j].amount}</th>
                                    <th class="grey-border">${reviews[j].potatoes}</th>
                                    <th class="grey-border">${reviews[j].sauce}</th>
                                </tr>
                            </table>`;
                        }

                        html += `
                            <li>
                                <p>
                                    <small class="badge ${classBadge}"><b>${dictionary.score}:</b> ${reviews[j].score}</small>
                        `;
                        if (isNotEmpty(reviews[j].last_visit)) {
                            html += `<b>${dictionary.last_visit}:</b> ${reviews[j].last_visit}`;
                        }
                        html += `</p>`;
                        if (isNotEmpty(reviews[j].image)) {
                            html += `<img src="${reviews[j].image}" alt="${items[id].name}" />`;
                        }
                        html += scoreTable;
                        if (isNotEmpty(reviews[j].review)) {
                            html += `<p>${reviews[j].review}</p>`;
                        }
                        html += `</li>`;
                    }
                    html += `</ul>`;
                }
                html += `</div>`;
                _infoWindow = new google.maps.InfoWindow({
                    content: html,
                    maxWidth: 300,
                    ariaLabel: items[id].name,
                });
                _infoWindow.open({anchor: marker, map});
            });
        }

        let renderer = {
            render: ({count, position}) =>
                new AdvancedMarkerElement({
                    position,
                    content: getPin(staticDomain + 'marker-bar-done.png', count),
                    // adjust zIndex to be above other markers
                    zIndex: Number(google.maps.Marker.MAX_ZINDEX) + count,
                }),
        };

        new markerClusterer.MarkerClusterer({
            map: map,
            markers: markers,
            renderer: renderer,
            algorithmOptions: {
                maxZoom: 14
            }
        });
        map.fitBounds(bounds);
    }

    function getPin(imageSrc, count) {
        const pin = document.createElement('div');

        let html = '';
        if (count > 0) {
            pin.classList.add('custom-marker-big');
            html += `<span>${count}</span>`;
        } else {
            pin.classList.add('custom-marker');
        }
        html += `<img src="${imageSrc}" />`;
        pin.innerHTML = html;

        return pin;
    }

    function isNotEmpty(string) {
        return !['undefined', 'object'].includes(typeof (string)) && string !== '' && string !== 'null';

    }

    function getType(item) {
        if (item['is_closed'] == 1) {
            return 'closed';
        }

        let type = 'restaurant';
        if (item['is_restaurant'] == 0) {
            type = 'bar';
        }
        let status = 'to-do';
        if (typeof (item['id_brava_type']) === 'undefined' || item['id_brava_type'] == 3 || item['id_brava_type'] == 4) {
            status = 'done';
        }
        if (typeof (item.reviews) != 'undefined' && item.reviews.length > 0) {
            if (typeof (item.reviews[0]['score']) !== 'undefined' && item.reviews[0]['score'] >= 9) {
                status = 'top';
            }
        }
        return type + '-' + status;
    }

    return {
        init: init
    }

};

async function initMap() {
    const {Map} = await google.maps.importLibrary('maps');
    const {AdvancedMarkerElement} = await google.maps.importLibrary('marker');

    let map = CustomMap(staticDomain, dictionary, Map, AdvancedMarkerElement);
    map.init(items);
}

initMap();