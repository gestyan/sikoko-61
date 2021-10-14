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
				<div class="h3 font-weight-bold judul">STRUKTUR ORGANISASI BPH RISET 5 PKL ANGKATAN 60</div>
			</div>

			<figure class="org-chart cf">
				<div class="board">
					<ul class="columnOne">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/chief.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Ketua Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/AHMAD AZZAM I.png" alt="" class="foto">
                                <br>Ahmad Azam Izudin
							</span>
						</li>
					</ul>
					<ul class="columnTwoTwo">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/money.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Bendahara Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/ANNISA ADYTIA P.png" alt="" class="foto">
                                <br>Annisa Aditya P
							</span>
						</li>
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/avatar.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Sekretaris Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/RIHADATULAISY.png" alt="" class="foto">
                                <br>Rihadatulaisy Salsabila Nurudin
							</span>
                        </li>
					</ul>
				</div>
				<ul class="departments3">
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/big.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Back-End</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/IHZA FIKRI ZAKI.png" alt="" class="foto">
                            <br>Ihza Fikri Zaki Karunia
                            </a>
						</span>
					</li>
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/monitor.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Front-End</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/ZAHLUL FUADI.png" alt="" class="foto">
                            <br>Zahlul Fuadi
                            </a>
						</span>
					</li>
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/diii.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Database</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/M AL FATAH.png" alt="" class="foto">
                            <br>Muhammad Al Fatah
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
