<?php 
if ($this->uri->segment(3) == ''){ $stat = 'Pertanyaan'; }else{ $stat = 'Jawaban'; }
$total = $this->model_utama->view_where('tbl_comment',array('reply'=>0))->num_rows(); 
?>
<div class="vc_column wpb_column vc_column_container td-pb-span8" style='margin-top:20px'>
<div class="wpb_wrapper">
<div class="clearfix"></div>

<div class="td-category-header td-pb-padding-side">
    <header>
        <h1 class="entry-title td-page-title"> <span class='kategori-title'>Pendaftaran Kontributor</span> </h1>
    </header>
</div>
<article class="post type-post status-publish format-standard has-post-thumbnail">

    <div class="td-post-content td-pb-padding-side">
        <div class='alert alert-info'><b>PENTING!</b><i> Untuk berkontribusi untuk menulis artikel/berita, maka Silahkan Melengkapi form dibawah ini dengan data yang sebenarnya. Terima kasih,.. </i></div>
        <?php echo $this->session->flashdata('message'); ?>
        <form action="<?php echo base_url(); ?>kontributor/pendaftaran" method="post" id="commentform" class="comment-form" novalidate="">
        <input type="hidden" value='0' name='a'>
            <div class="clearfix"></div>
            <div class="comment-form-input-wrap td-form-author">
                <input class="" id="author" name="a" placeholder="Username:*" type="text" size="30" aria-required="true">
                <div class="td-warning-author">Please enter your name here</div>
            </div>
            <div class="comment-form-input-wrap td-form-author">
                <input class="" id="author" name="b" placeholder="Password:*" type="password" size="30" aria-required="true">
            </div>
            <div class="comment-form-input-wrap td-form-author">
                <input class="" id="author" name="c" placeholder="Nama Lengkap:*" type="text" size="30" aria-required="true">
            </div>
            <div class="comment-form-input-wrap td-form-email">
                <input class="" id="email" name="d" placeholder="Email:*" type="text" size="30" aria-required="true">
                <div class="td-warning-email-error">You have entered an incorrect email address!</div>
                <div class="td-warning-email">Please enter your email address here</div>
            </div>
            <div class="comment-form-input-wrap td-form-author">
                <input class="" id="author" name="e" placeholder="No Telpon:*" type="number" size="30" aria-required="true">
            </div>
            <div class="comment-form-input-wrap td-form-author">
                <input class="" id="author" name="f" type="file" size="30" aria-required="true">
                <i style='font-size:11px'>Allowed File : gif, jpg, png, jpeg</i>
            </div>
            <div class="comment-form-input-wrap td-form-url">
                <input class="captcha" id="url" name="secutity_code" placeholder="Enter Code Here..." type="text" value="" size="30">
                <?php echo $image; ?>
            </div><br>
            <p class="form-submit">
                <input name="submit" type="submit" id="submit" class="submit" value="Daftar Sekarang!"/> 
            </p> 
        </form>
    </div>

</article>
<div class="clearfix"></div>
</div>
</div>