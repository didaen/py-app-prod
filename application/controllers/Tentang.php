<?php


// Membuat class Tentang yang menuruni semua method dan property dari class induknya (CI_Controller)
class Tentang extends CI_Controller
{

    public function __construct()
    {
        // Memanggil method constructor dari class parent
        // Parent-nya yait CI_Controller
        parent::__construct();

        // Meload Tentang_model yang berisi referensi dari web Physics Yourself
        $this->load->model('Tentang_model');

        is_logged_in();
    }


    
    public function index()
    {
        // Mengambil data user login dari database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // Memanggil database untuk meload referensi web ini
        $data['referensi'] = $this->Tentang_model->getAllReferences();

        // Pada controller Materi ini akan meload view tentang/index
        $data['judul'] = 'Tentang';

        $this->load->view('templates/header', $data);
        $this->load->view('tentang/index', $data);
        $this->load->view('templates/footer');
    }
}
