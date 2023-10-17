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
        <!-- ======= Portfolio Section ======= -->
        <section id="portfolio" class="portfolio section-bg">
            <div class="container">
                <div class="section-title">
                    <h2>Portfolio</h2>
                    <p>Selamat datang di bagian proyek, di mana kreativitas dan dedikasi bertemu. Di sini, saya membagikan beberapa proyek yang telah saya rintis dan kembangkan selama perjalanan profesional saya. Setiap proyek mencerminkan komitmen saya terhadap inovasi, pemecahan masalah, dan kualitas eksekusi. Dari konsep hingga implementasi, tiap proyek menceritakan kisah tentang tantangan yang dihadapi, strategi yang digunakan, dan hasil yang dicapai. Saya percaya bahwa setiap proyek adalah peluang untuk belajar, tumbuh, dan memberikan dampak positif. Mari kita jelajahi bersama dan temukan bagaimana setiap langkah dalam proyek-proyek ini membentuk pandangan unik saya terhadap dunia teknologi dan kreativitas. Saya berharap bahwa portofolio proyek ini tidak hanya memberikan gambaran tentang kemampuan dan keahlian saya, tetapi juga menginspirasi kolaborasi dan ide baru. Selamat menjelajahi!</p>
                </div>

                <div class="row portfolio-container" id="portofolio"></div>
            </div>
        </section><!-- End Portfolio Section -->
    </main>

    <?php include_once("../components/Footer.php")?>
    
    <script src="../assets/js/portofolio.js"></script>
    <script src="../assets/js/main.js"></script>

</body>
</html>