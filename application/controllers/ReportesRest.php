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


	public function insertarReporte($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto,$observaciones,$accionTomar,$idCategoria,$fecha)
	{
		$this->load->model('db_model');
        $observaciones = urldecode($observaciones);
        $idVisibolidad = urldecode($idVisibolidad);
		$fecha = urldecode($fecha);
		print_r($fecha);
		$dateInfo = DateTime::createFromFormat('Y-m-j H:i:s', $fecha);
		$fechaNueva = $dateInfo->format('Y-m-d h:i:s');
		print_r($fechaNueva);

        $this->db_model->insertarReporte($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto,$observaciones,$accionTomar,$idCategoria, $fecha);
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


	/*public function insertarReporte($reporte)
	{
		$my = $_POST;

		echo json_decode($my);

		/*$this->load->model('db_model');
		$estado = $this->db_model->obtenerTodoEstados();

		echo json_encode($estado);
	}*/
}
