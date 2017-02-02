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
<div ng-controller="MapCtrl" style="overflow-y: hidden">
    <nav>
        <div class="nav-wrapper colorApp">
            <a href="" class="brand-logo"><i class="material-icons">directions_car</i>SignalStreet</a>
            <ul class="right hide-on-med-and-down">
                <li><a href=""><i class="material-icons" ng-click="clickBuscar()">search</i></a></li>
                <li><a href=""><i class="material-icons" ng-click="clickMostrarTodo()">view_module</i></a></li>
                <li><a href=""><i class="material-icons" ng-click="">list</i></a></li>
                <li><a href=""><i class="material-icons">more_vert</i></a></li>
            </ul>
        </div>
    </nav>
    <div class="row">

        <div class="col col-mod" id="div-info-reporte" style="width: 40%;height: 100%; display:none; direction:rtl">
            <div class="col col-mod scrollbar" style="height: 100% ;width: 90%; direction: ltr; overflow-x: auto;" >
                <!--<a class="btn-floating btn-large waves-effect waves-light fondoColor"
                   style="margin-left: 90%; background: #3F51B5"><i class="material-icons" ng-click="mostrarReportes()">replay</i></a>-->

                <img src="http://signalstreet.net/{{reporteSeleccionado.foto}}" align="center"
                     style="height: 150px;margin-left: 20%">

                <img src="img/senales/{{reporteSeleccionado.icono}}" align="right" style="height:70px;margin-top: 20%">

                <div style="margin-left: 5%">
                    <p>{{reporteSeleccionado.fecha}}</p>
                    <h4>{{reporteSeleccionado.nombre}}</h4>
                    <h5>{{reporteSeleccionado.nombre_categoria}}</h5>

                    <p>
                    <ul class="collection">
                        <li class="collection-item">Tablero: {{reporteSeleccionado.tablero}}</li>
                        <li class="collection-item">Pedestal: {{reporteSeleccionado.pedestal}}</li>
                        <li class="collection-item">Anclaje: {{reporteSeleccionado.anclaje}}</li>
                        <li class="collection-item">Visibilidad: {{reporteSeleccionado.visibilidad}}</li>
                        <li class="collection-item">Accion a tomar: {{reporteSeleccionado.accionTomar}}</li>
                        <li class="collection-item">Observaciones: {{reporteSeleccionado.observaciones}}</li>
                    </ul>
                    </p>
                </div>
            </div>
            <div id="div-atras" class="colorApp col col-mod" style="width: 10%; height: 100%;" ng-click="mostrarReportes()">

            </div>

        </div>


        <div class="col col-mod" id="map-container" style="width: 60%;">

            <div class="z-depth-2" id="map" style="width: 100%; height: 100%">
            </div>

        </div>


        <div class="col " id="itemReporte" style="width:40%;overflow-y: auto; right: 0; ">
            <div class="z-position-2 colorApp" id="div-buscar"
                 style="width: 100%;height: 100px;position: relative;display: none">
                <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="icon_prefix" type="text" class="validate" ng-model="buscar">
                    <label for="icon_prefix">Buscar</label>
                </div>
            </div>
            <div clase="table-responsive-vertical z-position-1">
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
                    <tr class="tabla-reportes-row" ng-repeat="r in reportes | filter: buscar"
                        ng-click="clickReporte(r)">
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

        <!--        <!-- Modal Structure -->
        <!--        <div id="modal1" class="modal bottom-sheet">-->
        <!--            <div class="modal-content">-->
        <!--                <div class="col s2">-->
        <!--                    <img src="img/senales/{{reporteSeleccionado.icono}}" style="height: 150px; margin-top: 20%;margin-left: 20px;">-->
        <!--                    <p>{{reporteSeleccionado.fecha}}</p>-->
        <!--                </div>-->
        <!--                <div class="col s10">-->
        <!--                    <div class="row">-->
        <!--                        <div class="col s10">-->
        <!--                            <h4>{{reporteSeleccionado.nombre}}</h4>-->
        <!--                            <h5>{{reporteSeleccionado.nombre_categoria}}</h5>-->
        <!--                        </div>-->
        <!--                        <div class="col s2">-->
        <!--                            <img src="img/senales/{{reporteSeleccionado.icono}}" align="right"  style="height: 70px;">-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                    <p>-->
        <!--                    <ul class="collection">-->
        <!--                        <li class="collection-item">Tablero: {{reporteSeleccionado.tablero}}</li>-->
        <!--                        <li class="collection-item">Pedestal: {{reporteSeleccionado.pedestal}}</li>-->
        <!--                        <li class="collection-item">Anclaje: {{reporteSeleccionado.anclaje}}</li>-->
        <!--                        <li class="collection-item">Visibilidad: {{reporteSeleccionado.visibilidad}}</li>-->
        <!--                        <li class="collection-item">Accion a tomar: {{reporteSeleccionado.accionTomar}}</li>-->
        <!--                        <li class="collection-item">Observacioens: {{reporteSeleccionado.observaciones}}</li>-->
        <!--                    </ul>-->
        <!--                    </p>-->
        <!--                </div>-->
        <!--            </div>-->
        <!--            <div class="modal-footer">-->
        <!--                <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Aceptar</a>-->
        <!--            </div>-->
        <!--        </div>-->
    </div>


</div>

<script async defer

        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBkTwuScwnw23tXOhKHqLGig9jWTqWRhiQ&callback">

</script>
</body>
</html>