/**
 * Created by DEIRY on 8/11/2016.
 */

angular.module('servitecWeb', ['reporteSenalService', 'configService', 'modeloService'])
    .controller('MapCtrl', function ($scope, $timeout, $http, reporteSenalService, $interval)
    {

        var servidor = 'http://servitec.ddns.net:8000/servitecserver/index.php/ReportesRest/obtenerReportesPlataforma';
        $scope.reportes = [{"id_reporte":"1","id_senal":"57","nombre":"Curva cerrada a la izquierda","icono":"sp-01.png",
            "latitud":"6.2643591999999995","longitud":"-75.5704351","fecha":"2016-10-14 17:12:35","foto":"null",
            "tablero":"Bueno","pedestal":"Regular","anclaje":"Regular","visibilidad":"Visible","observaciones":"intento 1",
            "accionTomar":"Mantenimiento","id_categoria":"2","name":"Se\u00f1al Preventiva"}];
        $scope.urlImgSeñales= 'img/senales/';

        var latLng;
        var map;

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
                    disableDefaultUI: true,
                    scrollwheel: true
                });
            }, 3000);

        };

        $scope.hilo = function () {
            var i = 0;
            $interval(function () {
                $scope.getReportes();
            }, 20000);
        };


        $scope.getReportes = function () {
            $http.get(servidor)
                .success(function (data) {
                    $scope.reportes = data;
                    $scope.crearMarcadores(data);
                    reporteSenalService.setReportes(data);
                    console.log(data);
                })
                .error(function (error, status, headers, config) {
                    console.log(error);
                });
        };

        $scope.crearMarcadores = function(reportes){
            for(var i = 0; i< reportes.length;i++)
            {
                $scope.crearMarcador(reportes[i]);
            }
        };

        $scope.crearMarcador= function(reporte)
        {
            var lat = parseFloat(reporte.latitud);
            var lng = parseFloat(reporte.longitud);

            console.log(lat + lng);



            var latlon = new google.maps.LatLng({lat: lat, lng: lng});
            var marcador = new google.maps.Marker({
                draggable: false,
                animation: google.maps.Animation.DROP,
                position: latlon,
                map: map,
                title: reporte.id_reporte});
        };



    });
