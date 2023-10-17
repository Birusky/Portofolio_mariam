<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resume</title>
    <?php include_once("../routes/Link.php") ?>
</head>
<body>
    <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>  
    <?php include_once("../components/Sidebar.php")?>
    <main id="main">
        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
            <div class="container">
                <div class="section-title">
                    <h2>Contact</h2>
                    <p>Terima kasih telah mengunjungi portofolio saya! Jika Anda memiliki pertanyaan lebih lanjut, peluang kolaborasi, atau sekadar ingin berkomunikasi, saya sangat senang mendengarnya. Silakan jangan ragu untuk menghubungi saya melalui informasi kontak di bawah ini. Saya terbuka untuk diskusi, saran, atau pertemuan yang dapat membawa nilai tambah bagi kita bersama.</p>
                </div>

                <div class="row">
                    <div class="col-lg-5 d-flex align-items-stretch">
                        <div class="info">
                            <div id="contact2"></div>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4317.227626330443!2d106.72282948530989!3d-6.292423678293771!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f007dedc7de1%3A0x70288cde58f42a97!2sUPJ%20Bintaro!5e0!3m2!1sid!2sid!4v1697269102880!5m2!1sid!2sid" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
                        </div>
                    </div>

                <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
                    <form action="../modules/fungsi.php" method="POST" role="form" class="php-email-form">
                        <div class="row">
                            <div class="form-group col-md-6">
                            <label for="name">Your Name</label>
                            <input type="text" name="nama" class="form-control" id="nama" required>
                            </div>
                            <div class="form-group col-md-6">
                            <label for="name">Your Email</label>
                            <input type="email" class="form-control" name="email" id="email" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name">Subject</label>
                            <input type="text" class="form-control" name="judul" id="judul" required>
                        </div>
                        <div class="form-group">
                            <label for="name">Message</label>
                            <textarea class="form-control" name="pesan" rows="10" required></textarea>
                        </div>
                        <div class="my-3">
                            <div class="loading">Loading</div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                        </div>
                        <div class="text-center"><button type="submit">Send Message</button></div>
                    </form>
                </div>

            </div>
        </section><!-- End Contact Section -->
    </main>

    <?php include_once("../components/Footer.php")?>
    
    <script src="../assets/js/contact.js"></script>
    <script src="../assets/js/main.js"></script>

</body>
</html>