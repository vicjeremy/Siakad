<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Daftar_akun extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_mhs'); //load model M_mhs
    }
    public function index()
    {
        $data = array(
            'nama' => $this->session->userdata('ses_nama'),
            'akses' => $this->session->userdata('akses')
        );
        $this->load->view('template_admin/header');
        $this->load->view('template_admin/navbar', $data);
        $this->load->view('v_admin/v_mahasiswa', $data);
        $this->load->view('template_admin/footer');
    }

    public function getData()
    {
        $results = $this->M_mhs->getDataTables();
        $data = [];
        $no = $_POST['start'];
        foreach ($results as $result) {
            $row = array();
            $row[] = ++$no;
            $row[] = $result->nim;
            $row[] = $result->nama;
            // $row[] = $result->jrs_id;
            $row[] = $result->nama_jrs;
            $row[] = $result->fakultas;
            $row[] = $result->smt;
            $row[] = $result->sks;
            $row[] = $result->status;
            $row[] = $result->angkatan;
            $row[] = '
            <a href="#" class="btn icon icon-left btn-info" onclick="byid(' . "'" . $result->mhs_id . "','edit'" . ')"><i data-feather="edit"></i> Edit</a>
            <a href="#" class="btn icon icon-left btn-danger" onclick="byid(' . "'" . $result->mhs_id . "','delete'" . ')"><i data-feather="delete"></i> Delete</a>
            ';
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->M_mhs->count_all_data(),
            "recordsFiltered" => $this->M_mhs->count_filtered_data(),
            "data" => $data,

        );
        $this->output->set_content_type('application/json')->set_output(json_encode($output));
    }

    public function add()
    {
        $data = [
            'nim' => $this->input->post('nim'),
            'nama' => $this->input->post('nama'),
            'jrs_id' => $this->input->post('jurusan'),
            'smt' => $this->input->post('smt'),
            'sks' => $this->input->post('sks'),
            'status' => $this->input->post('status'),
            'angkatan' => $this->input->post('angkatan'),
        ];

        if ($this->M_mhs->create($data) > 0) {
            $message['status'] = 'success';
        } else {
            $message['status'] = 'failed';
        };
        $this->output->set_content_type('application/json')->set_output(json_encode($message));
    }
    public function update()
    {
        $data = [
            'nim' => $this->input->post('nim'),
            'nama' => $this->input->post('nama'),
            // 'jrs_id' => $this->input->post('jurusan'),
            'smt' => $this->input->post('smt'),
            'sks' => $this->input->post('sks'),
            'status' => $this->input->post('status'),
            'angkatan' => $this->input->post('angkatan'),
        ];
        $where = array('mhs_id' => $this->input->post('mhs_id'));
        if ($this->M_mhs->update($where, $data) > 0) {
            $message['status'] = 'success';
        } else {
            $message['status'] = 'failed';
        };
        $this->output->set_content_type('application/json')->set_output(json_encode($message));
    }
    public function delete($mhs_id)
    {
        if ($this->M_mhs->delete($mhs_id) > 0) {
            $message['status'] = 'success';
        } else {
            $message['status'] = 'failed';
        };
        $this->output->set_content_type('application/json')->set_output(json_encode($message));
    }

    public function byid($mhs_id)
    {
        $data = $this->M_mhs->getdataById($mhs_id);
        $this->output->set_content_type('application/json')->set_output(json_encode($data));
    }
}