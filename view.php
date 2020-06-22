<?php 
include 'koneksi.php';

$sql="select tbl_artikel.judul, tbl_artikel.waktu, tbl_artikel.isi, 
tbl_artikel.gambar, tbl_kontributor.nama, tbl_kategori.nama_kategori
from tbl_artikel, tbl_kontributor, tbl_kategori, tbl_tulis_artikel
where tbl_artikel.id_artikel=tbl_tulis_artikel.id_artikel AND 
tbl_kontributor.id_kontributor=tbl_tulis_artikel.id_konributor and
 tbl_kategori.id_kategori=tbl_tulis_artikel.id_kategori";

$query=$koneksi->query($sql);

function potongteks($teks, $jumlah_karakter){
    $karakter=$teks{$jumlah_karakter-1};
    while ($karakter !=' ') {
        $karakter=$teks{--$jumlah_karakter};
    }
    return substr($teks,0,$jumlah_karakter);

}

while ($hasil=$query->fetch_assoc()) { 
   potongteks($hasil['isi'],200);
}



?>


