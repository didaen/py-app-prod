<?php


// Membuat class anak (Home) yang menuruni semua method dan property dari class induknya (CI_Controller)
class Home extends CI_Controller
{
    public function index()
    {
        // Mengambil baris data yang ada di database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // Selain dapat mengirimkan views, kita juga dapat mengirimkan data saat meload view
        $data["judul"] = "Beranda";

        // Membuka method view()
        // Fungsi load ini akan dering kita gunakan untuk memanggil bermacam-macam method
        // Saya ingin mencari file home.php yang ada di folder views
        $this->load->view('templates/header', $data);
        $this->load->view('home/index', $data);
        $this->load->view('templates/footer');
    }

    public function persamaan()
    {

        // Selain dapat mengirimkan views, kita juga dapat mengirimkan data saat meload view
        $data["judul"] = "Persamaan";

        // Membuka method view()
        // Fungsi load ini akan dering kita gunakan untuk memanggil bermacam-macam method
        // Saya ingin mencari file home.php yang ada di folder views
        $this->load->view('templates/header', $data);
        $this->load->view('home/persamaan');
        $this->load->view('templates/footer');
    }
}
