<!DOCTYPE html>
<html lang="en" dir="rtl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="icon" href="<?= base_url() ?>assets/unkartur/logoPT.png">
    <title>SIAKAD UNKARTUR</title>
    <link rel="stylesheet" href="<?= base_url() ?>/assets/compiled/css/app.rtl.css">
    <link rel="stylesheet" href="<?= base_url() ?>/assets/compiled/css/auth.css">
    <!-- <link rel="stylesheet" href="<?= base_url() ?>/assets/compiled/css/app.css"> -->
    <link rel="stylesheet" href="<?= base_url() ?>/assets/compiled/css/app-dark.css">
    <!-- <link rel="stylesheet" href="<?= base_url() ?>/assets/compiled/css/iconly.css"> -->
    <link rel="stylesheet" href="<?= base_url() ?>/assets/extensions/sweetalert2/sweetalert2.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>/assets/extensions/sweetalert2/sweetalert2.css">
    <!-- <link rel="stylesheet" href="<?= base_url() ?>/assets/custom.css"> -->
    <!-- <link rel="stylesheet" href="<?= base_url() ?>/assets/extensions/@icon/dripicons/dripicons.css">
    <link rel="stylesheet" href="<?= base_url() ?>/assets/compiled/css/ui-icons-dripicons.css">
    <link rel="stylesheet" href="<?= base_url() ?>/assets/extensions/@fortawesome/fontawesome-free/css/all.min.css"> -->
    <link rel="stylesheet" href="<?= base_url() ?>/assets/extensions/datatables.net-bs5/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>/assets/compiled/css/table-datatable-jquery.css">

</head>

<body>
    <script src="<?= base_url() ?>assets/static/js/initTheme.js"></script>
    <div id="auth">

        <div class="row h-100">
            <div class="col-lg-5 col-12">
                <div id="auth-left">
                    <div class="auth-logo">
                        <a href="#"><img src="<?= base_url() ?>assets/unkartur/logopt2.png" alt="Logo"></a>
                    </div>
                    <h1 class="auth-title">Forgot Password</h1>
                    <p class="auth-subtitle mb-5">Input your email and we will send you reset password link</p>

                    <form action="index.html">
                        <div class="form-group position-relative has-icon-left mb-4">
                            <input type="text" name="nim" id="nim" class="form-control form-control-xl" placeholder="NIM">
                            <div class="form-control-icon">
                                <i class="bi bi-envelope"></i>
                            </div>
                        </div>
                        <button class="btn btn-primary btn-block btn-lg shadow-lg mt-5">Send</button>
                    </form>
                    <div class="text-center mt-5 text-lg fs-4">
                        <p class='text-gray-600'>Remember your account? <a href="<?= base_url('login') ?>" class="font-bold">Log in</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-7 d-none d-lg-block">
                <div id="auth-right">

                </div>
            </div>
        </div>

    </div>
    <script src="<?= base_url() ?>assets/static/js/components/dark.js"></script>
    <!-- <script src="<?= base_url() ?>assets/static/js/pages/horizontal-layout.js"></script> -->
    <script src="<?= base_url() ?>assets/extensions/perfect-scrollbar/perfect-scrollbar.min.js"></script>

    <script src="<?= base_url() ?>assets/compiled/js/app.js"></script>

    <script src="<?= base_url() ?>assets/extensions/jquery/jquery.min.js"></script>
    <!-- <script src="<?= base_url() ?>assets/extensions/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<?= base_url() ?>assets/extensions/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
    <script src="<?= base_url() ?>assets/static/js/pages/datatables.js"></script>

    <script src="<?= base_url() ?>assets/extensions/apexcharts/apexcharts.min.js"></script>
    <script src="<?= base_url() ?>assets/static/js/pages/dashboard.js"></script> -->
    <script src="<?= base_url() ?>assets/extensions/sweetalert2/sweetalert2.min.js"></script>
    <script src="<?= base_url() ?>assets/extensions/sweetalert2/sweetalert2.js"></script>
</body>

</html>