<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Struktur extends CI_Controller {
	public function index($id = NULL)
	{	
		if ($id == NULL){
			$this->load->view("struktur/bph13");
		} else {
			$this->load->view("struktur/{$id}");
		}
	}
}
