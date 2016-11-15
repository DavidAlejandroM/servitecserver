<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/materialize.min.css" rel="stylesheet">

    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <script src="js/lib/jquery.min.js"></script>
    <script src="js/lib/materialize.min.js"></script>
    <script src="js/lib/angular.min.js"></script>

    <!--controladores-->
    <script src="js/controllers/MapCtrl.js"></script>
    <!--services-->
    <script src="js/services/reporteSenalService.js"></script>
    <script src="js/services/configService.js"></script>
    <script src="js/services/modeloService.js"></script>
</head>
<body ng-app="servitecWeb">
<div ng-controller="MapCtrl">
    <nav>
        <div class="nav-wrapper colorApp">
            <a href="#!" class="brand-logo"><i class="material-icons">directions_car</i>Servitec</a>
            <ul class="right hide-on-med-and-down">
                <li><a href=""><i class="material-icons">search</i></a></li>
                <li><a href=""><i class="material-icons">view_module</i></a></li>
                <li><a href=""><i class="material-icons">refresh</i></a></li>
                <li><a href=""><i class="material-icons">more_vert</i></a></li>
            </ul>
        </div>
    </nav>
    <div class="row z-position-1">

        <div class="col s8 z-depth-2" id="map">
        </div>

        <div class="col s4" id="itemReporte">
            <div clase="table-responsive-vertical shadow-z-1">
                <table id="table" class="table table-hover table-mc-light-blue">
                    <thead>
                    <tr>
                        <th></th>
                        <th>ID</th>
                        <th>Fecha</th>
                        <th>Categoria</th>
                        <th>Nombre</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- <tr ng-init="buscarSenal(r.id_senal)">
                         <td data-title="Icono"><img src=""></td>
                         <td data-title="ID">{{r.id_senal}}</td>
                         <td data-title="Fecha">{{r.fecha}}</td>
                         <td data-title="Categoria">{{categoriaSenal}}</td>
                         <td data-title="Nombre">{{nameSenal}}</td>

                     </tr>-->
                    <tr class="tabla-reportes-row" ng-repeat="r in reportes" ng-click="clickReporte(r)">
                        <td data-title="Icono"><img src="img/senales/{{r.icono}}" style="height: 70px;"></td>
                        <td data-title="ID">{{r.id_senal}}</td>
                        <td data-title="Fecha">{{r.fecha}}</td>
                        <td data-title="Categoria">{{r.nombre_categoria}}</td>
                        <td data-title="Nombre">{{r.nombre}}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div style="height: 200px;background-color: #00b0ff;width: 60%;"></div>


</div>

<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBv7SeCNl6N6dYQLcmieAhenQ3WZ37XevU&callback">
</script>
</body>
</html>