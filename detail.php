<!DOCTYPE html>
<html>
<?php
include 'functions.php';
	  
$id=$_GET['idartikel'];

$query="select tbl_artikel.judul, tbl_artikel.waktu, tbl_artikel.isi, tbl_tulis_artikel.id_tulis, tbl_artikel.gambar, tbl_kontributor.nama, tbl_kategori.nama_kategori
from tbl_artikel, tbl_kontributor, tbl_kategori, tbl_tulis_artikel where tbl_artikel.id_artikel=tbl_tulis_artikel.id_artikel AND 
tbl_kontributor.id_kontributor=tbl_tulis_artikel.id_kontributor and tbl_kategori.id_kategori=tbl_tulis_artikel.id_kategori order by tbl_tulis_artikel.id_tulis desc";

$data_artikel=query($query);	
	  
$sql="select tbl_isi.*, tbl_artikel.judul, tbl_artikel.waktu, tbl_artikel.isi,
 tbl_artikel.gambar, tbl_kontributor.nama, tbl_kategori.nama_kategori 
 from tbl_artikel, tbl_isi, tbl_kontributor, tbl_kategori, tbl_tulis_artikel
  where tbl_artikel.id_artikel=tbl_tulis_artikel.id_artikel
   AND tbl_kontributor.id_kontributor=tbl_tulis_artikel.id_kontributor
   and tbl_kategori.id_kategori=tbl_tulis_artikel.id_kategori
    AND tbl_artikel.id_isi=tbl_isi.id_isi and tbl_tulis_artikel.id_tulis=$id";

$detail_artikel=query($sql);

?>
<head>
	<meta charset="UTF-8">
	<title>Amazing Indonesia</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="style3.css">
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
		<?php 			
			foreach ($detail_artikel as $detail) : 
			endforeach;
		?>		
		<div class="jumbotron">
            <h1><?= $detail['judul'] ?></h1>
            <p><?= potongteks($detail['isi'],250); ?></p>
        </div>
		<div class="topnav clearfix">	
			<ul>
				<li><a href="index.php">Home</a></li>
				<?php 
				foreach ($data_artikel as $kategori) : ?>
				<li><a href="kategori.php?kategori=<?= $kategori['nama_kategori']?>">Wisata <?= $kategori['nama_kategori']?></a></li>
				<?php endforeach;?>
			</ul>		
		</div>
			<div class="content cf">
			<div class="main">			
			  <h1><?= $detail['judul'] ?></h1>
			  <h5><?= $detail['waktu'] ?></h5>
			  <ol>
				<div class="card">					
					<li type="1"><h2><?= $detail['judul1'] ?></h2></li>
					<img src="image/<?= $detail['gambar1'] ?>" class="featured-image">
					<p>&nbsp;&nbsp; &nbsp; <?= $detail['isi1'] ?></p>			
				</div>
				<div class="card">
					<li type="1"><h2><?= $detail['judul2'] ?></h2></li>
					<img src="image/<?= $detail['gambar2'] ?>" class="featured-image">
					<p>&nbsp;&nbsp; &nbsp; <?= $detail['isi2'] ?></p>	
				</div>  
				<div class="card">
					<li type="1"><h2><?= $detail['judul3'] ?></h2></li>
					<img src="image/<?= $detail['gambar3'] ?>" class="featured-image">
					<p>&nbsp;&nbsp; &nbsp; <?= $detail['isi3'] ?></p>	
				</div>
				<div class="card">
					<li type="1"><h2><?= $detail['judul4'] ?></h2></li>
					<img src="image/<?= $detail['gambar4'] ?>" class="featured-image">
					<p>&nbsp;&nbsp; &nbsp; <?= $detail['isi4'] ?></p>	
				</div>
				<div class="card">
					<li type="1"><h2><?= $detail['judul5'] ?></h2></li>
					<img src="image/<?= $detail['gambar5'] ?>" class="featured-image">
					<p>&nbsp;&nbsp; &nbsp; <?= $detail['isi5'] ?></p>	
				</div>	
			  </ol>
		    	<div class="kembali">
					<a href="index.php">Kembali</a>
				</div>
			</div>
		</div>
			<div class="footer">
				<p class="copy">Copyright &#169; 2020 Travelling Blog</p>
			</div>
		</div>
<script>
function goBack() {
  window.history.back();
}
</script>
</body>
</html>