<?php


class M_admin extends CI_model {

    public function selectAlladmin(){
        return $this->db->get('tb_admin')->result_array();
    }
}