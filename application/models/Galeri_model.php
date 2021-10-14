<?php
class Galeri_model extends CI_Model
{

  public function __construct()
  {
    parent::__construct();
    $this->load->database();
  }

  /**
   * get_all_galeri_file
   * 
   * Mengambil seluruh file dari suatu folder
   *
   * @param  mixed $folder_name
   * @return void
   */
  public function get_all_galeri_file()
  {
    $this->db->select('*');
    $this->db->from('galeri');
    $arr = $this->db->get()->result_array();
    return $arr;
  }
}
