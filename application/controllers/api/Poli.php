<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Poli extends BD_Controller
{

    public function index_get()
    {
        // mengambil data yang di kirim
        $id = $this->get('id');

        // kondisi jika id rekam tidak di temukan 

        if ($id === NULL) {

            // mengambil data dari database
            $poli = $this->db->get('tb_poli')->result_array();
        } else {

            // mengambil data dengan id yang di kirim
            $poli = $this->db->get_where('tb_poli', ['id' => $id])->row_array();
        }

        if ($poli) {
            # response poli jika data poli ada, dan menampilkan semua data poli
            $this->response([
                'status'  => true,
                'data'    => $poli,
                'message' => 'sukses'
            ], REST_Controller::HTTP_OK);
        } else {
            # response poli jika poli tidak ada
            $this->response([
                'status'  => false,
                'message' => 'poli tidak di temukan'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }
}

/* End of file Jadwwal.php */
