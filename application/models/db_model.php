<?php
class db_model extends CI_Model
{
    public function obtenerTodoEstados(){
        $q = $this->db->get('tbl_estados');
        return $q->result();
    }
    
    public function insertarReporte($idSenal,$lat,$lng,$idTablero,$idPedestal,$idAnclaje,$idVisibolidad,$foto,$observaciones,$accionTomar,$idCategoria,$fecha){
        $this->db->set('id_senal', $idSenal);
        $this->db->set('latitud', $lat);
        $this->db->set('longitud', $lng);
        $this->db->set('tablero', $idTablero);
        $this->db->set('pedestal', $idPedestal);
        $this->db->set('anclaje', $idAnclaje);
        $this->db->set('visibilidad', $idVisibolidad);
        $this->db->set('foto', $foto);
        $this->db->set('observaciones', $observaciones);
        $this->db->set('accionTomar',$accionTomar);
        $this->db->set('id_categoria',$idCategoria);
        $this->db->set('fecha',$fecha);



        $this->db->insert('tbl_reportes_senal');

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
        $this->db->where('id_categoria', $id);
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
        return $arraySenal;
    }

    public function obtenerCategorias(){
        /*
         id: 1,
        name: "Señal Reglamentaria",
        icon: "hola"
       */
        $q = $q = $this->db->get('tbl_categoria');
        $categoria = $q->result();
        $arrayCategoria = array();
        foreach($categoria as $cate){
            $a = array(
                "id" => $cate->id_categoria,
                "name" => $cate->nombre,
                "icon" => null
            );
            //print_r($a);
            array_push($arrayCategoria,$a);
        }
        return $arrayCategoria;
    }




}
