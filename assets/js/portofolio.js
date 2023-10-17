document.addEventListener("DOMContentLoaded", function () {
  DataPortofolio();
}); //akan mengirimkan tampilan ke 

function DataPortofolio() {
  axios
    .get("../api/portofolio_api.php")
    .then((response) => {
      console.log(response.data);
      const data = response.data;

      // Manipulasi HTML untuk menampilkan data portofolio
      const portofolio = document.getElementById("portofolio");
      let html = "";
      //akan melakukan perulangan data yang ada pada 
      data.forEach((data) => {
        html += `
                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <img src="../assets/img/portfolio/${data.gambar_project}" class="img-fluid" alt="">
                        <p style="text-align:center">${data.nama_project}</p>
                        <div class="portfolio-links">
                            <a href="../assets/img/portfolio/${data.gambar_project}" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                        </div>
                    </div>
                </div>
                `;
      });

      portofolio.innerHTML = html;
    })
    .catch((error) => {
      console.error("Error:", error);
    });
}
