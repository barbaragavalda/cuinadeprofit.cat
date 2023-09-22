'use strict';

async function initMap() {
    //@ts-ignore
    const {Map} = await google.maps.importLibrary('maps');

    var map = CustomMap(staticDomain, dictionary, Map);
    map.init(items);
}

initMap();

var CustomMap = function (staticDomain, dictionary, Map) {

    var _infoWindow = null;

    const icons = {
        'bar-done': staticDomain + 'marker-bar-done.png',
        'bar-to-do': staticDomain + 'marker-bar-to-do.png',
        'restaurant-done': staticDomain + 'marker-restaurant-done.png',
        'restaurant-to-do': staticDomain + 'marker-restaurant-to-do.png',
        'closed': staticDomain + 'marker-closed.png'
    };

    function init(items) {
        const bounds = new google.maps.LatLngBounds();
        const map = new google.maps.Map(document.getElementById("map"), {
            minZoom: 0,
            maxZoom: 17,
            center: {lat: 41.38289, lng: 2.17743},
            styles: [
                {
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#E9ECEF"
                        }
                    ]
                },
                {
                    "elementType": "labels.icon",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#182F41"
                        }
                    ]
                },
                {
                    "elementType": "labels.text.stroke",
                    "stylers": [
                        {
                            "color": "#E9ECEF"
                        }
                    ]
                },
                {
                    "featureType": "administrative.land_parcel",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#bdbdbd"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#eeeeee"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#757575"
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#e5e5e5"
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#9e9e9e"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        }
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#757575"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#dadada"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#182F41"
                        }
                    ]
                },
                {
                    "featureType": "road.local",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#9e9e9e"
                        }
                    ]
                },
                {
                    "featureType": "transit.line",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#e5e5e5"
                        }
                    ]
                },
                {
                    "featureType": "transit.station",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#eeeeee"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#c9c9c9"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#9e9e9e"
                        }
                    ]
                }
            ]
        });

        const markers = [];
        for (var i = 0; i < items.length; i++) {
            const position = {lat: parseFloat(items[i].latitude), lng: parseFloat(items[i].longitude)};
            const marker = new google.maps.Marker({
                position: position,
                map: map,
                icon: {
                    scaledSize: new google.maps.Size(44, 50),
                    url: icons[getType(items[i])]
                }
            });
            bounds.extend(position);
            markers.push(marker);
            marker.id = i;

            marker.addListener("click", () => {
                if (_infoWindow != null) {
                    _infoWindow.close();
                }

                var id = marker.id;
                var html = '<div class="map-info">' +
                    '<a href="' + items[id].link + '" class="secondary-color" target="_blank">' +
                    '   <h2 class="ms-madi">' + items[id].name + '</h2>' +
                    '</a>';
                if (items[id]['is_closed'] == 1) {
                    html += '<small class="badge closed secondary-bg white-color">TANCAT</small>';
                }
                if (typeof (items[id].image) != 'undefined' && items[id].image !== '') {
                    html += '<img src="' + items[id].image + '" />';
                }
                if (typeof (items[id].address) != 'undefined' && items[id].address !== '') {
                    html += '<p><b>Adreça:</b> ' + items[id].address + '</p>';
                }
                if (typeof (items[id].last_visit) != 'undefined' && items[id].last_visit !== '') {
                    html += '<p><b>Última visita:</b> ' + items[id].last_visit + '</p>';
                }
                if (typeof (items[id].text) != 'undefined' && items[id].text) {
                    html += items[id].text;
                }
                if (typeof (items[id].reviews) != 'undefined' && items[id].reviews.length > 0) {
                    var reviews = items[id].reviews;
                    html += '<ul class="reviews">';
                    for (var j = 0; j < reviews.length; j++) {
                        var classBadge = 'main-bg white-color';
                        if (reviews[j].score < 5) {
                            classBadge = 'secondary-bg black-color';
                        }
                        if (reviews[j].score >= 8) {
                            classBadge = 'tertiary-bg black-color';
                        }

                        html += '<li>';
                        html += '<p>' +
                            '<small class="badge ' + classBadge + '"><b>' + dictionary.score + ':</b> ' + reviews[j].score + '</small> ' +
                            '<b>' + dictionary.last_visit + ':</b> ' + reviews[j].last_visit +
                            '</p>';
                        if (typeof (reviews[j].image) != 'undefined' && reviews[j].image !== '') {
                            html += '<img src="' + reviews[j].image + '" />';
                        }
                        html += '<table>' +
                            '<tr>' +
                            '   <th class="grey-border ' + classBadge + '">' + dictionary.price + '</th>' +
                            '   <th class="grey-border ' + classBadge + '">' + dictionary.amount + '</th>' +
                            '   <th class="grey-border ' + classBadge + '">' + dictionary.potatoes + '</th>' +
                            '   <th class="grey-border ' + classBadge + '">' + dictionary.sauce + '</th>' +
                            '</tr>' +
                            '<tr>' +
                            '   <td class="grey-border">' + reviews[j].price + '</td>' +
                            '   <td class="grey-border">' + reviews[j].amount + '</td>' +
                            '   <td class="grey-border">' + reviews[j].potatoes + '</td>' +
                            '   <td class="grey-border">' + reviews[j].sauce + '</td>' +
                            '</tr>' +
                            '</table>';
                        if (typeof (reviews[j].review) != 'undefined' && reviews[j].review !== '') {
                            html += '<p>' + reviews[j].review + '</p>';
                        }
                        html += '</li>';
                    }
                    html += '</ul>';
                }
                html += '</div>';
                _infoWindow = new google.maps.InfoWindow({
                    content: html,
                    maxWidth: 300,
                    ariaLabel: items[id].name,
                });
                _infoWindow.open({anchor: marker, map});
            });
        }

        var clusterStyles = [
            {
                textColor: 'white',
                url: staticDomain + 'marker-bar-done.png',
                height: 50,
                width: 50
            },
            {
                textColor: 'white',
                url: staticDomain + 'marker-restaurant-done.png',
                height: 50,
                width: 50
            },
            {
                textColor: 'white',
                url: staticDomain + 'marker-closed.png',
                height: 50,
                width: 50
            }
        ];
        var mcOptions = {
            gridSize: 50,
            styles: clusterStyles,
            maxZoom: 15
        };
        new markerClusterer.MarkerClusterer({markers, map, mcOptions});
        map.fitBounds(bounds);
    }

    function getType(item) {
        if (item['is_closed'] == 1) {
            return 'closed';
        }

        var type = 'restaurant';
        if (item['is_restaurant'] == 0) {
            type = 'bar';
        }
        var status = 'to-do';
        if (typeof (item['id_brava_type']) === 'undefined' || item['id_brava_type'] == 3) {
            status = 'done';
        }
        return type + '-' + status;
    }

    return {
        init: init
    }

};