<?php
class ControllerCommonHome extends Controller {
	public function index() {
	
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}
		
		//$ip = $_SERVER['REMOTE_ADDR'];
		$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		
		if(isset($this->request->get['utm_source'])){
			$utm_source = $this->request->get['utm_source'];
		}else{
			$utm_source = false;
		}
		
		if(isset($this->request->get['utm_medium'])){
			$utm_medium = $this->request->get['utm_medium'];
		}else{
			$utm_medium = false;
		}
		
		if(isset($this->request->get['utm_campaign'])){
			$utm_campaign = $this->request->get['utm_campaign'];
		}else{
			$utm_campaign = false;
		}
		
		if(isset($this->request->get['utm_term'])){
			$utm_term = $this->request->get['utm_term'];
		}else{
			$utm_term = false;
		}
		
		if(isset($this->request->get['utm_content'])){
			$utm_content = $this->request->get['utm_content'];
		}else{
			$utm_content = false;
		}
		
		if($utm_content || $utm_term || $utm_campaign || $utm_medium || $utm_source){
			$sql = "SELECT * FROM oc_utm WHERE ip='" . $ip . "' ";
			
			if($utm_content){
				$sql .= " AND utm_content='" . $utm_content . "'";
			}
			
			if($utm_content){
				$sql .= " AND utm_term='" . $utm_term . "'";
			}
			
			if($utm_content){
				$sql .= " AND utm_campaign='" . $utm_campaign . "'";
			}
			
			if($utm_content){
				$sql .= " AND utm_medium='" . $utm_medium . "'";
			}
			
			if($utm_content){
				$sql .= " AND utm_source='" . $utm_source . "'";
			}
			
			$query = $this->db->query($sql);
			
			if($query->num_rows == 0){
				$sql = "INSERT INTO `oc_utm` SET ip = '" . $ip . "' ";
				
				if($utm_content){
					$sql .= " , utm_content='" . $utm_content . "'";
				}
				
				if($utm_content){
					$sql .= " , utm_term='" . $utm_term . "'";
				}
				
				if($utm_content){
					$sql .= " , utm_campaign='" . $utm_campaign . "'";
				}
				
				if($utm_content){
					$sql .= " , utm_medium='" . $utm_medium . "'";
				}
				
				if($utm_content){
					$sql .= " , utm_source='" . $utm_source . "'";
				}
				
				$this->db->query($sql);
				
				$utm_id = $this->db->getLastId();
				$this->session->data['utm_id'] = $utm_id;
			}else{
				$this->session->data['utm_id'] = $query->row['utm_id'];
			}
		}
		$time = time();
		if(!isset($this->session->data['timer'])){
			$this->session->data['timer'] = $time;
		}
		
		if($time - $this->session->data['timer'] < 300){
			$data['timer'] = 300 - ($time - $this->session->data['timer']);
			$data['form_text'] = 'С бесплатным прототипом';
		} else {
			$data['timer'] = false;
			$data['form_text'] = 'Без бесплатного прототипа';
		}
		
		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}
		
		
		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}

		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		
	
		$data['logo'] = $server . 'image/catalog/top-logo.png';

		$this->load->language('common/header');

		$data['text_home'] = $this->language->get('text_home');
		
		$data['scripts'] = $this->document->getScripts('footer');
		
		
			$time = time();
		if(!isset($this->session->data['timer'])){
			$this->session->data['timer'] = $time;
		}
		
		if($time - $this->session->data['timer'] < 300){
			$data['timer'] = 300 - ($time - $this->session->data['timer']);
			$data['form_text'] = 'С бесплатным прототипом';
		} else {
			$data['timer'] = false;
			$data['form_text'] = 'Без бесплатного прототипа';
		}
	
		if(!isset($this->session->data['template'])){
			$files = array_diff(scandir(DIR_LAND), array('..', '.'));
			$index = rand(2, count($files) + 1);
			$this->session->data['template'] = $files[$index];
		}
		
		
		$template = $this->session->data['template'];
		$path_parts = pathinfo($this->session->data['template']);
		$data['store_name'] = $path_parts['filename'];
		
		$this->response->setOutput($this->load->viewLand($template, $data));
	}
}