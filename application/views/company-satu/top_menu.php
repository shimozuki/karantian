<!-- Header style 1 -->
<div class="td-header-container td-header-wrap td-header-style-1">
    <div class="td-header-row td-header-top-menu">    
    <div class="td-top-bar-container top-bar-style-1">
        <div class="td-header-sp-top-menu">
            <div class="td_data_time">
            <div><?php echo hari_ini(date('w')).", ".tgl_indo(date('Y-m-d')).", <span id='jam'></span>"; ?></div>
        </div>
		<!--
        <ul class="top-header-menu td_ul_login">
            <li class="menu-item"><a class="td-login-modal-js menu-item" href="#login-form" data-effect="mpf-td-login-effect">Sign in / Join</a></li>
        </ul>
		-->
        <div class="menu-top-container">
            <ul id="menu-td-demo-top-menu" class="top-header-menu">
                <?php 
                    $topmenu = $this->model_utama->view_where_ordering_limit('menu',array('position' => 'Top','aktif' => 'Ya'),'urutan','ASC',0,5);
                    foreach ($topmenu->result_array() as $row) {
                        if(preg_match("/^http/", $row['link'])) {
                            echo "<li class='menu-item'><a href='$row[link]'>$row[nama_menu]</a></li>";
                        }else{
                            echo "<li class='menu-item'><a href='".base_url()."$row[link]'>$row[nama_menu]</a></li>";
                        }
                    }
                ?>
            </ul>
        </div>
    </div>            

    <div class="td-header-sp-top-widget">
        <?php
            $sosmed = $this->model_utama->view('identitas')->row_array();
            $pecahd = explode(",", $sosmed['facebook']);
        ?>
        <span class="td-social-icon-wrap">
            <a target="_blank" href="<?php echo $pecahd[0]; ?>" title="Facebook">
                <i class="td-icon-font td-icon-facebook"></i>
            </a>
        </span>
        <span class="td-social-icon-wrap">
            <a target="_blank" href="<?php echo $pecahd[1]; ?>" title="Twitter">
                <i class="td-icon-font td-icon-twitter"></i>
            </a>
        </span>
        <span class="td-social-icon-wrap">
            <a target="_blank" href="<?php echo $pecahd[2]; ?>" title="Google+">
                <i class="td-icon-font td-icon-googleplus"></i>
            </a>
        </span>
        <span class="td-social-icon-wrap">
            <a target="_blank" href="<?php echo $pecahd[3]; ?>" title="Instagram">
                <i class="td-icon-font td-icon-instagram"></i>
            </a>
        </span>
        <span class="td-social-icon-wrap">
            <a target="_blank" href="<?php echo $pecahd[4]; ?>" title="Youtube">
                <i class="td-icon-font td-icon-youtube"></i>
            </a>
        </span>    
    </div>
</div>

<!-- LOGIN MODAL -->
<div  id="login-form" class="white-popup-block mfp-hide mfp-with-anim">
    <div class="td-login-wrap">
        <a href="#" class="td-back-button"><i class="td-icon-modal-back"></i></a>
        <div id="td-login-div" class="td-login-form-div td-display-block">
            <div class="td-login-panel-title">Sign in</div>
            <div class="td-login-panel-descr">Welcome! Log into your account</div>
            <div class="td_display_err"></div>
            <?php echo form_open('administrator/index'); ?>
            <div class="td-login-inputs"><input class="td-login-input" type="text" name="a" id="login_email" autocomplete='off' required><label>your username</label></div>
            <div class="td-login-inputs"><input class="td-login-input" type="password" name="b" id="login_pass" required><label>your password</label></div>
            <input type="submit" name='submit' id="login_button" class="wpb_button btn td-login-button" value="Login">
            <?php echo form_close(); ?>
            <div class="td-login-info-text"><a href="#" id="forgot-pass-link">Forgot your password? Get help</a></div>
            
        </div>

         <div id="td-forgot-pass-div" class="td-login-form-div td-display-none">
            <div class="td-login-panel-title">Password recovery</div>
            <div class="td-login-panel-descr">Recover your password</div>
            <div class="td_display_err"></div>
            <?php echo form_open('administrator/lupapassword'); ?>
            <div class="td-login-inputs"><input class="td-login-input" type="text" name="email" autocomplete='off' id="forgot_email" value="" required><label>your email</label></div>
            <input type="submit" name="lupa" id="forgot_button" class="wpb_button btn td-login-button" value="Send My Password">
            <?php echo form_close(); ?>
            <div class="td-login-info-text">A password will be e-mailed to you.</div>
        </div>
    </div>
</div>
