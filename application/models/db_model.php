<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Db_model extends CI_Model
{
    public function obtenerTodoEstados(){
        $q = $this->db->get('tbl_estados');
        return $q->result();
    }
    
    public function insertarReporte($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto,$observaciones,$accionTomar,$fecha){
        $this->db->set('rep_senal', $idSenal);
        $this->db->set('rep_latitud', $lat);
        $this->db->set('rep_longitud', $lng);
        $this->db->set('rep_tablero', $idTablero);
        $this->db->set('rep_pedestal', $idPedestal);
        $this->db->set('rep_anclaje', $idAnclaje);
        $this->db->set('rep_visibilidad', $idVisibolidad);
        $this->db->set('rep_foto', $foto);
        $this->db->set('rep_observaciones', $observaciones);
        $this->db->set('rep_accionTomar',$accionTomar);
        //$this->db->set('id_categoria',$idCategoria);
        $this->db->set('rep_fecha',$fecha);



        $this->db->insert('tbl_reporte');

        /*ALTER TABLE `tbl_reportes_senal` AUTO_INCREMENT=1*/
    }

    public function obtenerReportes()
    {
        $q = $this->db->get('tbl_reportes_senal');
        return $q->result();
    }

    public function obtenerSenal($id)
    {
        $this->db->where('id_senal', $id);
        $q = $q = $this->db->get('tbl_senal');

        return $q->result();
    }

    public function obtenerSenales($id){
        /*
        id: 1,
        nombre: "Pare",
        img: "img/senales/sr-01.png",
        categoria: 1
       */
        /*$this->db->where('sen_cat_idCategoria', $id);
        $q = $q = $this->db->get('tbl_senal');
        $senales = $q->result();
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
        return $arraySenal;*/
		
		$query = $this->db->query("SELECT 
											sen.sen_idSenal id, 
											sen.sen_nombre nombre, 
											sen.sen_icono img, 
											sen.sen_cat_idCategoria categoria 
									FROM tbl_senal sen 
									WHERE sen.sen_cat_idCategoria = '".$id."'");

        return $query->result();
		
		
    }

    public function obtenerCategorias(){

       $query = $this->db->query("SELECT 
										cat.cat_idCategoria id,
										cat.cat_nombre nombre
									FROM tbl_categoria cat");

        return $query->result();
    }

    public function obtenerCategoria($id)
    {
        $this->db->where('id_categoria', $id);
        $q = $q = $this->db->get('tbl_categoria');

        return $q->result();
    }

    public function obtenerReportesPlataforma()
    {
        /*$this->db->order_by('fecha','DESC');
        $q = $q = $this->db->get('tbl_reportes_senal');
        $result = $q->result();

        $arrayresult = array();
        foreach($result as $r)
        {
            $resultSenal = $this->obtenerSenal($r->id_senal);
            $resultCategoria = $this->obtenerCategoria($r->id_categoria);
            //print_r($resultSenal);
            //print_r($resultCategoria[0]->nombre);

            $a = array(
                "id_reporte" => $r->id_reporte,
                "id_senal" => $r->id_senal,
                "nombre" => $resultSenal[0]->nombre,
                "icono" => $resultSenal[0]->icono,
                "latitud" => $r->latitud,
                "longitud" => $r->longitud,
                "fecha" => $r->fecha,
                "foto" => $r->foto,
                "tablero" => $r->tablero,
                "pedestal" => $r->pedestal,
                "anclaje" => $r->anclaje,
                "visibilidad" => $r->visibilidad,
                "observaciones" => $r->observaciones,
                "accionTomar" => $r->accionTomar,
                "id_categoria" => $r->id_categoria,
                "nombre_categoria" => $resultCategoria[0]->nombre
            );
            array_push($arrayresult,$a);
        }
      // print_r($arrayresult);
        return $arrayresult;*/
        $query = $this->db->query("SELECT
    rep.rep_idReporte id_reporte,
    rep.rep_senal id_senal,
	sen.sen_nombre nombre,
    sen.sen_icono icono,
    cat.cat_idCategoria id_categoria,
	cat.cat_nombre nombre_categoria,
    rep.rep_foto foto,
    rep.rep_latitud latitud,
    rep.rep_longitud longitud,
    rep.rep_fecha fecha,
    est_3.est_nombre tablero,
	est_1.est_nombre pedestal,
	est_2.est_nombre anclaje,
    vis.vis_nombre visibilidad,
    rep.rep_observaciones observaciones,
    acc.acc_nombre accionTomar
FROM
    tbl_reporte rep
        INNER JOIN tbl_estado est_1 ON est_1.est_idEstado = rep.rep_pedestal
        INNER JOIN tbl_estado est_2 ON est_2.est_idEstado = rep.rep_anclaje
        INNER JOIN tbl_estado est_3 ON est_3.est_idEstado = rep.rep_tablero
		INNER JOIN tbl_visibilidad vis ON vis.vis_idVisibilidad = rep.rep_visibilidad
        INNER JOIN tbl_accion acc ON acc.acc_idAccion = rep.rep_accionTomar
        INNER JOIN tbl_senal sen ON sen.sen_idSenal = rep.rep_senal
        INNER JOIN tbl_categoria cat ON cat.cat_idCategoria = sen.sen_cat_idCategoria
ORDER BY rep.rep_fecha DESC");

        return $query->result();
    }
	/**
	*Modificado 20/12/2016 Alejandro Marin
	*cambie lo de php por solo el query
	*/
    public function obtenerEstados(){

        /*$q = $q = $this->db->get('tbl_estado');
        $estados = $q->result();
        $arrayEstados = array();
        foreach($estados as $est){
            $a = array(
                "id" => $est->est_idEstado,
                "name" => $est->est_nombre
            );
            //print_r($a);
            array_push($arrayEstados,$a);
        }*/
	
		$query = $this->db->query("SELECT 
		est.est_idEstado id, 
		est.est_nombre nombre 
		FROM tbl_estado est");
		
		
        return $query->result();
    }

	/**
	*Modificado 20/12/2016 Alejandro Marin
	*cambie lo de php por solo el query
	*/
    public function obtenerVisiblidad(){
		$query = $this->db->query("SELECT 
		vis.vis_idVisibilidad id,
		vis.vis_nombre nombre
		FROM tbl_visibilidad vis");
		
		
        return $query->result();
    }

	/**
	*Modificado 20/12/2016 Alejandro Marin
	*cambie lo de php por solo el query
	*/
    public function obtenerAccion()
	{
		$query = $this->db->query("SELECT 
		acc.acc_idAccion id,
        acc.acc_nombre nombre
		FROM tbl_accion acc");
		
		
        return $query->result();
    }



}
