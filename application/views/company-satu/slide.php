<div id="carousel-example-generic" class="carousel slide">
        <!-- Indicators -->
		<ol class="carousel-indicators">
		<?php
		$no = 0;
		$utama1 = $this->model_utama->view('banner');
		foreach ($utama1->result_array() as $rw) {    
			if($no == 0){
				echo "<li data-target='#carousel-example-generic' data-slide-to='$no' class='active'></li>";
			}else{
				echo "<li data-target='#carousel-example-generic' data-slide-to='$no'></li>";
			}
			$no++;
		}
		?>
                
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox" >
                <?php
				$no = 0;
				$utama1 = $this->model_utama->view('banner');
				foreach ($utama1->result_array() as $row) {    
					if($no == 0){
						echo "<div class='item active'>";
					}else{
						echo "<div class='item'>";
					}
					?>
					<img src="<?php echo base_url(); ?>asset/foto_banner/<?php echo $row['gambar'] ?>" class="img-responsive" />
                    <div class="carousel-caption animated fadeInLeft">
                            <h2 class="slide-text-heading" data-animation="animated bounceInLeft">
                                <?php echo $row['judul'] ?>
                            </h2>
                            <h4 class="slide-text-desc" data-animation="animated bounceInUp">
                                <h4 style="text-align: left;"><span style="color: #ffffff;"><?php echo $row['deskripsi'];?><br /></span></h4>
                            </h4>

                    </div>
					</div>
					<?php
					$no++;
				}
				?>
				
        </div><!-- /.carousel-inner -->
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div><!-- /.carousel -->



