<?php

include 'functions_kelola.php';

$id=$_POST['update_idkategori'];
$nama=$_POST['update_namakategori'];
$keterangan=$_POST['update_keterangan'];

$sql="update tbl_kategori set nama_kategori='$nama', keterangan='$keterangan' where id_kategori=$id";
$hasil=update($sql);
if ($hasil) {
    echo "Kategori " .$nama. " Berhasil Diupdate";
}
?>