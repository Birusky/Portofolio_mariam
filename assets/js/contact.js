document.addEventListener("DOMContentLoaded", function () {
  DataContact();
});

function DataContact() {
  axios
    .get("../api/datadiri_api.php")
    .then((response) => {
      console.log(response.data);
      //definisikan constanta data
      const data = response.data[0];
      //manipulasi html untuk menampilkan data contact
      const contact2 = document.getElementById("contact2");
      contact2.innerHTML = `
      
        <div class="address">
        <i class="bi bi-geo-alt"></i>
        <h4>Location:</h4>
        <p>${data.domisili}</p>
      </div>

      <div class="email">
        <i class="bi bi-envelope"></i>
        <h4>Email:</h4>
        <p>${data.email}</p>
      </div>

      <div class="phone">
        <i class="bi bi-phone"></i>
        <h4>Call:</h4>
        <p>${data.no_telp}</p>
      </div>
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
      //manipulasi html untuk menampilkan data Contact
      const gambar = document.getElementById("gambar");
      gambar.innerHTML = `
        
          <img src="../assets/img/portfolio/${data.gambar}" class="img-fluid" alt="">
        `;
    })

    .catch((error) => {
      console.error("Error:", error);
    });
}
