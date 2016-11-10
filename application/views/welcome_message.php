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

    <script src="js/controllers/MapCtrl.js"></script>
</head>
<body ng-app="servitecWeb" ng-controller="MapCtrl">
<div class="">
    <nav>
        <div class="nav-wrapper colorApp">
            <a href="#!" class="brand-logo"><i class="material-icons">cloud</i>Logo</a>
            <ul class="right hide-on-med-and-down">
                <li><a href=""><i class="material-icons">search</i></a></li>
                <li><a href=""><i class="material-icons">view_module</i></a></li>
                <li><a href=""><i class="material-icons">refresh</i></a></li>
                <li><a href=""><i class="material-icons">more_vert</i></a></li>
            </ul>
        </div>
    </nav>
    <div class="row">

        <div class="col s8 z-depth-2" id="map">

        </div>

        <div class="col s4">
            <div class="row valign-wrapper" style="background-color: #8ba8af">
                <div class="col s3">
                    <img ng-src="img/sr-05" style="width: 100%;">
                </div>
                <div class="col s9">hola</div>
            </div>
        </div>

    </div>


</div>

<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBv7SeCNl6N6dYQLcmieAhenQ3WZ37XevU&callback">
</script>
</body>
</html>