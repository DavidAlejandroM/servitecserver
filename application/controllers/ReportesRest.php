<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ReportesRest extends CI_Controller {


	public function insertarReporte($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto,$observaciones,$accionTomar,$idCategoria,$fecha)
	{
		$this->load->model('db_model');
        $observaciones = urldecode($observaciones);
        $idVisibolidad = urldecode($idVisibolidad);
        $fecha = new DateTime();
        print_r($fecha);

        $this->db_model->insertarReporte($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto,$observaciones,$accionTomar,$idCategoria, $fecha);
	}

	public function obtenerReportes()
	{
		$this->load->model('db_model');
		$reportes = $this->db_model->obtenerReportes();
		echo json_encode($reportes);
	}

	public function obtenerSenales($id){
		/*
        id: 1,
        nombre: "Pare",
        img: "img/senales/sr-01.png",
        categoria: 1
       */

		$this->load->model('db_model');
		$senales = $this->db_model->obtenerSenales($id);

		$arraySenal = array();
		foreach($senales as $senal){
			$a = array(
					"id" => $senal->id_senal,
					"nombre" => $senal->nombre,
					"img" => $senal->icono,
					"categoria" => $senal->id_categoria
			);
			//print_r($a);
			array_push($arraySenal,$a);
		}


		echo json_encode($arraySenal);
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
