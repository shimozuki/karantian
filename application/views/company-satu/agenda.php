			<div class="container">
				<br/>
				<h2>Agenda</h2>
                <div class="row" style="padding-top:15px;"> 
                    <div class="col-md-9">
                        <div class="blog-post single-post">
						<?php 
						$no = $this->uri->segment(3)+1;
						foreach ($agenda->result_array() as $h) {   
							$tgl_posting = tgl_indo($h['tgl_posting']);
							$tgl_mulai   = tgl_indo($h['tgl_mulai']);
							$tgl_selesai = tgl_indo($h['tgl_selesai']);
							$baca = $h['dibaca']+1;
							$temal = substr($h['tema'],0,33); 
							$isi_agenda =(strip_tags($h['isi_agenda'])); 
							$isi = substr($isi_agenda,0,120); 
							$isi = substr($isi_agenda,0,strrpos($isi," "));
						?>
                            <article class="post post-medium" style="padding-bottom: 10px;padding-top:20px;">
								<div class="row">
										<div class="col-md-5">
											<div class="img-responsive">
												<?php
												if ($h['gambar'] ==''){
													echo "<a href='".base_url()."agenda/detail/$h[tema_seo]' rel='bookmark' title='$h[tema]'><img width='336' style='height:189px;' height='189' class='img-responsive' src='".base_url()."asset/foto_agenda/no-image.jpg' alt='$h[gambar]' title='$h[tema]'/></a>";
												}else{
													echo "<a href='".base_url()."agenda/detail/$h[tema_seo]' rel='bookmark' title='$h[tema]'><img width='336' style='height:189px;' height='189' class='img-responsive' src='".base_url()."/asset/foto_agenda/$h[gambar]' alt='$h[gambar]' title='$h[tema]'/></a>";
												}
												?>
											</div>
										</div>
										<div class="col-md-7">

											<div class="post-content">

												<h4><a href="<?php echo base_url() . "agenda/detail/$h[tema_seo]" ?>"><?php echo $h['tema']; ?></a></h4>
												<p><?php echo $isi;?></p>

											</div>
										</div>
										

									<div class="col-md-7">
										<div class="post-meta">
											<span><i class="fa fa-calendar"></i> <?php echo $tgl_posting;?> </span>
											<a href="<?php echo base_url() . "agenda/detail/$h[tema_seo]" ?>" class="btn btn-xs btn-primary pull-right">Read more...</a>
										</div>
									</div>
								</div>

							</article>
							<div class="clearfix" style="border-bottom: 1px solid #eee; padding-bottom:10px; line-height:10px;"></div>
						<?php
						}
						?>
                        </div>
						<div class="pagination--wrapper clearfix bdtop--1 bd--color-2 ptop--60 pbottom--30">
											
							<ul class="pagination float--right">
								<li>
								<?php echo $this->pagination->create_links(); ?>
								</li>
							</ul>
							
						</div>
                    </div>

                </div>
            </div>
       



