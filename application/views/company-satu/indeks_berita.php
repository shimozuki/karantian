<div class="vc_column  wpb_column vc_column_container td-pb-span8" style='margin-top:20px'>
<div class="wpb_wrapper">
    <div class="td-category-header td-pb-padding-side">
        <header>
            <h1 class="entry-title td-page-title"> <span class='kategori-title'>Index Berita</span> </h1>
            <?php 
            echo "<form action='".base_url()."berita/indeks_berita' method='POST'>
                Tanggal &nbsp; &nbsp; &nbsp;
                <select name='tanggal' class='select'>";
                    for($n=1; $n<=31; $n++){
                        if (isset($_POST['filter'])){ $tgls = $_POST['tanggal']; }else{ $tgls = date("d"); }
                        if ($tgls==$n){
                            echo "<option value='$n' selected>$n</option>";
                        }else{
                            echo "<option value='$n'>$n</option>";
                        }
                    }
                echo "</select>

                <select name='bulan' class='select'> ";
                    $bln = array('','Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember');
                    for($n=1; $n<=12; $n++){
                        if (isset($_POST['filter'])){ $blns = $_POST['bulan']; }else{ $blns = date("n"); }
                        if ($blns == $n){
                            echo "<option value='$n' selected>$bln[$n]</option>";
                        }else{
                            echo "<option value='$n'>$bln[$n]</option>";
                        }
                    }
                echo "</select>

                <select name='tahun' class='select'> ";
                    for($n=2008; $n<=date('Y'); $n++){ 
                        if (isset($_POST['filter'])){ $year = $_POST['tahun']; }else{ $year = date("Y"); }
                        if ($year == $n){
                            echo "<option value='$n' selected>$n</option>";
                        }else{
                            echo "<option value='$n'>$n</option>";
                        }
                    }                                           
                echo "</select>
                        <input style='padding:0px 6px 0px 6px;' type='submit' name='filter' value='Lihat Indeks'>";
              echo "</form>";
            ?><br>
        </header>
    </div>

    <div class="td_block_wrap td_block_slide td-pb-border-top td_block_template_1 td_normal_slide">
    <div class="td_block_inner td-column-2">
        <?php 
            if (isset($_POST['filter'])){
                $bulan = strlen($_POST['bulan']);
                $tanggal = strlen($_POST['tanggal']);       
                if ($bulan <= 1){ $bulann = '0'.$_POST['bulan']; }else{ $bulann = $_POST['bulan']; }
                if ($tanggal <= 1){ $tanggall = '0'.$_POST['tanggal']; }else{ $tanggall = $_POST['tanggal']; }
                $fil = $_POST['tahun'].'-'.$bulann.'-'.$tanggall;
            }else{
                $fil = date("Y-m-d");
            }

            $index_berita = $this->db->query("SELECT * FROM berita a JOIN kategori b ON a.id_kategori=b.id_kategori JOIN users c ON a.username=c.username where a.tanggal='$fil'");
            foreach ($index_berita->result_array() as $row) {    
            $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
            $tgl = tgl_indo($row['tanggal']);
            $isi_berita = strip_tags($row['isi_berita']); 
            $isi = substr($isi_berita,0,120); 
            $isi = substr($isi_berita,0,strrpos($isi," "));
            echo "<div class='td-block-span12'>
                    <div class='td_module_10 td_module_wrap td-animation-stack'>
                        <div class='td-module-thumb'>";                            
                            if ($row['gambar'] ==''){
                                echo "<a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'><img width='180' height='135' class='entry-thumb' src='".base_url()."asset/foto_berita/no-image.jpg' alt='$row[gambar]' title='$row[judul]'/></a>";
                            }else{
                                echo "<a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'><img width='180' height='135' class='entry-thumb' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='$row[gambar]' title='$row[judul]'/></a>";
                            }
                        echo "</div>
                        <div class='item-details'>
                            <h3 class='entry-title td-module-title'><a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'>$row[judul]</a></h3>
                            <div class='meta-info'>
                                                  
                                <span class='td-post-author-name'><a href='".base_url()."berita/detail/$row[judul_seo]'>$row[nama_lengkap]</a> <span>-</span> </span>                    
                                <span class='td-post-date'><time class='entry-date updated td-module-date'>$row[jam], $tgl</time></span>
                                <div class='td-module-comments'><a href='".base_url()."berita/detail/$row[judul_seo]'>$total_komentar</a></div>                
                            </div>
                        <div class='td-excerpt'>$isi...</div>
                        </div>
                    </div>
                   </div>";
            }

            if ($index_berita->num_rows()<1){
                echo "<center style='padding:15%'>Maaf, Belum ada artikel yang diterbitkan pada hari ini (".tgl_indo($hari_ini).").</center>";
            }
        ?>
    </div>
    </div> <!-- ./block -->
    <div class="page-nav td-pb-padding-side">
        <?php echo $this->pagination->create_links(); ?>
    </div>
</div>
</div>