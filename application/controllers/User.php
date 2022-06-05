<?php
defined('BASEPATH') or exit('No direct script access allowed');

// Controller User mengatur menu-menu untuk menampilkan data user, edit profil, dan edit password, serta untuk menampilkan pembelajaran terakhir user.
class User extends CI_Controller
{
    // Method construct
    public function __construct()
    {
        // Kalau membuat method construct harus ada bari code di bawah ini
        parent::__construct();

        // Meload controller User_model
        $this->load->model('User_model');

        // Meload library form_validation
        $this->load->library('form_validation');

        is_logged_in();
    }

    // Method default index ini memuat data pribadi user dan data belajar terakhi user
    public function index()
    {

        // Mengambil baris data yang ada di database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // Mengambil role_id dari data['user']
        $role_id = $data['user']['role_id'];

        // Dengan role_id tersebut, kita dapatkan rolenya untuk ditampilkan pada view
        $data['role'] = $this->User_model->getRoleById($role_id);

        // Mengambil is_active atau status id dari data['user']
        $is_active = $data['user']['is_active'];

        // Dengan status id tersebut, kita dapatkan status
        $data['status'] = $this->User_model->getStatusById($is_active);

        // Mendapatkan data aktifitas belajar terakhir user
        $user_id = $data['user']['id'];
        $data['belajar'] = $this->User_model->getRecentLearningActivity($user_id);

        // Untuk title bar
        $data["judul"] = "Profil";

        // header, body, footer
        $this->load->view('templates/header', $data);
        $this->load->view('user/index', $data);
        $this->load->view('templates/footer');
    }



    // Method untuk melakukan edit username dan foto profil
    public function editProfil()
    {
        // Mengambil baris data yang ada di database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $user_id = $data['user']['id'];


        // ATURAN-ATURAN TIAP FIELD

        // 1. Username
        $this->form_validation->set_rules('username', 'Username', 'required|trim|alpha_dash|is_unique[user.username,id,{id}]', [
            'required' => 'Perlu diisi.',
            'alpha_dash' => 'Username tidak sesuai ketentuan.',
            'is_unique' => 'Username sudah digunakan.'
        ]);


        // Pengkondisian form_validation apabila validasi gagal
        // maka kembalikan form ke halaman itu
        if ($this->form_validation->run() == false) {

            // Untuk title bar
            $data["judul"] = "Edit Profil";

            // header, body, footer
            $this->load->view('templates/header', $data);
            $this->load->view('user/edit', $data);
            $this->load->view('templates/footer');
        } else {

            // Ambil informasi gambar yang diupload
            $upload_image = $_FILES['image']['name'];
            
            // Cek jika config gambar
            if($upload_image) {
                $config['upload_path'] = './assets/img/profile';
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size'] = '2048';

                $this->load->library('upload', $config);

                // Upload gambar
                if($this->upload->do_upload('image')) {

                    // Mengambil nama file gambar foto profil yang lama
                    $old_image = $data['user']['image'];

                    // Jika nama foto profil yang lama bukan user.png
                    if($old_image != 'user.png') {

                        // Hapus foto
                        unlink(FCPATH . 'assets/img/profile/' . $old_image);
                    }

                    // Ambil nama gambar baru
                    $new_image = $this->upload->data('file_name');

                    // Ganti nama file pada database
                    $this->db->set('image', $new_image);

                } else {

                    // Jika gagal tambilkan error
                    echo $this->upload->display_errors();
                }
            }


            // Mengambil data username yang baru
            $username = htmlspecialchars($this->input->post('username', true));

            // Ganti username pada database
            $this->db->set('username', $username);

            // Memasukkan $data ke tabel user db py_app
            $this->db->where('id', $user_id);
            $this->db->update('user');

            // Menampilkan pesan dulu sebelum redirect
            $this->session->set_flashdata('ganti_profil', 'Profil Anda berhasil diubah.');

            // Kembali ke controller Auth saat berhasil
            redirect('user');
        }
    }



    // Method untuk mengubah password dari user
    public function konfirmasiPassword()
    {
        // Mengambil baris data yang ada di database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // Password
        $this->form_validation->set_rules('password', 'Password', 'required|trim', [
            'required' => 'Perlu diisi.'
        ]);

        // Pengkondisian form_validation apabila validasi gagal
        if ($this->form_validation->run() == false) {

            // maka kembalikan form ke halaman itu
            $data['title'] = 'Konfirmasi Password';
            $this->load->view('templates/header', $data);
            $this->load->view('user/konfirmasipassword');
            $this->load->view('templates/footer');
        } else {

            // Apabila validasi berhasil
            // maka masuk ke method private login
            $this->_passwordChangeConfirmation();
        }
            
    }



    // Method untuk mengubah password dari user
    private function _passwordChangeConfirmation()
    {
        // Mengambil baris data yang ada di database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        

        // Ambil username dan password yang sudah lolos validasi
        $username = $data['user']['username'];
        $password = $this->input->post('password');

        // Mengambil 1 baris data
        $user = $this->db->get_where('user', ['username' => $username])->row_array();



        // Apabila variabel user terbentuk atau data ditemukan
        if (password_verify($password, $user['password'])) {

            redirect('user/ubahpassword');

        } else {

            // Jika passwordnya tidak sama
            $this->session->set_flashdata('salah_password', 'Password yang Anda masukkan salah.');

            // Kembali ke controller Auth saat gagal
            redirect('user/konfirmasipassword');
        }
            
    }



    // Method untuk mengubah password dari dalam
    public function ubahPassword()
    {
        // Mengambil baris data yang ada di database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $user_id = $data['user']['id'];

        // 4. Password
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[6]|matches[password2]', [
            'required' => 'Perlu diisi.',
            'min_length' => 'Password terlalu pendek.',
            'matches' => 'Password tidak cocok.',
        ]);

        // 5. Ulangi Password
        $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]', [
            'required' => 'Perlu diisi.',
            'matches' => 'Password tidak cocok.'
        ]);

        // Pengkondisian form_validation apabila validasi gagal
        // maka kembalikan form ke halaman itu
        if ($this->form_validation->run() == false) {

            // Untuk title bar
            $data["judul"] = "Ubah Password";

            // header, body, footer
            $this->load->view('templates/header', $data);
            $this->load->view('user/ubahpassword', $data);
            $this->load->view('templates/footer');
        } else {

            // Jika data berhasil ditambahkan
            $data = [
                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT)
            ];

            // Memasukkan $data ke tabel user db pyapp
            $this->db->where('id', $user_id);
            $this->db->update('user', $data);

            // Menampilkan pesan dulu sebelum redirect
            $this->session->set_flashdata('ganti_password', 'Anda berhasil mengubah password.');

            // Kembali ke controller Auth saat berhasil
            redirect('user');
        }
        
    }

}
