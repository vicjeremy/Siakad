<?php
class M_mhs extends CI_Model
{
    // Nama tabel dalam database
    var $table = 'tbl_mahasiswa';

    // Daftar kolom yang bisa diurutkan dan dicari
    var $column_order = array('mhs_id', 'nim', 'nama', 'nama_jrs', 'fakultas', 'smt', 'sks', 'status', 'angkatan');

    // Default order untuk pengurutan data
    var $order = array('mhs_id', 'nim', 'nama', 'nama_jrs', 'fakultas', 'smt', 'sks', 'status', 'angkatan');

    // Fungsi private untuk membangun query data
    private function _get_data_query()
    {
        // Mengatur tabel utama dari query
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->join('tbl_jurusan', 'tbl_mahasiswa.jrs_id = tbl_jurusan.jrs_id');

        // Menambahkan kondisi pencarian jika ada nilai yang dicari
        if (isset($_POST['search']['value'])) {
            $this->db->or_like('nim', $_POST['search']['value']);
            $this->db->or_like('nama', $_POST['search']['value']);
            $this->db->or_like('nama_jrs', $_POST['search']['value']);
            $this->db->or_like('fakultas', $_POST['search']['value']);
            $this->db->or_like('smt', $_POST['search']['value']);
            $this->db->or_like('sks', $_POST['search']['value']);
            $this->db->or_like('status', $_POST['search']['value']);
            $this->db->or_like('angkatan', $_POST['search']['value']);
        }

        // Menambahkan kondisi pengurutan jika ada
        if (isset($_POST['order'])) {
            $this->db->order_by($this->order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } else {
            // Pengurutan default jika tidak ada yang ditentukan
            $this->db->order_by('mhs_id', 'DESC');
        }
    }

    // Mendapatkan data untuk DataTables
    public function getDataTables()
    {
        // Memanggil fungsi untuk membangun query data
        $this->_get_data_query();

        // Mengatur batasan jumlah data yang diambil
        if ($_POST['length'] != -1) {
            $this->db->limit($_POST['length'], $_POST['start']);
        }

        // Menjalankan query dan mengembalikan hasilnya
        $query = $this->db->get();
        return $query->result();
    }

    // Menghitung jumlah data yang sudah difilter
    public function count_filtered_data()
    {
        // Memanggil fungsi untuk membangun query data
        $this->_get_data_query();

        // Menjalankan query dan mengembalikan jumlah baris hasil
        $query = $this->db->get();
        return $query->num_rows();
    }

    // Menghitung jumlah total data tanpa filtering
    public function count_all_data()
    {
        // Mengatur tabel utama dari query
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->join('tbl_jurusan', 'tbl_mahasiswa.jrs_id = tbl_jurusan.jrs_id');

        // Mengembalikan jumlah total baris hasil query
        return $this->db->count_all_results();
    }

    public function create($data)
    {
        $this->db->insert($this->table, $data);
        return $this->db->affected_rows();
    }

    public function getdataById($mhs_id)
    {
        return $this->db->get_where($this->table, ['mhs_id' => $mhs_id])->row();
    }

    public function update($where, $data)
    {
        $this->db->update($this->table, $data, $where);
        return $this->db->affected_rows();
    }
    public function delete($mhs_id)
    {
        $this->db->delete($this->table, ['mhs_id' => $mhs_id]);
        return $this->db->affected_rows();
    }
}