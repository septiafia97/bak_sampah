<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Depan extends CI_Controller {
	public function index() {
		$this->load->view('template/head');
		$this->load->view('template/halaman');
		$this->load->view('template/foot');
	}

	public function about() {
		$this->load->view('template/head');
		$this->load->view('template/about');
		$this->load->view('template/foot');
	}
}