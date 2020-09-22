
	<?php 
		function main_menu() {
			$ci = & get_instance();
			$query = $ci->db->query("SELECT id_menu, nama_menu, link, id_parent FROM menu where aktif='Ya' AND position='Bottom' order by urutan");
			$menu = array('items' => array(),'parents' => array());
			foreach ($query->result() as $menus) {
				$menu['items'][$menus->id_menu] = $menus;
				$menu['parents'][$menus->id_parent][] = $menus->id_menu;
			}
			if ($menu) {
				$result = build_main_menu(0, $menu);
				return $result;
			}else{
				return FALSE;
			}
		}

		function build_main_menu($parent, $menu) {
			$html = "";
			if (isset($menu['parents'][$parent])) {
				if ($parent=='0'){
					$html .= "<ul id='menu-td-demo-header-menu-1' class='sf-menu'>";
				}else{
					$html .= "<ul class='sub-menu'>";
				}
				foreach ($menu['parents'][$parent] as $itemId) {
					if (!isset($menu['parents'][$itemId])) {
						if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
							$html .= "<li class='menu-item menu-item-type-custom menu-item-object-custom td-menu-item'><a target='_BLANK' href='".$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
						}else{
							$html .= "<li class='menu-item menu-item-type-custom menu-item-object-custom td-menu-item'><a href='".base_url().''.$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
						}
					}
					if (isset($menu['parents'][$itemId])) {
						if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
							$html .= "<li class='menu-item menu-item-type-custom menu-item-object-custom current-menu-parent menu-item-has-children td-menu-item td-normal-menu'><a class='sf-with-ul' target='_BLANK' href='".$menu['items'][$itemId]->link."'><span>".$menu['items'][$itemId]->nama_menu."</span></a>";
						}else{
							$html .= "<li class='menu-item menu-item-type-custom menu-item-object-custom current-menu-parent menu-item-has-children td-menu-item td-normal-menu'><a class='sf-with-ul' href='".base_url().''.$menu['items'][$itemId]->link."'><span>".$menu['items'][$itemId]->nama_menu."</span></a>";
						}
						$html .= build_main_menu($itemId, $menu);
						$html .= "</li>";
					}
				}
				$html .= "</ul>";
			}
			return $html;
		}
		//echo main_menu();
	?>
	
	
	<?php
	$pilihan = $this->model_utama->view_where('menu', array('id_parent' => '0', 'aktif' => 'Ya'));
	foreach ($pilihan->result_array() as $row) {    
    ?>
<li class="dropdown dropdown-mega">
	<?php
	if(substr($row['link'],0,7) == "http://" or substr($row['link'],0,8) == "https://"  or substr($row['link'],0,3) == "www."){
		?>
		<a href="<?php echo $row['link'] ?>" class="dropdown-toggle"><?php echo $row['nama_menu']; ?></a>
		<?php
	}elseif($row['link'] == "#" or $row['link'] == ""){
		?>
		<a href="<?php echo $row['link'] ?>" class="dropdown-toggle"><?php echo $row['nama_menu']; ?></a>
		<?php
	}else{
		?>
		<a href="<?php echo base_url() . $row['link']; ?>" class="dropdown-toggle"><?php echo $row['nama_menu']; ?></a>
		<?php
	}	
	?>
	<ul class="dropdown-menu">
		<li>
			<div class="dropdown-mega-content container">
				<div class="row">
					<div class="col-md-3">
						<h3><b><?php echo $row['nama_menu']; ?></b></h3>
						<p><?php echo $row['deskripsi']; ?></p>
						<!-- <a target="_blank" href="#" class="btn btn-primary text-color-light">Learn more..</a> -->
					</div>
						<?php
						$pilihan2 = $this->model_utama->view_where('menu', array('id_parent' => $row['id_menu'], 'aktif' => 'Ya'));
						foreach ($pilihan2->result_array() as $row2) {    
						?>
							<div class="col-md-3">
								<span class="dropdown-mega-sub-title"><h4><?php echo $row2['nama_menu'] ?></h4></span>
								<ul class="dropdown-mega-sub-nav">
								<?php
								$pilihan3 = $this->model_utama->view_where('menu', array('id_parent' => $row2['id_menu'], 'aktif' => 'Ya'));
								foreach ($pilihan3->result_array() as $row3) {    
									if(substr($row3['link'],0,7) == "http://" or substr($row3['link'],0,8) == "https://"  or substr($row3['link'],0,3) == "www."){
								?>
										<li><a href="<?php echo $row3['link']; ?>"><i class="fa fa-chevron-right" aria-hidden="true"></i> <?php echo $row3['nama_menu']; ?></a></li>
								<?php
									}else{?>
										<li><a href="<?php echo base_url() . $row3['link']; ?>"><i class="fa fa-chevron-right" aria-hidden="true"></i> <?php echo $row3['nama_menu']; ?></a></li>
									<?php	
									}
								}
								?>
								</ul>
							</div>
						<?php
						}
						?>
				</div>
			</div>

		</li>
	</ul>

	<?php
	}
	?>
</li>
<li class="">

