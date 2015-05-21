<?php
#############################################################################
   #
#############################################################################
class ControllerModuleFixedPrices extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/fixed_prices');

		$this->document->setTitle( $this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('fixed_prices', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect((HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token']));
		}
		
	global $db;
	$db->query("CREATE  TABLE IF NOT EXISTS `" . DB_PREFIX . "product_fixed_prices` ( 
  				`fixed_prices_id` int(11) NOT NULL auto_increment, 
  				`product_id` int( 11  )  NOT  NULL default  '0',
 				`code` char( 3  )  NOT  NULL default  '',
 				`products_price` decimal( 15, 4  )  NOT  NULL default  '0.0000' ,
 				PRIMARY KEY  (`fixed_prices_id`)
 	)");
	
	$db->query("CREATE  TABLE IF NOT EXISTS `" . DB_PREFIX . "product_option_fixed_prices` ( 
  				`fixed_option_prices_id` int(11) NOT NULL auto_increment, 
 				`product_option_value_id` int( 11  )  NOT  NULL default  '0',
 				`code` char( 3  )  NOT  NULL default  '',
 				`option_price` decimal( 15, 4  )  NOT  NULL default  '0.0000' ,
 				PRIMARY KEY  (`fixed_option_prices_id`)
 	)");
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['enable_fixed_prices'] = $this->language->get('enable_fixed_prices');

  	
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning']))
		{
			$this->data['error_warning'] = $this->error['warning'];
		}
		else
		{
			$this->data['error_warning'] = '';
		}
		if (isset($this->error['error_sort_order']))
		{
			$this->data['error_sort_order'] = $this->error['error_sort_order'];
		}
		else
		{
			$this->data['error_sort_order'] = '';
		}
		if (isset($this->error['error_limit']))
		{
			$this->data['error_limit'] = $this->error['error_limit'];
		}
		else
		{
			$this->data['error_limit'] = '';
		}

  		$this->document->breadcrumbs = array();

   		$this->document->breadcrumbs[] = array(
       		'href'      => (HTTPS_SERVER . 'index.php?route=common/home&token=' . $this->session->data['token']),
       		'text'      => $this->language->get('text_home'),
      		'separator' => FALSE
   		);

   		$this->document->breadcrumbs[] = array(
       		'href'      => (HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token']),
       		'text'      => $this->language->get('text_module'),
      		'separator' => ' :: '
   		);

   		$this->document->breadcrumbs[] = array(
       		'href'      => (HTTPS_SERVER . 'index.php?route=module/fixed_prices&token=' . $this->session->data['token']),
       		'text'      => $this->language->get('heading_title'),
      		'separator' => ' :: '
   		);

		$this->data['action'] = (HTTPS_SERVER . 'index.php?route=module/fixed_prices&token=' . $this->session->data['token']);

		$this->data['cancel'] = (HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token']);

		if (isset($this->request->post['fixed_prices'])) {
			$this->data['fixed_prices'] = $this->request->post['fixed_prices'];
		} else {
			$this->data['fixed_prices'] = $this->config->get('fixed_prices');
		}
		$this->id       = 'fixed_prices';
		$this->template = 'module/fixed_prices.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));

 		$this->render();
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/fixed_prices')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
	
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
}
?>