<?php

class User_model extends CI_model
{
    public function getUserById($user_id)
    {
        $this->db->get_where('user', ['id' => $user_id])->row_array();
    }

    public function getRoleById($role_id)
    {
        return $this->db->get_where('role_id', ['id' => $role_id])->row_array();
    }

    public function getStatusById($is_active)
    {
        return $this->db->get_where('is_active', ['id' => $is_active])->row_array();
    }

    public function getRecentLearningActivity($user_id)
    {
        $this->db->select('*');
        $this->db->from('user_learning_log');
        $this->db->where('user_id', $user_id);
        $this->db->order_by('started_at', 'DESC');
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->row_array();
        } else {
            return false;
        }
    }
}
