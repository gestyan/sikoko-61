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
				<div class="h3 font-weight-bold judul">STRUKTUR ORGANISASI BPH BIDANG TI PKL ANGKATAN 60</div>
			</div>

			<figure class="org-chart cf">
				<div class="board">
					<ul class="columnOne">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/chief.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Ketua Bidang</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/FAIQ NUR HUDA.png" alt="" class="foto">
                                <br>Faiq Nur Huda
							</span>
						</li>
					</ul>
					<ul class="columnTwoTwo">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/money.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Bendahara Bidang</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/ANDI RAFLI R.png" alt="" class="foto">
                                <br>Andi Rafli Radjasa
							</span>
						</li>
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/avatar.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Sekretaris Bidang</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/ELIZA NURUL H.png" alt="" class="foto">
                                <br>Elyza Nurul Hapsari
							</span>
                        </li>
					</ul>
				</div>
				<ul class="departments3">
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/bd.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Humas</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/RENALDY AZIS.png" alt="" class="foto">
                            <br>Renaldy Azis
                            </a>
						</span>
					</li>
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/product.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Logistik</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/SUCI HUSNAWATI.png" alt="" class="foto">
                            <br>Suci Husnawati
                            </a>
						</span>
					</li>
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/monitor.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Pubdok</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/AJENG WAHYU T Y.png" alt="" class="foto">
                            <br>Ajeng Wahyu Tri Yulinda
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
