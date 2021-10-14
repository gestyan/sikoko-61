<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Galeri extends CI_Controller {

	public function __construct()
  {
    setlocale(LC_ALL, 'id_ID.utf8');
    parent::__construct();
    $this->load->model('galeri_model');
	}
	
	public function index()
	{
		$data = [
			'galeri' => $this->galeri_model->get_all_galeri_file()
		];
		$this->load->view('galeri', $data);
	}
}