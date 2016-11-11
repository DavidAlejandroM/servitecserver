angular.module('modeloService', [])

  .service('modeloService',['configService',function ($scope,configService)
  {


    this.httpGetAll = function($http,controller,funcion)
    {
      $scope.result = null;
      var servidor = 'http://localhost:8080/servitecserver/index.php/'

      $http.get(servidor + controller +'/'+funcion)
          .success(function(data,status,headers,config){
              $scope.result = data;
              //console.log($scope.result);
          })
          .error(function(error,status,headers,config){
            console.log(error);
          });
        console.log($scope.result);
      //return result;
    }
  }
  ]);
