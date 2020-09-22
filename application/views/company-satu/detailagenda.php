<?php
    $tgl_posting   = tgl_indo($rows['tgl_posting']);
    $tgl_mulai   = tgl_indo($rows['tgl_mulai']);
    $tgl_selesai = tgl_indo($rows['tgl_selesai']);
    $isi_agenda=nl2br($rows['isi_agenda']);
    $baca = $rows['dibaca']+1;
?>  

<div class="container">
                <div class="row" style="padding-top:15px;"> 
                    <div class="col-md-9">
                        <div class="blog-post single-post">
                            <article class="post blog-single-post">
                                <div>
                                    <h2><?php echo $rows['tema']; ?></h2>
									<div class="post-meta">
                                        <span><i class="fa fa-calendar"> <?php echo tgl_indo($rows['tgl_posting']); ?></i></span>
                                            <span><i class="fa fa-eye"></i> <a href="#"><?php echo number_format($rows['dibaca']+1); ?></a></span>
									</div>
							
          
        </div>

      
    </div>

   

    <div class="td-post-content td-pb-padding-side">
        <div class="td-post-featured-image">
            <?php if ($rows['gambar'] !=''){ echo "<img  class='entry-thumb td-animation-stack-type0-2' style='width:100%' src='".base_url()."asset/foto_agenda/$rows[gambar]' alt='$rows[gambar]' /></a>"; } ?>
        </div>

        <div class="td-paragraph-padding-1">
        <?php 
            echo "<table>
                      <tr><td width=65px><b>Tanggal</b></td>   <td> : </td> <td>$tgl_mulai s/d $tgl_selesai</td></tr>
                      <tr><td><b>Tempat</b></td>    <td> : </td> <td>$rows[tempat]</td></tr>
                      <tr><td><b>Jam</b></td>   <td> : </td> <td>$rows[jam]</td></tr>
                      <tr><td><b>Pengirim</b></td>   <td> : </td> <td>$rows[pengirim]</td></tr>
                  </table><br>
                      $rows[isi_agenda]<br>";
        ?>
        </div>
    </div>

</article>


<div class="clearfix"></div>
</div>
</div>
</div>