<div class="vc_row td-top-border wpb_row td-pb-row" >
    <div class="vc_column wpb_column vc_column_container td-pb-span12">
        <div class="wpb_wrapper">
            <div class="td_block_wrap td_block_3 td-pb-border-top td_block_template_1">

            <h4 class="block-title"><span class="td-pulldown-size">LATEST ARTICLES</span></h4>
            <div class="td_block_inner">

                <div class="td-block-row">
                    <?php 
                        $terbaru1 = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.aktif' => 'N','berita.headline' => 'N','berita.utama' => 'N','status' => 'Y'),'id_berita','DESC',0,3);
                        foreach ($terbaru1->result_array() as $row) {    
                        $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
                        $tgl = tgl_indo($row['tanggal']);
                        echo "<div class='td-block-span4'>
                                <div class='td_module_1 td_module_wrap td-animation-stack'>
                                    <div class='td-module-image'>
                                        <div class='td-module-thumb'>";                            
                                            if ($row['gambar'] ==''){
                                                echo "<a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'><img style='width:100%; height:160px' class='entry-thumb' src='".base_url()."asset/foto_berita/no-image.jpg' alt='$row[gambar]' title='$row[judul]'/></a>";
                                            }else{
                                                echo "<a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'><img style='width:100%; height:160px' class='entry-thumb' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='$row[gambar]' title='$row[judul]'/></a>";
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
                                </div>
                              </div>";
                        }
                    ?>
                </div><!--./row-fluid-->


                <div class="td-block-row">
                    <?php 
                        $terbaru2 = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.aktif' => 'N','berita.headline' => 'N','berita.utama' => 'N','status' => 'Y'),'id_berita','DESC',3,3);
                        foreach ($terbaru2->result_array() as $row) {    
                        $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
                        $tgl = tgl_indo($row['tanggal']);
                        echo "<div class='td-block-span4'>
                                <div class='td_module_1 td_module_wrap td-animation-stack'>
                                    <div class='td-module-image'>
                                        <div class='td-module-thumb'>";                            
                                            if ($row['gambar'] ==''){
                                                echo "<a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'><img style='width:100%; height:160px' class='entry-thumb' src='".base_url()."asset/foto_berita/no-image.jpg' alt='$row[gambar]' title='$row[judul]'/></a>";
                                            }else{
                                                echo "<a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'><img style='width:100%; height:160px' class='entry-thumb' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='$row[gambar]' title='$row[judul]'/></a>";
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
                                </div>
                              </div>";
                        }
                    ?>
                </div><!--./row-fluid-->

            </div><!-- ./block -->

            </div>
        </div>
    </div>
</div> 