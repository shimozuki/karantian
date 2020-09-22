 <?php 
	$iden = $this->model_utama->view_where('identitas',array('id_identitas' => 1))->row_array();
	$alamat = $this->model_utama->view_where('mod_alamat',array('id_alamat' => 1))->row_array();
	
?>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
				<div class="row">
				<div class="col-md-3">
				<h5>Our Website</h5>
				<ul class="list list-icons list-icons-sm">
				<li><i class="fa fa-caret-right"></i> <a href="#">Terms &amp; Condition</a></li>
				<li><i class="fa fa-caret-right"></i> <a href="id/kebijakan-privasi.html">Privacy Policy</a></li>
				<li><i class="fa fa-caret-right"></i> <a href="id/waspada-penipuan.html">Scam Alert</a></li>
				</ul>
				</div>
				<div class="col-md-3">
				<h5>Tools</h5>
				<ul class="list list-icons list-icons-sm"><!-- <li><i class="fa fa-caret-right"></i> <a href="https://mail.pertamina.com/owa/">Webmail</a></li> -->
				<li><i class="fa fa-caret-right"></i> <a href="https://web.pertamina.com/i-serv/login.aspx">I-Serv</a></li>
				<li><i class="fa fa-caret-right"></i> <a href="http://spbu.pertamina.com/">Registrasi SPBU</a></li>
				<li><i class="fa fa-caret-right"></i> <a href="https://pertaminaclean.tipoffs.info/">Pertamina Whistleblowing System</a></li>
				</ul>
				</div>
				<div class="col-md-3">
				<h5>Announcement</h5>
				<ul class="list list-icons list-icons-sm">
				<li><i class="fa fa-caret-right"></i> <a href="id/news-room/program-and-event.html">Pertamina Info</a></li>
				<li><i class="fa fa-caret-right"></i> <a href="id/news-room/general-procurement.html" id="" news-room="" general-procurement="">General Procurement</a></li>
				<li><i class="fa fa-caret-right"></i> <a href="id/news-room/announcement.html">Annoucement</a></li>
				<li><i class="fa fa-caret-right"></i> <a href="https://eproc.pertamina.com/">E-Procurement</a></li>
				</ul>
				</div>
				<div class="col-md-3">
				<h5>Network</h5>
				<ul class="list list-icons list-icons-sm">
				<li><i class="fa fa-caret-right"></i> <a href="id/anak-perusahaan.html">Subsidiaries</a></li>
				<li><i class="fa fa-caret-right"></i> <a href="id/contact.html">Office Address</a></li>
				</ul>
				</div>
				</div>
            </div>
            <div class="col-md-3">
                <h5 class="mb-sm">Contact Us</h5>
                <span class="phone"><?php echo $iden['no_telp']; ?></span>
                <?php
				echo $alamat["alamat"];
				?>
                <ul class="social-icons mt-xl">
                        <li>
                            <a class="sc-1" href="https://www.facebook.com/pertamina" target="_blank"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a class="sc-2" href="https://twitter.com/pertamina" target="_blank"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a class="sc-11" href="https://www.instagram.com/pertamina/?hl=id" target="_blank"><i class="fa fa-instagram"></i></a>
                        </li>
                        <li>
                            <a class="sc-3" href="https://www.youtube.com/user/PTPertamina" target="_blank"><i class="fa fa-youtube"></i></a>
                        </li>
                    <li style="box-shadow:none;"><h5 style="font-size:16px;text-transform:none;">| @BEM_bumigora</h5></li>
                </ul>

            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-11">
                    <p>© Copyright BEM Universitas Bumigora. All Rights Reserved.</p>
                </div>
            </div>
        </div>
    </div>
