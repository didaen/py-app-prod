<?php
class Tentang_model extends CI_model
{
    public function getAllReferences()
    {
        return $this->db->get('referensi')->result_array();
    }
}