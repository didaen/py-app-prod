<?php
defined('BASEPATH') or exit('No direct script access allowed');

// class Auth adalah class untuk mengatur jalannya Login dan Register
class Auth extends CI_Controller
{

    // Method Constructor
    // Akan otomatis terpanggil saat Auth dipanggil
    public function __construct()
    {

        // Memanggil method constructor dari class parent
        // Parent-nya yait CI_Controller
        parent::__construct();

        // Meload model Materi_model untuk mengambil data-data dari database tentang pembelajaran
        $this->load->model('Auth_model');

        // Library form_validation tidak dapat diload di
        // application > config > autoload.php
        // Namun harus disimpan pada method atau controller
        $this->load->library('form_validation');
    }



    // Method default index()
    public function index()
    {
        
        // Jika user sudah login atau sudah membuat session
        if($this->session->userdata('email')) {

            // Apabila user kembali ke controller auth, kembalikan ke controller user
            redirect('home');
        }


        // ATURAN-ATURAN TIAP FIELD

        // 1. Username
        $this->form_validation->set_rules('username', 'Username', 'required|trim', [
            'required' => 'Perlu diisi.'
        ]);

        // 2. Password
        $this->form_validation->set_rules('password', 'Password', 'required|trim', [
            'required' => 'Perlu diisi.'
        ]);

        // Jika form_validation apabila validasi gagal
        if ($this->form_validation->run() == false) {

            // maka kembalikan form ke halaman Login

            // Judul
            $data['title'] = 'Login';

            // Isi
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/login');
            $this->load->view('templates/auth_footer');


        // Apabila validasi berhasil
        } else {

            // maka masuk ke method private login untuk memproses data user yang login
            $this->_login();
        }
    }



    // Method private login untuk memproses data login user
    private function _login()
    {

        // Ambil username dan password yang sudah lolos validasi
        $username = $this->input->post('username');
        $password = $this->input->post('password');

        // Mengambil 1 baris data
        $user = $this->db->get_where('user', ['username' => $username])->row_array();


        // Apabila variabel user terbentuk atau data ditemukan
        if ($user) {

            // Cek lagi bagian kolom is_active, apabila akun aktif
            if ($user['is_active'] == 1) {

                // cek password
                // Jika password yang dimasukkan sama dengan yang ada di database
                if (password_verify($password, $user['password'])) {

                    // Kita siapkan beberapa data yang akan ditampilkan
                    // Tidak semua data ditampilkan karena menyangkut keamanan.
                    $data = [
                        'username' => $user['username'],
                        'email' => $user['email'],
                        'role_id' => $user['role_id']
                    ];

                    // Simpan data-data tersebut pada session userdata
                    $this->session->set_userdata($data);

                    // Menyimpan data user yang login ke database
                    $user_log = [
                        'username' => $user['username'],
                        'nim' => $user['nim'],
                        'email' => $user['email'],
                        'time' => date("Y-m-d") . " " . date("H:i:s")
                    ];
                    $this->db->insert('user_log', $user_log);

                    // Mengarahkan user ke controller user
                    redirect('home');
               
                // Jika passwordnya tidak benar
                } else {

                    // Membuat pesan flash SALAH PASSWORD
                    $this->session->set_flashdata('salah_password', 'Password yang Anda masukkan salah.');

                    // Kembali ke controller Auth dan tampilkan pesan
                    redirect('auth');
                }

            // Jika usernya belum aktif
            } else {

                // Tampilkan pesan flash BELUM AKTIVASI
                $this->session->set_flashdata('belum_aktivasi', 'Silahkan lakukan aktivasi akun Anda via email terlebih dahulu.');

                // Kembali ke controller Auth saat gagal
                redirect('auth');
            }
        
        // Apabila variabel user tidak terbentuk atau data tidak ditemukan pada database
        } else {

            // Tampilkan pesan flash AKUN BELUM TERDAFTAR
            $this->session->set_flashdata('belum_daftar', 'Akun Anda belum terdaftar.');

            // Kembali ke controller Auth saat gagal
            redirect('auth');
        }
    }



    // Method Registration
    public function registration()
    {

        // Jika user sudah login
        if($this->session->userdata('email')) {

            // Apabila user kembali ke controller auth, kembalikan ke controller user
            redirect('home');
        }


        // ATURAN-ATURAN TIAP FIELD

        // 1. Username
        $this->form_validation->set_rules('username', 'Username', 'required|trim|alpha_dash|is_unique[user.username]', [
            'required' => 'Perlu diisi.',
            'alpha_dash' => 'Username tidak sesuai ketentuan.',
            'is_unique' => 'Username sudah digunakan.'
        ]);

        // 2. NIM
        $this->form_validation->set_rules('nim', 'NIM', 'required|trim|exact_length[10]|is_unique[user.nim]', [
            'required' => 'Perlu diisi.',
            'exact_length' => 'Masukkan NIM yang sesuai.',
            'is_unique' => 'NIM sudah digunakan.'
        ]);

        // 3. Email
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', [
            'required' => 'Perlu diisi.',
            'valid_email' => 'Email tidak sesuai.',
            'is_unique' => 'Email sudah digunakan.'
        ]);

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



        // Jika tidak lolos form validation
        if ($this->form_validation->run() == false) {

            // Maka kembalikan ke halaman itu

            // Judul
            $data['title'] = 'Buat Akun';

            // Isi
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/registration');
            $this->load->view('templates/auth_footer');

        // Jika lolos form validation
        } else {

            // Membuat variabel email
            $email = htmlspecialchars($this->input->post('email', true));

            // Jika data berhasil ditambahkan
            $data = [
                'username' => htmlspecialchars($this->input->post('username', true)),

                'nim' => htmlspecialchars($this->input->post('nim', true)),

                'email' => $email,

                'image' => 'user.png',

                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),

                'role_id' => 2,

                'is_active' => 0,

                'created_at' => date("Y-m-d") . " " . date("H:i:s"),

                'updated_at' => date("Y-m-d") . " " . date("H:i:s")
            ];

            // BUAT TOKEN AKTIVASI EMAIL
            $token = rand(111111,999999);

            // CEK APAKAH TOKEN YANG ADA DI DATABASE ADA YANG SAMA
            $token_sama = $this->db->get_where('user_token', ['token' => $token])->row_array();

            // JIKA ADA TOKEN YANG SAMA BUAT ANGKA RANDOM LAGI
            if($token_sama) {

                $token = rand(111111,999999);

                // CEK APAKAH TOKEN YANG ADA DI DATABASE ADA YANG SAMA
                $token_sama = $this->db->get_where('user_token', ['token' => $token])->row_array();

                if($token_sama) {

                    $token = rand(111111,999999);
    
                    // CEK APAKAH TOKEN YANG ADA DI DATABASE ADA YANG SAMA
                    $token_sama = $this->db->get_where('user_token', ['token' => $token])->row_array();

                    if($token_sama) {

                        $token = rand(111111,999999);
        
                        // CEK APAKAH TOKEN YANG ADA DI DATABASE ADA YANG SAMA
                        $token_sama = $this->db->get_where('user_token', ['token' => $token])->row_array();
        
                    } else {

                        // Menyiapkan data-data yang akan diinput sebagai token di database
                        $user_token = [
                            'email' => $email,
                            'token' => $token,
                            'date_created' => time()
                        ];
            
                        // Memasukkan data user yang mendaftar ke table user
                        $this->db->insert('user', $data);
            
                        // Memasukkan keperluan aktivasi akun ke tabel user_token
                        $this->db->insert('user_token', $user_token);
            
                        // Mengirimkan Email
                        $this->_sendEmail($email, $token, 'verify');
            
                        // Menampilkan pesan flas AKHUB BARU BERHASIL DIBUAT dulu sebelum redirect
                        $this->session->set_flashdata('akun_baru', 'Selamat! Anda sudah berhasil membuat akun. Silahkan <strong>cek kotak masuk email Anda/spam</strong> untuk mendapatkan kode verifikasi.');
            
                        // Kembali ke controller Auth saat berhasil akun
                        redirect('auth/verificationcode');
                    }
    
                } else {

                    // Menyiapkan data-data yang akan diinput sebagai token di database
                    $user_token = [
                        'email' => $email,
                        'token' => $token,
                        'date_created' => time()
                    ];
        
                    // Memasukkan data user yang mendaftar ke table user
                    $this->db->insert('user', $data);
        
                    // Memasukkan keperluan aktivasi akun ke tabel user_token
                    $this->db->insert('user_token', $user_token);
        
                    // Mengirimkan Email
                    $this->_sendEmail($email, $token, 'verify');
        
                    // Menampilkan pesan flas AKHUB BARU BERHASIL DIBUAT dulu sebelum redirect
                    $this->session->set_flashdata('akun_baru', 'Selamat! Anda sudah berhasil membuat akun. Silahkan <strong>cek kotak masuk email Anda/spam</strong> untuk mendapatkan kode verifikasi.');
        
                    // Kembali ke controller Auth saat berhasil akun
                    redirect('auth/verificationcode');
                }

            } else {

                // Menyiapkan data-data yang akan diinput sebagai token di database
                $user_token = [
                    'email' => $email,
                    'token' => $token,
                    'date_created' => time()
                ];
    
                // Memasukkan data user yang mendaftar ke table user
                $this->db->insert('user', $data);
    
                // Memasukkan keperluan aktivasi akun ke tabel user_token
                $this->db->insert('user_token', $user_token);
    
                // Mengirimkan Email
                $this->_sendEmail($email, $token, 'verify');
    
                // Menampilkan pesan flas AKHUB BARU BERHASIL DIBUAT dulu sebelum redirect
                $this->session->set_flashdata('akun_baru', 'Selamat! Anda sudah berhasil membuat akun. Silahkan <strong>cek kotak masuk email Anda/spam</strong> untuk mendapatkan kode verifikasi.');
    
                // Kembali ke controller Auth saat berhasil akun
                redirect('auth/verificationcode');
            }
            
        }
    }



    // Method untuk mengatasi user yang lupa password
    public function forgotPassword()
    {
        // Email
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email', [
            'required' => 'Perlu diisi.',
            'valid_email' => 'Email tidak sesuai.'
        ]);

        // Jika form validation gagal
        if ($this->form_validation->run() == false) {

            // Maka kembali ke halaman Forgot Password

            // Judul
            $data['title'] = 'Forgot Password';

            // Isi
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/forgot-password');
            $this->load->view('templates/auth_footer');

        // Jika form validation berhasil
        } else {

            // Maka ambil email yang dimasukkan ke input oleh user
            $email = $this->input->post('email');
            
            // Ambil row pada tabel user berdasarkan email tersebut
            $user = $this->db->get_where('user', ['email' => $email, 'is_active' => 1])->row_array();

            // Jika variabel user ada ada valid atau terbentuk
            if($user) {
                
                // Membuat 6 angka random
                $token = rand(111111,999999);

                // CEK APAKAH TOKEN YANG ADA DI DATABASE ADA YANG SAMA
                $token_sama = $this->db->get_where('user_token', ['token' => $token])->row_array();

                if($token_sama) {

                    // Membuat 6 angka random
                    $token = rand(111111,999999);

                    // CEK APAKAH TOKEN YANG ADA DI DATABASE ADA YANG SAMA
                    $token_sama = $this->db->get_where('user_token', ['token' => $token])->row_array();

                    if($token_sama) {

                        // Membuat 6 angka random
                        $token = rand(111111,999999);

                        // CEK APAKAH TOKEN YANG ADA DI DATABASE ADA YANG SAMA
                        $token_sama = $this->db->get_where('user_token', ['token' => $token])->row_array();

                        if($token_sama) {

                            // Membuat 6 angka random
                            $token = rand(111111,999999);

                            // CEK APAKAH TOKEN YANG ADA DI DATABASE ADA YANG SAMA
                            $token_sama = $this->db->get_where('user_token', ['token' => $token])->row_array();

                        } else {

                            // Membuat array assoc untuk dimasukkan ke tabel user_token
                            $user_token = [
                                'email' => $email,
                                'token' => $token,
                                'date_created' => time()
                            ];

                            // Insert data ke table user_token
                            $this->db->insert('user_token', $user_token);

                            // Kirim email dengan type 'forgot' yang khusus untuk menangani forgot password
                            $this->_sendEmail($email, $token, 'forgot');

                            // Tampilkan pesan berhasil forgot password
                            $this->session->set_flashdata('forgot_berhasil', 'Silahkan <strong>cek kotak masuk email Anda/spam</strong> untuk mendapatkan kode untuk memperbarui password Anda.');

                            // Kembali ke halam forgot password
                            redirect('auth/verificationCodeForgot');
                        }

                    } else {
                        // Membuat array assoc untuk dimasukkan ke tabel user_token
                        $user_token = [
                            'email' => $email,
                            'token' => $token,
                            'date_created' => time()
                        ];

                        // Insert data ke table user_token
                        $this->db->insert('user_token', $user_token);

                        // Kirim email dengan type 'forgot' yang khusus untuk menangani forgot password
                        $this->_sendEmail($email, $token, 'forgot');

                        // Tampilkan pesan berhasil forgot password
                        $this->session->set_flashdata('forgot_berhasil', 'Silahkan <strong>cek kotak masuk email Anda/spam</strong> untuk mendapatkan kode untuk memperbarui password Anda.');

                        // Kembali ke halam forgot password
                        redirect('auth/verificationCodeForgot');
                    }

                } else {
                    // Membuat array assoc untuk dimasukkan ke tabel user_token
                    $user_token = [
                        'email' => $email,
                        'token' => $token,
                        'date_created' => time()
                    ];

                    // Insert data ke table user_token
                    $this->db->insert('user_token', $user_token);

                    // Kirim email dengan type 'forgot' yang khusus untuk menangani forgot password
                    $this->_sendEmail($email, $token, 'forgot');

                    // Tampilkan pesan berhasil forgot password
                    $this->session->set_flashdata('forgot_berhasil', 'Silahkan <strong>cek kotak masuk email Anda/spam</strong> untuk mendapatkan kode untuk memperbarui password Anda.');

                    // Kembali ke halam forgot password
                    redirect('auth/verificationCodeForgot');
                }
                
            // Jika variabel user tidak ada isinya
            } else {

                // Tampilkan pesan EMAIL BELUM TERDAFTAR atau BELUM TERAKTIVASI
                $this->session->set_flashdata('email_belum_terdaftar', 'Email yang Anda masukkan belum terdaftar atau belum teraktivasi.');

                // Tampilkan pesan tersebut pada halaman forgot password
                redirect('auth/forgotpassword');
            }

        }

    }


    
    // Method untuk MENGIRIM EMAIL
    private function _sendEmail($email, $token, $type)
    {
        $dataEmail = $this->Auth_model->getDataEmail();

        // KONFIGURASI UNTUK MENGIRIMAN EMAIL
        $config = [
            'protocol' => 'smtp',
            'smtp_host' => $dataEmail[0]['host'],
            'smtp_user' => $dataEmail[0]['email'],
            'smtp_pass' => $dataEmail[0]['pw'],
            'smtp_port' => '465',
            'mailtype' => 'html',
            'charset' => 'utf-8',
            'newline' => "\r\n",
            'smtp_timeout' => '30',
            'mailpath' => '/usr/sbin/sendmail',
            'protocol' => 'sendmail'
        ];

        // Panggil library email, masukkan konfigurasi email sebagai argumen kedua
        $this->load->library('email', $config);

        // MENGATASI ERROR PORT 25
        $this->email->initialize($config);

        // Pengirim dan alias pengirim email
        $this->email->from($dataEmail[0]['email'], 'Admin Physics Yourself');

        // Alamat email yang dituju
        $this->email->to($email);

        if($type == 'verify') {
            
            // Subject Email
            $this->email->subject('Verifikasi Akun');
    
            // Isi dari email
            $this->email->message('<b>Selamat datang di PHYSICS YOURSELF.</b><br><br>Kode verifikasi Anda : <b>' . $token . '</b><br><br>Silahkan hubungi admin lewat email ini jika ada kendala atau pertanyaan. Terima kasih.');

        } else if($type == 'forgot') {

            // Subject Email
            $this->email->subject('Reset Password');
    
            // Isi dari email
            $this->email->message('<b>Terima kasih sudah belajar di PHYSICS YOURSELF.</b><br><br>Ini adalah kode verifikasi untuk memperbarui password Anda : <b>' . $token . '</b><br><br>Silahkan hubungi admin lewat email ini jika ada kendala atau pertanyaan. Terima kasih.');
        }


        // Mengirim email yang sudah dibuat
        if($this->email->send()) {
            return true;
        } else {
            echo $this->email->print_debugger();
            die;
        }

    }



    // Method untuk mengolah password baru yang dimasukkan oleh user
    public function verificationCode()
    {

        // Token
        $this->form_validation->set_rules('token', 'Token', 'required|trim|numeric|max_length[6]', [
            'required' => 'Perlu diisi.',
            'numeric' => 'Kode verifikasi salah.',
            'max_length' => 'Kode verifikasi salah.'
        ]);

        // Jika form validation gagal
        if ($this->form_validation->run() == false) {

            // maka kembalikan ke halaman Reset Password

            // Judul/Title
            $data['title'] = 'Verifikasi Akun';

            // Untuk isi
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/verification');
            $this->load->view('templates/auth_footer');

        // Jika form validation berhasil
        } else {

            // maka buka method private _ubahPassword
            $this->_verificationCode();
            
        }
        
    }



    // Method ini yang akan dituju user setelah klik link RESET PASSWORD
    private function _verificationCode()
    {
        
        // Ambi data email yang dikirim melalui URL link RESET PASSWORD
        $token = $this->input->post('token');
        
        $user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();
        
        // Jika data pada tabel user_token yang diambil berdasarkan token ditemukan
        if($user_token) {

            // Ambil emailnya
            $email = $user_token['email'];

            // Lanjut cek masa berlaku token
            // Jika masa berlaku token tidak lebih dari 24 jam atau dibandingkan waktu sekarang
            if(time() - $user_token['date_created'] < (60 * 60 * 24)) {

                // maka ubah status dari belum aktif menjadi aktif
                $this->db->set('is_active', 1);

                // Pada akun dengan email tersebut
                $this->db->where('email', $email);

                // Update data user
                $this->db->update('user');

                // Hapus token di database
                $this->db->delete('user_token', ['email' => $email]);

                // Tampilkan flash message berhasil aktifasi
                $this->session->set_flashdata('akun_aktif', 'Akun Anda sudah aktif. Silahkan login.');

                // Kembalikan ke auth
                redirect('auth');

            // Jika masa waktu validasi token melebihi 24 jam
            } else {

                // mqka hapus data pendaftaran user pada tabel user
                $this->db->delete('user', ['email' => $email]);

                // maka hapus token di database
                $this->db->delete('user_token', ['email' => $email]);


                // Tampilkan pesan TOKEN SUDAH TIDAK BERLAKU
                $this->session->set_flashdata('waktu_habis', 'Aktivasi akun Anda gagal. Kode verifikasi sudah tidak berlaku.');

                // Kembalikan ke auth
                redirect('auth');
            }

        // Jika TOKEN TIDAK DITEMUKAN pada tabel user_token
        } else {

            // maka tampilkan pesan TOKEN TIDAK SAH
            $this->session->set_flashdata('token_salah', 'Aktivasi akun Anda gagal. Kode verifikasi tidak sah.');

            // Kembalikan ke auth
            redirect('auth');
        }

    }



    // Method untuk mengolah password baru yang dimasukkan oleh user
    public function verificationCodeForgot()
    {

        // Token
        $this->form_validation->set_rules('token', 'Token', 'required|trim|numeric|max_length[6]', [
            'required' => 'Perlu diisi.',
            'numeric' => 'Token tidak sesuai format.',
            'max_length' => 'Kode verifikasi salah.'
        ]);

        // Jika form validation gagal
        if ($this->form_validation->run() == false) {

            // maka kembalikan ke halaman Reset Password

            // Judul/Title
            $data['title'] = 'Verifikasi Lupa Password';

            // Untuk isi
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/verification-forgot');
            $this->load->view('templates/auth_footer');

        // Jika form validation berhasil
        } else {

            $this->_verificationCodeForgot();
            
        }
        
    }



    // Method ini yang akan dituju user setelah klik link RESET PASSWORD
    private function _verificationCodeForgot()
    {
        
        // Ambi data email yang dikirim melalui URL link RESET PASSWORD
        $token = $this->input->post('token');
        
        $user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();
        
        // Jika data pada tabel user_token yang diambil berdasarkan token ditemukan
        if($user_token) {

            // Ambil emailnya
            $email = $user_token['email'];

            // Lanjut cek masa berlaku token
            // Jika masa berlaku token tidak lebih dari 24 jam atau dibandingkan waktu sekarang
            if(time() - $user_token['date_created'] < (60 * 60 * 24)) {

                $data = [
                    'email' => $email
                ];

                $this->session->set_userdata($data);

                // Hapus token di database
                $this->db->delete('user_token', ['email' => $email]);

                // Kembalikan ke auth
                redirect('auth/ubahpassword');

            // Jika masa waktu validasi token melebihi 24 jam
            } else {

                // mqka hapus data pendaftaran user pada tabel user
                $this->db->delete('user', ['email' => $email]);

                // maka hapus token di database
                $this->db->delete('user_token', ['email' => $email]);


                // Tampilkan pesan TOKEN SUDAH TIDAK BERLAKU
                $this->session->set_flashdata('waktu_habis', 'Anda gagal memperbarui password. Kode verifikasi sudah tidak berlaku.');

                // Kembalikan ke auth
                redirect('auth');
            }

        // Jika TOKEN TIDAK DITEMUKAN pada tabel user_token
        } else {

            // maka tampilkan pesan TOKEN TIDAK SAH
            $this->session->set_flashdata('token_salah', 'Anda gagal memperbarui password. Kode verifikasi tidak sah.');

            // Kembalikan ke auth
            redirect('auth/verificationCodeForgot');
        }

    }



    // Method untuk mengolah password baru yang dimasukkan oleh user
    public function ubahPassword()
    {
        
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

        // Jika form validation gagal
        if ($this->form_validation->run() == false) {

            // maka kembalikan ke halaman Reset Password

            // Judul/Title
            $data['title'] = 'Reset Password';

            // Untuk isi
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/reset-password');
            $this->load->view('templates/auth_footer');

        // Jika form validation berhasil
        } else {

            // maka buka method private _ubahPassword
            $this->_ubahPassword();
            
        }
        
    }



    // Method private untuk mengganti password user dengan yang baru pada FORGOT PASSWORD
    private function _ubahPassword()
    {

        // Menyimpan data session email ke variabel email
        $email = $this->session->userdata('email');

        // Jika data berhasil ditambahkan
        $data = [
            'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT)
        ];

        // Memasukkan $data ke tabel user db pyapp
        $this->db->where('email', $email);
        $this->db->update('user', $data);

        // Buat pesan flash UBAH PASSWORD BERHASIL
        $this->session->set_flashdata('ganti_password', 'Anda berhasil mengubah password. Silahkan login kembali.');

        $this->session->unset_userdata('email');

        // Tampilkan pesan flash pada controller Auth
        redirect('auth');
    }
    


    // Method LOGOUT
    public function logout()
    {

        // Tugasnya adalah membersihkan session sambil mengembalikan ke halaman login
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');
        $this->session->unset_userdata('materi_id');
        $this->session->unset_userdata('materi');
        $this->session->unset_userdata('sub_materi_id');
        $this->session->unset_userdata('sub_materi');
        $this->session->unset_userdata('card_number');
        $this->session->unset_userdata('total_card');
        $this->session->unset_userdata('total_pertanyaan');

        // Menampilkan pesan LOGOUT
        $this->session->set_flashdata('logout', 'Anda sudah logout.');

        // Kembali ke controller Auth saat logout
        redirect('auth');
    }


}
