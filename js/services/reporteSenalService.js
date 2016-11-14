angular.module('reporteSenalService', [])
  .service('reporteSenalService',['modeloService',function ($http,modeloService)
  {
    var reportes = [];
    var index=0;
    var reporte = {
      idSenal: null,
      categoria: null,
      foto: null,
      latitud: null,
      longitud: null,
      tablero: null,
      pedestal: null,
      anclaje: null,
      visibilidad: null,
      observaciones: null
    };

    var senalesReglamentaria = [
      {
        id: 1,
        nombre: "Pare",
        img: "img/senales/sr-01.png",
        categoria: 1
      },
      {
        id: 2,
        nombre: "Ceda el paso",
        img: "img/senales/sr-02.png",
        categoria: 1
      },
      {
        id: 3,
        nombre: "Siga de frente",
        img: "img/senales/sr-03.png",
        categoria: 1
      },
      {
        id: 4,
        nombre: "No pase",
        img: "img/senales/sr-04.png",
        categoria: 1
      },
      {
        id: 5,
        nombre: "05: Giro a la izq. solamente",
        img: "img/senales/sr-05.png",
        categoria: 1
      },
      {
        id: 6,
        nombre: "Prohibido girar a la izq.",
        img: "img/senales/sr-06.png",
        categoria: 1
      },
      {
        id: 1,
        nombre: "Pare",
        img: "img/senales/sr-01.png",
        categoria: 1
      },
      {
        id: 2,
        nombre: "Ceda el paso",
        img: "img/senales/sr-02.png",
        categoria: 1
      },
      {
        id: 3,
        nombre: "Siga de frente",
        img: "img/senales/sr-03.png",
        categoria: 1
      },
      {
        id: 4,
        nombre: "No pase",
        img: "img/senales/sr-04.png",
        categoria: 1
      },
      {
        id: 5,
        nombre: "05: Giro a la izq. solamente",
        img: "img/senales/sr-05.png",
        categoria: 1
      },
      {
        id: 6,
        nombre: "Prohibido girar a la izq.",
        img: "img/senales/sr-06.png",
        categoria: 1
      }
    ]

    this.getReporte = function()
    {
      return reporte;
    };

    this.setIdSenal = function(idSenal){
      reporte.idSenal = idSenal;
    };
    this.getIdSenal = function(){
      return reporte.idSenal;
    };

    this.setCategoria = function(cat){
      reporte.categoria = cat;
    };
    this.getCategoria = function(){
      return reporte.categoria;
    };

    this.setTablero = function(tab){
      reporte.tablero = tab;
    };
    this.getTablero = function(){
      return reporte.tablero;
    };

    this.setFoto = function(foto){
      reporte.foto = foto;
      console.log("asigna valor tablero");
    };
    this.getFoto = function(){
      return reporte.foto;
    };


    this.setLat = function(lat){
      reporte.latitud = lat;
    };
    this.getLat = function(){
      return reporte.latitud;
    };


    this.setLng = function(lng){
      reporte.longitud = lng;
    };
    this.getLng = function(){
      return reporte.longitud;
    };


    this.setPedestal = function(pedestal){
      reporte.pedestal = pedestal;
    };
    this.getPedestal = function(){
      return reporte.pedestal;
    };


    this.setAnclaje = function(anclaje){
      reporte.anclaje = anclaje;
    };
    this.getAnclaje = function(){
      return reporte.anclaje;
    };


    this.setVisibilidad = function(visibilidad){
      reporte.visibilidad = visibilidad;
    };
    this.getVisibilidad = function(){
      return reporte.visibilidad;
    };

    this.setObservaciones = function(obs){
      reporte.observaciones = obs;
    };
    this.getObservaciones = function(){
      return reporte.observaciones;
    };
    // ($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto)
    this.httpReporte = function($http)
    {

      var strReporte = reporte.idSenal+'/'+reporte.latitud+'/'+reporte.longitud+'/'+reporte.tablero+'/'+reporte.pedestal+'/'+reporte.anclaje+'/'+
          reporte.visibilidad+'/'+reporte.foto+'/'+reporte.observaciones;

      $http.post('http://192.168.1.100:8000/servitecserver/index.php/ReportesRest/insertarReporte/'+strReporte)
          .success(function(data,status,headers,config){
            console.log(data);
          })
          .error(function(error,status,headers,config){
            console.log(error);
          });
    };

    this.agregarReporte= function(){
      reportes.push(reporte);
      console.log(reportes)
    };

    this.setReportes = function(rep){

      reportes = rep;
      console.log(reportes);
    };

    this.buscarSeñal = function(id){
      for(var i = 0; i< senalesReglamentaria.length;i++){

        if(i == id)
        {
          return senalesReglamentaria[i];
        }
      }
    };

  }
  ]);
