<?php


// Membuat class Tentang yang menuruni semua method dan property dari class induknya (CI_Controller)
class Tentang extends CI_Controller
{
    public function index()
    {
        // Mengambil data user login dari database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);

        // Pada controller Materi ini akan meload view tentang/index
        $this->load->view('tentang/index');

        $this->load->view('templates/footer');
    }
}
