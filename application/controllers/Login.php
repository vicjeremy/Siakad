<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('M_login');
		$this->load->library('form_validation');
        $this->load->helper('url');
	}

	function index()
	{
		// $this->load->view('v_login');
		if ($this->session->userdata('masuk') == TRUE) {
			$url = base_url('Home');
			redirect($url);
		} else {
			$this->load->view('v_login');
		};
	}
	function regis()
	{
		$this->form_validation->set_rules('nim', 'NIM', 'required|trim|is_unique[tbl_mahasiswa.nim]', [
			'is_unique' => "This Nim has already registered!"
		]);
		$this->form_validation->set_rules('nama', 'Nama', 'required|trim');
		$this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', [
			'matches' => 'Password dont match!',
			'min_length' => 'Password too short!'
		]);
		$this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');


		if ($this->form_validation->run() == false) {
			$this->load->view('v_regis');
		} else {
			$data = [
				'nim' => htmlspecialchars($this->input->post('nim', true)),
				'nama' => htmlspecialchars($this->input->post('nama', true)),
				'pass' => sha1($this->input->post('password1')),
				'jrs_id' => 8,
				'status' => 1,

			];
			$this->db->insert('tbl_mahasiswa', $data);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Congratulation! your account has been created. Please Login</div>');
			redirect('login');
		}
	}

	function autentikasi()
	{
        log_message('debug', 'Raw POST data: ' . print_r($_POST, true));
        $this->form_validation->set_message('required', 'Kolom %s harus diisi.');
        $this->form_validation->set_rules('nim', 'NIM', 'required|trim');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');

        if ($this->form_validation->run() == FALSE) {
            $errors = $this->form_validation->error_array();
            log_message('debug', 'Validation errors: ' . print_r($errors, true));
            $error_message = implode(' ', $errors);
            foreach ($errors as $field => $error) {
                $error_message .= $error . " ";
            }
            $response = [
                'status' => 'error',
                'message' => trim($error_message)
            ];
        } else {
		$nim = htmlspecialchars($this->input->post('nim', TRUE), ENT_QUOTES);
		$password = htmlspecialchars($this->input->post('password', TRUE), ENT_QUOTES);
        log_message('debug', 'Attempting login for username: ' . $nim);

        $user = $this->M_login->cek_dosen_nim($nim);

        if ($user && $user['pass'] === md5($password)) {
            if ($user['status'] == '1') { //cek aktif akun
             $this->session->set_userdata('masuk', TRUE);
                if ($user['level'] == '1') { //Akses admin
                 $this->session->set_userdata('ses_nip', $user['nip']);
                 $this->session->set_userdata('ses_pass', $user['pass']);
                 $this->session->set_userdata('akses', 'Administrator');
                 $this->session->set_userdata('ses_id', $user['dsn_id']);
                 $this->session->set_userdata('ses_nama', $user['nama']);
                 
                } else if ($user['level'] == '2') { //akses dosen
                 $this->session->set_userdata('akses', 'Dosen');
                 $this->session->set_userdata('ses_nip', $user['nip']);
                 $this->session->set_userdata('ses_pass', $user['pass']);
                 $this->session->set_userdata('ses_id', $user['dsn_id']);
                 $this->session->set_userdata('ses_nama', $user['nama']);
                 
                } else { //akses keuangan
                 $this->session->set_userdata('akses', 'Keuangan');
                 $this->session->set_userdata('ses_nip', $user['nip']);
                 $this->session->set_userdata('ses_pass', $user['pass']);
                 $this->session->set_userdata('ses_id', $user['dsn_id']);
                 $this->session->set_userdata('ses_nama', $user['nama']);
             }
             $response = [
                    'status' => 'success',
                    'message' => 'Selamat datang di Sia Unkartur',
                    'redirect' => base_url('home')
                ];
            log_message('debug', 'Login successful for user: ' . $nim);
            }else{
                $response = [
                    'status' => 'error',
                    'message' => 'Akun Tidak Aktif'
                ];
            }

        }elseif ($siswa = $this->M_login->cek_siswa_nim($nim)) {
                if ($siswa['pass'] === md5($password)) {
                    if ($siswa['status'] == '1') { //cek aktif akun
                     $this->session->set_userdata('masuk', TRUE);
                     $this->session->set_userdata('akses', 'Mahasiswa');
                     $this->session->set_userdata('ses_id', $siswa['mhs_id']);
                     $this->session->set_userdata('ses_nim', $siswa['nim']);
                     $this->session->set_userdata('ses_nama', $siswa['nama']);
                     $this->session->set_userdata('ses_pass', $siswa['pass']);
                     $this->session->set_userdata('ses_jrs', $siswa['nama_jrs']);
                     $this->session->set_userdata('ses_fakul', $siswa['fakultas']);
                     $this->session->set_userdata('ses_smt', $siswa['smt']);
                     $this->session->set_userdata('ses_sks', $siswa['sks']);
                     $this->session->set_userdata('ses_akt', $siswa['angkatan']);
                        $response = [
                        'status' => 'success',
                        'message' => 'Selamat datang di Sia Unkartur',
                        'redirect' => base_url('home')
                        ];
                        log_message('debug', 'Login successful for user: ' . $nim);
                    }else{
                        $response = [
                        'status' => 'error',
                        'message' => 'Akun Tidak Aktif'
                        ];
                    }
                }
            }else {
                $response = [
                    'status' => 'error',
                    'message' => 'Username atau password salah!'
                ];
                log_message('debug', 'Account not found for username: ' . $nim);
            }
        }
        log_message('debug', 'Final response: ' . print_r($response, true));

        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($response));
    }

	function logout()
	{
		$this->session->sess_destroy();
		$url = base_url();
		redirect($url);
	}

	function forgot()
	{
		$this->load->view('v_forgot');
	}
}
