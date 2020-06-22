<!DOCTYPE html>
<html>

<?php

include 'functions.php';
	  
$sql="select tbl_artikel.judul, tbl_artikel.waktu, tbl_artikel.isi, tbl_tulis_artikel.id_tulis, tbl_artikel.gambar, tbl_kontributor.nama, tbl_kategori.nama_kategori
from tbl_artikel, tbl_kontributor, tbl_kategori, tbl_tulis_artikel where tbl_artikel.id_artikel=tbl_tulis_artikel.id_artikel AND 
tbl_kontributor.id_kontributor=tbl_tulis_artikel.id_kontributor and tbl_kategori.id_kategori=tbl_tulis_artikel.id_kategori order by tbl_tulis_artikel.id_tulis desc";

$data_artikel=query($sql);	
?>

<head>
	<meta charset="UTF-8">
	<title>Amazing Indonesia</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="style2.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="icon" href="image/mountain.png" >
</head>
<body>
	<div class="top-bar">
	</div>
	<div class="container">
		<div class="header">
		 	<div class="icon">
				<i class="fa fa-facebook"></i>&nbsp;&nbsp;
				<i class="fa fa-instagram"></i>&nbsp;&nbsp;
				<i class="fa fa-youtube-play"></i>
			</div>
			<h1 class="judul">&nbsp;&nbsp; &nbsp;Amazing Indonesia</h1>			
		</div>
		
		<div class="jumbotron">
            <h1>Amazing Indonesia</h1>
            <p>Negara kepulauan seluas 1,91 juta km2 ini memang memiliki bentang alam yang mempesona, mulai dari Aceh hingga Papua.</p>
        </div>
		<div class="topnav clearfix">
			<nav>
			

				
			<ul>
				<li><a href="index.php" class="aktif">Home</a></li>
				<?php 
				foreach ($data_artikel as $kategori) : ?>
				<li><a href="kategori.php?kategori=<?= $kategori['nama_kategori']?>">Wisata <?= $kategori['nama_kategori']?></a></li>
				<?php endforeach;?>
			</ul>
			</nav>
		</div>
			<div class="content cf">
			<div class="main">			
				<?php 
				foreach ($data_artikel as $item_artikel) : ?>
				<article class="card">			
				<h2><a href="detail.php?idartikel=<?= $item_artikel['id_tulis']?>"><?= $item_artikel['judul'] ?></a></h2>
				<p class="penulis">ditulis oleh <a href="#"><?= $item_artikel['nama'] ?></a>, pada <?= $item_artikel['waktu'] ?></p>
				<?php echo "<img src='image/$item_artikel[gambar]' class='featured-image'>" ?>	
				<p>&nbsp;&nbsp; &nbsp;<?= potongteks($item_artikel['isi'],250);?>...</p>
				<div class="lanjutan">
				<a href="detail.php?idartikel=<?= $item_artikel['id_tulis']?>" class="link">Selanjutnya</a>
				</div>
				</article>
				<?php endforeach; ?>
			</div>	
			<div class="sidebar">
				<div class="about">
					<h3>About</h3>
					<img src="image/mountain.png" alt="gambar">
					<div class="kartu">
					<p>&nbsp;&nbsp;  Amazing indonesia menyajikan informasi tentang destinasi wisata festival yang tersebar dari seluruh pelosok nusantara ini untuk anda dan semua yang akan melakukan perjalanan dimanapun dan kapanpun. </p>
 					</div>
			</div>
				<div class="artikelterbaru">
					<h3>Artikel Terbaru</h3>
					<table>
					<?php 
				      foreach ($data_artikel as $item_artikel) : ?>
						<tr>	
							<a href="detail.php?idartikel=<?= $item_artikel['id_tulis']?>"><i class="fa fa-tree">   <?= $item_artikel['judul'] ?></i></a><br>
							<div class="terbaru">
							<?php echo "<img src='image/$item_artikel[gambar]' class='img_terbaru'>" ?>	
							<p>&nbsp;&nbsp; &nbsp;<?= potongteks($item_artikel['isi'],82);?>...<a href="detail.php?idartikel=<?= $item_artikel['id_tulis']?>" class="link">Read More</a></p>
							</div>
						</tr>
						<?php endforeach; ?>		
					</table>
				</div>
			</div>
				</div>
			<div class="footer">
				<p class="copy">Copyright &#169; 2020 Travelling Blog</p>
			</div>
		</div>
</body>
</html>