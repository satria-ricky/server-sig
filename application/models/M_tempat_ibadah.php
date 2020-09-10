<?php

class M_tempat_ibadah extends CI_Model
{
    public function get_tempat_ibadah($v_id = null)
    {
        if ($v_id === null){
            return $this->db->get('tb_ti')->result_array();
        }else {
            return $this->db->get_where('tb_ti', ['ti_id' => $v_id])->result_array();
        }
    }

    public function delete_tempat_ibadah($v_id)
    {
        $this->db->delete('tb_ti', ['ti_id' => $v_id]);
        return $this->db->affected_rows();
    }

    public function create_tempat_ibadah ($v_data)
    {
        $this->db->insert('tb_ti', $v_data);
        return $this->db->affected_rows();
    }

    public function update_tempat_ibadah ($v_data, $v_id){
        $this->db->update('tb_ti', $v_data, ['ti_id' => $v_id]);
        return $this->db->affected_rows();
    }
}