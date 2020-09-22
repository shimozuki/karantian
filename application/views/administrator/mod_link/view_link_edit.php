<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Link depan Home</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/edit_linkmenu',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_link]'>
                    <tr><th width='120px' scope='row'>Alamat link</th>   <td><input type='text' class='form-control' name='a' value='$rows[link]'></td></tr>
                    <tr><th scope='row'>Parent</th>                <td><select name='b' class='form-control'>
                                                                                <option value='0'>Menu Utama</option>";
                                                                            foreach ($record->result_array() as $row){
                                                                              if ($row['id_link']==$rows['id_parent']){
                                                                                echo "<option value='$row[id_link]' selected>$row[nama_menu] </option>";
                                                                              }else{
                                                                                echo "<option value='$row[id_link]'>$row[nama_menu]</option>";
                                                                              }
                                                                            }
                    echo "</select></td></tr>
                    <tr><th scope='row'>Nama link</th>                 <td><input type='text' class='form-control' name='c' value='$rows[nama_menu]'></td></tr>
                    <tr><th scope='row'>Deskripsi</th>                 <td><textarea class='form-control' name='g'>$rows[deskripsi]</textarea><br/>*deksripsi diisi hanya untuk level link cabang / anak</td></tr>
                    <tr><th scope='row'>Urutan</th>                    <td><input type='number' class='form-control' name='e' style='width:70px' value='$rows[urutan]'></td></tr>
                    <tr><th scope='row'>Aktif</th>                  <td>"; if ($rows['aktif'] == 'Ya'){
                                                                                echo "<input type='radio' name='f' value='Ya' checked> Ya 
                                                                                      <input type='radio' name='f' value='Tidak'> Tidak";
                                                                              }else{
                                                                                echo "<input type='radio' name='f' value='Ya'> Ya 
                                                                                      <input type='radio' name='f' value='Tidak' checked> Tidak";
                                                                              }
			echo "<tr><th scope='row'>Ganti Gambar</th>                 <td><input type='file' class='form-control' name='k'>";
																	   if ($rows['gambar'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."asset/foto_link/$rows[gambar]'>$rows[gambar]</a>"; } echo "</td></tr>
                    
					</td></tr>
                  </tbody>
                  </table>
                </div>
              
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                   <button type='button' class='btn btn-default pull-right' onclick='javascript:history.back()'>Cancel</button>
                    
                  </div>
            </div></div></div>";
            echo form_close();
