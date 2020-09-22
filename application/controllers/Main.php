<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Main extends CI_Controller {
	public function index(){
		$data['title'] = title();
		$data['description'] = description();
		$data['keywords'] = keywords();
		
		$data['agenda'] = $this->model_utama->view_join('agenda','users','username','id_agenda','DESC',0,4);
		
		
		
		
		
		$this->template->load(template().'/template',template().'/content',$data);
	}
}
