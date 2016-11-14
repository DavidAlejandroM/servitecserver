/**
 * Created by DEIRY on 8/11/2016.
 */


angular.module('servitecWeb', ['reporteSenalService', 'configService','modeloService'])
    .controller('MapCtrl', function ($scope, $timeout,$http, reporteSenalService,$interval)
    {
        var servidor = 'http://servitec.ddns.net:8000/servitecserver/index.php/ReportesRest/obtenerReportes'
        $scope.reportes = null;

        var latLng;
        var map;
        angular.element(document).ready(function ()
        {
           // $scope.getReportes();

            var nav_size = $('nav').height();
            var window_size = $(window).height();
            $('#map').height(window_size - nav_size - 10);


            latLng = new google.maps.LatLng({lat: $scope.lat, lng: $scope.lng});
            $scope.mostrarMapa();

            $scope.hilo();
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

        $scope.hilo = function(){
            var i = 0;
            $interval(function(){
                //$scope.getReportes();
            },20000);
        };

        $scope.aaa = function(id)
        {
            var señal = reporteSenalService.buscarSeñal(id);
            //console.log(señal);
            return señal;
        };

        $scope.getReportes = function(){
            $http.get(servidor)
                .success(function(data){
                    $scope.reportes = data;
                    reporteSenalService.setReportes(data);
                })
                .error(function(error,status,headers,config){
                    console.log(error);
                });
        }





    });
