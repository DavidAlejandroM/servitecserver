/**
 * Created by DEIRY on 8/11/2016.
 */


angular.module('servitecWeb', ['reporteSenalService', 'configService','modeloService'])
    .controller('MapCtrl', function ($scope, $timeout,$http, reporteSenalService,$interval)
    {
        var servidor = 'http://servitec.ddns.net:8000/servitecserver/index.php/ReportesRest/obtenerReportes'
        $scope.reportes = null;
        $scope.senalBD = null;

        $scope.categoria = null;
        $scope.nameSenal = null;
        $scope.icono = null;

        var señal;
        var latLng;
        var map;
        angular.element(document).ready(function ()
        {
            $scope.getReportes();
            $scope.getCategoriasHttp();

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
              //  $scope.getReportes();
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

     $scope.buscarSenal = function(id){
    console.log("Seañl id"+id);
     var señal = reporteSenalService.buscarSeñalReporte(id);
       $scope.getSenalHttp(id);
       $scope.getCategoriasHttp(señal.id_categoria);

       $scope.categoriaSenal = $scope.categoriaSenal.nombre;
       $scope.nameSenal = señal.nombre;
        $scope.icono =  señal.icono;

     };

        $scope.getCategoriasHttp = function(id){

            $http.get('http://servitec.ddns.net:8000/servitecserver/index.php/ReportesRest/obtenerCategoria/'+id)
                .success(function(data){
                    $scope.categoriaSenal = data;
                    console.log(data);
                })
                .error(function(error){
                    alert('error servitec: '+error);
                });

        };

        $scope.getSenalHttp = function(id){

            $http.get('http://servitec.ddns.net:8000/servitecserver/index.php/ReportesRest/obtenerSenal/'+id)
                .success(function(data){
                    señal = data;
                    console.log(data);
                })
                .error(function(error){
                    alert('error servitec: '+error);
                });

        };



    });
