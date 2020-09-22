			<div class="container">
                <div class="row" style="padding-top:15px;"> 
                    <div class="col-md-9">
                        <div class="blog-post single-post">
                            <article class="post blog-single-post">
                                <div>
                                    <h2><?php echo $rows['judul']; ?></h2>
									<div class="post-meta">
                                        <span><i class="fa fa-calendar"> <?php echo tgl_indo($rows['tanggal']); ?></i></span>
                                        <span><i class="fa fa-tag"></i><?php echo "<a href='". base_url() ."kategori/detail/$rows[kategori_seo]'>$rows[nama_kategori]</a>"; ?></span>
                                            <span><i class="fa fa-eye"></i> <a href="#"><?php echo number_format($rows['dibaca']+1); ?></a></span>
									</div>
									
									<div class="td-post-sharing td-post-sharing-top td-pb-padding-side"><span class="td-post-share-title">SHARE</span>
										<div class="td-default-sharing ">
											<!-- Go to www.addthis.com/dashboard to customize your tools --> <div class="addthis_inline_share_toolbox"></div>
										   <div class="clearfix"></div>
										</div>
									</div>

									<div class="post-image">
                                        <div class="owl-carousel owl-theme" data-plugin-options="{'items':1}">
                                            <div>
                                                <div class="img-thumbnail" style="display:inherit;">
                                                    <img style="width:100%" class="img-responsive" src="<?php echo base_url() . "asset/foto_berita/" . $rows['gambar'] ?>" alt="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <?php echo $rows['isi_berita']; ?>

                                    

                                </div>
                            </article>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <aside class="siderbar">
							<h4 class="heading-primary">Latest News</h4>
                            <ul class="nav nav-list mb-xlg">
							<?php
							$pilihan = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.aktif' => 'Y','status' => 'Y'),'id_berita','DESC',0,8);
							foreach ($pilihan->result_array() as $row) {   
                                    echo "<li><a href='$row[judul_seo]'>$row[judul]</a></li>";
                            }
							?>
                            </ul>
                            <hr />
							
                            <h4 class="heading-primary">Categories</h4>
                            <ul class="nav nav-list mb-xlg">
                                    <?php
									foreach ($kategori->result_array() as $kat){
									?>
										<li><a href="../../kategori/detail/<?php echo $kat['kategori_seo']; ?>"><?php echo $kat['nama_kategori']; ?></a></li>
                                    <?php
									}
									?>
                            </ul>
                            <hr />
                            
                       
                        </aside>
                    </div>
                </div>
            </div>
       

<!-- Go to www.addthis.com/dashboard to customize your tools --> 
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5b878e417c0d681d"></script>