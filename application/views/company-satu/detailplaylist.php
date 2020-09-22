	<div class="container">
	<br/>
		<h2><?php echo "$rows[jdl_playlist]"; ?></h2>
			<div class='row multi-columns-row post-columns'>
					<?php 
					foreach ($detailplaylist->result_array() as $r) {   
					$lihat = $r['dilihat']+1;
					$judull = substr($r['jdl_video'],0,33); 
					$isi_berita =(strip_tags($r['keterangan'])); 
					$isi = substr($isi_berita,0,280); 
					$isi = substr($isi_berita,0,strrpos($isi," "));
					$total_komentar = $this->model_utama->view_where('komentarvid',array('id_video' => $r['id_video']))->num_rows();
					echo "
					
					  <div class='col-sm-6 col-md-4 col-lg-4'>
						<div class='post mb-20'>
						  <div class='post-thumbnail'>";
								if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $r['youtube'], $match)) {
									echo "<iframe width='100%' height='250px' allowfullscreen='allowfullscreen' mozallowfullscreen='mozallowfullscreen' msallowfullscreen='msallowfullscreen' oallowfullscreen='oallowfullscreen' webkitallowfullscreen='webkitallowfullscreen' src='https://www.youtube.com/embed/$match[1]'></iframe>";
								}
								echo "
								</div>
						  <div class='post-header font-alt'>
							<h2 class='post-title'><a href='".base_url()."playlist/watch/$r[video_seo]'>$r[jdl_video]</a></h2>
							<div class='post-meta'> $r[hari], $r[jam], ".tgl_indo($r['tanggal'])." | $total_komentar Comments
							</div>
						  </div>
						  <div class='post-entry'>
							<p>$isi  </p>
						  </div>
						  <div class='post-more'><a class='more-link' href='".base_url()."playlist/watch/$r[video_seo]'>Read more</a></div>
						</div>
					  </div>
					";
					}
					?>
					</div>		
							
					</div>
			  
	