<div class="tdc-row">
<div class="vc_row wpb_row td-pb-row" >
<div class="vc_column  wpb_column vc_column_container td-pb-span12">
<div class="wpb_wrapper">
<div class="td_block_wrap td_block_trending_now td-pb-border-top td_block_template_1" data-td-block-uid="lokomedia_ticker" >

    <div class="td_block_inner">
        <div class="td-block-row">
            <div class="td-trending-now-wrapper" id="lokomedia_ticker">
                <div class="td-trending-now-title block-title">Headline</div>
                <div class="td-trending-now-display-area">
                    <?php
                      $terkini = $this->model_utama->view_where_ordering_limit('berita',array('status' => 'Y'),'id_berita','DESC',0,10);
                      foreach ($terkini->result_array() as $row) {
                        echo "<div class='td_module_trending_now td_module_wrap td-trending-now-post-0 td-trending-now-post'>
                                <h3 class='entry-title td-module-title'><a href='".base_url()."berita/detail/$row[judul_seo]' rel='bookmark' title='$row[judul]'>$row[judul]...</a></h3>
                              </div>";
                      }
                    ?>
                </div>

                <div class="td-next-prev-wrap">
                    <a href="#" class="td_ajax-prev-pagex td-trending-now-nav-left" data-block-id="lokomedia_ticker" data-moving="left" data-control-start=""><i class="td-icon-menu-left"></i></a>
                    <a href="#" class="td_ajax-next-pagex td-trending-now-nav-right" data-block-id="lokomedia_ticker" data-moving="right" data-control-start=""><i class="td-icon-menu-right"></i></a>
                </div>
            </div>
        </div><!--./row-fluid-->
    </div>

</div> <!-- ./block -->
</div>
</div>
</div>
</div>