document.addEventListener('DOMContentLoaded', function() {
    DataSumary();
});
function DataSumary() {
  axios.get("../api/datadiri_api.php")
    .then((response) => {
      console.log(response.data); 
      const data = response.data[0]; 
      const sumary = document.getElementById('sumary'); 
      sumary.innerHTML = ` 
    
    <h4>${data.nama}</h4>
              <p><em>${data.deskripsi}</em></p>
              <ul>
                <li>${data.domisili}</li>
                <li>${data.no_telp}</li>
                <li>${data.email}</li>
              </ul>
    `;
    })

    .catch((error) => {
      console.error("Error:", error);
    });
}
