'use strict';

async function initMap() {
    //@ts-ignore
    const {Map} = await google.maps.importLibrary('maps');

    var restaurantes = Restaurants(Map);
    restaurantes.init(restaurants);
}

initMap();

var Restaurants = function (Map) {

    var _infoWindow = null;

    function init(restaurants) {
        const bounds = new google.maps.LatLngBounds();
        const map = new google.maps.Map(document.getElementById("map"), {
            minZoom: 6,
            maxZoom: 15,
            center: {lat: 41.38289, lng: 2.17743},
        });

        const markers = [];
        for (var i = 0; i < restaurants.length; i++) {
            const position = {lat: parseFloat(restaurants[i].latitude) , lng: parseFloat(restaurants[i].longitude)};
            const marker = new google.maps.Marker({position: position, map: map});
            bounds.extend(position);
            markers.push(marker);
            marker.id = i;

            marker.addListener("click", () => {
                if (_infoWindow != null) {
                    _infoWindow.close();
                }

                var id = marker.id;
                var html =
                    '<h2 class="ms-madi secondary-color">' + restaurants[id].name + '</h2>' +
                    '<p><b>Adreça:</b> ' + restaurants[id].address + '</p>' +
                    '<p><b>Última visita:</b> ' + restaurants[id].last_visit + '</p>';
                if(restaurants[id].text){
                    html += restaurants[id].text;
                }
                _infoWindow = new google.maps.InfoWindow({
                    content: html,
                    maxWidth: 300,
                    ariaLabel: restaurants[id].name
                });
                _infoWindow.open({ anchor: marker, map });
            });
        }

        new markerClusterer.MarkerClusterer({ markers, map });
        map.fitBounds(bounds);
    }

    return {
        init: init
    }

};