/**
 * Created by DEIRY on 8/11/2016.
 */

angular.module('servitecWeb', ['reporteSenalService', 'configService', 'modeloService'])
    .controller('MapCtrl', function ($scope, $timeout, $http, reporteSenalService, $interval)
    {

        var servidor = 'http://servitec.ddns.net:8000/servitecserver/index.php/ReportesRest/obtenerReportesPlataforma';
        $scope.reportes = null;

        var latLng;
        var map;
        var marcadores = [];

        angular.element(document).ready(function () {
            $scope.getReportes();

            var nav_size = $('nav').height();
            var window_size = $(window).height();
            $('#map').height(window_size - nav_size - 10);


            latLng = new google.maps.LatLng({lat: $scope.lat, lng: $scope.lng});
            $scope.mostrarMapa();

            $scope.hilo();
        });

        $scope.mostrarMapa = function () {

            $timeout(function () {
                map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 15,
                    center: {lat: 6.2518, lng: -75.5636},
                    disableDefaultUI: false,
                    scrollwheel: true
                });
                $scope.crearMarcadores($scope.reportes);
            }, 3000);
        };

        $scope.hilo = function () {
            $interval(function () {
                $scope.getReportes();
            }, 20000);
        };

        $scope.clickReporte = function(reporte)
        {
            $scope.eliminarMarcadores(null);
            $scope.crearMarcador(reporte);
            var lat = parseFloat(reporte.latitud);
            var lng = parseFloat(reporte.longitud)
            latLng = new google.maps.LatLng({lat: lat, lng: lng});
            map.panTo(latLng);
            console.log(reporte);
        };


        $scope.getReportes = function () {
            $http.get(servidor)
                .success(function (data) {
                    $scope.reportes = data;
                    reporteSenalService.setReportes(data);
                    console.log(data);
                })
                .error(function (error, status, headers, config) {
                    console.log(error);
                });
        };

        /****
         * funciones para los marcadores
         */
        $scope.crearMarcadores = function(reportes){
            marcadores = [];
            for(var i = 0; i< reportes.length;i++)
            {
                $scope.crearMarcador(reportes[i]);
            }
        };

        $scope.crearMarcador= function(reporte)
        {
            var lat = parseFloat(reporte.latitud);
            var lng = parseFloat(reporte.longitud);
            var latlon = new google.maps.LatLng({lat: lat, lng: lng});
            var marcador = new google.maps.Marker({
                draggable: false,
                position: latlon,
                map: map,
                title: reporte.id_reporte});
                marcadores.push(marcador);
        };

        $scope.eliminarMarcadores = function(map){
            for (var i = 0; i < marcadores.length;i++)
            {
                marcadores[i].setMap(map);
            }
        }


    });
