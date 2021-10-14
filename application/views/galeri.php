<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('_partials/head.php') ?>
<!-- ======= Header ======= -->
<?php $this->load->view('_partials/header.php') ?>
<!-- End Header -->
<link rel="stylesheet" href="<?= base_url('css/galeri.css') ?>">

<body>
  <section id="content">
    <div class="main-galeri">
      <h1>GALERI PKL 60</h1>
      <p>Here Are Our Some Activities :-</p>
      <div class="gallery">
        <?php foreach ($galeri as $item) : ?>
          <div class="img">
            <img src="<?= base_url() ?>/sikoko/assets/galeri/<?= $item['nama'] ?>" />
          </div>
        <?php endforeach; ?>
      </div>
    </div>
  </section>
  <?php $this->load->view('_partials/footer.php') ?>
  <?php $this->load->view('_partials/js.php') ?>
</body>