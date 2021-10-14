<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('_partials/head.php') ?>

<body>

  <!-- ======= Header ======= -->
  <?php $this->load->view('_partials/header.php') ?>
  <!-- End Header -->

	<section class="ftco-section mb-auto">

		<div class="content">
			<div class="col-12 text-center ">
				<div class="h3 font-weight-bold judul">STRUKTUR ORGANISASI BPH RISET 2 PKL ANGKATAN 60</div>
			</div>

			<figure class="org-chart cf">
				<div class="board">
					<ul class="columnOne">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/chief.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Ketua Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/BAGASKORO C L.png" alt="" class="foto">
                                <br>Bagaskoro Cahyo Laksono
							</span>
						</li>
					</ul>
					<ul class="columnTwoTwo">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/money.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Bendahara Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/NABILA ANINDITA.png" alt="" class="foto">
                                <br>Nabila Anindita
							</span>
						</li>
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/avatar.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Sekretaris Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/NI MD SINDU P.png" alt="" class="foto">
                                <br>Ni Made Sindu Padmayoni
							</span>
                        </li>
					</ul>
				</div>
				<ul class="departments3">
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/metod.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Metodologi</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/M ALIYASQI A.png" alt="" class="foto">
                            <br>Muhammad Aliyasqi Akbar
                            </a>
						</span>
					</li>
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/list.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Kuesioner</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/MUHAMMAD FIKRI R.png" alt="" class="foto">
                            <br>Muh Fikri Ramdani
                            </a>
						</span>
					</li>
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/ability.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Analisis</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/NUGRAHENI PUTRI.png" alt="" class="foto">
                            <br>Nugraheni Putri Istiqomah
                            </a>
						</span>
					</li>
				</ul>
			</figure>
		</div>

	</section>
	<?php $this->load->view('_partials/footer.php') ?>
</body>

</html>
