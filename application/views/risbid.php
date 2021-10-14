<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('_partials/head.php') ?>

<body>
  <!-- ======= Header ======= -->
  <?php $this->load->view('_partials/header.php') ?>
  <!-- End Header -->
  <main id="main">
    <div  id="content">
      <div id="content" class="section-title">
        <h2 style="margin-top: 60px;">Riset PKL 60</h2>
      </div>
      <section class="images_atas">
        <div class="container">
          <div class="row">
            <div class="col-4">
              <a href="#riset_1">
                <img src="<?= base_url('img/maskot_riset1.png') ?>" class="gambar_atas">
              </a>
            </div>
            <div class="col-4">
              <a href="#riset_2">
                <img src="<?= base_url('img/maskot_riset2.png') ?>" class="gambar_atas">
              </a>
            </div>
            <div class="col-4">
              <a href="#riset_3">
                <img src="<?= base_url('img/maskot_riset3.png') ?>" class="gambar_atas">
              </a>
            </div>
          </div>
        </div>
        <br>
        <div class="container">
          <div class="row">
            <div class="col-4">
              <a href="#riset_4">
                <img src="<?= base_url('img/maskot_riset4.png') ?>" class="gambar_atas">
              </a>
            </div>
            <div class="col-4">
              <a href="#riset_5">
                <img src="<?= base_url('img/maskot_riset5.png') ?>" class="gambar_atas">
              </a>
            </div>
            <div class="col-4">
              <a href="#riset_6">
                <img src="<?= base_url('img/maskot_riset6.png') ?>" class="gambar_atas">
              </a>
            </div>
          </div>
        </div>

      </section>
      <section class="images_atas">
        <div class="middle">
          <div class="mouse">
          </div>
        </div>
        <div class="lines">
          <div class="circle">
          </div>
        </div>
      </section>


      <?php foreach ($data_riset as $id => $item) : ?>
        <div id="<?= $id ?>">
          <section class="riset">
            <div class="container">
              <div class="row">
                <div class="col-9">
                  <h2 class="reveal"><?= $item['riset'] ?>
                    <br><?= $item['title'] ?>
                  </h2>
                  <h2 class="reveal"><?= $item['desc'] ?></h2>
                </div>
                <div class="col-3 imgcol3">
                  <img src="<?= $item['maskot'] ?>">
                </div>
              </div>
              <div class="row">
                <div class="col-4">
                  <img src="<?= $item['foto_ketua'] ?>" class="profil">
                </div>
                <div class="col-8">
                  <h2 class="reveal" id="ketua">Ketua <?= $item['riset'] ?></h2>
                  <h2 class="reveal" id="nama"><?= $item['ketua'] ?></h2>
                  <h2 class="reveal"><?= $item['pesan'] ?></h2>
                </div>
              </div>
            </div>
          </section>
        </div>
      <?php endforeach; ?>

      <!-- JS nya -->

    </div>
  </main>
  <?php $this->load->view('_partials/footer.php') ?>
  <?php $this->load->view('_partials/js.php') ?>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
  <script type="text/javascript">
    const reveal = gsap.utils.toArray('.reveal')
    reveal.forEach((text, i) => {
      ScrollTrigger.create({
        trigger: text,
        toggleClass: 'active',
        start: "top 82%",
        end: "top 2%"

      })
    })
    const images = gsap.utils.toArray('img')
    images.forEach((img, i) => {
      ScrollTrigger.create({
        trigger: img,
        toggleClass: 'active',
        start: "top 82%",
        end: "top 2%"

      })
    })
  </script>
</body>