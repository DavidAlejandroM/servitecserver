/**
 * Created by DEIRY on 8/11/2016.
 */
var map;

$( document ).ready(function() {
    document.getElementById('map').style.position = 'static';
    setTimeout(function () {
        map = new google.maps.Map(document.getElementById('map'),{
            zoom: 18,
            center: {lat: 6.2518, lng: -75.5636},
            disableDefaultUI: true,
            scrollwheel: true
        });
        console.log("hola");
    }, 3000);

});