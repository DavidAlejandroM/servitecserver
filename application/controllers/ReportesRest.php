<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ReportesRest extends CI_Controller {


	public function insertarReporte($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto,$observaciones)
	{
		$this->load->model('db_model');
		$this->db_model->insertarReporte($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto,$observaciones);
	}

	public function obtenerReportes()
	{
		$this->load->model('db_model');
		$reportes = $this->db_model->obtenerReportes();
		echo json_encode($reportes);
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
