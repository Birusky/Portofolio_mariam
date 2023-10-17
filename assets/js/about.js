document.addEventListener("DOMContentLoaded", function () {
  DataAbout();
}); //akan mengirimkan tampilan dari data about.php

function DataAbout() {
  axios
    .get("../api/datadiri_api.php")
    .then((response) => {
      console.log(response.data);
      //definisikan constanta data
      const data = response.data[0];
      //manipulasi html untuk menampilkan data home
      const content = document.getElementById("content");
      // untuk mengakses atau mengubah HTML konten dari suatu elemen di dalam halaman web menggunakan JavaScript.
      content.innerHTML = ` 
    
    <h3>${data.divisi}</h3>
    <p class="fst-italic">
    Berikut data diri saya
    </p>
    <div class="row">
        <div class="col-lg-6">
            <ul>
                <li><i class="bi bi-chevron-right"></i> <strong>Nama:</strong> <span>${data.nama}</span></li>
                <li><i class="bi bi-chevron-right"></i> <strong>Tanggal Lahir:</strong> <span>${data.tanggal_lahir}</span></li>
                <li><i class="bi bi-chevron-right"></i> <strong>Usia:</strong> <span>${data.usia}</span></li>
                <li><i class="bi bi-chevron-right"></i> <strong>Domisili:</strong> <span>${data.domisili}</span></li>
            </ul>
        </div>
        <div class="col-lg-6">
            <ul>
                <li><i class="bi bi-chevron-right"></i> <strong>Gelar:</strong> <span>${data.gelar}</span></li>
                <li><i class="bi bi-chevron-right"></i> <strong>Jurusan:</strong> <span>${data.jurusan}</span></li>
                <li><i class="bi bi-chevron-right"></i> <strong>No. Telp:</strong> <span>${data.no_telp}</span></li>
                <li><i class="bi bi-chevron-right"></i> <strong>Email:</strong> <span>${data.email}</span></li>
            </ul>
        </div>
    </div>
    <p>
    ${data.deskripsi}
    </p>
    `;
    })

    .catch((error) => {
      console.error("Error:", error);
    });
}
document.addEventListener("DOMContentLoaded", function () {
  Gambar();
});

function Gambar() {
  axios
    .get("../api/datadiri_api.php")
    .then((response) => {
      console.log(response.data);
      //definisikan constanta data
      const data = response.data[0];
      //manipulasi html untuk menampilkan data about
      const gambar = document.getElementById("gambar");
      gambar.innerHTML = `
      
        <img src="../assets/img/portfolio/${data.gambar}" class="img-fluid" alt="">
      `;
    })

    .catch((error) => {
      console.error("Error:", error);
    });
}
