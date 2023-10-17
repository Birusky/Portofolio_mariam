document.addEventListener("DOMContentLoaded", function () {
    DataPendidikan();
  });
  
  function DataPendidikan() {
    axios
      .get("../api/pendidikan_api.php")
      .then((response) => {
        console.log(response.data);
        const data = response.data;
  
        // Manipulasi HTML untuk menampilkan data pendidikan
        const pendidikan = document.getElementById("pendidikan");
        let html = "";
  
        data.forEach((data) => {
          html += `
          <div class="resume-item">
              <h4>${data.nama_instansi}</h4>
              <h5>${data.tahun_masuk} - ${data.tahun_keluar}</h5>
              <p><em>${data.jurusan}</em></p>
              <p>${data.deskripsi}</p>
            </div>
                  `;
        });
  
        pendidikan.innerHTML = html;
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }
  