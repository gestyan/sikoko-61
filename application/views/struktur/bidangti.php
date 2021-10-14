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
								<br><img src="<?= base_url() ?>assets/galeri/foto/EMIR LUTHFI.png" alt="" class="foto">
                                <br>Emir Luthfi
							</span>
						</li>
					</ul>
					<ul class="columnTwoTwo">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/money.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Bendahara Bidang</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/AGNES SEPTI.png" alt="" class="foto">
                                <br>Agnes Septi D
							</span>
						</li>
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/avatar.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Sekretaris Bidang</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/NURUL SYIFA A.png" alt="" class="foto">
                                <br>Nurul Syifa Amalia
							</span>
                        </li>
					</ul>
				</div>
				<ul class="departments3">
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/monitor.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator PVD</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/EKO PUTRA W.png" alt="" class="foto">
                            <br>Eko Putra W
                            </a>
						</span>
					</li>
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/bd.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Sikoko</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/RIAN ALFA N.png" alt="" class="foto">
                            <br>Rian Alfa N
                            </a>
						</span>
					</li>
					<li class="department tiga">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/diii.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator SPD</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/M RIFKY N S.png" alt="" class="foto">
                            <br>M Rifky Naratama S
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
