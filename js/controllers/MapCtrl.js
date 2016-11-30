/**
 * Created by DEIRY on 8/11/2016.
 */
$(document).ready(function () {
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();
});


angular.module('servitecWeb', ['reporteSenalService', 'configService', 'modeloService'])
    .controller('MapCtrl', function ($scope, $timeout, $http, reporteSenalService, $interval) {

        var servidor = 'http://signalstreet.net/index.php/ReportesRest/obtenerReportesPlataforma';
        $scope.reportes = null;


        var latLng;
        var map;
        var marcadores = [];
        var nav_size = null;
        var window_size = null;

        angular.element(document).ready(function () {
            $scope.getReportes();
            $('.modal').modal();
            nav_size = $('nav').height();
            window_size = $(window).height();
            $('#map-container').height(window_size - nav_size - 25);
            $('#itemReporte').height(window_size - nav_size - 25);
            $('#div-info-reporte').height(window_size -nav_size -25);
            $('#div-info-reporte').hide();
            $('#itemReporte').show();


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

                var nav_size = $('nav').height();
                var window_size = $(window).height();
                $('#map-container').height(window_size - nav_size - 25);
                $('#itemReporte').height(window_size - nav_size - 25);

            }, 20000);
        };

        $scope.clickReporte = function (reporte) {

            $('#itemReporte').animate({
                width: "0"
            }, 500);
           $('#div-info-reporte').show().animate({
                width: "40%"
            }, 500);

            $timeout(function () {
                $('#itemReporte').hide();
            },500);

            $timeout(function () {
                $scope.eliminarMarcadores(null);
                $scope.reporteSeleccionado = reporte;
                $scope.crearMarcador(reporte);
                var lat = parseFloat(reporte.latitud);
                var lng = parseFloat(reporte.longitud)
                latLng = new google.maps.LatLng({lat: lat, lng: lng});
                map.panTo(latLng);
                console.log(reporte);
            }, 300);


           /* $timeout(function ()
            {
                $('#div-info-reporte').animate({
                    width: "0%"
                });
                $('#itemReporte').animate({
                    width:"30%"
                })
            }, 20000);*/

           /* $('#itemReporte').show();*/

        };

        $scope.mostrarReportes = function ()
        {
            $('#div-info-reporte').animate({
                width: "0%"
            }, 500).hide();

            $('#itemReporte').animate({
                width: "40%"
            }, 500);
            $timeout(function () {
                $('#itemReporte').hide();
            },500);
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
        $scope.crearMarcadores = function (reportes) {
            marcadores = [];
            for (var i = 0; i < reportes.length; i++) {
                $scope.crearMarcador(reportes[i]);
            }
        };

        $scope.crearMarcador = function (reporte) {
            var lat = parseFloat(reporte.latitud);
            var lng = parseFloat(reporte.longitud);
            var latlon = new google.maps.LatLng({lat: lat, lng: lng});
            var marcador = new google.maps.Marker({
                draggable: false,
                position: latlon,
                map: map,
                title: reporte.id_reporte
            });

            var infowindow = new google.maps.InfoWindow({
                content: $scope.templatePop(reporte)
            });

            marcador.addListener('click', function () {
                infowindow.open(map, marcador);
            });
            marcadores.push(marcador);
        };

        $scope.templatePop = function (reporte) {
            var contentString =
                ' <div id="div-info-reporte" style="width: 100%; height: 0%; overflow-y: auto">' +
                '<div><img src="img/senales/' + reporte.icono + '"style="height: 150px; margin-top: 20%;margin-left: 20px;"></div>' +
                '<h7><b>' + reporte.nombre + '</b></h4>' +
                '<br><h8>' + reporte.nombre_categoria + '</h5>' +
                '<br><h8>' + reporte.fecha + '</h8>' +

                '</div>';
            return contentString;
        }

        $scope.eliminarMarcadores = function (map) {
            for (var i = 0; i < marcadores.length; i++) {
                marcadores[i].setMap(map);
            }
        };

        $scope.clickBuscar = function () {
            $('#div-buscar').slideToggle(200);
        };

        $scope.clickMostrarTodo = function () {
            $scope.eliminarMarcadores(map);
        }


    });
