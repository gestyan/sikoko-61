<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('_partials/head.php') ?>

<body>
  <!-- ======= Header ======= -->
  <?php $this->load->view('_partials/header.php') ?>
  <!-- End Header -->
  <main id="main" class="mt-10">
    <section id="content" class="services section-bg">
      <div class="container">
        <div class="row">
          <!--Berita Utama-->
          <div class="col-lg-8 d-flex align-items-stre">
            <div class="mt-5" style="background-color: white; padding: 20px; border-radius: 3px">
              <div>
                <img src="<?= base_url("sikoko/assets/foto_berita/{$berita->foto_berita}") ?>" style="width: 100%;border-radius: 3px">
              </div>
              <div>
                <h4 style="margin: 20px 0"><?= $berita->title ?></h4>
              </div>
              <div class="mt-2 mb-4">
                Di tulis oleh <a href="mailto:<?= $berita->email ?>"><?= $berita->nama ?></a> pada <?= strftime("%A, %d %B %Y", strtotime($berita->waktu)); ?>
              </div>
              <div style="text-align: justify;line-height: 1.7rem;font-size:1rem !important">
                <?= $berita->content ?>
              </div>
            </div>
          </div>
          <!--Berita Selengkapnya-->
          <div class="col-lg-4 d-flex align-items-start">
            <div class="col mt-5" style="background-color: white; padding: 20px; border-radius: 3px;">
              <h4 class="mb-3">Berita Lain</h4>
              <div>
                <?php foreach ($berita_lain as $item) : ?>
                  <div class="row mb-3 d-flex align-items-center">
                    <div class="col" style="max-width: 50px;">
                      <img src="<?= base_url("sikoko/assets/foto_berita/{$item->foto_berita}") ?>" style="width: 50px; height : 50px;border-radius: 3px">
                    </div>
                    <div class="col" style="margin: 0 10px 0;">
                      <a href="<?= base_url("berita/detail/{$item->id_berita}") ?>"><?= $item->title ?></a>
                    </div>
                  </div>
                <?php endforeach; ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End  Section -->
    <!-- JS nya -->
    <?php $this->load->view('_partials/footer.php') ?>
    <?php $this->load->view('_partials/js.php') ?>
  </main>
</body>