<?php

class Materi extends CI_Controller
{

    // Method construct untuk controller Materi
    public function __construct()
    {
        // Memanggil contruct class parent. Ini harus dilakukan setiap membuat contruct untuk meload model
        parent::__construct();

        // Meload model Materi_model untuk mengambil data-data dari database tentang pembelajaran
        $this->load->model('Materi_model');

        // Meload model User_model untuk mengambil data belajar terakhir
        $this->load->model('User_model');

        is_logged_in();

        // 3 line code ini untuk menghindarkan kita dari masalah resubmission form
        header('Cache-Control: no-cache, must-revalidate, max-age=0');
        header('Cache-Control: post-check=0, pre-check=0',false);
        header('Pragma: no-cache');
    }



    // Method ini untuk menampilkan seluruh materi pembelajaran yang tersedia dalam database
    public function index()
    {

        // Mengambil data user login dari database berdasarkan session untuk keperluan data user login
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // Ambil semua materi pembelajaran dalam database
        $data['materi'] = $this->Materi_model->getAllMateri();

        // Judul
        $data['judul'] = 'Materi';

        // Isi web
        $this->load->view('templates/header', $data);
        $this->load->view('materi/index', $data);
        $this->load->view('templates/footer');
    }



    // Method ini untuk menampilkan submateri dari materi yang sudah dipilih
    public function tampilkanSubMateri()
    {

        // Mengambil data user login dari database berdasarkan session untuk keperluan data user login
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // Mengambil user id untuk keperluan pengambilan data belajar terakhir
        $user_id = $data['user']['id'];

        // Mengambil data belajar terakhir berdasarkan data user id
        $data['belajar'] = $this->User_model->getRecentLearningActivity($user_id);

        // Dibuat menggunakan if seperti ini sebenarnya untuk menangani apabila user melakukan back sehingga tidak terjadi error karena data post yang diminta tidak kosong tapi mengambil dari database

        // Jika tidak ada materi id yang dipilih user atau tidak ada data yang dikirim via POST
        if($this->input->post('materi') === null) {

            // Maka variabel materi id diisi oleh data materi id yang diambil dari database
            $materi_id = $data['belajar']['materi_id'];

        // Jika ada materi id yang dikirim oleh user dan dikirim via POST
        } else {

            // Maka ambil lalu masukkan ke dalam variabel materi id
            $materi_id = $this->input->post('materi');
        }

        // Semua data di yang di dapatkan di atas, dimasukkan di array data belajar
        $belajar = [
            'materi_id' => $materi_id
        ];

        // Array ini kemudian kita simpan di session
        $this->session->set_userdata($belajar);

        // Data dari form method post itu ditangkap kemudian diolah oleh method getSubmateriByMatpem
        // Hasilnya dimasukkan ke $data['submateri']
        $data['sub_materi'] = $this->Materi_model->getSubMateriByMateriId($materi_id);

        // Untuk title bar
        $data['judul'] = 'Pilih Sub Materi';

        // View nya adalah materi/submateri
        $this->load->view('templates/header', $data);
        $this->load->view('materi/sub_materi', $data);
        $this->load->view('templates/footer', $data);
    }




    // Method untuk menampilkan halaman navigasi card
    public function tampilkanSemuaCard()
    {

        // Mengambil data user login dari database berdasarkan session untuk keperluan data user login
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // Mengambil user id untuk keperluan pengambilan data belajar terakhir
        $user_id = $data['user']['id'];

        // Mengambil data belajar terakhir berdasarkan data user id
        $data['belajar'] = $this->User_model->getRecentLearningActivity($user_id);

        // Mengecek apakah ada data yang dikirim via POST
        if($this->input->post('materi') === null && $this->input->post('sub_materi') === null) {
            $materi_id = $data['belajar']['materi_id'];
            $sub_materi_id = $data['belajar']['sub_materi_id'];
        } else {
            $materi_id = $this->session->userdata('materi_id');
            $sub_materi_id = $this->input->post('sub-materi');
        }
        
        // Mengambil value dari name='sub_materi' yang berupa id sub materi kemudian memasukkannya ke variabel sub_materi_id
        $data['card'] = $this->Materi_model->getTotalCardByMateriIdAndSubMateriId($materi_id, $sub_materi_id);

        // Semua data di yang di dapatkan di atas, dimasukkan di array data belajar
        $data['belajar'] = [
            'sub_materi_id' => $sub_materi_id,
            'total_card' => $data['card']['total_card']
        ];

        // Array ini kemudian kita simpan di session
        $this->session->set_userdata($data['belajar']);

        // Untuk title bar
        $data['judul'] = 'Pilih Card';

        // View nya adalah materi/submateri
        $this->load->view('templates/header', $data);
        $this->load->view('materi/card', $data);
        $this->load->view('templates/footer');
    }




    // Method untuk menampilkan card pilihan
    public function tampilkanCardPilihan($card_number)
    {
        // Mengambil data user login dari database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $user_id = $data['user']['id'];

        // Mengambil data pembelajaran terakhir user pada database untuk dikirim ke view
        $data['belajar'] = $this->User_model->getRecentLearningActivity($user_id);

        // Mengecek apakah ada data yang dikirim via POST
        if($this->input->post('materi-id') === null && $this->input->post('sub-materi-id') === null && $this->input->post('total-card') === null) {
            $materi_id = $data['belajar']['materi_id'];
            $sub_materi_id = $data['belajar']['sub_materi_id'];
            $total_card = $data['belajar']['total_card'];
        } else {
            $materi_id = $this->input->post('materi-id');
            $sub_materi_id = $this->input->post('sub-materi-id');
            $total_card = $this->input->post('total-card');
        }

        // Dengan materi id, kita dapatkan nama materi
        $materi = $this->Materi_model->getMateriNameById($materi_id);
        $materi = $materi['materi'];
        
        // Dengan sub materi id, kita dapatkan nama sub materi
        $sub_materi = $this->Materi_model->getSubMateriNameById($sub_materi_id);
        $sub_materi = $sub_materi['sub_materi'];

        // TOTAL CARD
        $total_card = $this->Materi_model->getTotalCardByMateriIdAndSubMateriId($materi_id, $sub_materi_id);
        $total_card = $total_card['total_card'];
        
        // total_pertanyaan akan kita gunakan untuk mengambil jawaban pertanyaan
        $total_pertanyaan = $this->Materi_model->getTotalPertanyaan($materi_id, $sub_materi_id, $card_number);
        $total_pertanyaan = $total_pertanyaan['total_pertanyaan'];
        
        // Semua data di yang di dapatkan di atas, dimasukkan di array data belajar
        $belajar = [
            'materi_id' => $materi_id,
            'materi' => $materi,
            'sub_materi_id' => $sub_materi_id,
            'sub_materi' => $sub_materi,
            'card_number' => $card_number,
            'total_card' => $total_card,
            'total_pertanyaan' => $total_pertanyaan
        ];
        
        // Array ini kemudian kita simpan di session
        $this->session->set_userdata($belajar);
        
        // Mengirim ke log belajar
        $data['belajar'] = [
            'user_id' => $user_id,
            'username' => $data['user']['username'],
            'materi_id' => $materi_id,
            'materi' => $materi,
            'sub_materi_id' => $sub_materi_id,
            'sub_materi' => $sub_materi,
            'card_number' => $card_number,
            'total_card' => $total_card,
            'started_at' => date("Y-m-d") . " " . date("H:i:s")
        ];
        $this->db->insert('user_learning_log', $data['belajar']);

        // Ambil kategori card dari database
        $jenis_card = $this->Materi_model->getJenisCard($materi_id, $sub_materi_id, $card_number);
        $kategori_card = $jenis_card['jenis_card'];

        // Jika jenis cardnya belajar atau == 1
        if($kategori_card == '1') {

            // Ambil keterangan jenis card dari database
            $keterangan_jenis_card = $this->Materi_model->getKeteranganJenisCard($kategori_card);
            $macam_card = $keterangan_jenis_card['keterangan'];

            // Ambil materi card yang tersimpan di database
            $data['pelajaran'] = $this->Materi_model->getMateriCard($materi_id, $sub_materi_id, $card_number);

            // Untuk title bar
            $data['judul'] = 'Belajar';

            // View nya adalah materi/submateri
            $this->load->view('templates/header', $data);
            $this->load->view('materi/' . $macam_card, $data);
            $this->load->view('templates/footer');

        // Jika jenis cardnya latihan atau == 2
        } else {

            // Ambil keterangan jenis card dari database
            $keterangan_jenis_card = $this->Materi_model->getKeteranganJenisCard($kategori_card);
            $macam_card = $keterangan_jenis_card['keterangan'];
            
            // Mengambil jawaban user pada card yang dibuka
            $data['latihan_soal'] = $this->Materi_model->getLatihanSoal($materi_id, $sub_materi_id, $card_number);

            // Mengambil jawaban user pada card yang dibuka
            $data['jawaban_user'] = $this->Materi_model->getJawabanCardUser($user_id, $materi_id, $sub_materi_id, $card_number, $total_pertanyaan);

            // Untuk title bar
            $data['judul'] = 'Latihan Soal';

            // View nya adalah materi/submateri
            $this->load->view('templates/header', $data);
            $this->load->view('materi/' . $macam_card, $data);
            $this->load->view('templates/footer');
        }

    }



    // Method ini untuk mengambil kunci jawaban tiap question box yang akan digunakan untuk pencocokan jawaban
    public function py_anw()
    {
        
        $answers = $this->_answers();
        
        // data['answers] untuk mengambil jawaban yang akan dikirimkan pada tiap card
        echo json_encode($answers);
    }



    private function _answers()
    {
        $user = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $user_id = $user['id'];
        $belajar = $this->User_model->getRecentLearningActivity($user_id);

        $materi_id = $belajar['materi_id'];
        $sub_materi_id = $belajar['sub_materi_id'];
        $card_number = $belajar['card_number'];

        // total_pertanyaan akan kita gunakan untuk mengambil jawaban pertanyaan
        $total_pertanyaan = $this->Materi_model->getTotalPertanyaan($materi_id, $sub_materi_id, $card_number);
        $total_pertanyaan = $total_pertanyaan['total_pertanyaan'];

        return $this->Materi_model->getAnswers($materi_id, $sub_materi_id, $card_number, $total_pertanyaan);
    }



    // METHOD INI UNTUK MENTIMPAN JAWABAN USER KE DATABASE AGAR SAAT MEMBUKA KEMBALI SUDAH ADA JAWABANNYA
    public function jawabanUser() {
        
        json_decode(file_get_contents('php://input'), true);

        // Membuat array yang isinya Id class pertanyaan

        $idPertanyaan = '';
        $total_pertanyaan = $this->session->userdata('total_pertanyaan');
        $arrayIdPertanyaan = [];
        
        for ($i = 1; $i <= $total_pertanyaan; $i++) {
            $idPertanyaan = "answ_" . $i;
            $arrayIdPertanyaan[] = $idPertanyaan;
                
        }


        $arrayJawaban = $this->input->post($arrayIdPertanyaan);

            
        // Mengambil data user login dari database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $user_id = $data['user']['id'];
        $data['belajar'] = $this->User_model->getRecentLearningActivity($user_id);
            
            
        $jawabanUser = [
            'user_id' => $user_id,
            'username' => $data['belajar']['username'],
            'materi' => $data['belajar']['materi_id'],
            'sub_materi' => $data['belajar']['sub_materi_id'],
            'card' => $data['belajar']['card_number'],    
        ];

        $jawabanUser['benar'] = $this->input->post('jawabanBenar');
        $jawabanUser['total_pertanyaan'] = $total_pertanyaan;
        $jawabanUser['time'] = date("Y-m-d") . " " . date("H:i:s");

        // Membuat array associative
        for ($i = 1; $i <= $total_pertanyaan; $i++) {
            $idPertanyaan = "answ_" . $i;
            $jawabanUser[$idPertanyaan] = $arrayJawaban[$idPertanyaan];
                    
        }

        
        $this->db->insert('card_answer_user', $jawabanUser);
            
    }
    
    

    // Method ini untuk menghapus jawaban pada card
    public function hapusJawabanCard()
    {
        
        json_decode(file_get_contents('php://input'), true);

        // Membuat array yang isinya Id class pertanyaan

        $idPertanyaan = '';
        $total_pertanyaan = $this->session->userdata('total_pertanyaan');
        $arrayIdPertanyaan = [];
        
        for ($i = 1; $i <= $total_pertanyaan; $i++) {
            $idPertanyaan = "answ_" . $i;
            $arrayIdPertanyaan[] = $idPertanyaan;
                
        }


        $arrayJawaban = $this->input->post($arrayIdPertanyaan);
        
        
           
        // Mengambil data user login dari database
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $user_id = $data['user']['id'];
        $data['belajar'] = $this->User_model->getRecentLearningActivity($user_id);
            
            
        $dataJawabanDihapus = [
            'user_id' => $user_id,
            'username' => $data['belajar']['username'],
            'materi' => $data['belajar']['materi_id'],
            'sub_materi' => $data['belajar']['sub_materi_id'],
            'card' => $data['belajar']['card_number'],    
        ];


        // Membuat array associative
        for ($i = 1; $i <= 40; $i++) {
            $idPertanyaan = "answ_" . $i;
            $jawabanUser[$idPertanyaan] = $arrayJawaban[$idPertanyaan];
                    
        }
        

        // Waktu user menjawab
        $dataJawabanDihapus['time'] = date("Y-m-d") . " " . date("H:i:s");

        $this->db->insert('card_answer_user', $dataJawabanDihapus);
    }



    // Menangkap data yang dikirim dari function myscript.js kirimDataCard
    // Method ini berguna agar ketika user melakukan klik pada kotak pertanyaan, user menyimpan data pembelajaran terakhir yang terbaru
    public function dataPembelajaranTerakhir()
    {
        json_decode(file_get_contents('php://input'), true);

        $user = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        
        $materi_id = $this->input->post('materi_id');
        $sub_materi_id = $this->input->post('sub_materi_id');
        $card_number = $this->input->post('card_number');

        // Dengan materi id, kita dapatkan nama materi
        $materi = $this->Materi_model->getMateriNameById($materi_id);
        $materi = $materi['materi'];
        
        // Dengan sub materi id, kita dapatkan nama sub materi
        $sub_materi = $this->Materi_model->getSubMateriNameById($sub_materi_id);
        $sub_materi = $sub_materi['sub_materi'];

        // TOTAL CARD
        $total_card = $this->Materi_model->getTotalCardByMateriIdAndSubMateriId($materi_id, $sub_materi_id);
        $total_card = $total_card['total_card'];
        
        // total_pertanyaan akan kita gunakan untuk mengambil jawaban pertanyaan
        $total_pertanyaan = $this->Materi_model->getTotalPertanyaan($materi_id, $sub_materi_id, $card_number);
        $total_pertanyaan = $total_pertanyaan['total_pertanyaan'];

        
        
        $dataCard = [
            'user_id' => $user['id'],
            'username' => $user['username'],
            'materi_id' => $materi_id,
            'materi' => $materi,
            'sub_materi_id' => $sub_materi_id,
            'sub_materi' => $sub_materi,
            'card_number' => $card_number,
            'total_card' => $total_card,
            'started_at' => date("Y-m-d") . " " . date("H:i:s")
        ];
        $this->db->insert('user_learning_log', $dataCard);
    }



    // METHOD INI UNTUK MENGAMBIL DATA TERAKHIR BERAPA KALI USER MELAKUKAN KLIK PADA TOMBOL Tunjukkan Jawaban
    public function klikTunjukkanJawabanTersimpan()
    {

        json_decode(file_get_contents('php://input'), true);

        $user = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // Membuat variabel user_id
        $user_id = $user['id'];
        
        // Membuat variabel username
        $username = $user["username"];

        // Ambil data pembelajaran terakhir
        $belajar = $this->User_model->getRecentLearningActivity($user_id);

        // Membuat variabel materi_id
        $materi_id = $belajar["materi_id"];

        // Membuat variabel sub_materi_id
        $sub_materi_id = $belajar["sub_materi_id"];

        // Membuat variabel card
        $card = $belajar["card_number"];

        $jumlahKlik['jumlah_klik'] = $this->Materi_model->getJumlahKlik($username, $materi_id, $sub_materi_id, $card);

        // Ternyata kalau gak di-echo gak bisa dipanggil via FETCH POST
        echo json_encode($jumlahKlik['jumlah_klik']);
        
    }



    // METHOD INI UNTUK MENYIMPAN BERAPA KALI USER SUDAH MELAKUKAN KLIK PADA TOMBOL TUNJUKKAN JAWABAN
    public function userLihatJawaban()
    {
        json_decode(file_get_contents('php://input'), true);

        $user = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // Membuat variabel user_id
        $user_id = $user['id'];
        
        // Membuat variabel username
        $username = $user["username"];

        // Ambil data pembelajaran terakhir
        $belajar = $this->User_model->getRecentLearningActivity($user_id);

        // Membuat variabel materi_id
        $materi_id = $belajar["materi_id"];

        // Membuat variabel sub_materi_id
        $sub_materi_id = $belajar["sub_materi_id"];

        // Membuat variabel card
        $card = $belajar["card_number"];

        $klik_tersimpan = $this->input->post('klik_tersimpan');
        $klik_tersimpan = (int)$klik_tersimpan;
        

        $klik_baru = $this->input->post('jumlah_klik');
        $klik_baru = (int)$klik_baru;
        

        $total_klik = $klik_tersimpan + $klik_baru;
        
        
        $dataClick = [
            'username' => $username,
            'materi' => $materi_id,
            'sub_materi' => $sub_materi_id,
            'card' => $card,
            'jumlah_klik' => $total_klik,
            'time' => date("Y-m-d") . " " . date("H:i:s")
        ];
        $this->db->insert('show_answers_log', $dataClick);
    }



    // METHOD UNTUK MENGAMBIL KUNCI JAWABAN
    public function tunjukkanKunciJawaban()
    {
        json_decode(file_get_contents('php://input'), true);

        $user = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        // Membuat variabel user_id
        $user_id = $user['id'];

        // Ambil data pembelajaran terakhir
        $belajar = $this->User_model->getRecentLearningActivity($user_id);

        // Membuat variabel materi_id
        $materi_id = $belajar["materi_id"];

        // Membuat variabel sub_materi_id
        $sub_materi_id = $belajar["sub_materi_id"];

        // Membuat variabel card
        $card = $belajar["card_number"];

        $kunciJawaban = $this->Materi_model->getAnswerKey($materi_id, $sub_materi_id, $card);

        // Ternyata kalau gak di-echo gak bisa dipanggil via FETCH POST
        echo json_encode($kunciJawaban); 
    }


}
