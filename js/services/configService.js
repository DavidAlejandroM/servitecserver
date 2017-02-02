angular.module('configService', [])
  .service('configService',[function ()
  {
      var servidor = '/servitecserver/index.php';
      //var servidor = 'signalstreet.net/index.php';

    this.getServidorPuerto = function(){
      return servidor
    };

    this.getUrlServidor = function(){
      return servidor;
    };

  }
  ]);
