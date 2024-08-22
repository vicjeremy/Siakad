<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_login extends CI_Model
{
        public function cek_dosen_nim($nim) {
        return $this->db->get_where('tbl_dosen', ['nip' => $nim])->row_array();
    }
    public function cek_siswa_nim($nim) {
        $this->db->select('*');
        $this->db->from('tbl_mahasiswa');
        $this->db->join('tbl_jurusan', 'tbl_mahasiswa.jrs_id=tbl_jurusan.jrs_id');
        $this->db->where('tbl_mahasiswa.nim', $nim);
        return $this->db->get()->row_array();
    }


}
