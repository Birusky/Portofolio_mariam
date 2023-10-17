<?php
include("config.php"); //untuk konek ke database agar dapat meamsukan data ketika user menginput

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Ambil nilai dari formulir
    $nama = $_POST["nama"]; //nama, email, pesan dan judul dapat dari kolom database
    $email = $_POST["email"];
    $pesan = $_POST["pesan"];
    $judul = $_POST["judul"];

    // Masukin ke database
    $sql = "INSERT INTO contact (nama, email, judul, pesan) VALUES ('$nama', '$email', '$judul', '$pesan')";

    if ($conn->query($sql) === true) {
        // Data berhasil dimasukkan ke dalam database
        header("Location: ../pages/contact.php");
    } else {
        // Jika ada kesalahan saat memasukkan data
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>
