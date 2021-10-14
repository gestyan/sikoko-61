<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('_partials/head.php') ?>

<body>
  <!-- ======= Header ======= -->
  <?php $this->load->view('_partials/header.php') ?>
  <!-- End Header -->
  <main id="main">
    <!-- ======= About Video Section ======= -->
    <section id="content" class="about-video">
      <div class="container" data-aos="fade-up">
        <div id="content" class="section-title">
          <h2 style="text-align: align-text-center;">Seputar PKL 60</h2>
        </div>
        <div class="row">
          <div class="col-lg-12 video-box d-flex flex-column align-items-center" data-aos="fade-right" data-aos-delay="100">
            <img id="logo-berita" src="<?= base_url('img/logo.png') ?>" class="img-fluid" alt="">
            <!-- <a href="https://www.youtube.com/watch?v=TQQJD7D6PIU" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a> -->
          </div>
        </div>
      </div>
    </section>
    <section id="berita" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Daftar Berita PKL 60</h2>
        </div>

        <div class="row">

          <?php foreach ($berita as $item) : ?>
            <div class="col-lg-6 col-md-6 d-flex align-items-stretch mb-3" data-aos="zoom-in" data-aos-delay="100">
              <div class="icon-box iconbox-blue text-left" style="padding: 20px !important;">
                <img src="<?= base_url("sikoko/assets/foto_berita/{$item->foto_berita}") ?>" style="width:100%;">
                <div>
                  <h4><a href="<?= base_url("berita/detail/{$item->id_berita}") ?>"><?= $item->title ?></a></h4>
                  <div style="font-size: 0.9rem;">
                    Di tulis oleh <a href="mailto:<?= $item->email ?>"><?= $item->nama ?></a> pada <?= strftime("%A, %d %B %Y", strtotime($item->waktu)); ?>
                  </div>
                  <div class="mt-4">
                    <p><?= $item->short_desc ?></p>
                  </div>
                </div>
                <div class="mt-4">
                  <a href="<?= base_url("berita/detail/{$item->id_berita}") ?>" class="btn-get-started scrollto">Baca Selengkapnya</a>
                </div>
              </div>
            </div>
          <?php endforeach ?>

        </div>
      </div>
    </section>
    <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>
    <div id="preloader"></div>
    <!-- JS nya -->
    <?php $this->load->view('_partials/footer.php') ?>
    <?php $this->load->view('_partials/js.php') ?>
  </main>
</body>