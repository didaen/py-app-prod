<?php
class Materi_model extends CI_model
{
    public function getDataEmail()
    {
        return $this->db->get('data_email')->result_array();
    }
}