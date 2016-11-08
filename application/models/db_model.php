<?php
class db_model extends CI_Model
{
    public function obtenerTodoEstados(){
        $q = $this->db->get('tbl_estados');
        return $q->result();
    }
}
