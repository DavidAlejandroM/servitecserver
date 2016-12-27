<?php


class ReportesRest extends CI_Controller {

	function __construct() {

		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
		$method = $_SERVER['REQUEST_METHOD'];
		if($method == "OPTIONS") {
			die();
		}
		parent::__construct();
	}


	public function insertarReporte($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto,$observaciones,$accionTomar,$fecha)
	{

		$foto = urldecode($foto);
		$foto = str_replace(' ','/',$foto);
		$observaciones = urldecode($observaciones);
		$idVisibolidad = urldecode($idVisibolidad);
		$accionTomar = urldecode($accionTomar);
		$fecha = urldecode($fecha);
		$foto = "img/reportes/".$foto;
		//print_r($fecha);
		$dateInfo = DateTime::createFromFormat('Y-m-j H:i:s', $fecha);
		$fechaNueva = $dateInfo->format('Y-m-d h:i:s');
		//print_r($fechaNueva);
		$this->load->model('db_model');
		$resutl = $this->db_model->insertarReporte($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto,$observaciones,$accionTomar,$fecha);
		print_r($resutl);
	}

	public function obtenerReportes()
	{
		$this->load->model('db_model');
		$reportes = $this->db_model->obtenerReportes();
		echo json_encode($reportes);
	}

	public function obtenerSenales($id)
	{
		$this->load->model('db_model');
		$senales = $this->db_model->obtenerSenales($id);
		echo json_encode($senales);
	}

	public function obtenerSenal($id)
	{
		$this->load->model('db_model');
		$senales = $this->db_model->obtenerSenal($id);
		echo json_encode($senales);
	}

	public function obtenerCategorias(){
		$this->load->model('db_model');
		$categorias = $this->db_model->obtenerCategorias();
		echo json_encode($categorias);
	}


	public function obtenerCategoria($idCat){
		$this->load->model('db_model');
		$categoria = $this->db_model->obtenerCategoria($idCat);
		echo json_encode($categoria);
	}

	public function obtenerReportesPlataforma()
	{
		$this->load->model('db_model');
		$reportes = $this->db_model->obtenerReportesPlataforma();
		echo json_encode($reportes);
	}
	/*Sofia*/
	public function obtenerEstados(){
		$this->load->model('db_model');
		$estados = $this->db_model->obtenerEstados();
		echo json_encode($estados);
	}
	/*Sofia*/
	public function obtenerVisibilidad(){
		$this->load->model('db_model');
		$visilidad = $this->db_model->obtenerVisiblidad();
		echo json_encode($visilidad);
	}
	/*Sofia*/
	public function obtenerAccion(){
		$this->load->model('db_model');
		$accion = $this->db_model->obtenerAccion();
		echo json_encode($accion);
	}


	/*public function insertarReporte($reporte)
	{
		$my = $_POST;

		echo json_decode($my);

		/*$this->load->model('db_model');
		$estado = $this->db_model->obtenerTodoEstados();

		echo json_encode($estado);
	}*/
}
