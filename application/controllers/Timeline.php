<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Timeline extends CI_Controller {
	public function index()
	{
		$data = [
			'timeline' => [
				'1' => [
					'acara'      => "Rapat Pleno 1",
					'tanggal'    => "Jumat, 2 Oktober 2020",
					'background' => base_url("assets/galeri/timeline/1_RAPATPLENO1.png")
				],
				'2' => [
					'acara'      => "Kuliah Umum",
					'tanggal'    => "Jumat, 16 Oktober 2020",
					'background' => base_url("assets/galeri/timeline/2_KULIAHUMUM_2.png")
				],
				'3' => [
					'acara'      => "Webinar Sosialisasi PKL",
					'tanggal'    => "Sabtu, 17 Oktober 2020",
					'background' => base_url("assets/galeri/timeline/maskot.png")
				],
				'4' => [
					'acara'      => "Rapat Akbar 1",
					'tanggal'    => "Sabtu, 17 Oktober 2020",
					'background' => base_url("assets/galeri/timeline/3_RAPATAKBAR1.png")
				],
				'5' => [
					'acara'      => "Launching SiKoKo",
					'tanggal'    => "Kamis, 19 Oktober 2020",
					'background' => base_url("assets/galeri/timeline/maskot.png")
				],
				'6' => [
					'acara'      => "Rapat Koordinasi 1",
					'tanggal'    => "Jumat, 13 November 2020",
					'background' => base_url("assets/galeri/timeline/5_RAPATKOORDINASI1_2.png")
				],
				'7' => [
					'acara'      => "Rapat Akbar 2",
					'tanggal'    => "Jumat ,20 November 2020",
					'background' => base_url("assets/galeri/timeline/6_RAPATAKBAR2_2.png")
				],
				'8' => [
					'acara'      => "Rapat Koordinasi 2",
					'tanggal'    => "Jumat, 4 Desember 2020",
					'background' => base_url("assets/galeri/timeline/7_RAPATKOORDINASI2.png")
				],
				'9' => [
					'acara'      => "Presentasi ke Pimpinan Politeknik Statistika STIS",
					'tanggal'    => "11 dan 15 Desember 2020",
					'background' => base_url("assets/galeri/timeline/8_PEMAPARANKEPIMPINAN.png")
				],
				'10' => [
					'acara'      => "Presentasi ke Sestama BPS",
					'tanggal'    => "Rabu, 16 Desember 2020",
					'background' => base_url("assets/galeri/timeline/PEMAPARANSESTAMA.png")
				],
				'11' => [
					'acara'      => "Presentasi ke Dewan Penyantun",
					'tanggal'    => "Selasa, 12 Januari 2021",
					'background' => base_url("assets/galeri/timeline/PresentasiDP.png")
				],
				'12' => [
					'acara'      => "Survei Pendahuluan",
					'tanggal'    => "18-22, 25-29 Januari 2021",
					'background' => base_url("assets/galeri/timeline/maskot.png")
				],
				'13' => [
					'acara'      => "Rapat Akbar 3",
					'tanggal'    => "Sabtu, 30 Januari 2021",
					'background' => base_url("assets/galeri/timeline/11_RAPATAKBAR3.png")
				],
				'14' => [
					'acara'      => "Pelatihan PCL",
					'tanggal'    => "4-8 Februari 2021",
					'background' => base_url("assets/galeri/timeline/10_PELATIHANKUESIONER.png")
				],
				'15' => [
					'acara'      => "Rapat Akbar 4",
					'tanggal'    => "Jumat, 12 Februari 2021",
					'background' => base_url("assets/galeri/timeline/12_RAPATAKBAR4.png")
				],
				'16' => [
					'acara'      => "Doa Bersama",
					'tanggal'    => "Sabtu, 13 Februari 2021",
					'background' => base_url("assets/galeri/timeline/13_DOABERSAMAROHIS.JPG")
				],
				'17' => [
					'acara'      => "Pembukaan Kegiatan Lapangan PKL",
					'tanggal'    => "Selasa, 16 Februari 2021",
					'background' => base_url("assets/galeri/timeline/14_PEMBUKAANKEGIATANLAPANGAN.png")
				],
				'18' => [
					'acara'      => "Pencacahan Online",
					'tanggal'    => "16-28 Februari 2021",
					'background' => base_url("assets/galeri/timeline/16_PENCACAHANONLINE.jpg")
				],
				'19' => [
					'acara'      => "Pencacahan Offline",
					'tanggal'    => "22-26 Februari 2021",
					'background' => base_url("assets/galeri/timeline/15_PENCACAHANOFFLINE.jpg")
				],
				'20' => [
					'acara'      => "Perpanjangan Pencacahan",
					'tanggal'    => "8-14 Maret 2021",
					'background' => base_url("assets/galeri/timeline/maskot.png")
				],
				'21' => [
					'acara'      => "Rapat Analisis Hasil",
					'tanggal'    => "22-24 Juni 2021",
					'background' => base_url("assets/galeri/timeline/17_RAPATANALISISHASIL.png")
				],
				'22' => [
					'acara'      => "Pemaparan Pada Pihak STIS",
					'tanggal'    => "Jumat, 9 Juli 2021",
					'background' => base_url("assets/galeri/timeline/18_PEMAPARAN.png")
				],
				'23' => [
					'acara'      => "Pemaparan Pada Dewan Penyantun",
					'tanggal'    => "Kamis, 12 Agustus 2021",
					'background' => base_url("assets/galeri/timeline/19_PEMAPARAN_DEWAN_PENYANTUN.png")
				],
				'24' => [
					'acara'      => "Webinar Diseminasi PKL",
					'tanggal'    => "Jumat, 10 September 2021",
					'background' => base_url("assets/galeri/timeline/20_WEBINAR.png")
				]
			]
		];
		$this->load->view('timeline', $data);
	}
}