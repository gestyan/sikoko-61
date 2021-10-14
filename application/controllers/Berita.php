<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Berita extends CI_Controller
{

	public function __construct()
	{
		setlocale(LC_ALL, 'id_ID.utf8');
		parent::__construct();
		$this->load->model('berita_model');
	}

	public function index()
	{
		$data['berita'] = $this->berita_model->get_all_berita();
		return $this->load->view('berita', $data);
	}

	public function detail($id = null)
	{
		$data = [
			'berita' => $this->berita_model->get_berita($id),
			'berita_lain' => $this->berita_model->get_berita_lain($id)
		];
		return $this->load->view('detail_berita', $data);
	}
}
