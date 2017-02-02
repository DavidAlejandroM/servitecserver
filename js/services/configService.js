angular.module('configService', [])
  .service('configService',[function ()
  {
    var servidor = 'localhost:8080';

    this.getServidorPuerto = function(){
      return servidor
    };

    this.getUrlServidor = function(){
      return servidor + '/servitecserver/index.php';
    };

  }
  ]);
