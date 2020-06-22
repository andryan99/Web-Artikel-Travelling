<?php

include 'functions_kelola.php';

$id_kategori=$_POST['id'];

$sql="delete from tbl_kategori where id_kategori=$id_kategori";
$hasil=delete($sql);
if ($hasil) {
    echo "Kategori Berhasil Dihapus";
}
?>