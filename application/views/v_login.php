<!DOCTYPE html>
<html lang="en" dir="rtl">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="icon" href="<?= base_url() ?>assets/unkartur/logoPT.png">
	<title>SIAKAD UNKARTUR</title>
	<link rel="stylesheet" href="<?= base_url() ?>assets/compiled/css/app.rtl.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/compiled/css/auth.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/compiled/css/app.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/compiled/css/app-dark.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/compiled/css/iconly.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/extensions/sweetalert2/sweetalert2.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/extensions/sweetalert2/sweetalert2.css">
	<!-- <link rel="stylesheet" href="<?= base_url() ?>assets/custom.css"> -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/extensions/@icon/dripicons/dripicons.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/compiled/css/ui-icons-dripicons.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/extensions/@fortawesome/fontawesome-free/css/all.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/extensions/datatables.net-bs5/css/dataTables.bootstrap5.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/compiled/css/table-datatable-jquery.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<style>
		input[type="text"],
		input[type="password"] {
			direction: ltr;
		}
	</style>
</head>

<body>
	<script src="<?= base_url() ?>assets/static/js/initTheme.js"></script>
	<div id="auth">
		<div class="row h-100">
			<div class="col-lg-5">
				<div id="auth-left">
					<div class="auth-logo">
						<a href="#"><img src="<?= base_url() ?>assets/unkartur/logopt2.png" alt="Logo"></a>
					</div>
					<h1 class="auth-title">LOGIN</h1>
					<p class="auth-subtitle mb-3">Masukkan data login Anda dan mulailah perjalanan belajar bersama kami
					</p>
					<?= $this->session->flashdata('message'); ?>
					<form id="login-form">
						<div class="form-group position-relative has-icon-left mb-4">
							<input type="text" id="nim" name="nim" class="group-input form-control form-control-xl" placeholder="NIM" autocomplete="nim" required>
							<div class="input-group form-control-icon">
								<i class="bi bi-person-fill"></i>
							</div>
						</div>
						<div class="form-group position-relative has-icon-left mb-4">
							<input type="password" id="password" name="password" class="group-input form-control form-control-xl" placeholder="Password" autocomplete="current-password" required>
							<div class="input-group form-control-icon">
								<i class="bi bi-shield-lock"></i>
							</div>
						</div>
						<!-- <div class="form-check form-check-lg d-flex align-items-end">
					<input class="form-check-input me-2" type="checkbox" value="" id="flexCheckDefault">
					<label class="form-check-label text-gray-600" for="flexCheckDefault">
						Keep me logged in
					</label>
				</div> -->
						<button type="submit" class="btn btn-primary btn-block btn-lg shadow-lg mt-6 btn-login">Log
							in</button>
					</form>
					<div class="text-center mt-6 text-lg fs-10">
						<p class="text-gray-600">Don't have an account? <a href="<?= base_url('login/regis'); ?>" class="font-bold">Sign
								up</a></p>
						<p><a class="font-bold" href="<?= base_url('login/forgot'); ?>">Forgot password</a></p>
					</div>
				</div>
				<footer class="footer-login d-flex align-items-right justify-content-between">
					<p class="col-2">SIAKAD</p>
					<p class="col-2 d-flex d-none d-md-block justify-content-center">Versi 1.0</p>
					<p class="col-6 d-flex align-items-left justify-content-left">Copyright © 2023 by Vic Jeremy</p>
			</div>
			</footer>
			<div class="col-lg-7 d-none d-lg-block">
				<div id="auth-right">
				</div>
			</div>
		</div>
	</div>
	<script src="<?= base_url() ?>assets/extensions/jquery/jquery.min.js"></script>
	<script src="<?= base_url() ?>assets/static/js/components/dark.js"></script>
	<!-- <script src="<?= base_url() ?>assets/static/js/pages/horizontal-layout.js"></script> -->
	<script src="<?= base_url() ?>assets/extensions/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="<?= base_url() ?>assets/compiled/js/app.js"></script>
	<script src="<?= base_url() ?>assets/extensions/sweetalert2/sweetalert2.min.js"></script>
	<script src="<?= base_url() ?>assets/extensions/sweetalert2/sweetalert2.js"></script>
	<script>
		$(document).ready(function() {
			$('#login-form').on('submit', function(e) {
            e.preventDefault();
			$.ajax({
						url: "<?php echo base_url('Login/autentikasi') ?>",
						type: "POST",
                        data: $(this).serialize(),
                        dataType: 'json',
						success: function(response) {
							if (response.status === "success") {
								Swal.fire({
									icon: 'success',
									title: 'Login Berhasil',
									text: response.message,
									timer: 1500,
									showCancelButton: false,
									showConfirmButton: false
								}).then(function() {
									window.location.href = response.redirect;
								});
							}else {
            Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: response.message || 'An unknown error occurred'
                        });
    						}
    					},
						error: function(xhr, status, error) {
							console.error('AJAX Error:', status, error);
                    console.error('Response Text:', xhr.responseText);
                    let errorMessage = 'An error occurred while processing your request.';
                    try {
                        let responseJson = JSON.parse(xhr.responseText);
                        if (responseJson && responseJson.message) {
                            errorMessage = responseJson.message;
                        }
                    } catch (e) {
                        console.error('Error parsing JSON:', e);
                    }
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: errorMessage
                    });
						}
					});
			});
		});
	</script>
</body>

</html>
