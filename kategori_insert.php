<?php

include 'functions_kelola.php';

$nama=$_POST['namakategori'];
$keterangan=$_POST['keterangan'];

$sql="insert into tbl_kategori(nama_kategori, keterangan) values ('$nama','$keterangan')";
$hasil=insert($sql);
if ($hasil) {
    echo "Kategori " .$nama. " Berhasil Disimpan";
}
?>