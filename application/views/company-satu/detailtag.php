<div class="vc_column  wpb_column vc_column_container td-pb-span8" style='margin-top:20px'>
<div class="wpb_wrapper">
    <div class="td-category-header td-pb-padding-side">
        <header>
            <h1 class="entry-title td-page-title"> <span class='kategori-title'>Tag "<?php echo "$rows[nama_tag]"; ?>"</span> </h1>
        </header>
    </div>

    <div class="td_block_wrap td_block_slide td-pb-border-top td_block_template_1 td_normal_slide">
    <div class="td_block_inner td-column-2">
        <?php 
            foreach ($beritatag->result_array() as $row) {    
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
        ?>
    </div>
    </div> <!-- ./block -->
    <div class="page-nav td-pb-padding-side">
        <?php echo $this->pagination->create_links(); ?>
    </div>
</div>
</div>