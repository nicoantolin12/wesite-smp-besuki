<?php
    include 'koneksi.php';
    
    date_default_timezone_set("Asia/Jakarta");

    $identitas = mysqli_query($conn, "SELECT * FROM pengaturan ORDER BY id DESC LIMIT 1");
    $d = mysqli_fetch_object($identitas);
?>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="uploads/identitas/<?= $d->favicon ?>">
        <title>Website <?= $d->nama ?></title>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    </head>
    <body>
        <!-- header -->
         <diV class="header">
            <div class="container">

                <div class="header-logo">
                    <img src="uploads/identitas/<?= $d->logo ?>" width="70">
                    <h2><a href=""><?= $d->nama ?></h2>
                    
                </div>

                <ul class="header-menu">
                    <li><a href="">Beranda</a></li>
                    <li><a href="">Tentang Sekolah</a></li>
                    <li><a href="">Ekstra</a></li>
                    <li><a href="">Galeri</a></li>
                    <li><a href="">Informasi</a></li>
                    <li><a href="">Kontak</a></li>
                </ul>

            </div>
         </div>