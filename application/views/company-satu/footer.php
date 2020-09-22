 <?php 
	$iden = $this->model_utama->view_where('identitas',array('id_identitas' => 1))->row_array();
	$alamat = $this->model_utama->view_where('mod_alamat',array('id_alamat' => 1))->row_array();
	$link = $this->model_utama->view('pasangiklan');
?>
    <div class="container">
        <div class="row">
           
            <div class="col-md-4">
               <h5 class="mb-sm">LOKASI</h5>
            	<iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="<?php echo "$iden[maps]"; ?>"></iframe>

            </div>
			<div class="col-md-4">
                <h5 class="mb-sm" style="padding-left:15px;">LINK TERKAIT</h5>
				<ul class="list list-icons list-icons-sm" style="padding-left:15px;">
					<?php
						foreach($link->result_array() as $row){
							echo "<li><i class='fa fa-caret-right'></i> <a href='$row[url]'>$row[judul]</a></li>";
						}
					?>
					
				</ul>
				
                
            </div>
			<div class="col-md-4">
                <h5 class="mb-sm">Contact Us</h5>
                <span class="phone"><?php echo $iden['no_telp']; ?></span>
                <?php
				echo $alamat["alamat"];
				?>
                <ul class="social-icons mt-xl">
                        <li>
                            <a class="sc-1" href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a class="sc-2" href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a class="sc-11" href="#" target="_blank"><i class="fa fa-instagram"></i></a>
                        </li>
                        <li>
                            <a class="sc-3" href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                        </li>
                </ul>

            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-11">
                    <p>© <?php echo Date('Y'); ?> Powered by Samawatec.com</p>
                </div>
            </div>
        </div>
    </div>
