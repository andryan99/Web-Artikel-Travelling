<?php

include 'functions_kelola.php';

$id_kategori=$_POST['id'];

$sql="select * from tbl_kategori where id_kategori=$id_kategori";
$hasil=queryjson($sql);
echo json_encode($hasil);

?>