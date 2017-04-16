<?php
class ControllerOrderOrder extends Controller {
	public function add() {
		$json = array();
		
		$name = false;
		if(!isset($this->request->post['name']) || strlen($this->request->post['name']) == 0){
			$json['error']['name'] = "Введите корректное имя";
		}else{
			$name = $this->request->post['name'];
		}
	
	
		$phone = false;
		if(!isset($this->request->post['phone']) || strlen($this->request->post['phone']) == 0){
			$json['error']['phone'] = "Введите корректный телефон";
		}else{
			$phone = $this->request->post['phone'];
		}
		
		$email = '';
		if(isset($this->request->post['email'])){
			if ((strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $this->request->post['email'])) {
				$json['error']['email'] = "Введите корректный email";
			}else{
				$email = $this->request->post['email'];
			}
		}
		
		$form_name = "";
		if(isset($this->request->post['form_name'])){
			$form_name = $this->request->post['form_name'];
		}
		$form_text = $this->request->post['form_text'];
		$store_name = $this->request->post['store_name'];
		
		$utm_id = 0;
		if(isset($this->session->data['utm_id'])){
			$utm_id = $this->session->data['utm_id'];
		}
		
		if(!$json){
			$this->db->query("INSERT INTO `oc_land_orders` (`order_status_id`, `name`, `form_name`, `phone`, `email`, `utm_id`, `form_text`, `store_name`) VALUES ('1', '" . $name . "', '" . $form_name . "', '" . $phone . "', '" . $email . "', '" . $utm_id . "', '" . $form_text . "', '" . $store_name . "')");
			$order_id = $this->db->getLastId();
			$text = "Отправленно с формы - " . $form_name . "\n\n";
			
			if($name){
				$text .= "Имя:" . $name . "\n";
			}
			
			if($phone){
				$text .= "Телефон:" . $phone . "\n";
			}
			
			if($email != ''){
				$text .= "Email:" .  $email . "\n";
			}
		
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode("Новый заказ", ENT_QUOTES, 'UTF-8'));
			$mail->setText($text);
			$mail->send();

			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $email)) {
					$mail->setTo($email);
					$mail->send();
				}
			}
			if($this->config->get('config_telephone') != ""){
				/*$ch = curl_init("https://sms.ru/sms/send");
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
				curl_setopt($ch, CURLOPT_TIMEOUT, 30);
				curl_setopt($ch, CURLOPT_POSTFIELDS, array(
				
					"api_id"		=>	"61FBAC73-FBB1-6371-9698-AAE8C2BC02CA",
					"to"			=>	$this->config->get('config_telephone'),
					"text"		=>	iconv("windows-1251","utf-8","Новый заказ №" . $order_id) # Если приходят крякозябры, то уберите iconv и оставьте только "Привет!"
				
				));
				
				$body = curl_exec($ch);
				curl_close($ch);
				*/
			}
			
			
			$json['success'] = 'success';
		}
		
		$this->response->setOutput(json_encode($json));
	}
}