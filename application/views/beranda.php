<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('_partials/head.php') ?>

<body>

  <!-- ======= Header ======= -->
  <?php $this->load->view('_partials/header.php') ?>
  <!-- End Header -->

  <!-- ======= Logo Section ======= -->
  <div id="page1">
    <section id="hero" class="d-flex align-items-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
            <h1>PKL POLSTAT STIS 2020/2021</h1>
            <h2>Praktik Kerja Lapangan Mahasiswa Tingkat III Politeknik Statistika STIS T.A 2020/2021 diadakan secara online di seluruh Indonesia. PKL tahun ini mengambil tema Menuju BPS yang Lebih Baik ( Towards Better BPS ).</h2>
          </div>
          <div class="col-lg-6 order-1 order-lg-2 hero-img d-flex flex-column align-items-center data-aos=" zoom-in" data-aos-delay="200">
            <img src="<?= base_url('img/logo.png') ?>" class="img-fluid animated" alt="">
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- End Logo -->

  <!-- ======= Pekaelmon Section ======= -->
  <div id="page2">
    <section id="hero1" class="d-flex align-items-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 order-1 order-lg-1 hero-img d-flex flex-column align-items-center" data-aos="zoom-in" data-aos-delay="200">
            <img src="<?= base_url('img/pekaelmon_bergoyang.gif') ?>" class="img-fluid animated" alt="gif_sikoko">
          </div>
          <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-2" data-aos="fade-up" data-aos-delay="200">
            <h1>PEKAELMON</h1>
            <h2>Pekaelmon merupakan maskot PKL tahun 2020/2021. Kucing memiliki 9 nyawa, dengan maskot kucing, diharapkan mahasiswa tingkat 3 tahan banting dan kuat menghadapi PKL dimasa pandemi covid-19. Sinyal di kepala pekaelmon melambangkan PKL daring (dalam jaringan). kepala monitor menggambarkan mahasiswa tingkat 3 mengikuti PKL melalui monitor dan saling terhubung. Ekor dengan 3 warna melambangkan warna bps, yaitu biru, oranye, dan hijau.</h2>>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- ======= Candra Section ======= -->
  <div id="page3">
    <section id="hero" class="d-flex align-items-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
            <h1>SAMBUTAN KETUA PKL
              <br> Candra Kurniawan
            </h1>
            <h2>Rasa syukur selayaknya terus terucap dan terimakasih sebesar-besarnya kepada berbagai pihak yang terlibat dalam pembuatan web PKL 60 ini. Semoga dengan adanya web PKL 60 ini mampu menjadi media dalam berbagi informasi yang bermanfaat dalam lingkup BPS khususnya, sekaligus dapat menjadi kolase dari PKL 60 itu sendiri yang menyimpan publikasi dan dokumentasi. Tetap semangat, jaga kesehatan, dan sukses untuk PKL 60. #BerkaryaDalamJarak</h2>
          </div>
          <div class="col-lg-6 order-1 order-lg-2 hero-img d-flex flex-column align-items-center data-aos=" zoom-in" data-aos-delay="200">
            <img id="candra" src="<?= base_url('img/Foto Ketua PKL 60.png') ?>" class="img-fluid animated" alt="">
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- End Candra -->
  </main>
  <!-- End #main -->

  <!-- Footer -->
  <?php $this->load->view('_partials/footer.php') ?>
  <!-- End Footer -->

  <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <?php $this->load->view('_partials/js.php') ?>

</body>

</html>