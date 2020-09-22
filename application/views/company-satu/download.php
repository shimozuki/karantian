<div class="vc_column wpb_column vc_column_container td-pb-span8" style='margin-top:20px'>
<div class="wpb_wrapper">
<div class="clearfix"></div>

<div class="td-category-header td-pb-padding-side">
    <header>
        <h1 class="entry-title td-page-title"> <span class='kategori-title'>Download Area</span> </h1>
    </header>
</div>

<article class="post type-post status-publish format-standard has-post-thumbnail">
    <div class="td-post-content td-pb-padding-side">
        <table class='table table-striped table-condensed'>
            <tr>
                <th>No</th>
                <th>Nama File</th>
                <th>Hits</th>
                <th style='width:70px'></th>
            </tr>
            <?php
                $no=$this->uri->segment(3)+1;
                foreach ($download->result_array() as $r) { 
                    echo "<tr>
                            <td>$no</td>
                            <td>$r[judul]</td>
                            <td>$r[hits] Kali</td>
                            <td><a class='td_btn td_btn_sm td_default_btn' href='".base_url()."download/file/$r[nama_file]'>Download</a></td>
                          </tr>";
                $no++;
                }
            ?>
        </table>
    </div>
</article>
<div class="clearfix"></div>
</div>
</div>