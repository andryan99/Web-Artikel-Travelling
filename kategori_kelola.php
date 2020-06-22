<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styletable.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="icon" href="image/mountain.png" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>Data Kategori</title>
</head>
<body>
    <div class="wadah w3-card w3-hover-shadow ">
            <header class="w3-container w3-blue">
                <h3 class="w3-text-white">Daftar Kategori</h3>
            </header>
        <div class="w3-container">
            <br>
            <button onclick="document.getElementById('insertkategori').style.display='block'">Tambah Kategori Baru</button>
            <br>
            <br>
            <div id="tampildatakategori">
            </div>
        </div>
            <footer class="w3-container">
                <h1></h1>
            </footer>
    </div>
    <div id="insertkategori" class="w3-modal">
        <div class="w3-modal-content w3-animate-zoom">
            <header class="w3-container w3-blue">
                <span onclick="document.getElementById('insertkategori').style.display='none'" class="w3-button w3-display-topright w3-text-red"><b>&times;</b></span>
                <h4 class="w3-text-white">Tambah Kategori</h4>
            </header>
            <div class="w3-container">
                <form class="w3-container" id="formkategori" method="POST">
                    <div class="w3-section">
                        <label for="namakategori">Nama Kategori</label>
                        <input type="text" name="namakategori" id="namakategori" class="w3-input w3-border w3-margin-bottom" placeholder="Masukkan Nama Kategori....">
                        <label for="namaketerangan">Keterangan</label>
                        <input type="text" name="keterangan" id="keterangan" class="w3-input w3-border w3-margin-bottom" placeholder="Masukkan Keterangan....">
                    </div>
                </form>
            </div>
            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                <div class="w3-display-container">
                    <button type="button" class="w3-button w3-red" onclick="document.getElementById('insertkategori').style.display='none'">Batal</button>
                    <span class="w3-right"><button type="button" id="simpan" class="w3-button w3-green" ">Simpan</button></span>
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">
    $(document).ready(function(){
        $('#tampildatakategori').load("kategoritampil.php");
        $('#simpan').click(function(){
            var datakategori=$('#formkategori').serialize();
            $.ajax({
               type: 'POST',
               url: 'kategori_insert.php',
               data: datakategori,
               cache: false,
               success: function(response){
                   document.getElementById("namakategori").value="";
                   document.getElementById("keterangan").value="";
                   $("#tampildatakategori").load('kategoritampil.php');
                   window.alert(response);
               }
            });
        });
    });
</script>
</body>
</html>