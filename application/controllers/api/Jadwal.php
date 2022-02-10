<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Jadwal extends BD_Controller
{

    public function index_get()
    {
        // mengambil data yang di kirim
        $id = $this->get('id');

        // kondisi jika id rekam tidak di temukan 

        if ($id === NULL) {

            // mengambil data dari database
            $jadwal_dokter = $this->db->get('tb_jadwal_dokter')->result_array();
        } else {

            // mengambil data dengan id yang di kirim
            $jadwal_dokter = $this->db->get_where('tb_jadwal_dokter', ['id' => $id])->row_array();
        }

        if ($jadwal_dokter) {
            # response jadwal_dokter jika data jadwal_dokter ada, dan menampilkan semua data jadwal_dokter
            $this->response([
                'status'  => true,
                'data'    => $jadwal_dokter,
                'message' => 'sukses'
            ], REST_Controller::HTTP_OK);
        } else {
            # response jadwal_dokter jika jadwal_dokter tidak ada
            $this->response([
                'status'  => false,
                'message' => 'jadwal dokter tidak di temukan'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }
}

/* End of file Jadwwal.php */
