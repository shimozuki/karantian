<div class="td-pb-row">
    <div class="td-pb-span8 td-sub-footer-menu">
        <div class="td-pb-padding-side">
            <div class="menu-td-demo-footer-menu-container">
            <ul id="menu-td-demo-footer-menu" class="td-subfooter-menu">
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
    </div>

    <div class="td-pb-span4 td-sub-footer-copy">
        <div class="td-pb-padding-side">&copy; <?php echo date('Y'); ?> BEM Universitas Bumigora. Develop by Samawatec</div>
    </div>
</div>