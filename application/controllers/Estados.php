<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Estados extends CI_Controller {


	public function index()
	{
		$this->load->model('db_model');
		$estado = $this->db_model->obtenerTodoEstados();

		echo json_encode($estado);
	}
}
