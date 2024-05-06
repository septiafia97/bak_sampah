<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Data</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Data</a></li>
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>client/data">Data Anggota</a></li>
              <li class="breadcrumb-item active">Tambah Data Anggota</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">
						<h5 class="card-title">Tambah Data Anggota</h5>
					</div>
					<div class="card-body">
						<form action="<?php echo base_url();?>/client/simpan" method="post">
							<div class="row">
								<div class="col-lg-4">
									<div class="form-group">
										<label>ID User</label>
										<input type="text" name="id_client" class="form-control" required>
									</div>
									<div class="form-group">
										<label>Nama</label>
										<input type="text" name="nama" class="form-control" required>
									</div>
									<div class="form-group">
										<label>Alamat</label>
										<textarea name="alamat" class="form-control" required rows="3"></textarea>
									</div>
									<div class="form-group">
										<label>Nomor Telepon</label>
										<input type="text" name="no_telp" class="form-control" required>
									</div>
									<div class="form-group">
										<label>E-mail</label>
										<input type="text" name="email" class="form-control" required>
									</div>
								</div>
							</div>
						
					</div>
					<div class="card-footer">
						<button type="submit" class="btn btn-primary"><span class="fa fa-save"></span> Tambah Anggota </button>
						</form>
					</div>
				</div>
			</div>
		</div>
	  </div>
	</div>
</div>