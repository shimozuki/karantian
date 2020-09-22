 <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    
    <div class="container">
        <div id="main_area">
                <!-- Slider -->
                <div class="row">
                    <div class="span12" id="slider">
                        <!-- Top part of the slider -->
                        <div class="row">
                            <div class="span8" id="carousel-bounding-box">
                                <div class="carousel slide" id="myCarousel">
                                    <!-- Carousel items -->
                                    <div class="carousel-inner">
										<?php
										  $nmr = 0;
										  foreach ($detailalbum->result_array() as $h) {	
										  ?>
											
												<?php
												if ($nmr == 0){
													echo "<div class='active item' data-slide-number='$nmr'>";
												}else{
													echo "<div class='item' data-slide-number='$nmr'>";
												}
												echo "<img src='".base_url()."asset/img_galeri/$h[gbr_gallery]'></div>";
												
												$nmr++;
												?>
												
											
												<?php
											}
										?>
										
									
                                    </div><!-- Carousel nav -->
                                    <a class="carousel-control left" data-slide="prev" href="#myCarousel">‹</a> <a class="carousel-control right" data-slide="next" href="#myCarousel">›</a>
                                </div>
                            </div>

                            <div class="span4" id="carousel-text"></div>
						
                            <div id="slide-content" style="display: none;">
                                <?php
								  $nmr = 0;
								  foreach ($detailalbum->result_array() as $h){	
									?>	
									<div id="slide-content-<?php echo $nmr; ?>">
                                    <h2><?php echo $h['jdl_gallery'] ?></h2>
                                    <p><?php echo $h['keterangan'];?></p>
                                    </div>
									<?php
									$nmr++;
								  }
									?>
								
                            </div>
                        </div>
                    </div>
                </div><!--/Slider-->

                <div class="row hidden-phone" id="slider-thumbs">
                    <div class="span12">
                        <!-- Bottom switcher of slider -->
						
                        <ul class="thumbnails">
                            <?php
							  $nmr = 0;
							  foreach ($detailalbum->result_array() as $h) {	
							  ?>
								<li class="span2" style="height:120px;">
									<a class="thumbnail" id="carousel-selector-<?php echo $nmr; ?>"><img src="<?php echo base_url()."asset/img_galeri/$h[gbr_gallery]";?>"></a>
								</li>
									<?php
									$nmr++;
								}
							?>
							

                        </ul>
                    </div>
                </div>
        </div>
</div>	<script type="text/javascript">
	  jQuery(document).ready(function($) {
 
        $('#myCarousel').carousel({
                interval: 5000
        });
 
        $('#carousel-text').html($('#slide-content-0').html());
 
        //Handles the carousel thumbnails
        $('[id^=carousel-selector-]').click( function(){
                var id_selector = $(this).attr("id");
                var id = id_selector.substr(id_selector.length -1);
                var id = parseInt(id);
                $('#myCarousel').carousel(id);
        });
 
 
        // When the carousel slides, auto update the text
        $('#myCarousel').on('slid', function (e) {
                var id = $('.item.active').data('slide-number');
                $('#carousel-text').html($('#slide-content-'+id).html());
        });
});	</script>
