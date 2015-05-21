<?php
ob_start();

//requirements
define('VQMOD_VERSION','2.4');
define('IONCUBE_VERSION','4.4');

// Access globals
global $request,$registry,$config,$language;

// Enable error reporting
error_reporting(E_ALL);
ini_set('display_errors','on');

//loading addist language
$language->load('common/addist');

//include helper
require('helper.php');

//register autoloader
spl_autoload_register('addist_autoload');

// Define addist dir
if (!defined('DIR_ADDIST'))
{
    define('DIR_ADDIST',DIR_SYSTEM . 'addist/');
}
    
// Detecting time offset
if (!defined('TIME_OFFSET'))
{
    define('TIME_OFFSET',timezone_offset_get(new DateTimeZone(date_default_timezone_get()), new DateTime()));
}

// Detecting oc version
if (version_compare(VERSION,'1.5') == -1)
{
    $oc_version = '1.4.9.x';
}
elseif (version_compare(VERSION,'2.0') == -1)
{
    $oc_version = '1.5.x';
}
else
{
    $oc_version = '2.0.x';
}
if (!defined('OC_VERSION'))
{
    define('OC_VERSION',$oc_version);
}

// Detecting admin or front
$parts = explode('/',trim(str_replace('\\','/',DIR_APPLICATION),'/'));
if ($parts[count($parts)-1] == 'catalog' || !defined('DIR_CATALOG'))
{
    $is_admin = false;
}
else
{
    $is_admin = true;
}
if (!defined('IS_ADMIN'))
{
    define('IS_ADMIN',$is_admin);
}

// Default vars
$store_id = $config->get('config_store_id');
$config_url = $config->get('config_url');
$config_ssl = $config->get('config_ssl');
$config_language_id = $config->get('config_language_id');
$config_language = $config->get('config_language');

// Detect STORE ID
if (!empty($request->get['store_id']) && (int)$request->get['store_id'] > 0)
{
    define('STORE_ID',(int)$request->get['store_id']);
}
else
{
    define('STORE_ID',0);
}

if (check_requirements(false) === true)
{
    // Load libraries
    require_once(DIR_SYSTEM . 'addist/library/config.php');
    require_once(DIR_SYSTEM . 'addist/library/extension.php');
    require_once(DIR_SYSTEM . 'addist/library/installer.php');
    require_once(DIR_SYSTEM . 'addist/library/pagination.php');
    require_once(DIR_SYSTEM . 'addist/library/url.php');
    
    // Config
    $config = new AddistConfig($registry);
    $registry->set('config', $config);
    
    // Extension
    $extension = new AddistExtension($registry);
    $registry->set('extension', $extension);
}
?>