<?php
$sosmed = $this->model_utama->view('identitas')->row_array();
$pecah = explode(",", $sosmed['facebook']);
?>
<div id='td-mobile-nav'>
    <div class='td-mobile-container'>
        <div class='td-menu-socials-wrap'>
            <div class='td-menu-socials'>
                <span class='td-social-icon-wrap'>
                    <a target='_blank' href="<?php echo $pecah[0]; ?>" title='Facebook'> <i class="td-icon-font td-icon-facebook"></i> </a>
                </span>
                <span class='td-social-icon-wrap'>
                    <a target='_blank' href="<?php echo $pecah[1]; ?>" title="Google+"><i class="td-icon-font td-icon-googleplus"></i></a>
                </span>
                <span class='td-social-icon-wrap'>
                    <a target='_blank' href="<?php echo $pecah[2]; ?>" title='Instagram'><i class="td-icon-font td-icon-instagram"></i></a>
                </span>
                <span class='td-social-icon-wrap'>
                    <a target='_blank' href="<?php echo $pecah[3]; ?>" title='Twitter'><i class="td-icon-font td-icon-twitter"></i></a>
                </span>
                <span class='td-social-icon-wrap'>
                    <a target='_blank' href="<?php echo $pecah[4]; ?>" title='Youtube'><i class="td-icon-font td-icon-youtube"></i></a>
                </span> 
            </div>
            <div class='td-mobile-close'><a href="#"><i class='td-icon-close-mobile'></i></a></div>
        </div>
        <div class='td-menu-login-section'>
            <div class='td-guest-wrap'>
                <div class='td-menu-avatar'>
                    <div class='td-avatar-container'>
                    <img src="https://secure.gravatar.com/avatar/?s=80&#038;d=mm&#038;r=g" width='80' height='80' class="avatar avatar-80 wp-user-avatar wp-user-avatar-80 photo avatar-default" />
                    </div>
                </div>
                <div class='td-menu-login'><a id='login-link-mob'>Sign in</a></div>
            </div>
        </div>

        <div class='td-mobile-content'>
        <div class='menu-main-menu-container'>
            <?php 
                function main_menu_mobile() {
                    $ci = & get_instance();
                    $query = $ci->db->query("SELECT id_menu, nama_menu, link, id_parent FROM menu where aktif='Ya' AND position='Bottom' order by urutan");
                    $menu = array('items' => array(),'parents' => array());
                    foreach ($query->result() as $menus) {
                        $menu['items'][$menus->id_menu] = $menus;
                        $menu['parents'][$menus->id_parent][] = $menus->id_menu;
                    }
                    if ($menu) {
                        $result = build_main_menu_mobile(0, $menu);
                        return $result;
                    }else{
                        return FALSE;
                    }
                }

                function build_main_menu_mobile($parent, $menu) {
                    $html = "";
                    if (isset($menu['parents'][$parent])) {
                        if ($parent=='0'){
                            $html .= "<ul id='menu-main-menu class=td-mobile-main-menu'>";
                        }else{
                            $html .= "<ul class='sub-menu'>";
                        }
                        foreach ($menu['parents'][$parent] as $itemId) {
                            if (!isset($menu['parents'][$itemId])) {
                                if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
                                    $html .= "<li class='menu-item menu-item-type-post_type'><a target='_BLANK' href='".$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
                                }else{
                                    $html .= "<li class='menu-item menu-item-type-post_type'><a href='".base_url().''.$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
                                }
                            }
                            if (isset($menu['parents'][$itemId])) {
                                if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
                                    $html .= "<li class='menu-item menu-item-type-custom menu-item-object-custom current-menu-parent menu-item-has-children td-menu-item td-normal-menu'><a class='sf-with-ul' target='_BLANK' href='".$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu." <i class='td-icon-menu-right td-element-after'></i></a>";
                                }else{
                                    $html .= "<li class='menu-item menu-item-type-custom menu-item-object-custom current-menu-parent menu-item-has-children td-menu-item td-normal-menu'><a class='sf-with-ul' href='".base_url().''.$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu." <i class='td-icon-menu-right td-element-after'></i></a>";
                                }
                                $html .= build_main_menu_mobile($itemId, $menu);
                                $html .= "</li>";
                            }
                        }
                        $html .= "</ul>";
                    }
                    return $html;
                }
                echo main_menu_mobile();
            ?>


        </div> 
        </div>
    </div>

    <div id='login-form-mobile' class='td-register-section'>
        <div id='td-login-mob' class="td-login-animation td-login-hide-mob">
            <div class='td-login-close'>
                <a href="#" class='td-back-button'><i class='td-icon-read-down'></i></a>
                <div class='td-login-title'>Sign in</div>
                <div class='td-mobile-close'>
                    <a href="#"><i class='td-icon-close-mobile'></i></a>
                </div>
            </div>
            <div class='td-login-form-wrap'>
                <div class='td-login-panel-title'><span>Welcome!</span>Log into your account</div>
                <div class='td_display_err'></div>
                <?php echo form_open('administrator/index'); ?>
                <div class='td-login-inputs'><input class='td-login-input' type='text' name='a' id='login_email-mob' autocomplete='off' required><label>your username</label></div>
                <div class='td-login-inputs'><input class='td-login-input' type='password' name='b' id='login_pass-mob' required><label>your password</label></div>
                <input type='submit' name='submit' id='login_button-mob' class='td-login-button' value="LOG IN">
                <?php echo form_close(); ?>
                <div class='td-login-info-text'><a href="#" id='forgot-pass-link-mob'>Forgot your password?</a></div>
            </div>
        </div>

        <div id='td-forgot-pass-mob' class="td-login-animation td-login-hide-mob">
            <div class='td-forgot-pass-close'>
                <a href="#" class='td-back-button'><i class='td-icon-read-down'></i></a>
                <div class='td-login-title'>Password recovery</div>
            </div>
            <div class='td-login-form-wrap'>
                <div class='td-login-panel-title'>Recover your password</div>
                <div class='td_display_err'></div>
                <?php echo form_open('administrator/lupapassword'); ?>
                <div class='td-login-inputs'><input class='td-login-input' type='text' name='email' id='forgot_email-mob' autocomplete='off' required><label>your email</label></div>
                <input type="submit" name="lupa" id='forgot_button-mob' class='td-login-button' value="Send My Pass">
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div> 

<div class='td-search-background'></div>
<div class='td-search-wrap-mob'>
    <div class='td-drop-down-search' aria-labelledby='td-header-search-button'>
        <form method="POST" class="td-search-form" action="<?php echo base_url(); ?>berita/index">
            <div class='td-search-close'><a href="#"><i class='td-icon-close-mobile'></i></a></div>
            <div role='search class=td-search-input'><span>Search</span>
                <input id='td-header-search-mob' type='text' value="" name='kata' autocomplete=off />
                <input type='hidden' value="" name='cari' autocomplete=off />
            </div>
        </form>
        <div id='td-aj-search-mob'></div>
    </div>
</div>