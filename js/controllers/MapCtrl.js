/**
 * Created by DEIRY on 8/11/2016.
 */


angular.module('servitecWeb', ['reporteSenalService', 'configService','modeloService'])
    .controller('MapCtrl', function ($scope, $timeout,$http, reporteSenalService,$interval)
    {
        var servidor = 'http://servitec.ddns.net:8000/servitecserver/index.php/ReportesRest/obtenerReportes';
        var urlCategoria = 'http://servitec.ddns.net:8000/servitecserver/index.php/ReportesRest/obtenerCategoria';
        var urlSenal = 'http://servitec.ddns.net:8000/servitecserver/index.php/ReportesRest/obtenerSenal';
       var cat;
        $scope.reportes = null;
        $scope.senalBD = null;

        $scope.categoriaNombre = null;
        $scope.nameSenal = null;
        $scope.icon = null;

        $scope.señal;
        var latLng;
        var map;
        angular.element(document).ready(function ()
        {
            $scope.getReportes();


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
        };


        $scope.getCategoriaHttp = function(id){

            $http.get(urlCategoria+'/'+id)
                .success(function(data){
                    return data;

                })
                .error(function(error){
                    alert('error servitec: '+error);
                });

        };


        $scope.getSenalHttp = function(id){

            $http.get(urlSenal+'/'+id)
                .success(function(data){
                    $scope.senalBD = data;

                })
                .error(function(error){
                    alert('error servitec Obtener Señal: '+error);
                });

        };

     $scope.buscarSenal = function(id){

     var señal = reporteSenalService.buscarSeñalReporte(id);
        cat= $scope.getCategoriaHttp(señal.id_categoria);

      console.log("Categoria señal"+ cat);
       $scope.getSenalHttp(id);
      $scope.señal = $scope.getSenalHttp(id);
       console.log("señal " +$scope.señal);
     //  $scope.nameSenal = señal.nombre;
     //  $scope.icon =  señal.icono;

     };





    });
