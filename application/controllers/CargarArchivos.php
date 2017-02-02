<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CargarArchivos extends CI_Controller {


	public function index()
	{
		header('Access-Control-Allow-Origin: *');

		$location = $_POST['directory'];
		$uploadfile = $_POST['fileName'];
		$uploadfilename = $_FILES['file']['tmp_name'];

		/*if(move_uploaded_file($uploadfilename, $location.'/'.$uploadfile)){*/
		if(move_uploaded_file($uploadfilename,'img/reportes/'.$uploadfile)){
			echo 'File successfully uploaded!';
		} else {
			echo 'Upload error!';
		}
	}
}
