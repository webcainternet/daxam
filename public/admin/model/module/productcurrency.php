<?php
class ModelModuleProductcurrency extends Model {

	public function install(){

		$this->db->query("ALTER TABLE  `" . DB_PREFIX . "product` ADD  `currency_product` VARCHAR( 64 ) NOT NULL "); // add currency product

		$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_discount` ADD `currency_discount` VARCHAR( 64 ) NOT NULL "); // add currency product_discount

		$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_option_value` ADD `currency_option` VARCHAR( 64 ) NOT NULL "); // add currency product_option_value

		$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_special` ADD `currency_special` VARCHAR( 64 ) NOT NULL "); // add currency product_special

		/*Add curecncy product, oprions, special, discount*/

		$this->db->query("UPDATE `" . DB_PREFIX . "product` SET `currency_product`= '" . $this->db->escape($this->config->get('config_currency')) . "' ");

		$this->db->query("UPDATE `" . DB_PREFIX . "product_discount` SET `currency_discount`= '" . $this->db->escape($this->config->get('config_currency')) . "' ");

		$this->db->query("UPDATE `" . DB_PREFIX . "product_option_value` SET `currency_option`= '" . $this->db->escape($this->config->get('config_currency')) . "' ");

		$this->db->query("UPDATE `" . DB_PREFIX . "product_special` SET `currency_special`= '" . $this->db->escape($this->config->get('config_currency')) . "' ");

		/*END Add Curency*/
	}

	public function uninstall(){

		$this->db->query("ALTER TABLE  `" . DB_PREFIX . "product` DROP  `currency_product` "); // remove currency product

		$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_discount` DROP `currency_discount` "); // remove currency product_discount

		$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_option_value` DROP `currency_option` "); // remove currency product_option_value

		$this->db->query("ALTER TABLE `" . DB_PREFIX . "product_special` DROP `currency_special` "); // remove currency product_special

		$this->db->query("DELETE FROM `" . DB_PREFIX . "setting` WHERE `group`= 'product_currency'"); // remove setting

	}

}

?>