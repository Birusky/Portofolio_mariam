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
        <!-- ======= Resume Section ======= -->
        <section id="resume" class="resume">
            <div class="container">
                <div class="section-title">
                    <h2>Resume</h2>
                    <p>Selamat datang di halaman resume saya! Di sini, Anda akan menemukan gambaran singkat tentang penjelasan singkat data diri, perjalanan pendidikan, dan pengalaman keterampilan utama yang saya miliki. Dengan ringkas dan jelas, resume ini dirancang untuk memberikan wawasan cepat tentang latar belakang dan kompetensi saya. Mari jelajahi bersama dan temukan bagaimana pengalaman serta keahlian yang saya bawa dapat berkontribusi pada proyek atau tim kerja Anda.</p>
                </div>

                <div class="row">
                    <div class="col-lg-6" data-aos="fade-up">
                        <h3 class="resume-title">Sumary</h3>
                        <div id="sumary" class="resume-item pb-0"></div>

                        <h3 class="resume-title">Education</h3>
                        <div id="pendidikan"></div>
                    </div>
                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
                        <h3 class="resume-title">Professional Experience</h3>
                        <div id="pengalaman"></div>
                    </div>
                 </div>
            </div>
        </section>
        <!-- End Resume Section -->
    </main>

    <?php include_once("../components/Footer.php")?>
    
    <script src="../assets/js/resume.js"></script>
    <script src="../assets/js/pengalaman.js"></script>
    <script src="../assets/js/pendidikan.js"></script>
    <script src="../assets/js/script.js"></script>

</body>
</html>