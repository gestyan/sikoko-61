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
				<div class="h3 font-weight-bold judul">STRUKTUR ORGANISASI BPH RISET 3 PKL ANGKATAN 60</div>
			</div>

			<figure class="org-chart cf">
				<div class="board">
					<ul class="columnOne">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/chief.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Ketua Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/M ALFARIZ.png" alt="" class="foto">
                                <br>Muhammad Alfaris Kurniawan
							</span>
						</li>
					</ul>
					<ul class="columnTwoTwo">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/money.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Bendahara Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/SINTYA D LESTARI.png" alt="" class="foto">
                                <br>Sintya Dwi Lestari
							</span>
						</li>
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/avatar.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Sekretaris Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/NURUL DWI AFIFAH.png" alt="" class="foto">
                                <br>Nurul Dwi Afifah
							</span>
                        </li>
					</ul>
				</div>
				<ul class="departments4">
					<li class="department empat">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/metod.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Metodologi</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/CESARIO HANIF N.png" alt="" class="foto">
                            <br>Cesario Hanif Naufal
                            </a>
						</span>
					</li>
					<li class="department empat satu">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/list.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Kuesioner</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/MUH RIFKY FAJRIN.png" alt="" class="foto">
                            <br>Muh Rifky Fajrin Hasrin
                            </a>
						</span>
					</li>
					<li class="department empat dua">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/ability.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Analisis</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/VIONA RAHMA A.png" alt="" class="foto">
                            <br>Viona Rahma Agustin
                            </a>
						</span>
                    </li>
                    <li class="department empat">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/monitor.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Dashboard</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/DIMAS AL-KHUSUFI.png" alt="" class="foto">
                            <br>Dimas Al-Khusufi
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
