 <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Ubah Password</h5>
      <form action="<?php echo base_url(); ?>/dashboard/ubahpassword" method="post">
		<div class="form-group">
			<label>Password Baru</label>
			<input type="password" name="password" class="form-control">
		</div>
		<div class="form-group">
			<label>Konfirmasi Password Baru</label>
			<input type="password" name="passwordnew" class="form-control">
		</div>
		<button type="submit" class="btn btn-primary"> Submit</button>
	  </form>
    </div>
  </aside>
  <!-- /.control-sidebar -->

</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
