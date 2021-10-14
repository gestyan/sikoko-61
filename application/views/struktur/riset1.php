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
				<div class="h3 font-weight-bold judul">STRUKTUR ORGANISASI BPH RISET 1 PKL ANGKATAN 60</div>
			</div>

			<figure class="org-chart cf">
				<div class="board">
					<ul class="columnOne">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/chief.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Ketua Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/RIA SUGIANDEWI.png" alt="" class="foto">
								<br>Ni Nyoman Ria Sugiandewi
							</span>
						</li>
					</ul>
					<ul class="columnTwoTwo">
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/money.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Bendahara Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/PRATITIS N A.png" alt="" class="foto">
								<br>Pratitis Nandiasoka Annisawati
							</span>
						</li>
						<li>
							<span>
								<img src="<?= base_url() ?>assets/icon/avatar.svg" alt="" class="mr-2 my-auto ikon">
								<br><strong class="text-white">Sekretaris Riset</strong>
								<br><img src="<?= base_url() ?>assets/galeri/foto/NASIYA ALIFAH U.png" alt="" class="foto">
								<br>Nasiya Alifah Utami
							</span>
						</li>
					</ul>
				</div>
				<ul class="departments3">
					<li class="department tiga">
						<span class="lvl-b">
							<a>
							<img src="<?= base_url() ?>assets/icon/metod.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Metodologi 1</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/RAHMAT AGUNG P.png" alt="" class="foto">
							<br>Rahmat Agung Pasaribu
							</a>
						</span>
					</li>
					<li class="department tiga">
						<span class="lvl-b">
							<a>
							<img src="<?= base_url() ?>assets/icon/list.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Metodologi 2</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/HASYIMUR RUSDI.png" alt="" class="foto">
							<br>Hasyimur Rusdi
							</a>
						</span>
					</li>
					<li class="department tiga">
						<span class="lvl-b">
							<a>
							<img src="<?= base_url() ?>assets/icon/ability.svg" alt="" class="mr-2 my-auto ikon">
							<br><strong class="text-white">Koordinator Metodologi 3</strong>
							<br><img src="<?= base_url() ?>assets/galeri/foto/A RIFJAYANSHAH.png" alt="" class="foto">
							<br>Ahmad Rifja Yansyah
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