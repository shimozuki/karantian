<?php $total_komentar = $this->model_utama->view_where('komentarvid',array('id_video' => $rows['id_video']))->num_rows(); ?>  

			<div class="container">
                <div class="row" style="padding-top:15px;"> 
                    <div class="col-md-9">
                        <div class="blog-post single-post">
                            <article class="post blog-single-post">
                                <div>
                                    <h2><?php echo $rows['jdl_video']; ?></h2>
									<div class="post-meta">
                                        <span><i class="fa fa-calendar"> <?php echo tgl_indo($rows['tanggal']); ?></i></span>
                                        <span><i class="fa fa-tag"></i><?php echo "<a href='".base_url()."playlist/detail/$rows[playlist_seo]'>$rows[jdl_playlist]</a>"; ?></span>
                                            <span><i class="fa fa-eye"></i> <a href="#"><?php echo number_format($rows['dilihat']+1); ?></a></span>
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
                                                   <?php
														if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $rows['youtube'], $match)) {
															echo "<iframe width='855px' height='500px' src='https://www.youtube.com/embed/".$match[1]."' frameborder='0' allowfullscreen></iframe>";
														}   
													?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <?php echo $rows['keterangan']; ?>

                                    

                                </div>
                            </article>
                        </div>
                    </div>

                    
                </div>
            </div>
       

<!-- Go to www.addthis.com/dashboard to customize your tools --> 
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5b878e417c0d681d"></script>


