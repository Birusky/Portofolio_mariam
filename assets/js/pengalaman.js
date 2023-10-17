document.addEventListener("DOMContentLoaded", function () {
    DataPengalaman();
  });
  
  function DataPengalaman() {
    axios
      .get("../api/resume_api.php")
      .then((response) => {
        console.log(response.data);
        const data = response.data;
  
        // Manipulasi HTML untuk menampilkan data pengalaman
        const pengalaman = document.getElementById("pengalaman");
        let html = "";
  
        data.forEach((data) => {
          html += `
          <div class="resume-item">
          <h4>${data.nama_instansi}</h4>
          <h5>${data.tahun_masuk} - ${data.tahun_keluar}</h5>
          <p><em>${data.divisi} </em></p>
          <ul>
            <li>${data.deskripsi1}</li>
            <li>${data.deskripsi2}</li>
            <li>${data.deskripsi3}</li>
            <li>${data.deskripsi4}</li>
          </ul>
        </div>
                  `;
        });
  
        pengalaman.innerHTML = html;
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }
  