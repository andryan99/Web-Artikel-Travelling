-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2020 at 02:24 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webteori`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id_artikel` int(11) NOT NULL,
  `id_isi` int(11) NOT NULL,
  `waktu` varchar(30) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id_artikel`, `id_isi`, `waktu`, `judul`, `isi`, `gambar`) VALUES
(1, 1, 'Selasa, 20 April 2020 | 16.00', '5 Gunung Tercantik di Indonesia', 'Indonesia yang terletak di jalur cincin api membuat Indonesia salah satu negara yang memiliki gunung terbanyak di dunia. Setidaknya ada ratusan gunung indah yang tersebar di Wilayah Indonesia.  Gunung di Jawa Tengah yang memiliki pemandangan luar biasa indah adalah Gunung Merbabu. Gunung ini berada di antara perbatasan Kabupaten Magelang, Boyolali serta Semarang. Gunung Merbabu menyajikan keindahan berupa padang sabana yang bisa kita nikmati dari lereng-lereng puncak serta puncak.\r\n\r\n    Gunung Merbabu sendiri punya jalur pendakian yang dikenal memiliki view paling indah adalah jalur Selo yang berada di kabupaten Boyolali. Mendaki Gunung Merbabu via Selo kita akan disuguhi oleh pemandangan padang sabana yang akan membuat rasa lelah tak begitu terasa.', 'semeru1.jpg'),
(2, 2, 'Selasa, 20 April 2020 | 17.00', '5 Coban Terkeren di Malang', ' Terkadang air yang berjatuhan dari Air Terjun melukiskan warna pelangi yang indah. Angin sepoi yang berhembus membawa butiran air halus mampu memberikan hawa sejuk. Hal ini yang membuat pengunjung bisa merasakan hawa sejuk, air jernih dan udara bersih di awasan air terjun ini.\r\n\r\n', 'coban.jpg'),
(3, 3, 'Selasa, 20 April 2020 | 18.00', '5 Pantai Terindah di Malang', ' Pantai ini merupakan salah satu pantai yang paling banyak dikunjungi oleh wisatawan, baik itu wisatawan lokal maupun mancanegara. Tak cuma indah, masing-masing pantai punya pesona dan karakter berbeda. Pantai dengan ombak besar cocok untuk para peselancar, sementara pantai tak terjamah lebih pas untuk Teman Traveler yang mencari suasana tenang.', 'pantai.jpg'),
(4, 4, 'Selasa, 20 April 2020 | 19.00', '5 Taman Rekreasi Keluarga yang Wajib Dikunjungi', 'Dari Kota Malang, Kabupaten Malang, sampai Kota Batu menyuguhkan tempat wisata keluarga dengan beragam keistimewaan masing-masing. Mulai dari kampung tematik, taman hiburan instagenic, sampai destinasi bernuansa alam.Berikut daftar 5 tempat wisata keluarga di Malang yang bisa masuk itinerary weekend-mu', 'keluarga.jpg'),
(5, 4, 'Selasa, 20 April 2020 | 20.00', '4 Wisata yang Cocok Untuk Melepas Penat', 'Bisa dibilang, wisata di Malang Raya gak ada matinya. Kalo kamu ingin yang seger-seger bisa langsung meluncur ke air terjun atau pantai. Sementara, buat yang doyan kuliner, banyak cafe oke di daerah ini.\r\n\r\nNah, jika kamu ingin menyegarkan mata dan pikiran, Malang punya sederet bukit yang tenang sekaligus cantik. Ini deretan wisata bukit di Malang yang punya view Instagramable.', 'anak.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_isi`
--

CREATE TABLE `tbl_isi` (
  `id_isi` int(11) NOT NULL,
  `judul1` varchar(55) NOT NULL,
  `gambar1` varchar(44) NOT NULL,
  `isi1` text NOT NULL,
  `judul2` varchar(55) NOT NULL,
  `gambar2` varchar(44) NOT NULL,
  `isi2` text NOT NULL,
  `judul3` varchar(55) NOT NULL,
  `gambar3` varchar(44) NOT NULL,
  `isi3` text NOT NULL,
  `judul4` varchar(55) NOT NULL,
  `gambar4` varchar(44) NOT NULL,
  `isi4` text NOT NULL,
  `judul5` varchar(55) NOT NULL,
  `gambar5` varchar(44) NOT NULL,
  `isi5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_isi`
--

INSERT INTO `tbl_isi` (`id_isi`, `judul1`, `gambar1`, `isi1`, `judul2`, `gambar2`, `isi2`, `judul3`, `gambar3`, `isi3`, `judul4`, `gambar4`, `isi4`, `judul5`, `gambar5`, `isi5`) VALUES
(1, 'Gunung Merbabu', 'merbabu1.jpg', ' Gunung di Jawa Tengah yang memiliki pemandangan luar biasa indah adalah Gunung Merbabu. Gunung ini berada di antara perbatasan Kabupaten Magelang, Boyolali serta Semarang. Gunung Merbabu menyajikan keindahan berupa padang sabana yang bisa kita nikmati dari lereng-lereng puncak serta puncak.\r\n\r\n    <p>&nbsp;&nbsp; &nbsp;Gunung Merbabu sendiri punya jalur pendakian yang dikenal memiliki view paling indah adalah jalur Selo yang berada di kabupaten Boyolali. Mendaki Gunung Merbabu via Selo kita akan disuguhi oleh pemandangan padang sabana yang akan membuat rasa lelah tak begitu terasa.</p>\r\n\r\n    <p>&nbsp;&nbsp; &nbsp;Di sabana terakhir sebelum puncak, pemandangan semakin indah berkat kehadiran bunga-bunga edelweis yang tumbuh di lereng-lereng bukit. Jika sedang musimnya, pemandangan ini akan terlihat sangat indah dan fotogenik. Gunung Merbabu sendiri punya tiga puncak tertinggi yakni Kenteng Songo, Trianggulasi serta Syarif. Yang istimewa dari pendakian gunung Merbabu via Selo adalah kita akan disuguhi pemandangan Gunung Merapi yang berada tepat di hadapan mata. Gunung Merapi terlihat sangat indah dari Gunung Merbabu.</p>', 'Gunung Semeru', 'semeru1.jpg', 'Gunung Semeru merupakan gunung paling indah sekaligus paling tinggi di Pulau Jawa. Gunung ini telah menjadi legenda sejak lama. Mulai dari jaman Su Hok Gie hingga jamannya pendaki kekinian seperti sekarang. Keindahan gunung ini tak pernah lekang termakan waktu. Keindahan gunung ini membuat para pendaki dari berbagai daerah rela datang jauh-jauh.\r\n\r\n     <p>&nbsp;&nbsp; &nbsp;Gunung Semeru juga merupakan salah satu gunung paling ramai. Maksimal kuota pendakian yang hanya 500 membuat para pendaki kadang harus antre di Ranu Pani.</p>\r\n\r\n   <p>&nbsp;&nbsp; &nbsp;Sama seperti Rinjani, Gunung Semeru juga memiliki permata super cantik dalam diri Ranu Kumbolo. Sebuah danau alami yang berada pada ketinggian 2.400 mdpl. Di depan Ranu Kumbolo ada Tanjakan Cinta yang juga tidak kalah terkenal di kalangan pendaki. Kemudian ada Oro-oro Ombo yang ditumbuhi oleh bunga lavender. Dengan semua keindahan yang dimilikinya, wajar kalau Gunung Semeru menjadi incaran para pendaki dimanapun berada. Apalagi keindahan gunung ini juga pernah di-film kan.</p>', 'Gunung RInjani', 'rinjani1.jpg', 'Selain punya pantai-pantai super cantik yang membuat orang malas pulang, Pulau Lombok di Nusa Tenggara Barat punya primadona lain yang membuat banyak wisatawan jatuh cinta. Primadona tersebut adalah Gunung Rinjani.\r\n\r\n    <p>&nbsp;&nbsp; &nbsp;Gunung Rinjani sering disebut sebagai wisata trekking terbaik di Asia Tenggara. Jika kamu pernah melihat keindahan Gunung Rinjani langsung dengan mata kepala sendiri, tentu kamu akan mengiyakan pendapat itu dengan sangat mudah.</p>\r\n\r\n   <p>&nbsp;&nbsp; &nbsp;Gunung Rinjani adalah gunung yang komplit. Ia punya padang sabana cantik yang ditumbuhi bunda edelweis, ia juga punya pemandangan sunrise yang menawan. Dari semua keindahan yang ada di Gunung Rinjani, Danau Segara Anak adalah yang paling dicari. Danau yang berada di ketinggian 2.000 mdpl ini merupakan permata paling indah di Gunung Rinjani. Keindahan danau ini juga dapat kita saksikan dari puncak Rinjani. Yang unik dari Gunung Rinjani adalah keberadaan Gunung Barujari yang berada di tengah-tengah Danau Segara Anak. Gunung Barujari adalah gunung yang berada di atas gunung sehingga gunung ini sering disebut sebagai anaknya Gunung Rinjani.</p>', 'Gunung Kerinci', 'kerinci1.jpg', 'Gunung kerinci merupakan gunung tertinggi di Pulau Sumatera di Indonesia. Ada banyak keindahan di gunung dengan ketinggian 3.805 mdpl tersebut. Alamnya sungguh sempurna, mulai dari danau hingga kekayaan flora dan fauna.\r\n\r\n   <p>&nbsp;&nbsp; &nbsp;Bagi anda para pendaki, keindahan Gunung Kerinci sungguh sayang untuk dilewatkan. Di dalam jalur pendakiannya, ada banyak keindahan yang dapat Anda rasakan. Gunung Kerinci akan membuat siapa pun terpesona akan kemegahannya.</p>\r\n\r\n   <p>&nbsp;&nbsp; &nbsp;Setibanya di puncak Gunung Kerinci ada keindahan yang tak bisa dilukiskan. Anda akan menyaksikan kawah Gunung Kerinci, lanskap Kota Jambi, Padang, Bengkulu, Danau Kerinci, dan Danau Gunung Tujuh, bahkan juga Samudera Hindia yang membentang indah di kejauhan. Ya, dari puncaknya terdapat pemandangan yang sangat menakjubkan.</p>', 'Gunung Gede', 'gede1.jpg', '  Gunung Gede merupakan salah satu gunung paling “laris” di Jawa Barat. Sebabnya apalagi kalau bukan pemandangan indah yang dimilikinya. Tempat yang paling indah di Gunung Gede adalah Alun-alun Suryakencana. Tempat ini merupakan padang rumput yang dipenuhi bunga edelweis. Alun-alun Suryakencana merupakan salah satu tempat terbaik untuk menikmati pemandangan sang bunda abadi, Edelweis.\r\n\r\n  <p>&nbsp;&nbsp; &nbsp; Alun-alun Suryakencana berada di ketinggian 2.750 mdpl. Dibalik keindahannya, tempat ini memiliki sebuah mitos. Konon, di Alun-alun Suryakencana kadang-kadang terdengar suara seperti kaki kuda. Suara tersebut dipercaya sebagai suara kuda yang ditunggangi oleh Pangerah Suryakencana bersama rakyat jin. Pangeran Suryakencana sendiri merupakan putra dari pendiri kota Cianjur yakni Pangeran Aria Wiratanudatar dari hubungannya dengan bangsa jin. Menurut mitos, Pangeran Suryakencana bersemayam di sekitar Alun-alun Suryakencana. Apapun mitosnya, yang jelas Alun-alun Suryakencana memiliki pemandangan yang sedap dipandang.</p>\r\n\r\n   <p>&nbsp;&nbsp; &nbsp;Gunung Gede sendiri berada di kawasan Taman Nasional Gunung Gede Pangrango. Selain Gunung Gede, di kawasan taman nasional ini juga terdapat gunung Pangrango yang juga memiliki padang rumput yang dipenuhi Bunga Edelweis. Namanya adalah Mandalawangi.</p>'),
(2, 'Coban Telaga Warna', 'telaga.jpg', 'Suara merdu aliran Coban dari kejauhan menambah kecepatan kaki ini melangkah, setelah mulai dihinggapi rasa lelah, anak tangga sederhana yang terbuat dari bambu pun menjadi pertanda bahwa diri ini telah menemukan apa yang telah menjadi penantian.Satu lagi deretan daftar panjang wisata air terjun di Malang, kali ini berada di selatan pusat kota yang bernama Coban Telaga Warna. Bagian telaga memiliki air yang sangat jernih, tak heran jika Dolaners akan tergoda untuk berendam merasakan kesegarannya. Ketinggian dari Coban Telaga Warna sekitar 90 meter atau setara dengan gedung 6 lantai.\r\n\r\n<p>&nbsp;&nbsp; &nbsp; Belum lama dibuka sebagai tempat wisata, Coban Telaga Warna Malang memiliki medan yang cukup merepotkan, akses jalan dan fasilitas seadanya tidak mengurangi kegigihan Dolaners untuk menemukan kesejukan suasana Coban. Meskipun tidak dipungut biaya masuk alias gratis, Dolaners hanya perlu merogoh kantong 2000 rupiah untuk biaya parkir kendaraan. Cukup ekonomis bukan?</p>', 'Coban Kethak', 'kethak.jpg', 'Berada di perbatasan antara Kabupaten Malang dengan Kediri, Dolaners bisa mendapati Coban Kethak di kawasan milik Perhutani. Coban ini kemudian mengalir menjadi Sungai Lanang yang melanjutkan perjalanannya hingga bermuara di Kediri. Penduduk sekitar menamai coban ini Grojogan Singo karena deras air yang jatuh membelah dan seolah membentuk surai singa.\r\n\r\n<p>&nbsp;&nbsp; &nbsp; Coban Kethak bisa dinikmati oleh wisatawan baru dalam tiga tahun belakangan ini, jadi fasilitas-fasilitas wisatanya, seperti gazebo dan permainan anak, juga masih baru. Kalau Dolaners suka durian Kesambon, Coban Kethak ini bisa jadi destinasi wisata yang memuaskan perut dan mata. Bagaimana tidak, sepanjang perjalanan menuju coban, Dolaners akan disuguhi pemandangan pohon-pohon durian yang lebat di kanan kiri jalan. Dan pasti, tidak hanya untuk dilihat ya, Dolaners.</p>', 'Coban Rondo', 'rondo.jpg', ' Coban Rondo sudah cukup populer. Dan karena popularitas yang bertahan sekian lama inilah, maka akses menuju air terjun cukup terbilang mudah dibanding air terjun lain di Malang yang masih alami. Sehingga, Coban Rondo ini adalah destinasi wisata air terjun yang paling cocok untuk keluarga dengan anak kecil. Tapi bukan berarti anak muda tak ada yang ke coban ini, ya Dolaners.\r\n<p>&nbsp;&nbsp; &nbsp; Air terjun yang bersumber dari Cemoro Dudo Gunung Kawi ini bukan satu-satunya hal yang menarik di destinasi wisata ini. Dengan pengelolaan yang baik, kawasan wisata ini sekarang telah dilengkapi oleh taman labirin yang instagenic, camping ground, wahana outbond, flying fox, area airsoftgun, area paintball, jungle tracking, dan masih banyak lagi fasilitas-fasilitas pendukung wisata yang lain.</p>', 'Coban Tundo', 'tundo.jpg', ' Bergeser sedikit ke desa tetangga, destinasi wisata alam lain yang sama-sama masih baru ngehits juga. Dolaners bisa menengok Coban Tundo di Sumbermanjing Wetan. Lokasinya agak susah ditemukan, tapi terbayar dengan pemandangan air birunya. \r\n\r\n\r\n<p>&nbsp;&nbsp; &nbsp; Layaknya oase di balik rimbunnya perkebunan kopi, wisata alam Coban Tundo 3 mampu meredakan dahaga setiap Dolaners yang haus akan petualangan berlibur yang menyenangkan dan mengesankan.Air Terjun atau yang biasa disebut dengan Coban Tundo 3 sebenarnya adalah ‘kakak tertua; dari rangkaian Coban Tundo yang berada di Desa Sidoasri, Kecamatan Sumber Manjing Wetan, Kabupaten Malang, Jawa Timur. Di kawasan ini terdapat tiga susunan air terjun, Coban Tundo 1 (paling atas), Coban Tundo 2 (tengah), Coban Tundo 3 (paling bawah). Kawasan air terjun yang terletak di Kebun Kopi ini memiliki pesona yang luar biasa indah. Tak heran banyak para Dolaners yang rela datang dari jauh dan menempuh perjalanan yang penuh lika liku, trek yang terjal dan sempit hanya untuk dapat menyaksikannya pesona yang dihadirkan di wisata alam satu ini. Tak ada yang menyangka menyangka memang, bahwa dibalik rimbunnya kebun kopi, seolah tersimpan oase yang menyegarkan. Selain menikmati wisata alam air terjun yang indah, di Objek Wisata Alam Coban Tundo 3 ini, Dolaners juga bisa menikmati segarnya air dengan bereneng. Airnya yang bening memang selalu berhasil mengajak siapa saja menceburkan diri ke dalamnya. Jangan khawatir, untuk yang tidak bisa bereneng, Dolaners bisa menyewa ban yang memang sudah banyak ditawarkan oleh warga sekitar. </p>', 'Coban Ringin Gantung', 'ringin.jpg', 'Penamaan Ringin Gantung tentu saja tak sembarangan. Dinamakan Ringin Gantung, karena disamping air terjun tersebut, muncul pohon beringin yang tumbuh subur diantara tebing-tebing cadasnya. Pohon beringin berukuran besar itu, seolah menggantung disela-sela bukit. Ringin adalah istilah dalam bahasa Jawa yang berarti pohon beringin. Air terjun setinggi 70 meter itu, berada persis di lereng gunung semeru. Coban ini letaknya masih tersembunyi dan memang belum banyak orang mengetahuinya. &nbsp; \r\n\r\n<p>&nbsp;&nbsp; &nbsp; Coban Ringin Gantung menawarkan pemandangan alami yang masih sangat hijau dan bersih. Hijaunya pemandangan sekitar dan jernihnya air yang mengucur membuat coban ini sangat eksotis. Hawanya yang masih sangat sejuk dan segar dapat melepaskan rasa penat yang Anda tanggung sehari-hari dalam rutinitas kerja. Di coban ini tidak ada tiket masuknya. Namun jangan kaget jika ada warga sekitar yang memintai sumbangan seikhlasnya untuk digunakan perbaikan jalan. </p>'),
(3, 'Pantai Banyu Anjlok', 'anjlok.jpg', ' Termasuk salah satu Pantai favorit di Malang Selatan, Pantai Banyu Anjlok ini membentang luas menghadap ke samudra. Memiliki air yang jernih, dan pasir putih yang lembut. Dolaners akan di suguhi oleh atraksi yang menarik dari air terjun yang juga terdapat di kawasan pantai, air terjun tersebut menghadap ke lautan. Air terjun bebas lepas melenggang ke bawah, kemudian menyiram air laut yang berada di bawahnya. Air terjun ini memiliki ketinggian sekitar 15 meter, terdapat bebatuan di sekitar air terjun, sehingga dolaners yang bisa memanjat tentu bisa mencoba naik ke atas. \r\n\r\n<p>&nbsp;&nbsp; &nbsp; Pantai Banyu Anjlok Malang tidak hanya menawarkan wisata pantai dan air terjun saja, melainkan terdapat pula Goa yang di beri nama Goa Sarang Wallet.</p>', 'Pantai Batu Bengkung', 'bengkung.jpg', 'Pantai Batu Bengkung merupakan sebuah pantai yang unik. Di bibir pantai ini terdapat barisan batu karang yang membentuk seperti barisan pembatas. Jika ombak datang, maka batu karang tersebut akan memcah ombak, sehingga tak jarang bila air laut yang terjebak diantara karang karang tersebut akan menghasilkan seperti kolam air asin alami yang bisa digunakan untuk berenang. Di pantai yang terletak di Malang Selatan ini Dolaners juga dapat berjalan jalan, berfoto foto ria atau bahkan hanya bersantai di gubuk gubuk yang telah disediakan di tepian pantai sebagai tempat berteduh. Bagi Dolaners yang menyukai tantangan, dolaners juga dapat memanjat bukit batu bengkung.\r\n\r\n<p>&nbsp;&nbsp; &nbsp; Tak lama lagi Dolaners juga dapat menikmati snorkeling, scuba diving, surving dan wisata air lainnya di Pantai Batu Bengkung Malang ini.</p>', 'Pantai Kondang Merak', 'merak.jpg', ' Kebersihan dan kelembutan pasir putih milik Pantai Kondang Merak sangat menggiurkan siapa saja yang melihat. Suasana pesisir yang tidak terlalu ramai membuat pantai yang dulu kondang oleh kawanan burung merak yang sering melepas rasa haus ini begitu pas untuk tempat singgah guna melapas stress dan penat. Ditambah lagi suara deburan ombak yang dipadu dengan angin sejuk semakin membuat Dolaners akan merasa tenang ketika sedang berada di Pantai Kodnang Merak Malang ini.\r\n\r\n<p>&nbsp;&nbsp; &nbsp; Di pantai yang kondang dengan komoditi ikan hiasnya ini menyimpan panorama planet bawah laut yang begitu memukau, ombaknya yang tidak ganas bahkan nyaris tidak bergelombang membuatnya sebagai wahana memikat untuk bersnorkeling.</p>', 'Pantai Clungup', 'clungup.jpg', 'Malang Selatan memang menyimpan banyak pantai dengan segala keunikannya masing masing. Salah satunya adalah Pantai Clungkup. Dengan segala keunikan yang dimiliki, yakni hamparan pasir putih sepanjang setengah kilometer, air pantai yang begitu bening, dan riak ombak kecil serta gugusan pulau kecil di sekitar pantai, membuat pantai ini sering dijadikan sebagai jujugan untuk berlibur. Pulau-pulau kecil di lepas pantai itu akan menghalangi ombak besar dari Samudera Hindia, sehingga ombak di Pantai Clungup cukup tenang sampai jarak sekitar 500 meter. Gugusan pulau ini di pantai ini sering disebut-sebut seperti gugusan pulau di Raja Ampat.</p>\r\n\r\n<p>&nbsp;&nbsp; &nbsp; Kedalaman pantai cukup aman bagi Dolaners yang ingin berenang di Pantai Clungup Malang ini. Namun Dolaners juga tetap harus berhati-hati karena banyak batu dan karang tajam di dasar pantai di Malang ini. </p>', 'Pantai Sipelot', 'sipelot.jpg', ' Ada sebuah keunikan yang terdapat di Pantai Sipelot ini. Ya, pantai ini seakan menghadirkan 2 kubu pasir dengan warna yang kontras. Pasir putih yang terhampar dengan kilauan air laut yang terpantul oleh sengatan cahaya sang surya dan birunya mendung merupakan kombinasi pemandangan yang memukau dari atas bukit. Dari dimensi lain pasir kecoklatan menghiasi keindahan area Pantai Sipelot Malang yang merupakan area yang membentuk teluk ini.\r\n\r\n\r\n<p>&nbsp;&nbsp; &nbsp; Mahakarya Sang Pencipta ini semakin dipercantik oleh air terjun yang mengalir dari ketinggian 10 meter dengan debit yang lumayan deras, bening dan jernih. Derasnya cucuran air terjun tersebut begitu menggema dan menarik hati Dolaners untuk bermain disana.</p>'),
(4, 'Taman Bunga Selecta', 'selecta.jpg', 'Taman bunga yang sudah berusia sangat tua. Dibangun sejak tahun 1930-an sampai sekarang masih sering dikunjungi oleh masyarakat yang ingin mencari kesejukan dan ketenangan. Karena dikelilingi oleh ribuan bunga, tentu bisa Kamu jadikan sebagai spot foto yang menarik. Salah satunya adalah simbol ‘love’ yang terdapat di bagian depan.\r\n\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Kamu juga tidak perlu capai-capai untuk berkeliling taman dengan berjalan kaki. Karena sudah disediakan semacam kereta yang akan mengantarmu berkeliling di atas kebun. Namun, Kamu harus mengayuh kereta ini agar dapat berjalan. Kamu juga menjadikan kereta ini sebagai salah satu spot foto dengan latar yang menampilkan keindahan bunga-bunga di bawahnya.\r\n</p>', 'Museum Satwa', 'satwa.jpg', 'Museum satwa ini cocok untuk dijadikan destinasi wisata saat Kamu berlibur bersama keluarga di Malang. Apalagi kalau mengajak anak atau keponakan, bisa berlibur sambil belajar berbagai jenis hewan di sini. Ada juga fosil dinosaurus raksasa yang menarik perhatian wisatawan. \r\n\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Tidak hanya satwa darat saja yang ada di sini. Terdapat juga sebuah akuarium yang menawarkan pemandangan ikan-ikan yang berenang ke sana kemari.\r\n\r\nLokasi: Eco Green Park, Jl. Raya Oro-Oro Ombo No.9, Batu, Jawa Timur.\r\n</p>', 'Plaza Garden Rabbit Fields', 'rabbit.jpg', 'Berupa taman yang dipenuhi kelinci dan berbentuk seperti taman yang ada pada serial Teletubbies akan membuat anak Kamu sangat betah. Selain itu Kamu juga bisa menyegarkan pikiran di sini karena terbuat oleh rumput yang menyejukkan.\r\n<p>&nbsp;&nbsp;&nbsp;Di sini Kamu dan anak Kamu bisa berinteraksi langsung bersama hewan yang menggemaskan yaitu kelinci. Mulai dari memberi makan, berfoto, dan memahami lebih dalam tentang kelinci bisa di dapatkan di sini.\r\n</p>', 'Jawa Timur Park I', 'jatimpark.jpg', 'Jatim Park bisa jadi destinasi pilihan saat berlibur bersama keluarga di Malang. Di sini Kamu bisa mengajak anak-anak bermain sambil belajar. Ada beberapa wahana yang bisa dicoba misalnya science experiment, Taman Mini yang berisi informasi dari provinsi-provinsi Indonesia, aquarium ikan, roller coaster, dan juga rumah hantu. \r\n\r\n<p>&nbsp;&nbsp;&nbsp; Jika telah lelah berkeliling, Kamu bisa beristirahat dan bersantai di tempat yang sudah disediakan di antara dua kolam. Rasakan sejuknya cipratan air yang akan menghilangkan lelahmu. \r\n\r\nLokasi: Jl. Kartika 2, Batu, Jawa Timur\r\n</p>', 'Predator Fun Park', 'predator.jpg', 'Meski namanya sedikit menyeramkan, namun jangan takut. Di sini Kamu malah bisa memberikan ilmu tambahan dari liburanmu untuk anak-anakmu. Kamu dan anak-anakmu akan mempelajari banyak hal di sini karena wisata ini adalah salah satu wisata edukasi yang ada di Malang.\r\n\r\n\r\n<p>&nbsp;&nbsp;&nbsp;\r\nTerdapat banyak wahana di sini, seperti galeri buaya, choco train, waterboom, outbond, family fun house, saung angklung, dan extreme trampoline. Manfaatkan waktumu ketika berkunjung ke sini untuk menikmati semua wahana yang ada bersama keluarga.Kamu juga bisa merasakan serunya melakukan tantangan outbond yang sudah disediakan. Latih kelincahanmu seperti predator yang sedang memangsa.\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `keterangan`) VALUES
(1, 'Alam', 'Artikel yang Berhubungan dengan Wisata Alam'),
(2, 'Pantai', 'Artikel yang Berhubungan dengan Wisata Pantai'),
(3, 'Air', 'Artikel yang Berhubungan dengan Wisata Air'),
(4, 'Adventure', 'Artikel yang Berhubungan dengan Wisata Adventure'),
(5, 'Keluarga', 'Artikel yang Berhubungan dengan Wisata Keluarga');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontributor`
--

CREATE TABLE `tbl_kontributor` (
  `id_kontributor` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kontributor`
--

INSERT INTO `tbl_kontributor` (`id_kontributor`, `username`, `password`, `nama`, `keterangan`) VALUES
(1, 'admin', 'admin', 'Muhammad Andryan', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulis_artikel`
--

CREATE TABLE `tbl_tulis_artikel` (
  `id_tulis` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_kontributor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tulis_artikel`
--

INSERT INTO `tbl_tulis_artikel` (`id_tulis`, `id_artikel`, `id_kategori`, `id_kontributor`) VALUES
(5, 1, 1, 1),
(4, 2, 3, 1),
(3, 3, 2, 1),
(2, 4, 5, 1),
(1, 5, 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_isi` (`id_isi`);

--
-- Indexes for table `tbl_isi`
--
ALTER TABLE `tbl_isi`
  ADD PRIMARY KEY (`id_isi`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kontributor`
--
ALTER TABLE `tbl_kontributor`
  ADD PRIMARY KEY (`id_kontributor`);

--
-- Indexes for table `tbl_tulis_artikel`
--
ALTER TABLE `tbl_tulis_artikel`
  ADD PRIMARY KEY (`id_tulis`),
  ADD KEY `id_artikel` (`id_artikel`,`id_kategori`,`id_kontributor`),
  ADD KEY `id_kontributor` (`id_kontributor`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_isi`
--
ALTER TABLE `tbl_isi`
  MODIFY `id_isi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_kontributor`
--
ALTER TABLE `tbl_kontributor`
  MODIFY `id_kontributor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tulis_artikel`
--
ALTER TABLE `tbl_tulis_artikel`
  MODIFY `id_tulis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD CONSTRAINT `tbl_artikel_ibfk_1` FOREIGN KEY (`id_isi`) REFERENCES `tbl_isi` (`id_isi`);

--
-- Constraints for table `tbl_tulis_artikel`
--
ALTER TABLE `tbl_tulis_artikel`
  ADD CONSTRAINT `tbl_tulis_artikel_ibfk_1` FOREIGN KEY (`id_artikel`) REFERENCES `tbl_artikel` (`id_artikel`),
  ADD CONSTRAINT `tbl_tulis_artikel_ibfk_2` FOREIGN KEY (`id_kontributor`) REFERENCES `tbl_kontributor` (`id_kontributor`),
  ADD CONSTRAINT `tbl_tulis_artikel_ibfk_3` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
