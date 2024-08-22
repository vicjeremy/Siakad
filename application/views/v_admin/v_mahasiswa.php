<div id="app">
    <div id="main">

        <section class="section">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">
                        Jadwal Kelas Perkuliahan
                    </h5>
                    <br>
                    <button type="button" class="btn btn-outline-success" onclick="add()">Add New
                    </button>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table" id="mhs">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>NIM</th>
                                    <th>Nama Mahasiswa</th>
                                    <th>Jurusan</th>
                                    <th>Fakultas</th>
                                    <th>Semester</th>
                                    <th>SKS</th>
                                    <th>Status</th>
                                    <th>Angkatan</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <!-- Form    -->
        <section id="form-and-scrolling-components">
            <div class="modal fade" id="modalData" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="formTitle">Tambah Data</h5>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                <i data-feather="x"></i>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="#" id="formData">
                                <input type="hidden" name="mhs_id" id="mhs_id" value="">
                                <label for="nim">NIM </label>
                                <div class="form-group">
                                    <input id="nim" name="nim" type="text" placeholder="NIM" class="form-control">
                                </div>
                                <label for="nama">Nama Mahasiswa </label>
                                <div class="form-group">
                                    <input id="nama" name="nama" type="text" placeholder="Nama Mahasiswa"
                                        class="form-control">
                                </div>
                                <!-- <label for="jurusan">Jurusan </label>
                                <div class="form-group">
                                    <select name="jurusan" id="jurusan" class="form-control">
                                        <option value=""> PILIH </option>
                                    </select>
                                <button class="btn btn-primary dropdown-toggle me-1" type="button"
                                    id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Jurusan</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" name="1" href="#">Akuntansi - FEBH</a>
                                    <a class="dropdown-item" name="2" href="#">Manajemen - FEBH</a>
                                    <a class="dropdown-item" name="3" href="#">PBI - FEBH</a>
                                    <a class="dropdown-item" name="4" href="#">Psikologi - FEBH</a>
                                    <a class="dropdown-item" name="5" href="#">MIK - FST</a>
                                    <a class="dropdown-item" name="6" href="#">Sistem Informasi - FST</a>
                                    <a class="dropdown-item" name="7" href="#">Teknologi Pangan - FST</a>
                                    <a class="dropdown-item" name="8" href="#">Belum Ditentukan - Belum Ditentukan</a>
                                </div>
                        </div> -->
                                <label for="smt">Semester </label>
                                <div class="form-group">
                                    <input id="smt" name="smt" type="text" placeholder="Semester" class="form-control">
                                </div>
                                <label for="sks">SKS</label>
                                <div class="form-group">
                                    <input id="sks" name="sks" type="text" placeholder="SKS" class="form-control">
                                </div>
                                <label for="status">Status</label>
                                <div class="form-group">
                                    <input id="status" name="status" type="text" placeholder="Status"
                                        class="form-control">
                                </div>
                                <label for="angkatan">Angkatan</label>
                                <div class="form-group">
                                    <input id="angkatan" name="angkatan" type="text" placeholder="Angkatan"
                                        class="form-control">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-light-secondary" data-bs-dismiss="modal">
                                <i class="bx bx-x d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Tutup</span>
                            </button>
                            <button type="button" id="btnSave" class="btn btn-primary ms-1" onclick="save()">
                                <i class="bx bx-check d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Simpan</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
</div>
</section>
</div>
</div>
<link rel="stylesheet" href="<?= base_url() ?>/assets/compiled/css/app.css">
<script src="<?= base_url() ?>assets/extensions/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="<?= base_url() ?>assets/compiled/js/app.js"></script>
<script src="<?= base_url() ?>assets/extensions/jquery/jquery.min.js"></script>
<script src="<?= base_url() ?>assets/extensions/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>assets/extensions/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script>
var modalData = new bootstrap.Modal(document.getElementById('modalData'), {
    keyboard: false
});
var tableData = $('#mhs');
var formData = $('#formData');
var modalTitle = $('#formTitle');
var btnSave = $('#btnSave');
var saveData;
$(document).ready(function() {
    tableData.DataTable({
        "processing": true,
        "serverSide": true,
        "order": [],
        "ajax": {
            "url": "<?php echo base_url('admin/Daftar_akun/getData/'); ?>",
            "type": "POST"
        },
        "columnDefs": [{
            "target": -1,
            "orderable": false
        }]
    });
});

function reloadTable() {
    tableData.DataTable().ajax.reload();
}

function add() {
    saveData = 'tambah';
    formData[0].reset();
    modalData.show();
    modalTitle.text('Tambah Data');
}

function save() {
    btnSave.text('Mohon Tunggu...');
    btnSave.attr('disabled', true);
    if (saveData == "tambah") {
        url = "<?= base_url("admin/Daftar_akun/add/"); ?>"
    } else {
        url = "<?= base_url("admin/Daftar_akun/update/"); ?>"
    }

    $.ajax({
        url: url,
        type: "POST",
        data: formData.serialize(),
        dataType: "JSON",
        success: function(response) {
            if (response.status == 'success') {
                modalData.hide();
                reloadTable();
            }
        },
        error: function() {
            console.log('error database');
        }
    });
}

function byid(mhs_id, type) {
    if (type == 'edit') {
        saveData = 'edit';
        formData[0].reset();
    }

    $.ajax({
        type: 'GET',
        url: '<?= base_url('admin/Daftar_akun/byid/'); ?>' + mhs_id,
        dataType: "JSON",
        success: function(response) {
            if (type == 'edit') {
                modalTitle.text('Ubah Data');
                btnSave.text('Ubah Data');
                btnSave.attr('disabled', false);
                $('[name="mhs_id"]').val(response.mhs_id);
                $('[name="nim"]').val(response.nim);
                $('[name="nama"]').val(response.nama);
                $('[name="jurusan"]').val(response.jrs_id);
                $('[name="smt"]').val(response.smt);
                $('[name="sks"]').val(response.sks);
                $('[name="status"]').val(response.status);
                $('[name="angkatan"]').val(response.angkatan);
                modalData.show();
            } else {
                var result = confirm('Apakah anda yakin ingin menghapus akun' + response.nim + '?');
                if (result) {
                    deleteData(response.mhs_id);
                }
            }
        }
    });
}

function deleteData(mhs_id) {
    $.ajax({
        type: 'POST',
        url: '<?= base_url('admin/Daftar_akun/delete/'); ?>' + mhs_id,
        dataType: "JSON",
        success: function(response) {
            reloadTable();
        }
    });
}
</script>