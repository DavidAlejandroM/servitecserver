<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ReportesRest extends CI_Controller {


	public function insertarReporte($idSenal,$lat,$lng,$idTablero,
									$idPedestal,$idAnclaje,$idVisibolidad,$foto)
	{
		echo $idSenal;
		echo "\n";
		echo $lat;
		echo "\n";
		echo $lng;
		echo "\n";
		echo $idTablero;
		echo "\n";
		echo $idPedestal;
		echo "\n";
		echo $idAnclaje;
		echo "\n";
		echo $idVisibolidad;
		echo "\n";
		echo $foto;
		echo "\n";

		/*$this->load->model('db_model');
		$estado = $this->db_model->obtenerTodoEstados();

		echo json_encode($estado);*/
	}
}
