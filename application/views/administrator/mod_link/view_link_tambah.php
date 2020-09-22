<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Menu Website</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/tambah_linkmenu',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th width='120px' scope='row'>Link Menu</th>   <td><input type='text' class='form-control' name='a'></td></tr>
                    <tr><th scope='row'>Level Menu</th>                <td><select name='b' class='form-control'>
                                                                            <option value='0' selected>Menu Utama</option>";
                                                                            foreach ($record as $row){
                                                                                echo "<option value='$row[id_link]'>$row[nama_menu]</option>";
                                                                            }
                    echo "</td></tr>
                    <tr><th scope='row'>Nama Menu</th>                 <td><input type='text' class='form-control' name='c'></td></tr>
                    <tr><th scope='row'>Link</th>             		   <td><input type='text' class='form-control' name='d'></td></tr>
                    <tr><th scope='row'>Groupname</th>                 <td><input type='text' class='form-control' name='h'></td></tr>
                    <tr><th scope='row'>Deskripsi</th>                 <td><textarea class='form-control' name='g'></textarea><br/>*deksripsi diisi hanya untuk level menu utama</td></tr>
                    <tr><th scope='row'>Urutan</th>                    <td><input type='number' class='form-control' name='e' style='width:70px'></td></tr>
                    <tr><th scope='row'>Gambar</th>                    <td><input type='file' class='form-control' name='k'></td></tr>
                    <tr><th scope='row'>Icon</th>                    	<td><input type='text' class='form-control' name='l'></td></tr>
                  </tbody>
                  </table>
                </div>
              
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <button type='button' class='btn btn-default pull-right' onclick='javascript:history.back()'>Cancel</button>
                    
                  </div>
            </div></div></div>";
            echo form_close();
