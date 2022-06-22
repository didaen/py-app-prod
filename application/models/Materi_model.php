<?php

class Materi_model extends CI_model
{

    // METHOD INI UNTUK MENAMPILKAN SELURUH MATERI
    public function getAllMateri()
    {
        // Method
        return $this->db->get('materi')->result_array();
    }

    // METHOD UNTUK MENDAPATKAN NAMA MATERI BERDASARKAN ID MATERI
    public function getMateriNameById($materi_id)
    {
        return $this->db->get_where('materi', ['id' => $materi_id])->row_array();
    }

    // METHOD INI UNTUK MENAMPILKAN SUBMATERI DARI MATERI YANG DIPILIH
    public function getSubMateriByMateriId($materi_id)
    {
        // Method
        return $this->db->get_where('1_sub_materi', ['materi' => $materi_id])->result_array();
    }

    // METHOD UNTUK MENDAPATKAN NAMA SUB MATERI BERDASARKAN ID SUB MATERI
    public function getSubMateriNameById($sub_materi_id)
    {
        return $this->db->get_where('1_sub_materi', ['id' => $sub_materi_id])->row_array();
    }

    // METHOD INI UNTUK MENAMPILKAN JUMLAH CARD BERDASARKAN ID MATERI DAN ID SUB MATERI
    public function getTotalCardByMateriIdAndSubMateriId($materi_id, $sub_materi_id)
    {
        // Pada tabel card hanya ada code sub_materi. Jadi variable yg dikirim ini haruslah id dari submateri yang dipilih. Bukan nama sub_materi
        return $this->db->get_where('2_card', [
            'materi' => $materi_id,
            'sub_materi' => $sub_materi_id
        ])->row_array();
    }



    // Menambahkan method ini untuk menampilkan informasi card pada menu dropdown
    public function getInfoCardByMateriAndSubMateriId($materi_id, $sub_materi_id)
    {
        $this->db->select('*');
        $this->db->from('3_card_category');
        $this->db->where('materi', $materi_id);
        $this->db->where('sub_materi', $sub_materi_id);
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

    

    // Method untuk mendapatkan total pertanyaan sesuai materi id, sub materi id, dan card number
    public function getTotalPertanyaan($materi_id, $sub_materi_id, $card_number)
    {
        $this->db->select('total_pertanyaan');
        $this->db->from('7_total_pertanyaan');
        $this->db->where('materi', $materi_id);
        $this->db->where('sub_materi', $sub_materi_id);
        $this->db->where('card', $card_number);
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->row_array();
        } else {
            return false;
        }
    }


    // Method untuk mendapatkan jawaban sesui materi id, sub materi id, dan card number
    public function getAnswers($materi_id, $sub_materi_id, $card_number, $total_pertanyaan)
    {
        $pertanyaan = '';
        
            for ($i = 1; $i < $total_pertanyaan; $i++) {
                $pertanyaan .= "answ_" . $i . ", ";
                
            }
        
        $pertanyaan .= "answ_" . $total_pertanyaan;

        $this->db->select($pertanyaan);
        $this->db->from('6_card_answer');
        $this->db->where('materi', $materi_id);
        $this->db->where('sub_materi', $sub_materi_id);
        $this->db->where('card', $card_number);
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->row_array();
        } else {
            return false;
        }
    }

    // Method ini untuk mengambil jawaban user jika ada
    public function getJawabanCardUser($user_id, $materi_id, $sub_materi_id, $card_number, $total_pertanyaan)
    {
        $pertanyaan = '';
        
            for ($i = 1; $i < $total_pertanyaan; $i++) {
                $pertanyaan .= "answ_" . $i . ", ";
                
            }
        
        $pertanyaan .= "answ_" . $total_pertanyaan;

        $this->db->select($pertanyaan);
        $this->db->from('card_answer_user');
        $this->db->where('user_id', $user_id);
        $this->db->where('materi', $materi_id);
        $this->db->where('sub_materi', $sub_materi_id);
        $this->db->where('card', $card_number);
        $this->db->order_by('time', 'DESC');
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->row_array();
        } else {
            return false;
        }
    }



    // Method untuk mengambil jumlah klik yang telah user lakukan untuk membuka kuncu jawaban
    public function getJumlahKlik($username, $materi_id, $sub_materi_id, $card) 
    {
        $this->db->select('jumlah_klik');
        $this->db->from('show_answers_log');
        $this->db->where('username', $username);
        $this->db->where('materi', $materi_id);
        $this->db->where('sub_materi', $sub_materi_id);
        $this->db->where('card', $card);
        $this->db->order_by('time', 'DESC');
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->row_array();
        } else {
            return false;
        }
    }



    // Method untuk mengambil kunci jawaban
    public function getAnswerKey($materi_id, $sub_materi_id, $card)
    {
        $this->db->select('*');
        $this->db->from('5_kunci_jawaban');
        $this->db->where('materi', $materi_id);
        $this->db->where('sub_materi', $sub_materi_id);
        $this->db->where('card', $card);
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->result_array();
        } else {
            return false;
        }
    }



    // Method untuk mengambil materi dalam card
    public function getMateriCard($materi_id, $sub_materi_id, $card)
    {
        $this->db->select('*');
        $this->db->from('4_card_materi');
        $this->db->where('materi', $materi_id);
        $this->db->where('sub_materi', $sub_materi_id);
        $this->db->where('card', $card);
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->result_array();
        } else {
            return false;
        }
    }



    // Method untuk mengambil penjelasan dan latihan soal pada database
    public function getLatihanSoal($materi_id, $sub_materi_id, $card_number)
    {
        $this->db->select('*');
        $this->db->from('8_card_latihan_soal');
        $this->db->where('materi', $materi_id);
        $this->db->where('sub_materi', $sub_materi_id);
        $this->db->where('card', $card_number);
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->result_array();
        } else {
            return false;
        }
    }



    // Method untuk memanggil jenis atau kategori suatu card termasuk belajar atau latihan
    public function getJenisCard($materi_id, $sub_materi_id, $card_number)
    {
        $this->db->select('jenis_card', 'judul_card');
        $this->db->from('3_card_category');
        $this->db->where('materi', $materi_id);
        $this->db->where('sub_materi', $sub_materi_id);
        $this->db->where('card', $card_number);
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->row_array();
        } else {
            return false;
        }
    }

    // Method untuk memanggil jenis atau kategori suatu card termasuk belajar atau latihan
    public function getKeteranganJenisCard($jenis_card)
    {
        $this->db->select('keterangan');
        $this->db->from('keterangan_jenis_card');
        $this->db->where('jenis_card', $jenis_card);
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            return $query->row_array();
        } else {
            return false;
        }
    }

}
