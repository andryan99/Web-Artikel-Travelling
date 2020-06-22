<?php

$host="localhost";
$username="root";
$password="";
$database="webteori";
$koneksi=mysqli_connect($host, $username, $password,$database);

if (!$koneksi) {
    die("Koneksi gagal " .mysqli_connect_error());
}

function query($sql){
    global $koneksi;
    $hasil=mysqli_query($koneksi,$sql);
    $array_artikel=array();
    while ($data_artikel=mysqli_fetch_assoc($hasil)) {
       $array_artikel[]=$data_artikel;
    }
    return $array_artikel;
}

function insert($sql){
    global $koneksi;
    $hasil=mysqli_query($koneksi, $sql);
    return $hasil;
}
function delete($sql){
    global $koneksi;
    $hasil=mysqli_query($koneksi, $sql);
    return $hasil;
}
function queryjson($sql){
    global $koneksi;
    $hasil=mysqli_query($koneksi, $sql);
    $array_artikel=array();
    while ($data_artikel = mysqli_fetch_assoc($hasil)) {
        $array_artikel['id_kategori']=$data_artikel['id_kategori'];
        $array_artikel['nama_kategori']=$data_artikel['nama_kategori'];
        $array_artikel['keterangan']=$data_artikel['keterangan'];
    }
    return $array_artikel;
}
function update($sql){
    global $koneksi;
    $hasil=mysqli_query($koneksi, $sql);
    return $hasil;
}

function potongteks($teks, $jumlah_karakter){
    $karakter=$teks{$jumlah_karakter-1};
    while ($karakter !=' ') {
        $karakter=$teks{--$jumlah_karakter};
    }
    return substr($teks,0,$jumlah_karakter);

}
?>