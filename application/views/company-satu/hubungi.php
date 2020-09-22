<?php $alamat = $this->model_utama->view_where('mod_alamat',array('id_alamat' => 1))->row_array(); ?>  
 <head>
 <link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/css/contac.css">
 </head>
<div class="container">
	<div class="row" style="padding-top:15px;"> 
		<div class="col-md-9">
			<div class="blog-post single-post">
				<article class="post blog-single-post">
					<div>
					<header><h2>Contact</h2></header>
					</div>
					<div class="wpb_wrapper wpb_text_column td_block_wrap td_block_wrap vc_column_text  td_block_template_1">
					<div class="td-block-title-wrap"></div>
					<!-- <p><span style="font-size:13px"><?php echo $alamat['alamat']; ?></span></p> -->
					</div>

				</article>
			</div>
		</div>
			
		<div class="wpb_wrapper">
			<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="<?php echo "$iden[maps]"; ?>"></iframe>
		<div class="container contact-form col-12">
            <div class="contact-image img">
			<?php 
							$logo = $this->model_utama->view_ordering_limit('logo','id_logo','DESC',0,1);
							foreach ($logo->result_array() as $row) {
                            echo "<img src='".base_url()."asset/logo/ok.png'/>";
							}
							?>
			</div>
			<?php echo $this->session->flashdata('message'); ?>
			<form action="<?php echo base_url(); ?>hubungi/kirim1" method="post">
			<div class="joo">
				<h3>Hubungi kami</h3>
			</div>
               <div class="row">
                    <div class="shimozuki1 col-12">
							<div class="dus1">
								<h2 class="name">facebook</h2>
								<a href="https://www.facebook.com/messages/t/100049707228521" class="send">Message</a>
								<div class="bulet"></div>
								<img src="../icon/facebook.png" alt="" class="apps">
							</div>
							<div class="dus2">
								<h2 class="name">instagram</h2>
								<a href="https://www.instagram.com/direct/t/340282366841710300949128138918693907156" class="send">Message</a>
								<div class="bulet"></div>
								<img src="../icon/instagram.png" alt="" class="apps">
							</div>
							<?php 
							$user = $this->model_utama->view_ordering_limit('users','username','DESC',0,1);
							foreach ($user->result_array() as $row) {
							?>
							<div class="dus3">
								<h2 class="name">whatsapp</h2>
								<a href="https://api.whatsapp.com/send?phone=<?php echo $row['no_telp'];?>&text=Assalamu'alaikum.. Wr.. Wb%20Hidup%20Mahasiswa%20Hidup%20Rakyat%20Indonesia%20Hidup%20Perempuan%20Indonesia" class="send">Message</a>
								<div class="bulet"></div>
								<img src="../icon/whatsapp.png" alt="" class="apps">
							</div>
							<?php } ?>
							
                        <!-- <div class="form-group">
                            <input type="text" name="a" class="form-control" placeholder="Your Name *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="b" class="form-control" placeholder="Your Email *" value="" />
						</div>
						<div class="form-group">
                            <input type="text" name="security_code" class="form-control" placeholder="security code *" value="" />
						</div>
						<div class="form-group">
							<?php echo $image; ?>
							</div>
                        <div class="form-group">
                            <input type="submit" name="submit" class="btnContact"/>
                        </div>
					</div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea name="c" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;"></textarea>
						</div> -->
						
					</div>
				</div>
            </form>
</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	   
	