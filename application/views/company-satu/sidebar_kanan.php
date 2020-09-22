<div class="vc_column  wpb_column vc_column_container td-pb-span4">
<div class="wpb_wrapper"> <!-- Start wpb_wrapper -->
    <div class="td_block_wrap td_block_social_counter td_block_template_1">
        <div class="td-block-title-wrap">
            <h4 class="block-title"><span class="td-pulldown-size">STAY CONNECTED</span></h4>
        </div>
        <div class="td-social-list">
            <div class="td_social_type td-pb-margin-side td_social_facebook">
            <div class="td-social-box">
                <div class="td-sp td-sp-facebook"></div>
                <span class="td_social_info td_social_info_name">Facebook </span>
                <span class="td_social_button"><a href="<?php echo $pecahd[0]; ?>" target="_blank" >Like</a></span>
                </div>
            </div>
            <div class="td_social_type td-pb-margin-side td_social_twitter">
            <div class="td-social-box">
                <div class="td-sp td-sp-twitter"></div>
                <span class="td_social_info td_social_info_name">Followers</span>
                <span class="td_social_button"><a href="<?php echo $pecahd[1]; ?>" target="_blank" >Follow</a></span>
            </div>
            </div>
            <div class="td_social_type td-pb-margin-side td_social_googleplus">
            <div class="td-social-box">
                <div class="td-sp td-sp-googleplus"></div>
                <span class="td_social_info td_social_info_name">Google +</span>
                <span class="td_social_button"><a href="<?php echo $pecahd[2]; ?>" target="_blank" >Circle</a></span>
            </div>
            </div>
            <div class="td_social_type td-pb-margin-side td_social_instagram">
            <div class="td-social-box">
                <div class="td-sp td-sp-instagram"></div>
                <span class="td_social_info td_social_info_name">Instagram</span>
                <span class="td_social_button"><a href="<?php echo $pecahd[3]; ?>" target="_blank" >Follow</a></span>
            </div>
            </div>
            <div class="td_social_type td-pb-margin-side td_social_youtube">
            <div class="td-social-box">
                <div class="td-sp td-sp-youtube"></div>
                <span class="td_social_info td_social_info_name">Youtube</span>
                <span class="td_social_button"><a href="<?php echo $pecahd[4]; ?>" target="_blank" >Subscribe</a></span>
            </div>
            </div>
        </div>
    </div> <!-- ./block -->


    <div class="td-a-rec td-a-rec-id-sidebar td_block_template_1">
        <div class="td-all-devices">
        <?php
          $pasangiklan2 = $this->model_utama->view_ordering_limit('pasangiklan','id_pasangiklan','ASC',1,1);
          foreach ($pasangiklan2->result_array() as $b) {
            $string = $b['gambar'];
            if ($b['gambar'] != ''){
                if(preg_match("/swf\z/i", $string)) {
                    echo "<a href='$b[url]' target='_blank'><embed src='".base_url()."asset/foto_pasangiklan/$b[gambar]' width=100% height=240 quality='high' type='application/x-shockwave-flash'></a>";
                } else {
                    echo "<a href='$b[url]' target='_blank'><img width=100% src='".base_url()."asset/foto_pasangiklan/$b[gambar]' alt='$b[judul]' /></a>";
                }
            }
          }
        ?>
    </div>

    <div class="td_block_wrap td_block_9 td_with_ajax_pagination td-pb-border-top td_block_template_1">
        <h4 class="block-title"><span class="td-pulldown-size">BERITA PILIHAN</span></h4>
        <div class="td_block_inner">
            <?php 
                $pilihan = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.aktif' => 'Y','status' => 'Y'),'id_berita','DESC',0,3);
                foreach ($pilihan->result_array() as $row) {    
                $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
                $tgl = tgl_indo($row['tanggal']);
                echo "<div class='td-block-span12'>
                        <div class='td_module_8 td_module_wrap'>
                            <div class='item-details'>
                                <h3 class='entry-title td-module-title'><a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'>$row[judul]</a></h3>
                                <div class='meta-info'>
                                    <span class='td-post-author-name'><a href='".base_url()."berita/detail/$row[judul_seo]'>$row[nama_lengkap]</a> <span>-</span> </span>                    
                                    <span class='td-post-date'><time class='entry-date updated td-module-date'>$row[jam], $tgl</time></span>
                                </div>
                            </div>
                        </div>
                      </div>";
                }
            ?>
        </div>
    </div> <!-- ./block -->


    <div class="td_block_wrap td_block_2 td_with_ajax_pagination td-pb-border-top td_block_template_1">
    <h4 class="block-title"><span class="td-pulldown-size">BERITA POPULER</span></h4>
    <div class="td_block_inner">
        <?php 
                $populer = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('status' => 'Y'),'dibaca','DESC',0,1);
                foreach ($populer->result_array() as $row) {    
                $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
                $tgl = tgl_indo($row['tanggal']);
                $isi_berita = strip_tags($row['isi_berita']); 
                $isi = substr($isi_berita,0,130); 
                $isi = substr($isi_berita,0,strrpos($isi," "));
                echo "<div class='td-block-span12'>
                        <div class='td_module_4 td_module_wrap td-animation-stack'>
                            <div class='td-module-image'>
                                <div class='td-module-thumb'>";                            
                                    if ($row['gambar'] ==''){
                                        echo "<a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'><img width='300' height='194' class='entry-thumb' src='".base_url()."asset/foto_berita/no-image.jpg' alt='$row[gambar]' title='$row[judul]'/></a>";
                                    }else{
                                        echo "<a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'><img width='300' height='194' class='entry-thumb' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='$row[gambar]' title='$row[judul]'/></a>";
                                    }
                                echo "</div>          
                                <a href='".base_url()."kategori/detail/$row[kategori_seo]' class='td-post-category'>$row[nama_kategori]</a>             
                            </div>

                            <h3 class='entry-title td-module-title'><a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'>$row[judul]</a></h3>
                            <div class='meta-info'>
                                <span class='td-post-author-name'><a href='".base_url()."berita/detail/$row[judul_seo]'>$row[nama_lengkap]</a> <span>-</span> </span>                    
                                <span class='td-post-date'><time class='entry-date updated td-module-date'>$row[jam], $tgl</time></span>
                                <div class='td-module-comments'><a href='".base_url()."berita/detail/$row[judul_seo]'>$total_komentar</a></div>             
                            </div>
                            <div class='td-excerpt'>$isi...</div>
                        </div>
                      </div>";
                }

                $populer_sub = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('status' => 'Y'),'dibaca','DESC',1,4);
                foreach ($populer_sub->result_array() as $row) {    
                $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
                $tgl = tgl_indo($row['tanggal']);
                $isi_berita = strip_tags($row['isi_berita']); 
                $isi = substr($isi_berita,0,130); 
                $isi = substr($isi_berita,0,strrpos($isi," "));
                echo "<div class='td-block-span12'>
                        <div class='td_module_6 td_module_wrap td-animation-stack'>
                            <div class='td-module-thumb'>";                            
                                    if ($row['gambar'] ==''){
                                        echo "<a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'><img width='300' height='194' class='entry-thumb' src='".base_url()."asset/foto_berita/no-image.jpg' alt='$row[gambar]' title='$row[judul]'/></a>";
                                    }else{
                                        echo "<a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'><img width='300' height='194' class='entry-thumb' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='$row[gambar]' title='$row[judul]'/></a>";
                                    }
                            echo "</div> 
                            <div class='item-details'>
                                <h3 class='entry-title td-module-title'><a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'>$row[judul]</a></h3>          
                                <div class='meta-info'>
                                    <span class='td-post-date'><time class='entry-date updated td-module-date'>$row[jam], $tgl</time></span>                           
                                </div>
                            </div>
                        </div>
                      </div>";
                }
            ?>
     

    </div>
    </div> <!-- ./block -->

</div> <!-- End wpb_wrapper -->
</div>