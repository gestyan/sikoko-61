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
				<div class="h3 font-weight-bold judul">STRUKTUR ORGANISASI BPH RISET 6 PKL ANGKATAN 60</div>
			</div>

			<figure class="org-chart cf">
				<div class="board">
					<ul class="columnOne">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/chief.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Ketua Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/AFIF FATHUR R.png" alt="" class="foto">
                                <br>Afif Fathur Reza
							</span>
						</li>
					</ul>
					<ul class="columnTwoTwo">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/money.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Bendahara Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/VINANDA SONYA P.png" alt="" class="foto">
                                <br>Vinanda Sonya Permatasari
							</span>
						</li>
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/avatar.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Sekretaris Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/SHELA YULFIA HADIST.png" alt="" class="foto">
                                <br>Shela Yulfia Hadist
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
							<br><img src="<?= base_url() ?>assets/galeri/foto/MUH HERI SAHAR.png" alt="" class="foto">
                            <br>Muh Heri Sahar
                            </a>
						</span>
					</li>
					<li class="department empat satu">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/list.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Kuesioner</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/MUH RIFQI WARDANA.png" alt="" class="foto">
                            <br>Muhammad Rifqi Wardana
                            </a>
						</span>
					</li>
					<li class="department empat dua">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/ability.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Analisis</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/SALSABILA M S.png" alt="" class="foto">
                            <br>Salsabila Muna Sholiha 
                            </a>
						</span>
                    </li>
                    <li class="department empat">
						<span class="lvl-b">
                            <a>
							<img src="<?= base_url() ?>assets/icon/product.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Pengolahan</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/RAJA M ZHICKRI.png" alt="" class="foto">
                            <br>Raja Muhammad Zhickri Pratama 
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
