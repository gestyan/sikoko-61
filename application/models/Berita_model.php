<?php
class Berita_model extends CI_Model
{

    public function __construct()
    {
        $this->load->library('pagination');
        $this->load->database();
    }
    
    /**
     * get_berita
     *
     * mendapatkan seluruh berita
     * 
     * @return void
     */
    public function get_all_berita()
    {
        $query_sql = "SELECT m.nim, m.nama, m.email, b.id_berita, b.title, b.waktu, b.content, b.foto_berita, b.short_desc
                      FROM sikoko_mahasiswa m, sikoko_berita b
                      WHERE m.nim = b.dibuat
                      ORDER BY b.waktu desc";
        $query = $this->db->query($query_sql);
        return $query->result();
    }
    
    public function get_berita($id){
        $query_sql = "SELECT m.nim, m.nama, m.email, b.id_berita, b.title, b.waktu, b.content, b.foto_berita, b.short_desc
                      FROM sikoko_mahasiswa m, sikoko_berita b
                      WHERE b.id_berita = ? AND m.nim = b.dibuat";
        $query = $this->db->query($query_sql, $id);
        return $query->row();
    }

    public function get_berita_lain($id){
        $query_sql = "SELECT m.nim, m.nama, m.email, b.id_berita, b.title, b.waktu, b.content, b.foto_berita, b.short_desc
                      FROM sikoko_mahasiswa m, sikoko_berita b
                      WHERE b.id_berita != ? AND m.nim = b.dibuat
                      LIMIT 10";
        $query = $this->db->query($query_sql, $id);
        return $query->result();
    }

}
