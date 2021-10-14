<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Risbid extends CI_Controller
{
	public function index()
	{

		$data = [
			'data_riset' => [
				'riset_1' => [
					'riset' => "Riset 1",
					'title' => "Metodologi Survei Online",
					'desc'  => "Survei online merupakan 
											jenis survei dimana responden 
											menjawab kuesioner secara mandiri dan 
											online melalui internet. BPS sebagai 
											lembaga penyediaan data statistik nasional 
											menerapkan metode pendataan online pertama kali pada Sensus 
											Penduduk Online bulan Februari 2020 lalu. 
											Metode ini semakin banyak dibahas mengingat 
											kondisi pandemi COVID-19 yang 
											membatasi pergerakan masyarakat 
											dan teknologi yang berkembang, 
											termasuk dalam pencacahan atau pengumpulan data. 
											Sensus maupun survei online adalah hal baru di 
											Indonesia. Sehingga perlu dilakukannya 
											kajian untuk meminimalisasi permasalahan 
											yang ditimbulkan dari pelaksanaannya dan 
											mengoptimalkan kualitas data yang dikumpulkan. 
											Oleh karena itu, PKL Tahun Ajaran 2020/2021 Riset 1 
											berfokus mengkaji kelemahan serta kendala yang muncul akibat 
											survei yang dilakukan secara online oleh lembaga pemerintahan 
											khususnya BPS serta untuk mendukung perkembangan teknologi 
											di era pandemi COVID-19 di Indonesia.",
					'maskot' => base_url('img/maskot_riset1.png'),
					'foto_ketua' => base_url('assets/galeri/foto/RIA SUGIANDEWI.png'),
					'ketua'  => 'Ni Nyoman Ria Sugiandewi',
					'pesan'  => '-'
				],
				'riset_2' => [
					'riset' => "Riset 2",
					'title' => "Tingkat Kepuasan Kerja Pegawai BPS",
					'desc'  => "BPS memiliki pegawai yang memiliki tanggung jawab 
											sesuai dengan jabatan serta tugas yang diberikan kepadanya. 
											Pegawai BPS tersebar di seluruh Indonesia. Hal ini menyebabkan 
											ada perbedaan beban kerja berdasarkan jabatan serta daerahnya. 
											Kelompok umur atau generasi juga menyebabkan adanya perbedaan karakteristik antargenerasi.
											<br>
											Oleh karena itu, PKL tahun ajaran 2020/2021, 
											Riset 2 mengukur dan membandingkan kepuasan 
											kerja pegawai BPS berdasarkan jabatan, daerah, dan generasi. 
											Pengukuran kepuasan kerja memberikan gambaran umum kepuasan 
											kerja pegawai dalam bentuk Indeks Kepuasan Kerja. 
											Indeks ini berguna untuk evaluasi dalam meningkatkan kepuasan kerja pegawai BPS. 
											Pengukuran tingkat kepuasan dapat didampingi dengan pengukuran pemahaman sistem. 
											Sistem yang dimaksud adalah sistem manajemen sumber daya manusia. 
											Selain itu, Riset 2 menganalisis faktor yang memengaruhi kepuasan kerja 
											serta pengaruhnya terhadap kinerja pegawai BPS serta perbedaan harapan 
											dan kepuasan kerja pegawai di BPS berdasarkan jabatan, daerah, 
											dan generasi untuk mengetahui indikator yang perlu ditingkatkan. 
											Hal ini dilakukan agar kebijakan untuk meningkatkan kepuasan kerja pegawai BPS tepat sasaran.",
					'maskot' => base_url('img/maskot_riset2.png'),
					'foto_ketua' => base_url('assets/galeri/foto/BAGASKORO C L.png'),
					'ketua'  => 'Bagaskoro Cahyo Laksono',
					'pesan'  => '-'
				],
				'riset_3' => [
					'riset' => "Riset 3",
					'title' => "Tingkat Mitigasi dan Kesiapsiagaan Bencana di Badan Pusat Statistik",
					'desc'  => "Mitigasi dan kesiapsiagaan bencana merupakan hal 
											penting yang sering kali diabaikan. 
											Badan Pusat Statistik (BPS) merupakan instansi pemerintah 
											yang tersebar di seluruh wilayah Indonesia. 
											Tidak dapat dipungkiri, BPS juga memiliki potensi untuk terkena bencana. 
											Hingga saat ini, BPS belum memiliki data mengenai mitigasi dan kesiapsiagaan 
											bencana pada tiap-tiap satuan kerja BPS. 
											Untuk itu, PKL tahun ajaran 2020/2021 melalui Riset III melakukan penelitian tentang 
											Tingkat Mitigasi dan Kesiapsiagaan Bencana di Badan Pusat Statistik. 
											Output yang dihasilkan dari riset III ini adalah indeks mitigasi dan 
											kesiapsiagaan bencana BPS yang dilihat dari sisi pegawai 
											dan satuan kerja serta determinan tingkat mitigasi dan kesiapsiagaan bencana BPS. 
											Output-output tersebut akan disajikan melalui Sistem Informasi Mitigasi dan Kesiapsiagaan Bencana BPS.",
					'maskot' => base_url('img/maskot_riset3.png'),
					'foto_ketua' => base_url('assets/galeri/foto/M ALFARIZ.png'),
					'ketua'  => 'Muhammad Alfaris Kurniawan',
					'pesan'  => '-'
				],
				'riset_4' => [
					'riset' => "Riset 4",
					'title' => "Tingkat Kepuasan Pengguna Data BPS",
					'desc'  => "Data adalah bahan dasar dalam proses 
											pengambilan kebijakan oleh pimpinan organisasi. 
											Badan Pusat Statistik (BPS) selaku instansi penyedia data 
											di Indonesia bertanggung jawab dalam memberikan pelayanan data dan 
											informasi statistik. Dalam menyebarluaskan data dan informasi statistik, 
											BPS menyediakan unit Pelayanan Statistik Terpadu (PST). 
											Pemantauan pelayanan di PST BPS perlu dilakukan untuk peningkatan kualitas data 
											dan informasi statistik serta pelayanan. 
											Namun, di era pandemi Covid-19 saat ini, pemerintah membatasi segala bentuk transaksi publik 
											dengan tatap muka sehingga perlu adanya penyesuaian dalam pelayanan BPS. 
											Oleh karena itu, pada PKL Tahun Ajaran 2020/2021, 
											Riset IV bertujuan melihat kepuasan pengguna tidak langsung 
											melalui kualitas pelayanan dan kualitas data BPS di PST BPS Pusat 
											dan melihat kepuasan pengguna layanan fitur Live Chat di Website BPS Provinsi.",
					'maskot' => base_url('img/maskot_riset4.png'),
					'foto_ketua' => base_url('assets/galeri/foto/FAHRIZA RIANDA.png'),
					'ketua'  => 'Fahriza Rianda',
					'pesan'  => '-'
				],
				'riset_5' => [
					'riset' => "Riset 5",
					'title' => "Pengembangan Sistem Database Alumni AIS, STIS, dan Polstat STIS",
					'desc'  => "Sistem Informasi Database Alumni AIS/STIS/Politeknik Statistika STIS 
											adalah sistem informasi yang di dalamnya 
											memuat data mengenai alumni dari AIS/STIS/Politeknik Statistika STIS 
											mulai dari Angkatan 1 hingga Angkatan 58 (yang baru lulus tahun 2020). 
											Riset 5 berfokus pada pengembangan sistem informasi berbasis web 
											sehingga diharapkan dapat memudahkan alumni 
											dalam mendapatkan informasi-informasi mengenai alumni lainnya 
											serta informasi mengenai Politeknik Statistika STIS itu sendiri. 
											Riset 5 juga memilik tujuan untuk menjadi 
											media dalam menghubungkan alumni dengan Politeknik Statistika STIS, 
											membangun sistem informasi database alumni yang terautomasi, 
											serta menjadi penyedia data alumni yang lengkap dan up to date.",
					'maskot' => base_url('img/maskot_riset5.png'),
					'foto_ketua' => base_url('assets/galeri/foto/AHMAD AZZAM I.png'),
					'ketua'  => 'Ahmad Azam Izudin',
					'pesan'  => '-'
				],
				'riset_6' => [
					'riset' => "Riset 6",
					'title' => "Tingkat Kepuasan Mahasiswa terhadap Penyelenggaraan Kegiatan di Polstat STIS",
					'desc'  => "Keberhasilan proses penyelenggaraan kegiatan 
											suatu perguruan tinggi salah satunya ditentukan 
											oleh kualitas pelayanan yang diberikan. 
											Kepuasan mahasiswa terhadap pelayanan yang diberikan sangat penting 
											karena pelayanan yang memenuhi kebutuhan pengguna 
											akan menentukan seberapa efektif dan efisien institusi pendidikan. 
											Praktik Kerja Lapangan (PKL) T. A. 2020/2021 
											melalui Riset 6 bertujuan untuk mengetahui tingkat kepuasan mahasiswa 
											terhadap Politeknik Statistika STIS melalui indeks kepuasan mahasiswa 
											yang diharapkan dapat menjadi umpan balik guna menunjang keberhasilan tersebut. 
											Diharapkan pula, instrumen dalam riset ini dapat dijadikan dasar 
											untuk pengukuran tingkat kepuasan mahasiswa yang kredibel 
											dan berkelanjutan pada periode selanjutnya.",
					'maskot' => base_url('img/maskot_riset6.png'),
					'foto_ketua' => base_url('assets/galeri/foto/AFIF FATHUR R.png'),
					'ketua'  => 'Afif Fathur Reza',
					'pesan'  => '-'
				]
			]
		];

		$this->load->view('risbid', $data);
	}
}
