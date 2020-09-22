<?php 
if ($this->uri->segment(3) == ''){ $stat = 'Pertanyaan'; }else{ $stat = 'Jawaban'; }
$total = $this->model_utama->view_where('tbl_comment',array('reply'=>0))->num_rows(); 
?>
<div class="vc_column wpb_column vc_column_container td-pb-span8" style='margin-top:20px'>
<div class="wpb_wrapper">
<div class="clearfix"></div>

<div class="td-category-header td-pb-padding-side">
    <header>
        <h1 class="entry-title td-page-title"> <span class='kategori-title'>Konsultasi</span> </h1>
    </header>
</div>
<article class="post type-post status-publish format-standard has-post-thumbnail">
    <?php if ($this->uri->segment(3) == ''){ ?>
    <div class="td-post-content td-pb-padding-side">
        <form action="<?php echo base_url(); ?>konsultasi/reply" method="post" id="commentform" class="comment-form" novalidate="">
        <input type="hidden" value='0' name='a'>
            <div class="clearfix"></div>
            <div class="comment-form-input-wrap td-form-author">
                <input class="" id="author" name="b" placeholder="Name:*" type="text" value='<?php echo "$usr[nama_lengkap]"; ?>' size="30" aria-required="true">
                <div class="td-warning-author">Please enter your name here</div>
            </div>
            <div class="comment-form-input-wrap td-form-email">
                <input class="" id="email" name="c" placeholder="Email:*" type="text" value='<?php echo "$usr[email]"; ?>' size="30" aria-required="true">
                <div class="td-warning-email-error">You have entered an incorrect email address!</div>
                <div class="td-warning-email">Please enter your email address here</div>
            </div>
            <div class="comment-form-input-wrap td-form-comment">
                <textarea placeholder="Tuliskan <?php echo "$stat"; ?> Anda.." id="comment" name="d" cols="25" rows="3" aria-required="true"></textarea>
                <div class="td-warning-comment">Please enter your Message!</div>
            </div>
            <p class="form-submit">
                <input name="submit" type="submit" id="submit" class="submit" value="Kirimkan Pertanyaan" onclick="return confirm('Yakin ingin mengirimkan pertanyaan ini ?')"/> 
            </p> 
        </form>
    </div>
    <?php } ?>

    <div class="comments" id="comments">
        <div class="td-comments-title-wrap td-pb-padding-side td_block_template_1">
            <h4 class="td-comments-title "><span><?php echo "Ada $total Pertanyaan"; ?></span></h4>
        </div>
        <ol class="comment-list td-pb-padding-side ">
            <li class="comment " id="comment-4">
            <?php
                $no = 1;
                foreach ($konsultasi->result_array() as $kka) {
                $isian=nl2br($kka['isi_pesan']); 
                $komentarku=sensor($isian); 
                if(($no % 2)==0){ $warna="#ffffff;"; }else{ $warna="#e3e3e3"; }
                $test = md5(strtolower(trim($kka['alamat_email'])));    
                echo "<article>
                        <footer>";
                            if ($kka['alamat_email'] == ''){
                                echo "<img src='".base_url()."asset/foto_user/blank.png' width='50' height='50' alt='' class='avatar avatar-50 wp-user-avatar wp-user-avatar-50 photo avatar-default'>";
                            }else{
                                echo "<img src='http://www.gravatar.com/avatar/$test.jpg?s=100' width='50' height='50' alt='' class='avatar avatar-50 wp-user-avatar wp-user-avatar-50 photo avatar-default'>";
                            }
                            echo "<cite>$kka[nama_lengkap]</cite>
                            <a class='comment-link' href='#comment-$kka[id_komentar]'><time>".tgl_indo($kka['tanggal_komentar']).", $kka[jam_komentar] WIB</time></a>
                        </footer>
                        <div class='comment-content'>
                            <p>$komentarku</p>
                        </div>
                        <div class='comment-meta' id='comment-$kka[id_komentar]'>";
                        if ($this->session->level!=''){
                            echo "<a rel='nofollow' class='comment-reply-link' href='".base_url()."konsultasi/index/$kka[id_komentar]#comment-$kka[id_komentar]' aria-label='Reply'>Reply</a> - 
                                  <a rel='nofollow' class='comment-reply-link' href='".base_url()."administrator/logout' aria-label='Logout'>Logout</a>"; 
                            if ($this->session->level=='admin'){
                                echo " - <a rel='nofollow' class='comment-reply-link' href='".base_url()."konsultasi/delete/$kka[id_komentar]#comment-$kka[id_komentar]' onclick=\"return confirm('Yakin ingin hapus data ini ?')\" aria-label='Delete'>Delete</a>";
                            }
                        }
                        if ($this->uri->segment(3)==$kka['id_komentar']){
                        echo "<form action='".base_url()."konsultasi/reply' method='post' id='commentform' class='comment-form' novalidate=''>
                                <input type='hidden' value='$kka[id_komentar]' name='a'>
                                <div class='comment-form-input-wrap td-form-author'>
                                    <input name='b' type='hidden' value='$usr[nama_lengkap]'>
                                    <input name='c' type='hidden' value='$usr[email]'>

                                <div class='comment-form-input-wrap td-form-comment'>
                                    <textarea placeholder='Tuliskan $stat Anda..' id='comment' name='d' cols='25' rows='3' aria-required='true'></textarea>
                                    <div class='td-warning-comment'>Please enter your Message!</div>
                                </div>

                                <p class='form-submit'>
                                    <input name='submit' type='submit' id='submit' class='submit' value='Kirim Balasan')\"/> 
                                </p> 
                            </form>";
                        }
                        echo "</div>
                      </article>

                        <ul class='children'>";
                        $reply = $this->model_utama->view_where('tbl_comment',array('reply'=>$kka['id_komentar']));
                        foreach ($reply->result_array() as $r) {
                        $test = md5(strtolower(trim($r['alamat_email'])));
                        echo "<li class='comment' id='comment-$r[id_komentar]'>
                                <article>
                                    <footer>";
                                        if ($r['alamat_email'] == ''){
                                            echo "<img src='".base_url()."asset/foto_user/blank.png' width='50' height='50' class='avatar avatar-50 wp-user-avatar wp-user-avatar-50 photo avatar-default'>";
                                        }else{
                                            echo "<img src='http://www.gravatar.com/avatar/$test.jpg?s=100' width='50' height='50' class='avatar avatar-50 wp-user-avatar wp-user-avatar-50 photo avatar-default'>";
                                        }
                                        echo "<cite>$r[nama_lengkap]</cite>
                                        <a class='comment-link' href='#comment-$r[id_komentar]'><time>".tgl_indo($r['tanggal_komentar']).", $r[jam_komentar] WIB</time></a>";
                                        if (($this->session->level=='admin') AND $this->session->level!=''){
                                            echo " <a style='float:right' class='comment-reply-link' href='".base_url()."konsultasi/delete/$r[id_komentar]#comment-$kka[id_komentar]' onclick=\"return confirm('Yakin ingin hapus data ini ?')\" aria-label='Delete'>Delete</a>";
                                        }
                                    echo "</footer>
                                    <div class='comment-content'>
                                        <p>$r[isi_pesan]</p>
                                    </div>
                                </article>
                               </li>";
                          } 
                      echo "</ul>";
                $no++;
                }
            ?>
            </li>
        </ol>
    </div>

</article>
<div class="clearfix"></div>
</div>
</div>