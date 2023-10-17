document.addEventListener('DOMContentLoaded', function() {
    DataHome();
});

function DataHome() {
 axios.get('../api/datadiri_api.php')
  .then(response =>{
    console.log(response.data);
      //definisikan constanta data 
    const data = response.data[0];
    //manipulasi html untuk menampilkan data home
    const home = document.getElementById('home');
    home.innerHTML=`
        <h1>${data.nama}</h1>
        <p>I'm <span class="typed">${data.divisi}</span></p>
    `;
  })

  .catch(error => {
        console.error('Error:', error);
    });
}