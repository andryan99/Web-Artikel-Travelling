<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="icon" href="image/mountain.png" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title></title>
</head>
<body>
    <?php
        include 'functions_kelola.php';
        $sql="select id_kategori, nama_kategori, keterangan from tbl_kategori";
        $data_kategori=query($sql);
    ?>
<table >
    <tr>
        <th>No.</th>
        <th>Nama Kategori</th>
        <th>Keterangan</th>
        <th>Aksi</th>
    </tr>
    <?php
    $no=1;
        foreach ($data_kategori as $item) :?>
          <tr>
              <td><?= $no++?></td>
              <td><?= $item['nama_kategori'];?></td>
              <td><?= $item['keterangan'];?></td>
              <td>
                  <button type="button" id="<?= $item['id_kategori']?>" class="w3-button w3-green update"><i class="fa fa-edit">  Edit</i></button>
                  <button type="button" id="<?= $item['id_kategori']?>" class="w3-button w3-red hapus"><i class="fa fa-trash">  Hapus</i></button>
              </td>
          </tr>  
    <?php endforeach; ?>
</table>

<div id="updatekategori" class="w3-modal">
        <div class="w3-modal-content w3-animate-zoom">
            <header class="w3-container w3-blue">
                <span onclick="document.getElementById('updatekategori').style.display='none'" class="w3-button w3-display-topright w3-text-red"><b>&times;</b></span>
                <h4 class="w3-text-white">Update Kategori</h4>
            </header>
            <div class="w3-container">
                <form class="w3-container" id="formupdatekategori" method="POST">
                    <div class="w3-section">
                    <label for="update_idkategori"><b>ID Kategori</b></label>
                        <input type="text" name="update_idkategori" id="update_idkategori" readonly class="w3-input w3-border w3-light-grey w3-text-grey w3-margin-bottom" ">
                        <label for="update_namakategori"><b>Nama Kategori</b></label>
                        <input type="text" name="update_namakategori" id="update_namakategori" class="w3-input w3-border w3-margin-bottom" placeholder="Masukkan Nama Kategori....">
                        <label for="update_keterangan"><b>Keterangan</b></label>
                        <input type="text" name="update_keterangan" id="update_keterangan" class="w3-input w3-border w3-margin-bottom" placeholder="Masukkan Keterangan....">
                    </div>
                </form>
            </div>
            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                <div class="w3-display-container">
                    <button type="button" class="w3-button w3-red" onclick="document.getElementById('updatekategori').style.display='none'">Batal</button>
                    <span class="w3-right"><button type="button" id="buttonupdate" class="w3-button w3-green" ">Update</button></span>                    
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">
    $(document).ready(function(){
        $('.hapus').click(function(){
            var konfirmasi= confirm("Anda yakin ingin menghapus data ini ?");
            if (konfirmasi==true) {
                var id_kategori=$(this).attr('id');
                $.ajax({
                    type: 'POST',
                    url: 'kategori_delete.php',
                    data: {id:id_kategori},
                    cache: false,
                    success: function(response){
                   $("#tampildatakategori").load('kategoritampil.php');
                   window.alert(response);
                    }
                });
            }
        });
        $('.update').click(function(){
            $('#updatekategori').show();
            var id_kategori = $(this).attr('id');
            $.ajax({
                    type: 'POST',
                    url: 'kategori_ambil_data.php',
                    data: {id:id_kategori},
                    dataType: 'json',
                    success: function(response){
                    document.getElementById("update_idkategori").value=response.id_kategori;
                    document.getElementById("update_namakategori").value=response.nama_kategori;
                    document.getElementById("update_keterangan").value=response.keterangan;
                    }
                });
        });
        $('#buttonupdate').click(function(){            
            var datakategori=$('#formupdatekategori').serialize();
            $.ajax({
               type: 'POST',
               url: 'kategori_update.php',
               data: datakategori,
               cache: false,
               success: function(response){
                   window.alert(response);
                   $('#updatekategori').hide();
                   $("#tampildatakategori").load('kategoritampil.php');                   
               }
            });
        });
    });

</script>

</body>
</html>