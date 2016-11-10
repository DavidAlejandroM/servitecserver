/**
 * Created by DEIRY on 8/11/2016.
 */


angular.module('servitecWeb', [])
    .controller('MapCtrl', function ($scope, $timeout)
    {
        var latLng;
        var map;
        angular.element(document).ready(function ()
        {
            var nav_size = $('nav').height();
            var window_size = $(window).height();
            $('#map').height(window_size - nav_size - 10);


            latLng = new google.maps.LatLng({lat: $scope.lat, lng: $scope.lng});
            $scope.mostrarMapa();

        });

        $scope.mostrarMapa = function(){

            $timeout(function(){
                map = new google.maps.Map(document.getElementById('map'),{
                    zoom: 15,
                    center: {lat: 6.2518, lng: -75.5636},
                    disableDefaultUI: true,
                    scrollwheel: true
                });
            },3000);

        };


    });
