<modification>
	<id>Fixed Price - OpenCart 1.5.2.x to 1.5.6.x core file modifications</id>
	<version>1.1.9.1</version>
	<vqmver>1.1.0</vqmver>
	<author>yolanda_txw@hotmail.com</author>
	
	
	<file name="catalog/model/catalog/product.php">
	<operation error="skip">
			<search position="replace"><![CDATA[$product_data = $this->cache->get('product.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . (int)$customer_group_id . '.' . $cache);]]></search>
	<add><![CDATA[//$product_data = $this->cache->get('product.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . (int)$customer_group_id . '.' . $cache);
	$product_data = false;]]></add>
		</operation>
		
		<operation>
			<search position="replace"><![CDATA[if ($query->num_rows) {]]></search>
	<add><![CDATA[
	if ($query->num_rows) {
	//Sun0703 start
			if(isset($_SESSION['use_fixed_price'])){
		$useorg = 1;
			$query3 = $this->db->query("Select products_price from " . DB_PREFIX . "product_fixed_prices where code='".$_SESSION['currency']."' and product_id='".$query->row['product_id']."'");
			foreach($query3->rows as $results) {
				if($results['products_price']>0){
				$query->row['price'] = $results['products_price'];
				$useorg = 0;
				}
				}
				
				if($useorg){
			  	$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$query->row['price'] *= ($result4['value']);
						}
				}
				
				
				if($query->row['special']>0){
				 	$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$query->row['special'] *= ($result4['value']);
						}
				}
			}
			//Sun0703 end
		
		
	]]></add>
		</operation>
		<operation>
			<search position="replace"><![CDATA[foreach ($product_option_value_query->rows as $product_option_value) {]]></search>
	<add><![CDATA[
	foreach ($product_option_value_query->rows as $product_option_value) {
	//Sun0703 start
			if(isset($_SESSION['use_fixed_price'])){
		$useorg = 1;
			$query3 = $this->db->query("Select option_price from " . DB_PREFIX . "product_option_fixed_prices where code='".$_SESSION['currency']."' and product_option_value_id='".$product_option_value['product_option_value_id']."'");
			foreach($query3->rows as $results) {
				if($results['option_price']>0){
				$product_option_value['price'] = $results['option_price'];
				$useorg = 0;
				}
				}
				
				if($useorg){
			  	$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$product_option_value['price'] *= ($result4['value']);
						}
				}
				
			}
			//Sun0703 end
		
	]]></add>
		</operation>
	</file>
	
	<file name="catalog/model/affiliate/transaction.php">
		<operation>
			<search position="replace" index="2"><![CDATA[return $query->row['total'];]]></search>
	<add><![CDATA[
	//Sun0703 start
			if(isset($_SESSION['use_fixed_price'])){
				if($query->row['total']>0){
				 	$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$query->row['total'] *= ($result4['value']);
						}
				}
			}
			//Sun0703 end
		
		
	return $query->row['total'];
	]]></add>
		</operation>
		
	</file>
	
	<file name="system/library/customer.php">
		<operation>
			<search position="replace" index="1"><![CDATA[return $query->row['total'];]]></search>
	<add><![CDATA[
	//Sun0703 start
			if(isset($_SESSION['use_fixed_price'])){
				if($query->row['total']>0){
				 	$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$query->row['total'] *= ($result4['value']);
						}
				}
			}
			//Sun0703 end
		
		
	return $query->row['total'];
	]]></add>
		</operation>
		
	</file>
	
	<file name="system/library/currency.php">
		<operation>
			<search position="after"><![CDATA[foreach ($query->rows as $result) {]]></search>
	<add><![CDATA[if(isset($_SESSION['use_fixed_price']))
	$result['value'] = '1';]]></add>
		</operation>
		
	</file>
	
	<file name="system/library/cart.php">
	<operation>
			<search position="after"><![CDATA[if ($product_special_query->num_rows) {]]></search>
	<add><![CDATA[
	//Sun0703 start
			if(isset($_SESSION['use_fixed_price'])){
			
			  	$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$product_special_query->row['price']*= ($result4['value']);
						}
				
			}
			//Sun0703 end
	]]></add>
		</operation>
		<operation>
			<search position="before"><![CDATA[$price = $product_discount_query->row['price'];]]></search>
	<add><![CDATA[
	//Sun0703 start
			if(isset($_SESSION['use_fixed_price'])){
			
			  	$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$product_discount_query->row['price']*= ($result4['value']);
						}
				
			}
			//Sun0703 end
	]]></add>
		</operation>
		<operation>
			<search position="after"><![CDATA[$price = $product_query->row['price'];]]></search>
	<add><![CDATA[
	//Sun0703 start
			if(isset($_SESSION['use_fixed_price'])){
			$useorg = 1;
			$query3 = $this->db->query("Select products_price from " . DB_PREFIX . "product_fixed_prices where code='".$_SESSION['currency']."' and product_id='".$product_query->row['product_id']."'");
			foreach($query3->rows as $results) {
				if($results['products_price']>0){
				$price = $results['products_price'];
				$useorg = 0;
				}
				}
				
				if($useorg){
			  	$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$price *= ($result4['value']);
						}
				}
			}
			//Sun0703 end
	]]></add>
		</operation>
		<operation>
			<search position="replace" ><![CDATA[$option_value_query = $this->db->query("SELECT pov.option_value_id, ovd.name, pov.quantity, pov.subtract, pov.price, pov.price_prefix, pov.points, pov.points_prefix, pov.weight, pov.weight_prefix FROM " . DB_PREFIX . "product_option_value pov LEFT JOIN " . DB_PREFIX . "option_value ov ON (pov.option_value_id = ov.option_value_id) LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) WHERE pov.product_option_value_id = '" . (int)$option_value . "' AND pov.product_option_id = '" . (int)$product_option_id . "' AND ovd.language_id = '" . (int)$this->config->get('config_language_id') . "'");]]></search>
	<add><![CDATA[
	//Sun0703 start
	$option_value_query = $this->db->query("SELECT pov.product_option_value_id,pov.option_value_id, ovd.name, pov.quantity, pov.subtract, pov.price, pov.price_prefix, pov.points, pov.points_prefix, pov.weight, pov.weight_prefix FROM " . DB_PREFIX . "product_option_value pov LEFT JOIN " . DB_PREFIX . "option_value ov ON (pov.option_value_id = ov.option_value_id) LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) WHERE pov.product_option_value_id = '" . (int)$option_value . "' AND pov.product_option_id = '" . (int)$product_option_id . "' AND ovd.language_id = '" . (int)$this->config->get('config_language_id') . "'");
	
			if(isset($_SESSION['use_fixed_price'])){
			$useorg = 1;
			$query3 = $this->db->query("Select option_price from " . DB_PREFIX . "product_option_fixed_prices where code='".$_SESSION['currency']."' and product_option_value_id='".$option_value_query->row['product_option_value_id']."'");
			foreach($query3->rows as $results) {
				if($results['option_price']>0){
				$option_value_query->row['price'] = $results['option_price'];
				$useorg = 0;
				}
				}
				
				if($useorg){
			  	$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$option_value_query->row['price'] *= ($result4['value']);
						}
				}
			}
			//Sun0703 end
	]]></add>
		</operation>
		
		<operation>
			<search position="replace" ><![CDATA[$option_value_query = $this->db->query("SELECT pov.option_value_id, ovd.name, pov.quantity, pov.subtract, pov.price, pov.price_prefix, pov.points, pov.points_prefix, pov.weight, pov.weight_prefix FROM " . DB_PREFIX . "product_option_value pov LEFT JOIN " . DB_PREFIX . "option_value ov ON (pov.option_value_id = ov.option_value_id) LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) WHERE pov.product_option_value_id = '" . (int)$product_option_value_id . "' AND pov.product_option_id = '" . (int)$product_option_id . "' AND ovd.language_id = '" . (int)$this->config->get('config_language_id') . "'");]]></search>
	<add><![CDATA[
	//Sun0703 start
	$option_value_query = $this->db->query("SELECT pov.product_option_value_id,pov.option_value_id, ovd.name, pov.quantity, pov.subtract, pov.price, pov.price_prefix, pov.points, pov.points_prefix, pov.weight, pov.weight_prefix FROM " . DB_PREFIX . "product_option_value pov LEFT JOIN " . DB_PREFIX . "option_value ov ON (pov.option_value_id = ov.option_value_id) LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) WHERE pov.product_option_value_id = '" . (int)$product_option_value_id . "' AND pov.product_option_id = '" . (int)$product_option_id . "' AND ovd.language_id = '" . (int)$this->config->get('config_language_id') . "'");
	
			if(isset($_SESSION['use_fixed_price'])){
			$useorg = 1;
			$query3 = $this->db->query("Select option_price from " . DB_PREFIX . "product_option_fixed_prices where code='".$_SESSION['currency']."' and product_option_value_id='".$option_value_query->row['product_option_value_id']."'");
			foreach($query3->rows as $results) {
				if($results['option_price']>0){
				$option_value_query->row['price'] = $results['option_price'];
				$useorg = 0;
				}
				}
				
				if($useorg){
			  	$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$option_value_query->row['price'] *= ($result4['value']);
						}
				}
			}
			//Sun0703 end
	]]></add>
		</operation>
	</file>
	
	<file name="index.php">
		<operation>
			<search position="replace"><![CDATA[$url = new Url($config->get('config_url'), $config->get('config_ssl'));]]></search>
	<add><![CDATA[
	session_start();
if($config->get('fixed_prices'))
$_SESSION['use_fixed_price'] = 1;
else
unset($_SESSION['use_fixed_price']);

$url = new Url($config->get('config_url'), $config->get('config_ssl'));	]]></add>
		</operation>
		
	</file>
	
	<file name="admin/index.php">
		<operation>
			<search position="replace"><![CDATA[$url = new Url(HTTP_SERVER, HTTPS_SERVER);]]></search>
	<add><![CDATA[
	session_start();
if($config->get('fixed_prices'))
$_SESSION['use_fixed_price'] = 1;
else
unset($_SESSION['use_fixed_price']);

$url = new Url(HTTP_SERVER, HTTPS_SERVER);	
]]></add>
		</operation>
		
	</file>
	
	<file name="system/startup.php">
		<operation>
			<search position="replace"><![CDATA[// Common]]></search>
	<add><![CDATA[
// Common

$db2 = mysql_connect( DB_HOSTNAME, DB_USERNAME, DB_PASSWORD) or die("Unable to connect to database");
	mysql_select_db(DB_DATABASE) or die("Unable to select database");
// Settings
 $sql = "SELECT * FROM " . DB_PREFIX . "setting where store_id='0'";
$query =mysql_query($sql) or die(mysql_error());
 	$tm = 0;
	while($setting = mysql_fetch_assoc($query)){
if( $setting['key']=='fixed_prices')
	$tm =  $setting['value'];
}
if(!isset($_SESSION))
session_start();

if($tm)
$_SESSION['use_fixed_price'] = 1;
else
unset($_SESSION['use_fixed_price']);

]]></add>
		</operation>
		
	</file>
	
	
	
	
	<file name="admin/model/catalog/product.php">
		<operation>
			<search position="replace" index="1"><![CDATA[$this->cache->delete('product');]]></search>
	<add><![CDATA[
	//sun0703 start
		if (isset($data['prices'])) {
		foreach($data['prices'] as $code=>$pprice)
			$this->db->query("INSERT INTO " . DB_PREFIX . "product_fixed_prices SET product_id=" . (int)$product_id . ", code = '" . $code . "', products_price = '" . $pprice . "'");
		}	
		//sun0703 end		
		$this->cache->delete('product');
	]]></add>
		</operation>
		<operation>
			<search position="replace" index="1" ><![CDATA[$this->db->query("DELETE FROM " . DB_PREFIX . "product_discount WHERE product_id = '" . (int)$product_id . "'");]]></search>
	<add><![CDATA[
		$this->db->query("DELETE FROM " . DB_PREFIX . "product_discount WHERE product_id = '" . (int)$product_id . "'");
 
 //sun0703 start
		if (isset($data['prices'])) {
		foreach($data['prices'] as $code=>$pprice){
		$query = $this->db->query("select fixed_prices_id from " . DB_PREFIX . "product_fixed_prices WHERE product_id = '" . (int)$product_id . "' and code = '" . $code . "'");
	if ($query->num_rows) {
		$this->db->query("UPDATE " . DB_PREFIX . "product_fixed_prices SET products_price = '" . $pprice . "' WHERE product_id = '" . (int)$product_id . "' and code = '" . $code . "'");
			}else{
			$this->db->query("INSERT INTO " . DB_PREFIX . "product_fixed_prices SET product_id=" . (int)$product_id . ", code = '" . $code . "', products_price = '" . $pprice . "'");
				}
				
			}
		}	
//sun0703 end		
	]]></add>
		</operation>
		<operation error="skip">
			<search position="after" index="1" ><![CDATA[public function deleteProduct($product_id) {]]></search>
	<add><![CDATA[
		$this->db->query("DELETE FROM " . DB_PREFIX . "product_fixed_prices WHERE product_id = '" . (int)$product_id . "'");
		 $query2 = $this->db->query("Select product_option_value_id from " . DB_PREFIX . "product_option_value WHERE product_id = '" . (int)$product_id . "'");
		
			foreach($query2->rows as $resultc) {
			 $this->db->query("DELETE FROM " . DB_PREFIX . "product_option_fixed_prices WHERE product_option_value_id = '" . (int)$resultc['product_option_value_id'] . "'");
			}
	]]></add>
		</operation>
		
		
		<operation>
			<search position="after" index="1"><![CDATA[foreach ($product_option['product_option_value'] as $product_option_value) {]]></search>
		<add><![CDATA[
		//sun0703 start
		if (isset($product_option_value['prices'])) {
		foreach($product_option_value['prices'] as $code=>$pprice)
			$this->db->query("INSERT INTO " . DB_PREFIX . "product_option_fixed_prices SET product_option_value_id=" . (int)$product_option_value['product_option_value_id'] . ", code = '" . $code . "', option_price = '" . $pprice . "'");
		}	
		//sun0703 end	
		]]></add>
		</operation>
		
		<operation>
			<search position="replace" ><![CDATA[$this->db->query("DELETE FROM " . DB_PREFIX . "product_option_value WHERE product_id = '" . (int)$product_id . "'");]]></search>
		<add><![CDATA[
		 //sun0703 start
		 	 $query2 = $this->db->query("Select product_option_value_id from " . DB_PREFIX . "product_option_value WHERE product_id = '" . (int)$product_id . "'");
		
			foreach($query2->rows as $resultc) {
			 $this->db->query("DELETE FROM " . DB_PREFIX . "product_option_fixed_prices WHERE product_option_value_id = '" . (int)$resultc['product_option_value_id'] . "'");
			}
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "product_option_value WHERE product_id = '" . (int)$product_id . "'");
		//sun0703 end	
		]]></add>
		</operation>
		
		
		<operation>
			<search position="after"><![CDATA[$this->db->query("INSERT INTO " . DB_PREFIX . "product_option_value SET product_option_value_id = '" . (int)$product_option_value['product_option_value_id'] . "', product_option_id = '" . (int)$product_option_id . "', product_id = '" . (int)$product_id . "', option_id = '" . (int)$product_option['option_id'] . "', option_value_id = '" . (int)$product_option_value['option_value_id'] . "', quantity = '" . (int)$product_option_value['quantity'] . "', subtract = '" . (int)$product_option_value['subtract'] . "', price = '" . (float)$product_option_value['price'] . "', price_prefix = '" . $this->db->escape($product_option_value['price_prefix']) . "', points = '" . (int)$product_option_value['points'] . "', points_prefix = '" . $this->db->escape($product_option_value['points_prefix']) . "', weight = '" . (float)$product_option_value['weight'] . "', weight_prefix = '" . $this->db->escape($product_option_value['weight_prefix']) . "'");]]></search>
		<add><![CDATA[
		 //sun0703 start
		 $new_product_option_value_id = $this->db->getLastId();
		if (isset($product_option_value['prices']) && $new_product_option_value_id>0) {
	
		foreach($product_option_value['prices'] as $code=>$pprice){
	
		$this->db->query("INSERT INTO " . DB_PREFIX . "product_option_fixed_prices SET product_option_value_id=" . (int)$new_product_option_value_id . ", code = '" . $code . "', option_price = '" . $pprice . "'");
			
				
			}
		}	
//sun0703 end	
		]]></add>
		</operation>
	</file>
	
	<file name="admin/view/template/catalog/product_form.tpl">
		<operation>
			<search position="replace"><![CDATA[<td><input type="text" name="price" value="<?php echo $price; ?>" /></td>]]></search>
	<add><![CDATA[<td>
			  	<!--sun0703	start--> 
			  <?php
			  if(isset($_SESSION['use_fixed_price'])){
			  $query2 = $this->db->query("Select * from " . DB_PREFIX . "currency order by value");
			
			  if( isset($_GET['product_id'])) $product_id= $_GET['product_id'];
			  if( !isset($_GET['product_id'])) $product_id= '';
			foreach($query2->rows as $resultc) {
			 $query3 = $this->db->query("Select * from " . DB_PREFIX . "product_fixed_prices where code='".$resultc['code']."' and product_id='".$product_id."'");
			 if($resultc['value']==1)
			 $fixed_price = $price;
			 else
			  $fixed_price = '';
			  
			 	foreach($query3->rows as $results) {
				$fixed_price = $results['products_price'];
				}
			
			if($resultc['value']==1)
			echo $resultc['code'].'<input type="text" name="prices['.$resultc['code'].']" value="'.$fixed_price.'"  onkeyup="document.getElementById(\'default_price\').value=this.value;" /><br>';
			else
			 echo $resultc['code'].'<input type="text" name="prices['.$resultc['code'].']" value="'.$fixed_price.'" /><br>';
			 }
			 echo '<input type="hidden" name="price" id="default_price" value="'. $price.'" />';
			 }
			 else
			 echo '<input type="text" name="price" id="default_price" value="'. $price.'" />';
			  ?>
			</td>
			  	<!--sun0703	end--> ]]></add>
		</operation>
		
		<operation>
			<search position="replace"><![CDATA[<input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][price]" value="<?php echo $product_option_value['price']; ?>" size="5" />]]></search>
		<add><![CDATA[
		 <?php
			  if(isset($_SESSION['use_fixed_price'])){
			  $query2 = $this->db->query("Select * from " . DB_PREFIX . "currency order by value");
			foreach($query2->rows as $resultc) {
			 $query3 = $this->db->query("Select * from " . DB_PREFIX . "product_option_fixed_prices where code='".$resultc['code']."' and product_option_value_id='".$product_option_value['product_option_value_id']."'");
			 
			 if($resultc['value']==1)
			 $fixed_option_price = $product_option_value['price'];
			 else
			  $fixed_option_price = '';
			  
			 	foreach($query3->rows as $results) {
				$fixed_option_price = $results['option_price'];
				}

			
			if($resultc['value']==1)
			echo $resultc['code'].'<input type="text" name="product_option['. $option_row.'][product_option_value]['. $option_value_row.'][prices]['.$resultc['code'].']" value="'.$fixed_option_price.'"  onkeyup="document.getElementById(\'default_price_option_'. $option_value_row.'\').value=this.value;" size="5" /><br>';
			else
			 echo $resultc['code'].'<input type="text" name="product_option['. $option_row.'][product_option_value]['. $option_value_row.'][prices]['.$resultc['code'].']" value="'.$fixed_option_price.'" size="5" /><br>';
			 }
			 echo '<input type="hidden" name="product_option['. $option_row.'][product_option_value]['. $option_value_row.'][price]" id="default_price_option_'. $option_value_row.'" value="'. $product_option_value['price'].'" />';
			 }
			 else{
			 ?>
			 <input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][price]" value="<?php echo $product_option_value['price']; ?>" size="5" />
			 <?php
			 }
			 ?>
		]]></add>
		</operation>
		
		<operation>
			<search position="replace"><![CDATA[html += '    <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][price]" value="" size="5" /></td>';]]></search>
			<add><![CDATA[
			<?php
			  if(isset($_SESSION['use_fixed_price'])){
			  echo 'html += \'    \';';
			  $query2 = $this->db->query("Select * from " . DB_PREFIX . "currency order by value");
			 
			foreach($query2->rows as $resultc) {
			if($resultc['value']==1)
			echo ' html +=\''.$resultc['code'].'<input type="text" name="product_option[\' + option_row + \'][product_option_value][\' + option_value_row + \'][prices]['.$resultc['code'].']" value=""  onkeyup="document.getElementById(\\\'default_option_price\' + option_row +option_value_row+ \'\\\').value=this.value;" /><br>\';';
			else
			echo ' html +=\''.$resultc['code'].'<input type="text" name="product_option[\' + option_row + \'][product_option_value][\' + option_value_row + \'][prices]['.$resultc['code'].']" value=""  /><br>\';';
	
			 }
			 	
		echo ' html +=\''.'<input type="hidden" name="product_option[\' + option_row + \'][product_option_value][\' + option_value_row + \'][price]" value="" id="default_option_price\' + option_row  +option_value_row + \'" /><br>\';';
			 echo 'html += \'</td>\';';
			 
			 }
			 else{
			 ?>
		html += '    <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][price]" value="" size="5" /></td>';
			 <?php
			 }
			 ?>
			]]></add>
		</operation>
		
	</file>
	
	<file name="catalog/controller/checkout/shipping_method.php">
		<operation>
			<search position="after"><![CDATA[if ($quote) {]]></search>
	<add><![CDATA[
	if(isset($_SESSION['use_fixed_price'])){
					
					foreach($quote['quote'] as $k=>$newquote){
						$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$quote['quote'][$k]['cost']*= ($result4['value']);
						}
					
					$quote['quote'][$k]['text']= $this->currency->format($this->tax->calculate($quote['quote'][$k]['cost'], $quote['quote'][$k]['tax_class_id'], $this->config->get('config_tax')));
					}
					}
					
	]]></add>
		</operation>
		
	</file>
	
	<file name="catalog/model/total/coupon.php">
		<operation>
			<search position="before"><![CDATA[$discount_total += $discount;]]></search>
	<add><![CDATA[
	if(isset($_SESSION['use_fixed_price'])){
				$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$discount *= ($result4['value']);
						}
					}
	]]></add>
		</operation>
	</file>
	
	<file name="catalog/model/checkout/voucher.php">
		<operation>
			<search position="after"><![CDATA[if ($status) {]]></search>
	<add><![CDATA[
	if(isset($_SESSION['use_fixed_price'])){
				$query4 = $this->db->query("SELECT value FROM " . DB_PREFIX . "currency where code='".$_SESSION['currency']."'");
						foreach ($query4->rows as $result4) {
						$amount *= ($result4['value']);
						}
					}
	]]></add>
		</operation>
	</file>
</modification>
