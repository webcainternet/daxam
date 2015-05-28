-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 28, 2015 at 01:20 PM
-- Server version: 5.5.38
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `daxam`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
`address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `company_id`, `tax_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES
(1, 1, 'Demo', 'Demo', '', '', '', 'Demo', '', 'Demo', '5555', 222, 3530),
(2, 2, 'Alessandro', 'Ohl', '', '', '', 'Freire Fartp, 390', 'Jabaquara', 'Sao Paulo', '04343120', 30, 464),
(3, 3, 'Rodrigo', 'Faque', '', '', '', 'tuim', '', 'São Paulo', '04614-014', 30, 464),
(4, 4, 'Fernando', 'Mendes', '', '', '', 'Lomas Valentinas', '', 'Sao Caetano do Sul', '09560260', 30, 464);

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
`affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
`affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
`attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(12, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(12, 4, 'usa');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
`attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(7, 1),
(8, 0),
(9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(7, 4, 'Pacotes'),
(8, 4, 'Ingressos'),
(9, 4, 'jiu-jitsu');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
`banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(15, 'slideshow', 1),
(16, 'banners', 0),
(20, 'banner_bottom', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
`banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=425 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(419, 15, 'pacote-viagem-jiujitsu-mundial-masters-seniors-e-pan-nogi', 'data/pacotes.jiu.1viagem2campeonatos.jpg'),
(424, 16, 'index.php?route=product/product&amp;product_id=28', 'data/banner-1.jpg'),
(423, 16, 'index.php?route=product/product&amp;product_id=29', 'data/banner-2.jpg'),
(422, 16, '/reserve-seu-hotel', 'data/banner-3.jpg'),
(421, 15, 'peru.machu.picchu', 'data/peru_machu-picchu.janela.jpg'),
(420, 15, 'orlando', 'data/pacotes.disney.parada.jpg'),
(379, 20, 'viagens-esportivas-ibjjf-maratonas-futebol', 'data/pacotes.viagens.esportivas.png'),
(418, 15, 'caribe', 'data/caribe.site.jpg'),
(417, 15, 'australia', 'data/Australia_Sydney-Opera-House.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(424, 4, 16, 'banner-3', '&lt;i class=&quot;fa fa-comments&quot;&gt;&lt;/i&gt;\r\n&lt;h1&gt;Consultoria&lt;/h1&gt;\r\n&lt;span&gt;&lt;i class=&quot;fa fa-info&quot;&gt;&lt;/i&gt;SAIBA MAISINFO&lt;/span&gt;\r\n'),
(423, 4, 16, 'banner-2', '&lt;i class=&quot;fa fa-plane&quot;&gt;&lt;/i&gt;\r\n&lt;h1&gt;Travel guide&lt;/h1&gt;\r\n&lt;span&gt;&lt;i class=&quot;fa fa-info&quot;&gt;&lt;/i&gt;MORE INFO&lt;/span&gt;'),
(421, 4, 15, 'slide-5', '&lt;a href=&quot;http://google.com.br&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;h1&gt;Machu Picchu&lt;/h1&gt;\r\n&lt;h2&gt;A partir de: &lt;span&gt;US$399&lt;/span&gt;&lt;/h2&gt;'),
(420, 4, 15, 'slide-4', '&lt;a href=&quot;http://google.com.br&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;h1&gt;Orlando&lt;/h1&gt;\r\n&lt;h2&gt;A partir de: &lt;span&gt;US$$399&lt;/span&gt;&lt;/h2&gt;'),
(422, 4, 16, 'banner-1', '&lt;i class=&quot;fa fa-building-o&quot;&gt;&lt;/i&gt;\r\n&lt;h1&gt;Reserve seu hotel&lt;/h1&gt;\r\n&lt;span&gt;&lt;i class=&quot;fa fa-info&quot;&gt;&lt;/i&gt;Saiba mais&lt;/span&gt; '),
(419, 4, 15, 'slide-3', '&lt;a href=&quot;http://google.com.br&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;h1&gt;1 viagem 2 campeonatos&lt;/h1&gt;\r\n&lt;h2&gt;A partir de: &lt;span&gt;US$1545&lt;/span&gt;&lt;/h2&gt;'),
(379, 4, 20, 'banner-bottom', '&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;\r\n&lt;h3&gt;IBJJF&lt;/h3&gt;\r\n&lt;h2&gt;Viagens Esportivas&lt;/h2&gt;'),
(417, 4, 15, 'slide-1', '&lt;a href=&quot;http://google.com.br&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;h1&gt;Australia&lt;/h1&gt;\r\n&lt;h2&gt;A partir de: &lt;span&gt;AUD$399&lt;/span&gt;&lt;/h2&gt;'),
(418, 4, 15, 'slide-2', '&lt;a href=&quot;http://google.com.br&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;h1&gt;Punta Cana &lt;/h1&gt;\r\n&lt;h2&gt;A partir de: &lt;span&gt;US$ 980&lt;/span&gt;&lt;/h2&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
`category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(110, 'data/servicos.hotel.5estrelas.jpg', 108, 0, 1, 0, 1, '2015-04-15 11:02:48', '2015-05-05 16:59:44'),
(109, 'data/servicos.hotel.png', 108, 0, 1, 0, 1, '2015-04-15 10:56:27', '2015-04-15 10:56:27'),
(106, 'data/maratona-Bagan-Temple.jpg', 104, 0, 1, 0, 1, '2015-04-15 08:26:13', '2015-04-25 13:52:50'),
(107, 'data/bola-de-futebol.jpg', 104, 0, 1, 0, 1, '2015-04-15 08:27:09', '2015-04-25 13:45:07'),
(108, 'data/servicos.hotel.online.red.png', 0, 0, 1, 0, 1, '2015-04-15 10:45:22', '2015-04-25 10:15:26'),
(105, 'data/logo.ibjjf.png', 104, 0, 1, 1, 1, '2015-04-15 08:25:36', '2015-04-15 08:25:36'),
(104, 'data/pacotes.viagens.esportivas.png', 0, 1, 1, 1, 1, '2015-04-14 22:59:46', '2015-04-26 10:28:37'),
(87, 'data/pacotes.viagens.jpg', 0, 1, 1, 2, 1, '2015-04-14 17:33:17', '2015-04-25 10:17:33'),
(88, '', 87, 1, 1, 1, 1, '2015-04-14 17:34:46', '2015-04-15 13:56:27'),
(89, 'data/pacotes.california.png', 88, 0, 1, 0, 1, '2015-04-14 22:31:16', '2015-04-14 22:31:16'),
(90, 'data/pacotes.las.vegas.png', 88, 0, 1, 2, 1, '2015-04-14 22:33:58', '2015-04-16 14:26:59'),
(91, 'data/pacotes.nova.york.jpeg', 88, 0, 1, 3, 1, '2015-04-14 22:35:02', '2015-04-16 14:27:31'),
(92, 'data/orlando-disney.jpg', 88, 0, 1, 0, 1, '2015-04-14 22:38:19', '2015-04-26 13:42:07'),
(93, '', 88, 0, 1, 0, 1, '2015-04-14 22:39:56', '2015-04-14 22:39:56'),
(94, '', 88, 0, 1, 0, 1, '2015-04-14 22:41:22', '2015-04-14 22:41:22'),
(95, '', 87, 0, 1, 5, 1, '2015-04-14 22:43:01', '2015-04-15 13:56:02'),
(96, '', 95, 0, 1, 0, 1, '2015-04-14 22:44:01', '2015-04-14 22:44:01'),
(97, '', 95, 0, 1, 0, 1, '2015-04-14 22:44:20', '2015-04-14 22:44:39'),
(98, 'data/pacotes.peru.machu.picchu.jpg', 95, 0, 1, 1, 1, '2015-04-14 22:45:55', '2015-04-29 14:50:17'),
(99, '', 95, 0, 1, 0, 1, '2015-04-14 22:46:55', '2015-04-14 22:46:55'),
(100, 'data/ingressos.orlando.site.jpg', 0, 1, 1, 3, 1, '2015-04-14 22:52:08', '2015-04-26 10:22:26'),
(101, '', 100, 0, 1, 0, 1, '2015-04-14 22:54:07', '2015-04-14 22:54:07'),
(102, 'data/disney-logo2.jpg', 101, 0, 1, 0, 1, '2015-04-14 22:55:08', '2015-04-25 10:53:58'),
(103, 'data/universal.studios.jpg', 101, 0, 1, 0, 1, '2015-04-14 22:55:59', '2015-04-25 10:57:57'),
(111, 'data/servicos.passagem.promocionais.jpg', 0, 1, 1, 5, 1, '2015-04-15 11:27:19', '2015-04-25 10:19:30'),
(112, 'data/nova-zelandia-trem-scenic_rail_pass.jpg', 0, 1, 1, 6, 1, '2015-04-15 12:06:40', '2015-04-25 10:20:06'),
(113, 'data/eurail-passes.jpg', 112, 0, 1, 0, 1, '2015-04-15 12:09:31', '2015-04-15 12:32:26'),
(114, 'data/australia-trem-rail-australia.jpg', 112, 0, 1, 2, 1, '2015-04-15 12:10:54', '2015-04-28 13:02:32'),
(115, 'data/servicos.trem.kiwi.rail.jpg', 112, 0, 1, 0, 1, '2015-04-15 12:18:58', '2015-04-15 12:18:58'),
(116, 'data/via-rail-canada.jpg', 112, 0, 1, 0, 1, '2015-04-15 12:20:15', '2015-04-15 12:20:15'),
(117, '', 112, 0, 1, 0, 1, '2015-04-15 12:20:49', '2015-04-15 12:20:49'),
(118, 'data/pacotes.europa.montagem.jpg', 87, 0, 1, 4, 1, '2015-04-15 13:20:51', '2015-04-15 13:53:52'),
(119, 'data/pacotes.italia.jpg', 118, 0, 1, 0, 1, '2015-04-15 13:24:24', '2015-04-15 13:36:56'),
(120, 'data/pacotes.europa.paris.jpg', 118, 0, 1, 0, 1, '2015-04-15 13:27:12', '2015-04-15 13:36:20'),
(121, 'data/pacotes.europa.inglaterra.jpg', 118, 0, 1, 0, 1, '2015-04-15 13:35:25', '2015-04-15 13:35:25'),
(122, '', 118, 0, 1, 0, 1, '2015-04-15 13:37:47', '2015-04-15 13:37:47'),
(123, '', 118, 0, 1, 0, 1, '2015-04-15 13:38:41', '2015-04-15 13:38:41'),
(124, '', 118, 0, 1, 0, 1, '2015-04-15 13:41:10', '2015-04-15 13:41:10'),
(125, 'data/nova.zelandia.sinal.jpg', 87, 0, 1, 2, 1, '2015-04-15 13:47:27', '2015-05-05 16:58:49'),
(126, 'data/australia-good-day.gif', 87, 0, 1, 3, 1, '2015-04-15 13:47:59', '2015-04-28 13:01:17'),
(127, 'data/Australia_Sydney-tourism.jpg', 126, 0, 1, 0, 1, '2015-04-16 14:11:54', '2015-04-28 10:08:46'),
(128, 'data/melbourne-sign.jpg', 126, 0, 1, 0, 1, '2015-04-16 14:13:49', '2015-04-28 10:18:01'),
(129, 'data/Australia_Cairns_Helmet-Diving.jpg', 126, 0, 1, 0, 1, '2015-04-16 14:15:36', '2015-04-28 11:25:01'),
(130, 'data/australia.cidade.brisbane.jpg', 126, 0, 1, 2, 1, '2015-04-16 14:20:49', '2015-04-28 11:40:25'),
(131, 'data/pacotes.usa.hawaii.jpg', 88, 0, 1, 0, 1, '2015-04-16 14:24:25', '2015-04-16 14:24:25'),
(134, '', 87, 0, 2, 0, 1, '2015-04-26 13:30:17', '2015-04-26 13:30:17'),
(132, 'data/ticket.flexi2.jpg', 101, 0, 1, 0, 1, '2015-04-17 16:01:51', '2015-04-17 16:01:51'),
(135, 'data/ingressos.atracoes.citypass.jpg', 100, 0, 1, 4, 1, '2015-04-27 09:55:02', '2015-04-28 11:03:27'),
(136, 'data/ayers-rock-casal.jpg', 126, 0, 1, 43, 1, '2015-04-28 13:21:32', '2015-04-28 13:21:32'),
(137, 'data/Australia_Darwin_Skyline.jpg', 126, 0, 1, 5, 1, '2015-04-28 13:32:00', '2015-04-28 13:32:00'),
(138, '', 87, 0, 1, 0, 1, '2015-05-05 16:43:17', '2015-05-05 16:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(130, 4, 'Brisbane', '&lt;p&gt;&lt;strong&gt;C&lt;/strong&gt;apital do estado de Queensland, Brisbane é a 3ª maior cidade australiana e um dos destinos mais requisitados entre viajantes e estudantes rumo à Oceania. O lugar se destaca por uma série de predicados para quem vive lá, como qualidade de vida, segurança, clima agradável, agitação urbana, economia portuária e, sobretudo, muitos parques de lazer. Em um ambiente assim, que mistura o moderno e o clássico e ainda é embelezado pelo navegável rio que leva o nome da cidade, os moradores só poderiam ser os mais simpáticos possíveis. E o são!&lt;/p&gt;\r\n\r\n&lt;p&gt;Fundada por britânicos em 1825, Brisbane era uma antiga colônia penal. Hoje, ao ritmo de metrópole em crescente desenvolvimento, é badalada pelos turistas e fica em localização privilegiada, a uma horinha de ônibus ou trem das belas praias de Gold Coast e de outras cidades litorâneas. A graça está em aproveitá-la ao máximo antes de descer para a praia. E olha que demora até se empapuçar.&lt;/p&gt;\r\n\r\n&lt;p&gt;Há muita coisa para curtir e fazer em Brisbane.&lt;/p&gt;\r\n', 'Pacote de viagens terrestre em Brisbane', 'pacotes'),
(136, 4, 'Ayers Rock', '&lt;p&gt;Yulara e Ayers Rock são a porta de entrada para o Uluru-Kata Tjuta National Park. O Centro Vermelho é o coração da Territorio do Norte&amp;nbsp;&lt;/p&gt;\r\n', 'pacote de viagens terrestre para Ayers Rock', 'pacotes'),
(137, 4, 'Darwin', '&lt;p&gt;&lt;strong&gt;Darwin&lt;/strong&gt;, cidade capital do Tropical Território do Norte da é a primeira parada e porta de entrada para a extremidade superior. Ele oferece toda a sofisticação de uma cidade internacional, com restaurantes, hotéis, museus, galerias de arte e vida noturna.&lt;/p&gt;\r\n', 'pacotes turisticos para Darwin', 'pacotes'),
(122, 4, 'Irlanda', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px;&quot;&gt;With the great pubs, lush beauty, and fascinating architecture, there''s no beating a travel package to Ireland.&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
(123, 4, 'Alemanha', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px;&quot;&gt;From fairy-tale villages to the pulsing heart of the cities, travel packages to Germany have it all.&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
(124, 4, 'Croácia ', '', '', ''),
(126, 4, 'Austrália ', '&lt;p&gt;&lt;strong&gt;O&lt;/strong&gt;pções de viagens para a Austrália Planejando uma viagem para a Austrália? Monte seu roteiro conosco, pacotes de viagens em todas as cidades, Passes de Trem &amp;amp; Ônibus e todas as aventuras downunder que você quiser fazer.&lt;/p&gt;\r\n\r\n&lt;p&gt;As belezas naturais e a variedade de vida selvagem, contrastando com as atração e o conforto de cidades modernas, fazem de Austrália um destino turístico incomum.&amp;nbsp;&lt;br /&gt;\r\nO espírito livre da Austrália.&amp;nbsp;&lt;br /&gt;\r\nExperimente a diversidade dessa terra, desde o eterno Centro Vermelho até a beleza revigorante da Grande barreira de Corais. Uma simples pedra emergindo da terra como um gigante coração vermelho, figuras de arenito agrupadas como cidades antigas, assim são as maravilhas únicas pelas quais a Austrália é famosa.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Nos informe quando você quer visitar a Austrália, e uniremos o melhor itinerário para a época do ano que você deseja viajar.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Ilha-Continente de mais de 7,6 milhões de quilômetros quadrados com cidades prósperas. Oferecendo montanhas cobertas de gelo quase permanente, planícies, milhares de quilômetros de praias, bosques frondosos, flores silvestres únicas e pássaros e animais não encontrados em nenhum outro lugar.&lt;br /&gt;\r\nÉ um país onde se pode praticar surfe ou esqui, passar o tempo em praias tropicais.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;A Austrália é dividida em sete Estados e um Distrito Federal: Nova Gales do Sul , Victoria, Austrália Setentrional, Queensland e Tasmânia e o Distrito de Camberra que é a capital .Cada um dos territórios tem um atrativo especial.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Maravilhas únicas&lt;/strong&gt;&lt;br /&gt;\r\nDe Uluru e o Olgas em Northern Territory , Pinnicles e Bungle Bungles Western Australia, ou a Grande Barreira de Corais em Queensland. A Austrália tem muitas maravilhas únicas esperando para serem exploradas.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Beleza natural&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;\r\nDe brilhantes praias até florestas tropicais altas e planícies vermelhas do outback, os 3.400 parques nacionais da Austrália e santuários de vida selvagem oferecem uma beleza natural estonteante e riquezas da cultura Aborígine&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', ''),
(127, 4, 'Sydney', '&lt;p&gt;Sydney é original e tem classe própria!&lt;/p&gt;\r\n\r\n&lt;p&gt;Não há lugar no mundo como Sydney. Com um visual pitoresco de postal, vida noturna glamorosa e tantas coisas para se ver e fazer, a maior cidade da Austrália é um dos grandes destinos no mundo. Sidney é favorecido com um clima ensolarado, excitantes atrações e um bonito porto que sem duvida torna-se o centro de qualquer visita.&lt;/p&gt;\r\n\r\n&lt;p&gt;Não importa o dia do ano, tem tanta coisa para ver e fazer nesta cidade portuária deslumbrante. Visita a&amp;nbsp;&lt;br /&gt;\r\nDarling Harbour e suas excitantes atrações e opções de jantar ou fazer um passeio até o bairro histórico de The Rocks, onde pode conhecer um dos bares mais antigos de Sydney. Compras na fashion Rua Oxford ou se envolver numa atmosfera movimentada nos mercados de fim de semana em Sydney. A cidade mais antiga, grande e cosmopolita da Austrália, esta a espera de ser explorada. Descubra o porto de Sydney escalando-o, &amp;nbsp;num cruzeiro ou apenas caminhando por ele. De todo jeito ficará maravilhado por ele. Veja os ícones mundiais: A Sydney Harbour Bridge, e a maravilhosa arquitetura da Opera de Sydney.&lt;br /&gt;\r\nSe for relaxamento o que procura, experimente uma férias em uma das praias de Sydney e subúrbios próximos. Surf na famosa Praia Bondi ou faça um passeio na balsa de Maanly.&lt;/p&gt;\r\n', 'Pacotes de viagens para Sydney, Australia.', 'pacotes'),
(128, 4, 'Melbourne', '&lt;p&gt;Melbourne é cultural e cosmopolita, moderna e eclética. Lá você vai descobrir uma cidade com uma atmosfera convidativa que gira em torno de restaurantes, lojas e artes. Visite a atraente Federation Square ou o Crown Entertainment Complex para artes, entretenimento e alguns dos melhores restaurantes.&lt;br /&gt;\r\nCompras são ótimas em Melbourne, o Melbourne Central, Queen Victoria Market e GPO valem bem a pena uma visita. Basta um passeio de bonde elétrico pela cidade para conhecer algumas das mais populares atrações de Melbourne – Bridge Road, Richmond e suas lojas de fábrica e barganhas de segunda-mão, a Chapel Street, South Yarra para boutiques, Greville Street, Prahran para bares ecléticos e Acland Street, St Kilda para cafés da moda e patisseries. Melbourne é rica em arte e cultura – Siga até Southbank para explorar o Centro de Artes vitoriana e a coleção internacional da Galeria Nacional de Victoria. Federation Square funde arte com a arquitetura da cidade, enquanto mostra os talentos de artistas e designers locais. Teatros, museus e eventos são abundantes e irá ABResentar a um novo Melbourne.&lt;br /&gt;\r\nComida e vinho são uma paixão nesta cidade com chefs famosos e mestres de vinho do mundo ABResentando o melhor de experiências gastronômicas. Southbank Promenade tem uma grande vista e fica a beira do rio. Muitos tesouros encontram-se sob a superfície e se perder nas vielas, becos e arcadas do centro da cidade é a melhor maneira de descobrir segredos escondidos de Melbourne&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'Pacotes de viagens e turismo para Melbourne', 'pacotes'),
(129, 4, 'Cairns', '&lt;p&gt;&lt;strong&gt;C&lt;/strong&gt;airns é a porta de entrada para o Tropical North Queensland. Esta cidade está repleta de vida noturna, restaurantes, lojas e uma ampla gama de acomodações para todos os bolsos. A maioria das excursões parte de Cairns tornando-se uma base ideal para explorar o melhor que tem para oferecer do Tropical North Queensland. Rafting, balonismo, cruzeiros de mergulho, recifes e passeios na floresta tropical são apenas alguns exemplos da grande variedade de atividades acessíveis quando ficar em Cairns.&lt;/p&gt;\r\n', '', 'pacotes'),
(131, 4, 'Hawaii', '', '', ''),
(110, 4, 'Brasil', '', 'Tarifas  de hoteis negociadas com desconto no Brasil', 'hotelaria'),
(132, 4, 'Orlando FlexTicket', '&lt;p&gt;O Orlando FlexTicket e Orlando FlexTicket Plus são ingressos com desconto, para vários dias e que oferecem &amp;nbsp;acesso ilimitado entre os 5 ou &amp;nbsp;6 parques temáticos principais da Flórida por até 14 (quatorze) dias consecutivos, &amp;nbsp;além de desconto nos estacionamentos.&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Universal’s Island’s of Adventure®&lt;/li&gt;\r\n	&lt;li&gt;Universal Studios®&lt;/li&gt;\r\n	&lt;li&gt;Wet ‘n Wild®&lt;/li&gt;\r\n	&lt;li&gt;Aquatica™&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;SeaWorld® Orlando&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;Busch Gardens® Tampa Bay&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;Sua aventura não terminará quando os parques fecharem. Balada na faixa no mais badalado de Orlando o Universal CityWalk®.&lt;/p&gt;\r\n\r\n&lt;p&gt;Estacionamento voce paga apenas uma vez, mesmo que visite mais de um parque por dia.&lt;/p&gt;\r\n\r\n&lt;p&gt;O Orlando FlexTicket™ Plus inclui tambem&amp;nbsp;&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;Busch Gardens® em Tampa Bay com&amp;nbsp;transporte GRATUITO de ônibus no expresso Busch Gardens Shuttle&lt;/span&gt;&lt;/p&gt;\r\n', 'O Orlando FlexTicket e Orlando FlexTicket Plus são ingressos com desconto, para vários dias e que oferecem  acesso ilimitado entre os 5 ou  6 parques temáticos principais da Flórida por até 14 (quatorze) dias consecutivos,  além de desconto nos estacionam', 'orlando'),
(87, 4, 'PACOTES TURÍSTICOS', '&lt;p&gt;Viaje ao redor do mundo em inspirados pacotes individualmente elaborados, sabendo que as suas férias são de origem local com responsáveis operadores turísticos no destino escolhido. Reservas colocam o dinheiro na economia local e garante que você receberá o melhor valor e conhecimento local inigualável.&lt;/p&gt;\r\n', 'Pacotes de viagens', 'viagem'),
(100, 4, 'INGRESSOS', '&lt;p&gt;&lt;strong style=&quot;line-height: 1.6em;&quot;&gt;Economize em Orlando : Visite a&amp;nbsp;Universal Studios e Disneyworld por Menos&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong style=&quot;line-height: 1.6em;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://daxam.homolog.lojavirtual.digital/image/data/ingressos.orlando.jpg&quot; style=&quot;width: 990px; height: 301px;&quot; /&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Todo mundo adora Disneyworld, mas os preços dos ingressos podem salgar suas férias. Por que não economizar algum dinheiro, encomendando&amp;nbsp;seus &lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;ingressos&lt;/span&gt;?&lt;/p&gt;\r\n\r\n&lt;p&gt;Esta é a forma como funciona - você visita&amp;nbsp;o site e adiciona&amp;nbsp;todos os seus ingressos de Orlando (Disneyworld, Universal Studios &amp;amp; Island of Adventure e&amp;nbsp;etc.) para o seu carrinho de compras, escolha um método de envio (entrega a&amp;nbsp;domicílio é gratuito e rapido, já no hotel de Orlando taxa de US$15) e esperar para receber. Simples assim.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 20.7999992370605px;&quot;&gt;Aproveite de nossos acordos internacionais e tire vantagem dos&amp;nbsp;preços de ingressos sem sobretaxas.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 20.7999992370605px;&quot;&gt;Se preferir, fale com um de nossos consultores 11 2614-4761&lt;/span&gt;&lt;/p&gt;\r\n', 'Ingressos com desconto parques temáticos de Orlando, Florida. Disney, Universal, Island of Adventure, Sea World, Legoland, Busch Gardens, Wet´n Wild, nado com golfinhos, janteres tematicos, show, ', 'ingresso'),
(134, 4, 'Caribe', '', 'Pacotes de viagens para o Caribe', 'caribe'),
(135, 4, 'Atrações', '', 'Ingressos de atracoes ', 'ingressos'),
(118, 4, 'Europa', '', '', ''),
(119, 4, 'Italia', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px;&quot;&gt;Italy vacation packages offer the country''s best art, ancient and modern culture, outstanding cuisine and breathtaking views.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
(120, 4, 'França', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px;&quot;&gt;Enjoy French flower markets, take a stroll along the Mediterranean or shop on the Champs-Elysees during your trip to Europe.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
(121, 4, 'Inglaterra', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 18px;&quot;&gt;European travel packages to England offer the best of Britain''s history and all the must see sites in London.&lt;/span&gt;&lt;/p&gt;\r\n', '', ''),
(88, 4, 'Estados Unidos', '', '', ''),
(89, 4, 'California', '', '', ''),
(90, 4, 'Las vegas', '', '', ''),
(91, 4, 'Nova York', '', '', ''),
(92, 4, 'Orlando Disney', '', '', ''),
(93, 4, 'Miami', '', '', ''),
(94, 4, 'Cruzeiros Miami, Tampa e Cabo Canaveral', '', '', ''),
(95, 4, 'America do Sul', '', '', ''),
(96, 4, 'Buenos Aires', '', '', ''),
(97, 4, 'Bariloche', '', '', ''),
(98, 4, 'Machu Picchu', '', '', ''),
(99, 4, 'Santiago', '', '', ''),
(101, 4, 'Parques Temáticos', '', '', ''),
(102, 4, 'Disney Orlando', '', '', ''),
(103, 4, 'Universal Orlando', '', '', ''),
(104, 4, 'Viagens Esportivas', '&lt;p&gt;&lt;strong&gt;Viagens Esportivas não é um jogo para amadores.&lt;/strong&gt;&lt;br /&gt;\r\nLevando equipes esportivas onde precisam estar e quando precisam estar, não é algo que pode ser deixado ao acaso. O fracasso não é uma opção, não importa qual circunstância. É exatamente por isso equipes, treinadores e empresas contam com a Daxam como profissional de viagens para fazer o trabalho feito.&lt;/p&gt;\r\n\r\n&lt;p&gt;Somos especialistas em viagens de esportes e sabemos tudo sobre como lidar com viagem atlética. Além de fretar aviões, bloqueando centenas de assentos aéreos e quartos em hotéis para os atletas, também oferecemos viagens para os seus entusiastas, fãs leais e ex-alunos para os torneios, jogos de campeonato e competições internacionais.&lt;/p&gt;\r\n', 'Viagens Esportivas para grupos de atletas de maratona, jiu-jitsu, natacao, ciclismo e futebol.', 'campeonato'),
(105, 4, 'Campeonatos CBJJ &amp; IBJJF', '', 'Pacote de viagens com desconto para atletas que competem os campeonatos da CBJJ &amp; IBJJF.', ''),
(106, 4, 'Corrida', '', '', ''),
(107, 4, 'Futebol', '', '', ''),
(108, 4, 'HOTÉIS', '', '', ''),
(109, 4, 'Internacional', '', '', ''),
(111, 4, 'PASSAGENS AÉREAS', '', '', ''),
(112, 4, 'TREM', '', '', ''),
(113, 4, 'Europa', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://daxam.homolog.lojavirtual.digital/image/data/certified-european-rail-expert.jpg&quot; style=&quot;width: 254px; height: 60px; float: left;&quot; /&gt;Viajar de trem pela Europa é uma experiência única e na Daxam Viagens sabemos disso. A emoção da alta velocidade, a comodidade, as paisagens, os preços atrativos.&amp;nbsp;&lt;br /&gt;\r\nEncontre tudo de trem pela Europa com a Daxam Viagens.&lt;br /&gt;\r\nConheça as melhores cidades da Europa e como viajar entre elas usando a melhor maneira de viajar pela Europa: em trem. Obtenha informações sobre trens na Europa, passes de trem, promoções e descontos.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Você pode comprar e reservar trens europeus ligando para 11 2614-4761&lt;br /&gt;\r\nUm passe de trem permite você viajar através &amp;nbsp;de vários países por um período específico com paradas e quilometragem ilimitadas.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://daxam.homolog.lojavirtual.digital/image/data/europa_rail_europe.jpg&quot; style=&quot;width: 320px; height: 480px; float: left;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', ''),
(114, 4, 'Austrália', '&lt;p&gt;Você é do tipo independente? Gosta de ficar livre para ir quando e onde quiser. &amp;nbsp;Pegue um passe trem Rail Austrália e explore todos os cantos Down Under. Clique aqui&lt;br /&gt;\r\nArrumando um passe de acomodação com antecedência faz sentido se você está pensando em viajar livre. &amp;nbsp;Tanto faz &amp;nbsp;pré-reservar &amp;nbsp;ao da longo sua rota, ou se está realmente à procura de total flexibilidade e liberdade, você pode comprar seus vouchers e reservar a sua acomodação quando necessário durante a viagem - É a garantia de que você vai passar as suas férias vendo visuais &amp;nbsp;e não à procura de algum lugar onde ficar&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'viagens e passes de trem na Australia', 'trem'),
(115, 4, 'Nova Zelândia ', '', '', ''),
(116, 4, 'Canada', '', '', ''),
(117, 4, 'Brasil', '', '', ''),
(125, 4, 'Nova Zelândia ', '&lt;p&gt;&lt;strong style=&quot;line-height: 1.6em;&quot;&gt;&amp;nbsp;I&lt;/strong&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;solada pelos vastos mares do sul, Nova Zelândia é uma terra da beleza de cenários maravilhosos ­com a espetacular linha costeira recortadas por baías de árvores-alinhadas, por canais e por penhascos; magníficas montanhas glaciais que aparecem sobre fiordes, lagos e canais; vulcões que elevam-se acima do deserto árido; regiões termais e infinitas planícies douradas; densa floresta subtropical; e quilômetros e quilômetros de campo largamente aberto pronto para explorar.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Há também cidades dinâmicas, calmas e charmosas vilas, magníficas vinícolas, fazendas férteis, vastas estações de carneiros e lugares remotos onde o espírito dos antigos Maoris o abrange.&amp;nbsp;&lt;br /&gt;\r\nA Nova Zelândia com seus 8.000km de Trilhas para Caminhadas, 15.700km de Litoral, têm Cidades Vibrantes e Mais Divertimento do que Você Pode Imaginar, um Continente em apenas duas ilhas!&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;A Nova Zelândia é um destino para o ano todo. As estações são como as nossas.&lt;br /&gt;\r\nA primavera (&lt;strong&gt;Setembro-Novembro&lt;/strong&gt;) é a melhor estação das ovelhas e o tempo em que as flores e as árvores florescendo estão cheias.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;O verão (&lt;strong&gt;Dezembro-Fevereiro&lt;/strong&gt;) é grande para hiking, acampar e esportes da água.&lt;/p&gt;\r\n\r\n&lt;p&gt;O outono (&lt;strong&gt;Março-Maio&lt;/strong&gt;) é ligeiramente mais fresco, mas as flamejantes folhagem em queda permitem uma estadia deliciosa para os viajantes. É melhor evitar os feriados de Páscoa e o feriado escolar neozelandês de duas semanas em maio.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;O inverno (&lt;strong&gt;Junho-Agosto&lt;/strong&gt;) é o momento perfeito de viagem para os skiers e os snowboarders que querem experimentar inclinações do hemisfério sul na sua melhor opção. O clima suave não limitará muitas de suas atividades e você beneficia-se de poucas multidões.&lt;/p&gt;\r\n\r\n&lt;p&gt;Esteja ciente, entretanto, que algumas das melhores rotas de hiking, tais como a trilha de Milford, estão somente abertas de novembro a abril.&lt;/p&gt;\r\n\r\n&lt;p&gt;É uma terra de contrastes&amp;nbsp;e conhecidamente imprevisível.&lt;/p&gt;\r\n\r\n&lt;p&gt;Junto com Austrália, Nova Zelândia é um dos dois países no Pacífico Sul habitados predominantemente por imigrantes de origem européia. Nova Zelândia é um país novo com a vitalidade da fronteira. Os primeiros colonos britânicos chegaram mais ou menos há 150 anos . As barreiras naturais das montanhas severas a mata densa confinaram a maior parte da colonização na costa, e hoje a maioria das cidades principais limitam o mar. Acoplada a uma forte influência britânica ­a cultura Maori em suas raízes mais profundas, que adiciona um graciosidade subjacente de polinésios e uma atitude descontraída.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sua remota posição deu forma a um povo auto suficientes, cujo espírito independente, as idéias naturais e o genuíno companheirismo são contagiosos. Estão ansiosos para ajudar a viajantes em cada volta, mas somente se pedidos, e somente se pedidos polidamente! Neozelandeses, ou os Kiwis como se chamam, são alguns do mais respeitosos e educados povos na terra e respondem favorável à mesma aproximação dos visitantes.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Nova Zelândia é o paraíso dos aventureiros.&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Você terá a disposição escolhas de todos os gostos para explorar esta terra surpreendente.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Onde mais você&amp;nbsp;pode caminhar, pedalar, mochilar, acampar, esquiar, explorar cavernas, escala uma geleira, velejar, kayakar no mar, windsurfar, e muito, muito mais.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Uma das belezas de uma viagem a Nova Zelândia é que você pode fazê-lo com atividades ou simplesmente relaxando como você quer&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://daxam.homolog.lojavirtual.digital/image/data/Nova_Zelandia_pacotes_economicos.jpg&quot; style=&quot;opacity: 0.9; line-height: 20.7999992370605px; width: 450px; height: 244px; float: left;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'pacotes de viagens para Nova Zelandia', 'pacotes'),
(138, 4, 'Pacotes em promoção', '&lt;iframe src=&quot;http://pacotes.mmtgapnet.com.br/WhiteLabel/HomeNx.aspx?Token=48b04c59-b217-4157-9db5-ae60024eedc1&quot; name=&quot;I1&quot; id=&quot;I1&quot; frameborder=&quot;0&quot; scrolling=&quot;yes&quot; style=&quot;height: 100%; width: 1038px;&quot; &gt;&lt;/iframe&gt;', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(135, 100, 0),
(110, 108, 0),
(109, 109, 1),
(107, 107, 1),
(109, 108, 0),
(108, 108, 0),
(106, 104, 0),
(107, 104, 0),
(106, 106, 1),
(105, 105, 1),
(105, 104, 0),
(104, 104, 0),
(103, 103, 2),
(103, 100, 0),
(103, 101, 1),
(102, 102, 2),
(102, 100, 0),
(114, 112, 0),
(113, 113, 1),
(113, 112, 0),
(112, 112, 0),
(111, 111, 0),
(135, 135, 1),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(134, 134, 1),
(33, 33, 0),
(34, 34, 0),
(37, 34, 0),
(37, 37, 1),
(38, 34, 0),
(38, 38, 1),
(39, 34, 0),
(39, 39, 1),
(40, 34, 0),
(40, 40, 1),
(41, 34, 0),
(41, 41, 1),
(42, 34, 0),
(42, 42, 1),
(43, 34, 0),
(43, 43, 1),
(44, 34, 0),
(44, 44, 1),
(47, 34, 0),
(47, 47, 1),
(48, 34, 0),
(48, 48, 1),
(49, 34, 0),
(49, 49, 1),
(50, 34, 0),
(50, 50, 1),
(51, 34, 0),
(51, 51, 1),
(52, 34, 0),
(52, 52, 1),
(58, 34, 0),
(58, 52, 1),
(58, 58, 2),
(53, 34, 0),
(53, 53, 1),
(54, 34, 0),
(54, 54, 1),
(55, 34, 0),
(55, 55, 1),
(56, 34, 0),
(56, 56, 1),
(110, 110, 1),
(88, 87, 0),
(134, 87, 0),
(87, 87, 0),
(102, 101, 1),
(101, 101, 1),
(101, 100, 0),
(100, 100, 0),
(99, 99, 2),
(99, 95, 1),
(99, 87, 0),
(98, 98, 2),
(98, 95, 1),
(98, 87, 0),
(97, 95, 1),
(97, 87, 0),
(97, 97, 2),
(96, 96, 2),
(96, 95, 1),
(96, 87, 0),
(95, 95, 1),
(95, 87, 0),
(94, 94, 2),
(94, 88, 1),
(94, 87, 0),
(93, 93, 2),
(93, 88, 1),
(93, 87, 0),
(92, 92, 2),
(92, 87, 0),
(92, 88, 1),
(91, 91, 2),
(91, 88, 1),
(91, 87, 0),
(90, 90, 2),
(90, 88, 1),
(90, 87, 0),
(89, 89, 2),
(89, 88, 1),
(89, 87, 0),
(88, 88, 1),
(114, 114, 1),
(115, 112, 0),
(115, 115, 1),
(116, 112, 0),
(116, 116, 1),
(117, 112, 0),
(117, 117, 1),
(118, 87, 0),
(118, 118, 1),
(119, 118, 1),
(119, 87, 0),
(119, 119, 2),
(120, 118, 1),
(120, 87, 0),
(120, 120, 2),
(121, 87, 0),
(121, 118, 1),
(121, 121, 2),
(122, 87, 0),
(122, 118, 1),
(122, 122, 2),
(123, 87, 0),
(123, 118, 1),
(123, 123, 2),
(124, 87, 0),
(124, 118, 1),
(124, 124, 2),
(125, 87, 0),
(125, 125, 1),
(126, 87, 0),
(126, 126, 1),
(127, 126, 1),
(127, 87, 0),
(127, 127, 2),
(128, 126, 1),
(128, 87, 0),
(128, 128, 2),
(129, 126, 1),
(129, 87, 0),
(129, 129, 2),
(130, 87, 0),
(130, 126, 1),
(130, 130, 2),
(131, 87, 0),
(131, 88, 1),
(131, 131, 2),
(132, 100, 0),
(132, 101, 1),
(132, 132, 2),
(136, 87, 0),
(136, 126, 1),
(136, 136, 2),
(137, 87, 0),
(137, 126, 1),
(137, 137, 2),
(138, 87, 0),
(138, 138, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
`country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(240, 'Jersey', 'JE', 'JEY', '', 1, 1),
(241, 'Guernsey', 'GG', 'GGY', '', 1, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
`coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
`coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
`coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
`currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Real', 'BRL', 'R$ ', '', '2', 1.00000000, 1, '2015-05-27 19:25:12'),
(7, 'Dolar Australiano', 'AUD', 'AU$', '', '2', 0.41040000, 1, '2015-05-27 07:08:45'),
(12, 'Dolar Americano', 'USD', 'US$', '', '2', 0.31729999, 1, '2015-05-27 07:08:45'),
(8, 'Dolar Neozelandes', 'NZD', 'NZ$', '', '2', 0.43849999, 1, '2015-05-27 07:08:45'),
(9, 'Dolar Canadense', 'CAD', 'C$', '', '2', 0.39500001, 1, '2015-05-27 07:08:45'),
(11, 'Euro', 'EUR', '€', '', '2', 0.29110000, 1, '2015-05-27 07:08:45'),
(10, 'Libra Esterlina', 'GBP', '£', '', '2', 0.20620000, 1, '2015-05-27 07:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
`customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES
(1, 0, 'Demo', 'Demo', 'admin@admin.com', '555555555555', '', 'a8e36cf1a623773890e55496017a9652ea345a11', '5f5dd0642', 'a:2:{s:4:"43::";i:2;s:4:"29::";i:1;}', 'a:12:{i:0;s:2:"40";i:1;s:2:"29";i:2;s:2:"35";i:3;s:2:"30";i:4;s:3:"42;";i:5;s:3:"30;";i:6;s:2:"45";i:7;s:2:"42";i:8;s:2:"49";i:9;s:2:"46";i:10;s:2:"34";i:11;s:2:"43";}', 0, 1, 1, '192.168.9.1', 1, 1, '', '2014-01-14 09:29:45'),
(2, 0, 'Alessandro', 'Ohl', 'alessandroohl@gmail.com', '1126144761', '', 'e7f03640cb88bd6fd7952b1bef07f0a350c084de', 'cd9344d0b', 'a:0:{}', '', 1, 2, 1, '189.102.25.78', 1, 1, '', '2015-04-27 14:45:42'),
(3, 0, 'Rodrigo', 'Faque', 'alex@daxam.com.br', '1126144761', '', '014c8bcc12ae8d3e8f742ac24223beb98314fe7d', 'be95f88c1', 'a:0:{}', 'a:3:{i:0;s:2:"51";i:1;s:2:"65";i:2;s:2:"58";}', 1, 3, 1, '189.102.25.78', 1, 1, '', '2015-05-05 15:28:25'),
(4, 0, 'Fernando', 'Mendes', 'fernando.mendes@webca.com.br', '11976495157', '', '53873884d991e5690bbf4615aabad087e2fa5222', '36cb1c9f3', 'a:0:{}', '', 0, 4, 1, '127.0.0.1', 1, 1, '', '2015-05-27 07:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ban_ip`
--

CREATE TABLE `oc_customer_ban_ip` (
`customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_field`
--

CREATE TABLE `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
`customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES
(1, 0, 1, 0, 0, 1, 10),
(2, 0, 0, 0, 0, 0, 1),
(3, 0, 0, 0, 0, 0, 2),
(4, 1, 1, 1, 0, 0, 3),
(5, 0, 0, 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 4, 'Default', 'test'),
(2, 4, 'Cliente Web', ''),
(3, 4, 'Jiu-Jitsu', ''),
(4, 4, 'Agencias de Viagens', ''),
(5, 4, 'Corrida de Rua', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
`customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
`customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '192.168.9.1', '2014-01-14 09:29:51'),
(2, 2, '189.102.25.78', '2015-04-27 14:45:43'),
(3, 3, '189.102.25.78', '2015-05-05 15:28:26'),
(4, 4, '127.0.0.1', '2015-05-27 07:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('127.0.0.1', 4, 'http://daxam.homolog.lojavirtual.digital/aaa', '', '2015-05-27 19:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
`customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
`customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
`custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_to_customer_group`
--

CREATE TABLE `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
`custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
`download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_download`
--

INSERT INTO `oc_download` (`download_id`, `filename`, `mask`, `remaining`, `date_added`) VALUES
(1, '3_edicao_manual_menores.pdf.d78b5848235f4c4661ec11d163989ba4', '3_edicao_manual_menores.pdf', 1, '2015-04-24 08:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_download_description`
--

INSERT INTO `oc_download_description` (`download_id`, `language_id`, `name`) VALUES
(1, 4, '3_edicao_manual_menores');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
`extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=509 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(497, 'feed', 'google_base'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(468, 'module', 'latest'),
(390, 'total', 'credit'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(445, 'module', 'filter'),
(464, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(444, 'module', 'featured'),
(440, 'module', 'banner'),
(467, 'module', 'information'),
(465, 'module', 'affiliate'),
(466, 'module', 'bestseller'),
(492, 'module', 'vqmod_manager'),
(449, 'module', 'special'),
(496, 'payment', 'pagseguro'),
(493, 'module', 'compare'),
(494, 'module', 'newcarousel'),
(495, 'shipping', 'correios'),
(498, 'feed', 'google_sitemap'),
(499, 'payment', 'bank_transfer'),
(500, 'payment', 'cheque'),
(503, 'module', 'addist_installer'),
(505, 'module', 'product_currency'),
(506, 'module', 'product_currency'),
(508, 'payment', 'boleto_cef_sigcb');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
`filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
`filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 4, 'ingresso');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
`geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
`information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 0),
(8, 1, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(4, 4, 'Sobre a Daxam', '&lt;div class=&quot;about-page&quot;&gt;&amp;nbsp;\r\n&lt;div class=&quot;extra-wrap&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://daxam.homolog.lojavirtual.digital/image/data/Daxa_Logo.jpg&quot; style=&quot;opacity: 0.9; line-height: 20.8000011444092px; width: 350px; height: 243px; float: left;&quot; /&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Daxam é uma agencia de viagens licenciada, com uma equipe de profissionais com mais de 15 anos atuando na indústria do Turismo. Sólida experiência em operações turísticas online e toda sua logística, no desenvolvimento de novos negócios e parcerias estratégicas junto a grandes&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;corporações. &amp;nbsp;&lt;/span&gt;\r\n&lt;p&gt;Somos especialistas em viagens de esportes e sabemos tudo sobre como lidar com viagem atlética. Além de fretar aviões, bloqueando centenas de assentos aéreos e quartos em hotéis para os atletas, também oferecemos viagens para os seus entusiastas, fãs leais e ex-alunos para os torneios, jogos de campeonato e competições internacionais.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Para sua maior comodidade, temos escritórios localizados em São Paulo no Campo Belo e em Orlando, Flórida.&lt;/p&gt;\r\n\r\n&lt;p&gt;Vá para a Disney com especialistas desde 1991 nesse destino. &amp;nbsp;Conhecemos os melhores locais para compras e enxovais, alem de um atendimento pessoal em Orlando. Tire proveito de nossas tarifas negociadas e ingressos com descontos. Receptivo local com licença da policia local para operar no aeroporto do Orlando.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Viaje ao redor do mundo em inspirados pacotes individualmente elaborados, sabendo que as suas férias são de origem local com responsáveis operadores turísticos no destino escolhido. Reservas colocam o dinheiro na economia local e garante que você receberá o melhor valor e conhecimento local inigualável.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n'),
(3, 4, 'Política de privacidade    ', '&lt;div class=&quot;about-page&quot;&gt;\r\n&lt;p&gt;&lt;strong&gt;Política de privacidade&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;A DAXAM TOUR OPERATOR mantém forte compromisso com a proteção da privacidade dos usuários de seus serviços. Queremos contribuir para que os internautas usufruam de um ambiente seguro e protegido e, em particular, garantir que as informações originadas ou destinadas às lojas estejam protegidas.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Confidencialidade&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;A DAXAM TOUR OPERATOR não revelará nem compartilhará informações sobre lojas e respectivos visitantes com nenhuma outra empresa ou organização sem o consentimento formal do lojista que proporciona as informações, salvo quando exigido por Lei ou mediante solicitação de autoridades governamentais e/ou ordem judicial.&lt;/p&gt;\r\n\r\n&lt;p&gt;Além dos dados fornecidos nos formulários de inscrição das lojas e nos respectivos cadastros de produtos, clientes e pedidos, informações são obtidas automaticamente quando o visitante navega pelo site do Daxam.com.br ou pelas lojas criadas com esta tecnologia. Estas informações incluem o sistema operacional, o endereço IP e o navegador utilizado pelo visitante, quais as lojas visitadas por este e as respectivas URLs de origem (&quot;REFERER&quot;).&lt;/p&gt;\r\n\r\n&lt;p&gt;Esse conjunto de dados permite ao Daxam.com.br analisar com detalhes o tráfego de cada loja, possibilitando-nos, assim, aprimorar nossos serviços. Desta maneira, proporcionamos aos nossos lojistas e visitantes um serviço mais seguro e personalizado.&lt;/p&gt;\r\n\r\n&lt;p&gt;Os &quot;cookies&quot; mantidos pelo Daxam.com.br no computador do visitante têm como único objetivo facilitar as futuras compras nas lojas, automatizando o preenchimento de formulários e armazenando preferências de uso.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Segurança&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;A DAXAM TOUR OPERATOR tem adotado os níveis legalmente requeridos quanto à segurança na proteção de dados e procura instalar todos os meios e medidas adicionais para evitar a perda, mau uso, alteração, acesso não autorizado ou subtração indevida das informações recolhidas.&lt;/p&gt;\r\n\r\n&lt;p&gt;Dados cadastrados pelos lojistas e seus clientes, tais como nome, endereço e número de cartão de crédito, são protegidos por sistemas avançados de criptografia (SSL) enquanto são enviados e mantidos em sigilo nos servidores do Daxam.com.br. Não obstante, o usuário deve estar ciente de que as medidas de segurança relativas à Internet não são integralmente infalíveis.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&amp;nbsp;Alterações nesta política&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;A DAXAM TOUR OPERATOR reserva-se o direito de modificar a presente política para adaptá-la às alterações legislativas ou jurisprudenciais, ou aquelas relativas às práticas comerciais. Em qualquer caso, anunciaremos, por meio desta página, as mudanças introduzidas com uma antecedência razoável à sua colocação em prática.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(6, 4, 'Entrega da documentação de Viagem', '&lt;div class=&quot;about-page&quot;&gt;\r\n&lt;p&gt;Os documentos de viagens (vouchers e bilhete aéreo), somente serão liberados, após o recebimento pela Daxam do pagamento correto e integral do pacote, e do recebimento de toda documentação necessária: Contrato de viagem e ficha cadastral devidamente assinados, junto a copia do RG, CPF e comprovante de residência.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Pacotes aéreos: copia do contrato, vouchers de hospedagem, voucher de receptivo, voucher de seguro de assistência viagem, bilhete aéreo, etiqueta de bagagem.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Pacotes rodoviários: copia do contrato e voucher de passagem rodoviária (Os vouchers de hospedagem, serviços e seguros, são emitidos em nome do grupo, e permanecerão em poder do guia acompanhante. A etiqueta de bagagem será entregue no embarque pelo guia acompanhante.)&lt;/p&gt;\r\n\r\n&lt;p&gt;Leia com atenção todos os dados (como nome dos passageiros, datas, hotéis e serviços) registrados nos documentos a fim de evitar erros, enganos e transtornos. Na duvida de alguma informação ou termo utilizado, consulte o seu agente de viagem ou nossa equipe de atendimento.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Lembramos que toda e qualquer alteração ou correção fica sujeita a cobrança e disponibilidade.&lt;/p&gt;\r\n\r\n&lt;p&gt;Todos os documentos (vouchers e bilhetes aéreos) podem ser enviados por email, se assim entender mais prático. Além disso, esta opção respeita o meio ambiente, evitando a impressão de papeis.&amp;nbsp;&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(7, 4, 'Reserve seu hotel', '&lt;p&gt;&lt;iframe height=&quot;600&quot; scrolling=&quot;no&quot; src=&quot;http://tpb1.cangooroo.net/PesquisaHotel/Default.aspx?U=3exzfit6QsFb4k5aefsscLUui1hjnMjLD7wI5qvaDB4%3d&amp;amp;S=vWbY%2bbzgiuxEhxhoV8aDVTUt49xqQhNaf5ldJv%2fDu8ATQrhhwldLWiCheEFIdTCBa7bi%2fbgaAnpnkNzzqhvBFGam64VUXbky&amp;amp;Popup=&quot; width=&quot;100%&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n'),
(8, 4, 'FAQ Austrália ', '&lt;p&gt;A seguir estão algumas das perguntas mais feitas sobre a viagem ao destino.&amp;nbsp;&lt;br /&gt;\r\nSinta-se livre para nos chamar.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Que roupa devo levar?&lt;/strong&gt;&lt;br /&gt;\r\nA Austrália é um país razoavelmente casual, o que se reflete nos trajes dos habitantes locais. A não ser que queira participar de uma performance da Ópera ou jantar em um restaurante chique, senhores podem se sentir mais confortáveis em um paletó. Para estar preparado para qualquer tempo, use o sistema de camadas. Vestir uma t-shirt, mas carregar uma blusa de lã e jaqueta leve impermeável em uma mochila, para que você esteja pronto para todas as condições. Sapatos confortáveis são um must.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;É verdade que há água-viva venenosa nas águas ao redor de Cairns?&lt;/strong&gt;&lt;br /&gt;\r\nSim, de cerca de dezembro a março, mas tem áreas designadas de natação, que existem para manter o &quot;ferrões&quot; longe e de modo que você pode nadar no oceano. As Ilhas da Great Barrier Reef geralmente não são afetadas, e todos os hotéis têm piscinas.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;O que você recomenda regiões que visito?&lt;/strong&gt;&lt;br /&gt;\r\nAustrália tem muitas experiências para oferecer, nós vamos conversar com você sobre atividades que você está interessado, o seu orçamento, seu estilo de férias e podemos elaborar juntos um itinerário realmente original e criativo que irá atender exatamente às expectativas que você tem. É pra isso que estamos aqui!&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;strong&gt;Com quanto tempo de antecedência devo reservar?&lt;/strong&gt;&lt;br /&gt;\r\nO quanto antes na medida do possível, para evitar decepções nos hotéis procurados. Um depósito de AUD300 nos permitirá confirmar os serviços e manter a sua reserva até o pagamento final devido. Nós vamos fornecer termos e condições completos com a sua citação.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Qual é o clima, quando devo viajar?&lt;/strong&gt;&lt;br /&gt;\r\nA Austrália é tão grande quanto o Brasil, clima similar ao nosso e como nós as vezes neva na Sul . As estações do ano são como a nossa quente e chuvosa, de dezembro a fevereiro e as áreas do sul são mais frias, embora raramente de neve, de julho a setembro. Os meses mais suaves para todos os roteiros são março e abril, e outubro e novembro.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Qual a documentação que eu preciso para a Austrália?&lt;/strong&gt;&lt;br /&gt;\r\nPara entrar na Austrália você precisa de um passaporte válido por pelo menos seis meses após a data de sua partida e ter obitdo o visto de turista junto a Embaixada Australiana através do formulário online no link &lt;a href=&quot;http://www.brazil.embassy.gov.au/brasportuguese/Visas_and_Migration.html&quot;&gt;http://www.brazil.embassy.gov.au/brasportuguese/Visas_and_Migration.html&lt;/a&gt;&lt;br /&gt;\r\nObtenção de passaporte e visto são de responsabilidade do passageiro.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Quanto tempo devo passar na Austrália?&lt;/strong&gt;&lt;br /&gt;\r\nA maioria das pessoas acham que 2 semanas é a quantidade certa de tempo para visitar 3 regiões. Se você tem mais tempo, você vai ver mais.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Eu perco um dia?&lt;/strong&gt;&lt;br /&gt;\r\nNo caminho para a Austrália, você vai pular um dia no calendário quando você cruza a data limite, mas o inverso acontece no caminho de volta e você não perde nada. Veja como funciona: Se você deixar o Brasil via Santiago do Chile em uma noite de segunda-feira, você vai chegar na Austrália, na manhã de quarta-feira. Se você deixar a Austrália na segunda-feira você vai chegar de volta ao Brasil na segunda-feira, no mesmo dia.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Quanto tempo é o vôo de São Paulo para Sydney?&lt;/strong&gt;&lt;br /&gt;\r\nNão existem voos diretos do Brasil para a Austalia, a partir de Santiago do Chile e Buenos Aires são 14 horas non-stop, ou, como gostamos de dizer: Duas boas refeições, todos os vinhos australianos e licores, e filmes ilimitados grátis. Sério, pelo tempo você tem coquetéis, comida, relaxar com um livro ou um filme, dormir e comer de novo, você está lá. Suas férias começam a decolar.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Opções de vôos&lt;/strong&gt;&lt;br /&gt;\r\nA Qantas e a Lan tem vôos para Sydney, a partir de São Paulo com conexão em Santiago e escala em Auckland. Se não se importar com serviço e conforto Aerolineas Argentinas oferece vôos para Sydney partindo de São Paulo com conexão em Buenos Aires. Também é possível ir via Johanesburgo - África do Sul através da South African Airways e com a Emirates. A melhor opção é o codeshare Qantas/Lan&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Quanto custa uma viagem para a Austrália?&lt;/strong&gt;&lt;br /&gt;\r\nIsso é quase tão difícil responder como o quanto a sua remodelação da casa vai custar, tudo depende do que você pretende fazer. Mas se você quer apenas uma idéia geral, veja nossos pacotes que são válidos praticamente todo o ano.&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Embaixada da Austrália &lt;a href=&quot;http://www.brazil.embassy.gov.au&quot; target=&quot;_blank&quot;&gt;http://www.brazil.embassy.gov.au&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n'),
(5, 4, 'Termos &amp; Condições', '&lt;div class=&quot;about-page&quot;&gt;\r\n&lt;p&gt;Pelo instrumento particular de adesão, DAXAM TOUR OPERATOR &amp;nbsp;inscrita no C.N.P.J. nº 19.486.880/0001-86, com sede e foro jurídico nesta capital do Estado de São Paulo, abaixo qualificada e seu passageiro adquirente estabelecem as seguintes condições para a realização da excursão, conforme os termos das Cláusulas das Condições Gerais abaixo estabelecidas:&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 1ª: A DAXAM TOUR OPERATOR é responsável pelo planejamento, organização e execução do roteiro e programa determinado, sendo intermediária entre clientes e demais prestadores de serviços envolvidos (pessoas físicas ou jurídicas), ou seja, empresas de transportes, hotéis, restaurantes, guias, etc, respondendo pela sua escolha nos termos da lei civil no que couber e no código de defesa do consumidor.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 2ª: A DAXAM TOUR OPERATOR atua como intermediária entre seus clientes e prestadores de serviços, nacionais e internacionais, declinando a sua responsabilidade por todo e qualquer problema, perdas ou danos, resultantes de serviços prestados por seus fornecedores fora das especificações dos mesmos, ou ainda por decorrência de casos fortuitos ou de força maior tais como greves, distúrbios, quarentenas, guerras; fenômenos naturais, terremotos, furacões, enchentes, avalanches, modificações, atrasos e/ou cancelamento de trajetos aéreos devido a motivos técnicos, mecânicos e/ou meteorológicos, que por nenhum dos quais a DAXAM TOUR OPERATOR não possui poder de previsão ou controle.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 3ª: A realização da viagem, bem como o cumprimento de todo o roteiro e serviços, fica condicionado à consolidação de um grupo mínimo de 30 (trinta) passageiros. Caso não se complete a quantidade exigida, com 07 (sete) dias de antecedência da data marcada para a viagem, a DAXAM TOUR OPERATOR se reserva o direito de cancelá-la, devolvendo &amp;nbsp;integralmente os valores pagos e se comprometendo a auxiliar o passageiro a escolher outros meios para desempenhar seus objetivos, caberá somente o passageiro os custos adicionais;&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 4ª: A DAXAM TOUR OPERATOR não se responsabiliza por perda, furto ou extravio de bagagens, limitando-se às normas da ANTT contidas na resolução nº 18 de 23 de maio de 2002, do&amp;nbsp;Ministério dos Transportes. Caberá o passageiro, procurar a empresa de transporte terrestre onde poderá tomar as devidas providencias de acordo com a política disposta contratualmente da empresa.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 5ª: No valor da excursão não estão incluídas despesas de caráter pessoal como: bebidas, refeições, compras, taxas, táxis, lavanderia, consumo de quarto, telefonemas e todo e qualquer serviço que não esteja especificado no programa, ficando por conta do passageiro os ônus do que fizerem uso.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 6ª: Em caso de desistência, independente de motivo ou alegação, esta deverá ser comunicada por escrito e serão cobradas multas da seguinte maneira:&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;- até 30 (trinta) dias antes da saída - multa de 30% &amp;nbsp;de 29 a 20 dias antes da saída&amp;nbsp;&lt;br /&gt;\r\n- multa de 50%; de 19 a 10 dias antes da saída&lt;br /&gt;\r\n- multa de 80%; de 09 a 05 dias antes da saída&amp;nbsp;&lt;br /&gt;\r\n- multa de 100%; aquém de 4 (quatro) dias antes da saída será considerado desistência ou abandono sem restituição ou reembolso dos valores pagos, devendo ainda adimplir às parcelas que estão por vencer;&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 7ª: Nos horários estabelecidos para saída da excursão, passeios ou traslados, só será dada a tolerância de 15(quinze) minutos. Decorrido este tempo a DAXAM TOUR OPERATOR entende como&amp;nbsp;desistência do serviço oferecido, sem direito a restituição, devolução ou compensação;&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 8ª: A DAXAM TOUR OPERATOR se reserva o direito de desligar da excursão o passageiro que se recuse a obedecer às normas disciplinares, conforme Estatuto da EMBRATUR, correndo por sua conta as despesas referentes ao seu retorno, configurando-se desistência e abandono;&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 9ª: Em caso de intempéries da natureza ou outros transtornos alheios ao controle da DAXAM TOUR OPERATOR, tais como: ventanias, tempestades, chuvas torrenciais, alagamentos, greves, decisões governamentais, manifestações populares etc., que causem fechamento de estradas, atrasos de percurso ou evacuação de hotéis e que provoquem o cancelamento dos serviços ou a sua interrupção, a DAXAM TOUR OPERATOR se exime de qualquer responsabilidade, cabendo-lhe a incumbência de proteger os passageiros, dando-lhes toda a assistência necessária quanto a segurança e bem estar. As despesas adicionais decorrentes, tais como estada prolongada, alimentação e demais serviços extras correm por conta do passageiro e deverão ser quitados no ato.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 10ª: A agência se reserva o direito de cobrar do passageiro ônus proveniente de devolução de cheques.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 11ª: No ato da aquisição, o(s) passageiro(s) opta(m) pela tipo de apartamento a ser utilizado. Em caso de acomodação a compartilhar, cabe à DAXAM TOUR OPERATOR indicar outro(s) passageiro(s) afim(ns). Se não houver o complemento dessa venda conforme escolha, cabe ao(s) passageiro(s) pagar(em) a diferença tarifária para o apartamento imediatamente superior.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 12ª: É terminantemente proibido o consumo e/ou porte de qualquer tipo de droga, lança-perfume, produtos tóxicos, armas, munições e outros produtos, não autorizados pelo policiamento alfandegário/rodoviário, no interior do veículo utilizado, conforme legislação vigente.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 13ª: Os passeios e serviços opcionais sugeridos na programação, não estão incluídos no preço da excursão e poderão ser adquiridos durante a viagem a critério do cliente.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 14ª: As partes elegem o foro da comarca de São Paulo como único competente para dirimir quaisquer dúvidas ou divergências jurídicas oriundas do presente contrato, em detrimento e qualquer outro, por mais privilegiado que seja.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 15ª: O passageiro autoriza que a empresa DAXAM TOUR OPERATOR, a título gratuito, utilize da sua imagem e voz contidas em vídeo ou foto com propósito comercial, de propaganda, de venda, publicitário, promocional, de treinamento ou outro. Esse direito inclui o direito irrestrito de copiar, revisar, distribuir, publicar e vender, inclusive, mas não somente, na internet. Ao aceitar essa cláusula o Passageiro concorda que todos os direitos, de autoria e de interesse, serão de propriedade única da DAXAM TOUR OPERATOR, livre de qualquer tipo de reclamações posteriores feitas pelo Passageiro ou por qualquer outra pessoa que tenha direitos e interesses derivados do Passageiro.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 16ª: No caso de fretamento aéreo ou rodoviário, devido às condições especiais de contratação entre a Contratada e as empresas transportadoras, não é permitido transferência de data ou reembolso de trechos não utilizados.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cláusula 17ª: Ocorrendo desistência do turista, em qualquer fase ou etapa da viagem após seu início, não haverá devolução de valores, tampouco qualquer bonificação para o desistente.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\nE por estarem justas e contratadas, as partes concordam com os estes termos e aceitam o presente instrumento.&lt;/p&gt;\r\n&lt;/div&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
`language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(4, 'Português (BR)', 'pt-br', 'pt_BR.UTF-8, pt_BR, UTF-8', 'br.png', 'portuguese-br', 'portuguese-br', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
`layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
`layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(30, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(29, 3, 0, 'product/category'),
(26, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(22, 5, 0, 'product/manufacturer'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
`length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 10.00000000),
(3, 0.39370000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
`length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 4, 'Centimeter', 'cm'),
(2, 4, 'Millimeter', 'mm'),
(3, 4, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
`manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(11, 'Walt Disney World®', 'data/disney-logo2.jpg', 0),
(12, 'Universal Studios Orlando®', 'data/ticket.Universal.Florida.png', 1),
(13, 'IBJJF', 'data/logo.ibjjf.png', 1),
(14, 'Daxam Tour Operator', 'data/Daxa_Logo.jpg', 5),
(15, 'i-drive360', 'data/ingressos.orlando.idrivelogo.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
`option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 2),
(2, 'radio', 3),
(4, 'text', 4),
(5, 'select', 1),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'image', 1),
(12, 'date', 1),
(13, 'radio', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 4, 'Radio'),
(13, 4, 'Taxas de Embarque'),
(4, 4, 'Text'),
(6, 4, 'Textarea'),
(8, 4, 'Date'),
(7, 4, 'File'),
(5, 4, 'Select'),
(9, 4, 'Time'),
(10, 4, 'Date &amp; Time'),
(12, 4, 'Delivery Date'),
(11, 4, 'Tipo de acomodação'),
(2, 4, 'Selecione a idade. A entrada ao parque é gratuita para menores de 3 anos');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
`option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(24, 2, 'data/ticket-chd.png', 2),
(48, 11, 'data/triplo.jpg', 2),
(47, 11, 'data/duplo.jpg', 3),
(46, 11, 'data/quarto.solo.jpg', 4),
(49, 11, 'data/quadruplo.jpg', 1),
(23, 2, 'data/ticket-adult.png', 1),
(50, 13, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 4, 1, 'Large'),
(32, 4, 1, 'Small'),
(23, 4, 2, 'Maiores de 10 anos'),
(31, 4, 1, 'Medium'),
(42, 4, 5, 'Yellow'),
(41, 4, 5, 'Green'),
(39, 4, 5, 'Red'),
(40, 4, 5, 'Blue'),
(24, 4, 2, 'de 3 a 9 anos'),
(49, 4, 11, 'Quadruplo'),
(48, 4, 11, 'Triplo'),
(47, 4, 11, 'Duplo'),
(46, 4, 11, 'Individual'),
(50, 4, 13, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
`order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'DAXAM-100', 0, 'Daxam Tour Operator', 'http://daxam.homolog.lojavirtual.digital/', 4, 1, 'Fernando', 'Mendes', 'fernando.mendes@webca.com.br', '11976495157', '', 'Fernando', 'Mendes', '', '', '', 'Lomas Valentinas', '', 'Sao Caetano do Sul', '09560260', 'Brazil', 30, 'São Paulo', 464, '', 'Boleto CAIXA E. FEDERAL', 'boleto_cef_sigcb', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', 1762.0000, 7, 0, 0.0000, 4, 11, 'EUR', 0.29110000, '127.0.0.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36', 'en-US,en;q=0.8,pt;q=0.6', '2015-05-27 07:13:37', '2015-05-27 07:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_download`
--

CREATE TABLE `oc_order_download` (
`order_download_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_field`
--

CREATE TABLE `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_fraud`
--

CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
`order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 7, 1, '', '2015-05-27 07:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
`order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 1, 242, 53, 'Tipo de acomodação', 'Individual', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
`order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 64, 'Pacote Mundial Master Las Vegas 2015', 'Viagem Esportiva', 1, 1762.0000, 1762.0000, 0.0000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
`order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `profile_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `profile_reference` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
`order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
`order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 4, 'Processing'),
(3, 4, 'Shipped'),
(7, 4, 'Canceled'),
(5, 4, 'Complete'),
(8, 4, 'Denied'),
(9, 4, 'Canceled Reversal'),
(10, 4, 'Failed'),
(11, 4, 'Refunded'),
(12, 4, 'Reversed'),
(13, 4, 'Chargeback'),
(1, 4, 'Pending'),
(16, 4, 'Voided'),
(15, 4, 'Processed'),
(14, 4, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
`order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '€512,92', 1762.0000, 1),
(2, 1, 'total', 'Total', '€512,92', 1762.0000, 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
`order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
`product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `currency_product` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`, `currency_product`) VALUES
(78, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, '', 14, 1, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-29 15:08:39', '2015-04-29 16:35:38', 0, 'BRL'),
(77, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, 'data/nova.zelandia.ilha.sul.estrada.JPG', 14, 1, 0.0000, 0, 0, '2015-04-27', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-28 15:03:54', '2015-04-28 16:38:14', 0, 'BRL'),
(63, 'receptivo', '', '', '', '', '', '', '', 20, 8, 'data/Orlando-Welcome-Sign.jpg', 14, 0, 0.0000, 0, 0, '2015-04-24', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 20, 1, '2015-04-25 14:26:36', '2015-04-27 14:01:44', 2, 'BRL'),
(64, 'Viagem Esportiva', '', '', '', '', '', '', '', 19, 8, 'data/master.jpg', 14, 0, 1099.0000, 0, 0, '2015-04-14', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 22, 1, '2015-04-26 10:38:14', '2015-04-26 12:35:38', 17, 'BRL'),
(65, 'Viagem Esportiva', '', '', '', '', '', '', '', 20, 8, 'data/jiu-jitsu-pan-no-gi-championship.png', 14, 0, 1099.0000, 0, 0, '2015-04-14', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 22, 1, '2015-04-26 10:48:06', '2015-04-26 11:15:46', 0, 'BRL'),
(66, 'tkt.i-drive360', '', '', '', '', '', '', '', 5, 8, 'data/ingressos.orlando.eye.jpg', 15, 0, 25.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 4, 1, '2015-04-27 08:55:24', '2015-04-28 11:02:30', 0, 'BRL'),
(67, 'tkt.i-drive360.combo', '', '', '', '', '', '', '', 5, 8, 'data/ingressos.orlando.sealife.tussauds.jpg', 15, 0, 42.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-27 10:31:17', '2015-04-28 11:09:14', 0, 'BRL'),
(72, 'Pacotes Terrestres', '', '', '', '', '', '', '', 20, 8, 'data/australia-tourism.jpg', 14, 0, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 40, 1, '2015-04-28 12:20:58', '2015-04-28 12:51:53', 0, 'BRL'),
(73, 'trem', '', '', '', '', '', '', '', 1, 8, 'data/australia-railAustralia.gif', 14, 1, 0.0000, 0, 0, '2015-04-27', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-28 13:17:56', '0000-00-00 00:00:00', 1, 'BRL'),
(74, 'Pacotes Terrestres', '', '', '', '', '', '', '', 20, 8, 'data/Australaia_pacote_AyersRock_aborigene.jpg', 14, 0, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 40, 1, '2015-04-28 13:22:01', '2015-04-28 13:28:29', 0, 'BRL'),
(75, 'Pacotes Terrestres', '', '', '', '', '', '', '', 20, 8, 'data/darwin.jpg', 14, 0, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 44, 1, '2015-04-28 13:32:29', '2015-04-28 13:45:05', 0, 'BRL'),
(76, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, 'data/nova.zelandia.ilha.sul.estrada.JPG', 14, 1, 0.0000, 0, 0, '2015-04-27', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-28 14:48:59', '2015-04-28 16:38:44', 0, 'BRL'),
(68, 'Pacotes Terrestres', '', '', '', '', '', '', '', 20, 8, 'data/australia-sydney-ano-novo.jpg', 14, 0, 1099.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 40, 1, '2015-04-28 09:28:45', '2015-04-28 10:11:32', 0, 'BRL'),
(70, 'Pacotes Terrestres', '', '', '', '', '', '', '', 20, 8, 'data/Australia_Cairns_Helmet-Diving.jpg', 14, 0, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 40, 1, '2015-04-28 10:27:41', '2015-04-28 11:21:55', 1, 'BRL'),
(71, 'Pacotes Terrestres', '', '', '', '', '', '', '', 20, 8, 'data/australia-brisbane.jpg', 14, 0, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 40, 1, '2015-04-28 11:23:00', '2015-04-28 11:35:29', 1, 'BRL'),
(50, 'tkt.disney.01', 'tkt.disney.1dia', '', '', '', '', '', 'United States of America', 5, 8, 'data/magiaSuaManeira.gif', 11, 0, 20.0000, 0, 0, '2015-04-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, '2015-04-14 10:52:50', '2015-05-27 19:26:34', 7, 'BRL'),
(51, 'Viagem Esportiva', '', '', '', '', '', '', '', 20, 8, 'data/pacotes.mundial.jiu-jitsu.jpg', 14, 0, 0.0000, 2, 0, '2015-04-14', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-15 09:26:24', '2015-05-21 10:48:47', 13, 'BRL'),
(52, 'receptivo', '', '', '', '', '', '', '', 1, 5, 'data/orlando-family-disney.jpg', 14, 1, 0.0000, 0, 0, '2015-04-15', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-16 14:54:34', '2015-04-27 14:02:01', 0, 'BRL'),
(53, 'tkt.disney.02', '', '', '', '', '', '', 'United States of America', 5, 8, 'data/magiaSuaManeira.gif', 11, 0, 118.0000, 0, 0, '2015-04-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 2, 1, '2015-04-17 12:06:27', '2015-04-27 08:55:10', 2, 'BRL'),
(54, 'tkt.disney.02dias', '', '', '', '', '', '', 'United States of America', 5, 8, 'data/magiaSuaManeira.gif', 11, 0, 215.0000, 1000, 10, '2015-04-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 2, 1, '2015-04-17 12:12:45', '2015-04-25 10:42:49', 3, 'BRL'),
(55, 'tkt.disney.03dias', '', '', '', '', '', '', 'United States of America', 5, 8, 'data/magiaSuaManeira.gif', 11, 0, 312.0000, 1500, 0, '2015-04-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 2, 1, '2015-04-17 12:27:13', '2015-04-25 10:43:40', 0, 'BRL'),
(56, 'tkt.disney.04dias', '', '', '', '', '', '', 'United States of America', 5, 8, 'data/magiaSuaManeira.gif', 11, 0, 312.0000, 1500, 0, '2015-04-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 2, 1, '2015-04-17 12:36:52', '2015-04-25 10:44:29', 0, 'BRL'),
(57, 'tkt.universal', 'tkt.universal', '', '', '', '', '', '', 1, 8, 'data/Ingressos-Parques-universal.jpeg', 12, 0, 162.0000, 0, 0, '2015-04-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-17 13:07:45', '2015-04-25 10:49:15', 2, 'BRL'),
(58, 'tkt.universal', '', '', '', '', '', '', '', 1, 8, 'data/Ingressos-Parques-universal.jpeg', 12, 0, 195.0000, 0, 0, '2015-04-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-17 14:54:08', '2015-04-25 10:49:41', 1, 'BRL'),
(59, 'tkt.universal', '', '', '', '', '', '', '', 1, 8, 'data/Ingressos-Parques-universal.jpeg', 12, 0, 195.4400, 0, 0, '2015-04-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-17 15:15:31', '2015-04-25 10:50:19', 0, 'BRL'),
(60, 'tkt.orlando', 'flexi', '', '', '', '', '', '', 5, 8, 'data/ticket.fex5.png', 12, 1, 325.0000, 0, 0, '2015-04-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-17 16:24:29', '2015-04-25 10:51:44', 4, 'BRL'),
(61, 'tkt.orlando', '', '', '', '', '', '', '', 5, 8, 'data/ticket.fex6.png', 12, 1, 340.0000, 0, 0, '2015-04-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-17 16:24:47', '2015-04-28 13:12:23', 0, 'BRL'),
(62, 'Viagem Esportiva', '', '', '', '', '', '', '', 20, 8, 'data/pacotes.jiu.1viagem2campeonatos.jpg', 14, 0, 1099.0000, 0, 0, '2015-04-14', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-23 15:23:12', '2015-05-21 12:02:14', 6, 'USD'),
(69, 'Pacotes Terrestres', '', '', '', '', '', '', '', 20, 8, 'data/pacote-para-melbourne-.jpg', 14, 0, 1099.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 40, 1, '2015-04-28 10:11:41', '2015-04-28 10:27:12', 0, 'BRL'),
(79, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, '', 14, 1, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-29 15:29:30', '2015-04-29 16:35:20', 0, 'BRL'),
(80, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, '', 14, 1, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-29 15:42:58', '2015-04-29 16:36:20', 0, 'BRL'),
(81, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, '', 14, 1, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-29 15:51:55', '2015-04-29 16:35:59', 0, 'BRL'),
(82, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, '', 14, 1, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-29 16:36:56', '2015-04-29 16:40:47', 0, 'BRL'),
(83, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, '', 14, 1, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-29 16:41:02', '2015-04-29 16:44:55', 0, 'BRL'),
(84, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, '', 14, 1, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 0, '2015-04-29 16:45:03', '2015-04-29 16:49:46', 0, 'BRL'),
(85, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, 'data/pacotes.peru.inti-raymi-celebracion.jpg', 14, 1, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-04-29 17:30:09', '2015-04-29 17:57:58', 1, 'BRL'),
(86, 'Pacotes Terrestres', '', '', '', '', '', '', '', 1, 8, 'data/pacotes.peru.inti-raymi-celebracion.jpg', 14, 1, 0.0000, 0, 0, '2015-04-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 0, '2015-04-29 17:58:13', '2015-04-29 18:13:38', 0, 'BRL'),
(87, 'aaaa', '', '', '', '', '', '', '', 1, 8, '', 0, 1, 0.0000, 0, 0, '2015-05-20', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 0, 1, 1, 1, '2015-05-21 10:50:10', '2015-05-21 14:31:48', 4, 'BRL'),
(88, 'aaa', '', '', '', '', '', '', '', 1, 8, '', 0, 1, 100.0000, 0, 0, '2015-05-26', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2015-05-27 19:27:12', '2015-05-27 19:57:24', 12, 'EUR');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(63, 4, 'Orlando 8 dias', '&lt;p&gt;&lt;strong&gt;Que tal 8 dias se divertindo em Orlando?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Com os principais parques da cidade neste pacote.&lt;br /&gt;\r\nPacote econômico incluindo todos os traslados, acomodação com café da manha, ingressos e um dia para compras em 3 dos principais centros de compras de Orlando. VOce vai para Orlando e não se preocupa com nada&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;Datas de saída &amp;nbsp; Diárias &amp;nbsp;&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;Duração &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;08 dias&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;Validade &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 2015&lt;/p&gt;\r\n\r\n&lt;p&gt;Inclui:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Traslados regulares conforme mencionado no roteiro&lt;/li&gt;\r\n	&lt;li&gt;Acomodação conforme programa selecionado&lt;/li&gt;\r\n	&lt;li&gt;Café da Manhã diário no hotel&lt;/li&gt;\r\n	&lt;li&gt;Ingressos para as atrações mencionadas no itinerario&lt;/li&gt;\r\n	&lt;li&gt;Tour de Compras, 1 dia nos principais centros de compras de Orlando&lt;/li&gt;\r\n	&lt;li&gt;Assistência em português durante os traslados&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Itinerario sugerido para seu programa&amp;nbsp;Orlando 8 dias&lt;/strong&gt;&lt;br /&gt;\r\nDia 1 Traslado Aeroporto Orlando/hotel&lt;br /&gt;\r\nDia 2 Magic Kingdom&lt;br /&gt;\r\nDia 3 Day Tour de Compras&lt;br /&gt;\r\nDia 4 Epcot&amp;nbsp;&lt;br /&gt;\r\nDia 5 Hollywood Studios&amp;nbsp;&lt;br /&gt;\r\nDia 6 Universal Studios&lt;br /&gt;\r\nDia 7 Island of Adventure&lt;br /&gt;\r\nDia 8 Traslado hotel/ Aeroporto Orlando&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;&lt;strong&gt;NB.&lt;/strong&gt; Pacote parte terrestre apenas, não inclui qq parte aérea&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;\r\n', 'Pacotes em Orlando com hotel, ingressos e transporte para os parques', 'disney', 'ingressos, traslados para os parques, sem carro, pacote, florida, Orlando, Island of Adventure,  Universal Studios, Hollywood Studios, Epcot, Compras, Disney, Magic Kingdom'),
(51, 4, 'Pacote Campeonato Mundial de Jiu-Jitsu', '&lt;p&gt;Evento mais importante do calendário competitivo do Jiu-Jitsu.&amp;nbsp;&lt;br /&gt;\r\nO Mundial de 2015 será realizado na Walter Pyramid em Long Beach, Califórnia, entre os dias 27 e 31 de maio.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Pacote de viagens para Long Beach - California&quot; src=&quot;http://daxam.homolog.lojavirtual.digital/image/data/pacotes.jiu-jitsu.long.beach.piramide.jpg&quot; style=&quot;width: 1000px; height: 201px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Nosso pacote de viagens com i&lt;span style=&quot;line-height: 20.8000011444092px;&quot;&gt;da 26 de maio, volta 1 de maio&lt;/span&gt;&lt;/strong&gt;&lt;strong style=&quot;line-height: 1.6em;&quot;&gt;&amp;nbsp;inclui:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Seguro viagem e bagagem&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Bilhete aereo ida e volta para Los Angeles&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Acomodação por 7 dias com café da manhã em Long Beach&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Carro locado tipo Intermediario com GPS, km livre, 2º motorista gratis, seguros obrigatorios e taxas locais.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;​&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Valores pacote de viagens atletas Mundial de Jiu-Jitsu a partir de: US$1099 por pessoa&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'Viagem para atletas competindo o Campeonato Mundial de Jiu-Jitsu da IBJJF em Long Beach, CA no EUA\r\n', 'esportiva', 'cbjj, ibjjf, campeonato, mundial, seniors, jiujitsu, pacote, atleta, desconto, pan, kids, nogi, gracie, campeao, pacote, viagem, desconto, quadruplo, duplo, triplo, individual, carro, GPS, hotel, cafe da manha, seguro viagem, california, long beach'),
(62, 4, 'Pacote Mundial Masters e Pan Nogi', '&lt;p&gt;Que tal aproveitar e competir em 2 campeonatos internacionais na mesma viagem?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;25/26 de setembro no&amp;nbsp;World Master Jiu-Jitsu Championship em&amp;nbsp;Las Vegas e 03 de outubro no Pan No-GI Jiu-Jitsu Championship em&amp;nbsp;Nova&amp;nbsp;York&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;O pacote de viagens tem saída dia 22 de setembro e retorno dia 04 de outubro. Saídas de São Paulo e Rio de Janeiro, outras por favor cidades solicite valores.&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Seguro viagem e bagagem&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Bilhete aereo ida e volta para Los Angeles&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Acomodação por 7 dias com café da manhã em Long Beach&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Carro locado tipo Intermediario com GPS, km livre, 2º motorista gratis, seguros obrigatorios e taxas locais.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;​&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Valores pacote de viagens atletas Mundial de Jiu-Jitsu a partir de: US$1099 por pessoa&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'Viagem 2 em 1. Uma viagem 2 campeonatos, Master em Las Las Vegas &amp; Pan NoGi em Nova York. Reserve agora, 11 2614-4761 Agencia de viagens Daxam Tour Operator\r\n', 'esportiva', 'cbjj, ibjjf, campeonato, mundial, seniors, jiu-jitsu, jiujitsu, las vegas, pan no gi, nova york, new york, nova iorque, pacote, atleta, desconto, pan, kids, nogi, gracie, campeao, pacote, viagem, desconto, quadruplo, duplo, triplo, individual, carro, GPS, hotel, cafe da manha, seguro viagem, california, long beach '),
(64, 4, 'Pacote Mundial Master Las Vegas 2015', '&lt;p&gt;&lt;strong style=&quot;line-height: 1.6em;&quot;&gt;25/26 de setembro World Master Jiu-Jitsu Championship em&amp;nbsp;Las Vegas&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;O pacote de viagens tem saída dia 22 de setembro e retorno dia 29&amp;nbsp;de outubro. Saídas de São Paulo e Rio de Janeiro, outras por favor cidades solicite valores.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;inclui:&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Seguro viagem e bagagem&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Bilhete aereo ida e volta para Las Vegas&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Acomodação por 7 dias em Las Vegas com café da manhã&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Carro locado tipo Intermediario com GPS, km livre, 2º motorista gratis, seguros obrigatorios e taxas locais.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;​&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Valores pacote de viagens atletas Masters de Jiu-Jitsu a partir de: US$1099 por pessoa&lt;/span&gt;&lt;/p&gt;\r\n', 'viagem campeonato Master em Las Las Vegas  Reserve agora, 11 2614-4761 Agencia de viagens Daxam Tour Operator\r\n', 'esportiva', 'cbjj, ibjjf, campeonato, mundial, seniors, jiu-jitsu, jiujitsu, las vegas, pacote, atleta, desconto, gracie, campeao, pacote, viagem, desconto, quadruplo, duplo, triplo, individual, carro, GPS, hotel, cafe da manha, seguro viagem'),
(65, 4, 'Pacote Pan No-GI Jiu-Jitsu', '&lt;p&gt;&lt;strong style=&quot;line-height: 1.6em;&quot;&gt;03 de Outubro &lt;/strong&gt;&lt;strong&gt;Pan No-GI Jiu-Jitsu Championship​&lt;strong style=&quot;line-height: 1.6em;&quot;&gt; em&amp;nbsp;Nova York&lt;/strong&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;O pacote de viagens tem saída dia 01 de outubro e retorno dia 05 de outubro. Saídas de São Paulo e Rio de Janeiro, outras por favor cidades solicite valores.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;inclui:&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Seguro viagem e bagagem&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Bilhete aereo ida e volta para Nova York&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Acomodação por 4&amp;nbsp;dias em Nova York com café da manhã.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Traslados aeroporto/hotel/aeroporto&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;​​Valores pacote de viagens atletas &lt;/span&gt;&lt;strong style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;Pan No-GI Jiu-Jitsu&amp;nbsp;&lt;/strong&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt; a partir de: US$1.199 por pessoa&lt;/span&gt;&lt;/p&gt;\r\n', 'viagem campeonato Master em Las Las Vegas  Reserve agora, 11 2614-4761 Agencia de viagens Daxam Tour Operator\r\n', 'esportiva', 'cbjj, ibjjf, campeonato, mundial, seniors, jiu-jitsu, jiujitsu, las vegas, pacote, atleta, desconto, gracie, campeao, pacote, viagem, desconto, quadruplo, duplo, triplo, individual, carro, GPS, hotel, cafe da manha, seguro viagem'),
(66, 4, 'The Orlando Eye', '&lt;p&gt;Tome um momento para escapar, e ver a magia e maravilha que Orlando tem para oferecer.&lt;br /&gt;\r\n&lt;strong&gt;&lt;em&gt;A Orlando Eye oferece uma nova maneira de experimentar a beleza da cidade.&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Suba serenamente a bordo de&amp;nbsp;uma cápsula para ver Orlando em uma maneira que você nunca viu antes. A visão dos passaros&lt;/p&gt;\r\n\r\n&lt;p&gt;Obrservação a &lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;120 metros&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;de altura&amp;nbsp;&lt;/span&gt;da icônica roda gigante no coração do &lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;complexo de entretenimento&lt;/span&gt;&amp;nbsp;I-Drive 360 , oferece vistas deslumbrantes da&amp;nbsp;Florida central em todas as direções, com vistas dos arranha céus&amp;nbsp;da cidade de Orlando, dos parques temáticos nas proximidades, lagos e&amp;nbsp;exuberante paisagem, e em um dia claro, vista para o Centro Espacial Kennedy, na costa leste da Flórida.&lt;br /&gt;\r\nA experiência de lazer de 30 minutos inclui um pré-vôo num simluador 4D com&amp;nbsp;espetacular multi-sensorial.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://daxam.homolog.lojavirtual.digital/image/data/ingressos.orlando.eye.jpg&quot; style=&quot;width: 600px; height: 300px; float: left;&quot; /&gt;&lt;/p&gt;\r\n', 'Ingresso para a roda gigante Orlando Eye e espetacular experiencia de cinema 4D multi-sensorial. Crianças até 3 anos é gratuito.', 'ingressos', 'orlando eye, i-drive360, disney, ingresso, 1 dia, Hollywood Studios, Animal Kingdom'),
(67, 4, 'Orlando Eye-Drive Experience', '&lt;p&gt;Viste 3 atrações TOP pelo preço de 2&lt;/p&gt;\r\n\r\n&lt;p&gt;O ingresso&amp;nbsp;Orlando Eye-Drive Experience inclui entradas para&amp;nbsp;a roda gigante Orlando Eye, Madame Tussauds Orlando e SEA LIFE Aquarium&amp;nbsp;&lt;/p&gt;\r\n', 'Ingresso combinado da I-drive360 para a roda gigante Orlando Eye, Madame Tussauds e SEA LIFE', 'ingressos', 'madame tussauds, sea life, orlando eye, i-drive360, disney, ingresso, 1 dia, Hollywood Studios, Animal Kingdom'),
(68, 4, 'Sydney 4 dias', '&lt;p&gt;&lt;strong style=&quot;line-height: 1.6em;&quot;&gt;DIA 1: CHEGADA EM SYDNEY&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Na chegada ao aeroporto de Sydney, traslado regular para a sua acomodação em Sydney.&amp;nbsp;Você está então livre para despender o resto do dia a explorar Sydney em seu próprio ritmo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;strong&gt;DIA 2: BLUE MOUNTAINS AND RIVER CRUISE FULL DAY TOUR&lt;/strong&gt;&lt;br /&gt;\r\nDescubra as espetaculares Montanhas Azuis e veja a vida selvagem nativa, enquanto explora o Patrimônio da Humanidade Blue Mountains National Park. Esta região robusta e bonita faz parte do Grande Cordilheira Divisória, ligando o norte ao sul tropical temperado, enquanto divide as cidades costeiras do vasto Outback. Passe por Homebush Bay, local dos Jogos Olímpicos de 2000. Desfrute de uma parada em Echo Point e veja a famosa formação rochosa Três Irmãs e com uma oportunidade de visita ao Centro Koomurri para ouvir as antigas lendas indígenas desta impressionante formação rochosa. Na chegada em &amp;nbsp;Scenic World passeios opcionais existentes como: &amp;nbsp;Blue Mountain - Scenic Railway, Teleférico ou Skyway. Estes passeios são uma ótima maneira de ver os vales íngremes, cânions e formações rochosas Três Irmãs. Desfrute de um almoço na montanhosa cidade de Leura. Em seguida, desfrute de um encontro à tarde no Featherdale Park e tire sua foto com um coala, veja cangurus, wombats, dingos e pingüins. Nossa última parada será em Homebush, o local dos Jogos Olímpicos de Sydney 2000. Aqui, você tem a oportunidade de pegar o seu navio ( s seu custo) de volta para Sydney num rivercruise e desfrutar de um relaxante cruzeiro ao longo do rio Parramatta . Se você não deseja voltar de barco, o ônibus irá chegar em Sydney ABRoximadamente as 17:45.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: CITY SIGHTS WITH THE WORKS &amp;amp; CRUZEIRO A BORDO DO CAPTAIN COOK COM ALMOÇO.&lt;/strong&gt;&lt;br /&gt;\r\nAs Imagens de Sydney com as obras é uma introdução completa Sydney e sua vizinhança.&lt;br /&gt;\r\nEsta excursão combina passeios pela manhã e pela tarde, para assim criar um passeio de dia inteiro de passeios em Sydney. Na parte da manhã, você vai viajar até Manly Beach para um passeio maravilhoso ao longo da Costa para ver a praia que fez Manly famosa. Ao longo do caminho para Manly, você vai ver Darling Harbour e depois atravessar a Sydney Harbour Bridge. Pare no Ponto de Milsons para vistas espetaculares da Opera House e da Harbour Bridge. Desfrute de vistas do Mirante Seaforth e parada no Mirante Arabanoo para uma vista panorâmica do Oceano Pacífico. Desfrute seu tempo em Manly Beach antes de voltar para Sydney. Cruzeiro porto de Sydney a bordo do prestigiado MV Sydney 2000 e deguste &amp;nbsp;um fantástico almoço de Buffet. Passeio à tarde, você vai excursionar pela área histórica de Rocks e contemplar a vista da Ópera House, Hyde Park, Catedral de Santa Maria, Casa do Parlamento e da Galeria de Arte. Pare na Mrs Macquarie’s Chair para magníficas vistas da Opera House e da Harbour Bridge.&amp;nbsp;&lt;br /&gt;\r\nVeja o colorido Royal Botanic Gardens em seu caminho para visitar o Gap e desfrutar de vistas deslumbrantes. Parada na mundialmente famosa Bondi Beach e desfrute da paisagem espetacular. Junte-se ao onibus para seu retorno a Sydney, passando por Paddington, os subúrbios orientais e exclusiva baía Rushcutters.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 4: PARTIDA DE SYDNEY&lt;/strong&gt;&lt;br /&gt;\r\nNesta manhã, em horário ABRopriado traslado regular para o aeroporto de Sydney.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;PROGRAMA INCLUI:&lt;/span&gt;&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Traslado regular de aeroporto ida e volta.&lt;/li&gt;\r\n	&lt;li&gt;Acomodação por 3 noites&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Passeio AAT Kings – J15L - Blue Mountains and River Cruise including Lunch&lt;/li&gt;\r\n	&lt;li&gt;Passeio AAT Kings – J63LC - Sydney Sights with the Works &amp;amp; Captain Cook luncheon cruise&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Pacote parte terrestre em Sydney', 'pacotes', 'australia, sydney, pacotes, passeios, city tour, blue mountains, captain cook, opera house, harbor bridge'),
(69, 4, 'Melbourne 4 dias', '&lt;p&gt;&lt;strong&gt;DIA 1: CHEGADA EM MELBOURNE&lt;/strong&gt;&lt;br /&gt;\r\nNa chegada ao aeroporto de Melbourne, traslado regular para sua acomodação. O resto do dia é a sua vontade.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: PHILLIP ISLAND E PENGUIN PARADE&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;\r\nA manhã é a sua vontade e esta tarde você vai partir da Phillip Federation Square para a Ilha Phillip. Visite Warrook, um grupo de trabalho fazenda de gado na próspera região de Gippsland. Encontre coalas em seu habitat natural no Centro de Conservação Koala. Volta ao longo de calçadões elevados e coalas nas árvores. Veja espetaculares paisagens costeiras no Nobbies, dois afloramentos rochosos abundantes em vida marinha. Das passarelas você pode ser capaz de ter um vislumbre da maior população da Austrália de focas que vivem ao longo da costa rochosa. Assista aos pequenos pinguins que lutam na maré para chegar a suas tocas nas dunas. ABRenda os métodos ambientais e de conservação que são iniciadas para garantir a notável vida selvagem e geologia vulnerável de Phillip Island permanecerem protegidas. Veja os pequenos pingüins de perto como eles regressam aos seus ninhos para saudar suas famílias jovens.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: MARAVILHOSA MELBOURNE&lt;/strong&gt;&lt;br /&gt;\r\nEsta manhã você vai partir da Federation Square para descobrir todos os encantos da elegante e contemporânea Melbourne. Veja Casa do Capitão Cook, o Mercado rainha Victoria, Fitzroy Gardens e Albert Park, local da corrida de Fórmula 1. visite o Santuário histórico da Memória e passeio ao longo da beira-mar em Southbank. Esta cidade tem tudo – para descobrir por si mesmo. A tarde está no seu tempo.&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&lt;br /&gt;\r\n&lt;strong&gt;DIA 4: PARTIDA MELBOURNE&lt;/strong&gt;&lt;br /&gt;\r\nNesta manhã em horário ABRopriado, traslado regular para o aeroporto.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em style=&quot;line-height: 1.6em;&quot;&gt;&lt;strong&gt;INCLUI&lt;/strong&gt;&lt;/em&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Traslado regular de aeroporto ida e volta.&lt;/li&gt;\r\n	&lt;li&gt;Acomodação por 3 noites&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Café da manhã diario&lt;/li&gt;\r\n	&lt;li&gt;Passeio AAT Kings – Marvellous Melbourne City Sights (K1)&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Passeio AAT Kings – Full Day Phillip Island Penguins and Wildlife (K10)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Pacote parte terrestre em Melbourne', 'pacotes', 'australia, melbourne, pacotes, passeios, city tour, , captain cook, koala, canguru, pinguins'),
(70, 4, 'Cairns 4 dias', '&lt;p&gt;&lt;strong&gt;DIA 1: CHEGADA EM CAIRNS&lt;/strong&gt;&lt;br /&gt;\r\nNa chegada no aeroporto de Cairns, traslado regular para sua acomodação.&lt;br /&gt;\r\nO restante do dia é livre&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: REEF MAGIC CRUISES - OUTER REEF FULL DAY CRUISE-SNORKEL&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;\r\nCruzeiros Reef Magic parte direto de Cairns até a Grande Barreira de Corais com 5 horas completas em seu espaçoso barco Marine World Pontoon. Os hóspedes têm o tempo e espaço para apreciar a maior gama de atividades disponíveis nos recifes numa atmosfera descontraída, divertida e personalizada.&lt;br /&gt;\r\nApropriado para todos os grupos idade e habilidades de natação, as atividades incluem Mergulho introdutório livre &amp;amp; autonamo, Visitas Guiadas de Snorkel, ou fique seco e a seu proprio custo fazer um passeio Interativo nos Semi-submersíveis de turismo, visite o Observatório Underwater, suba a bordo de um vôo cenico de helicóptero ou simplesmente relaxe em um lounge tomando sol e deixe o seu dia a deriva. Traslado para o hotel no retorno.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: REEF DAINTREE E CROC ADVENTURE&lt;/strong&gt;&lt;br /&gt;\r\nDesfrute de um dia explorando a floresta e paisagens incríveis da região selvagem de Cape Tribulation.&lt;br /&gt;\r\nDaintree Discovery Centre. Experimente este centro de classe mundial de floresta interpretativa incluindo a nova passagem aérea e subida Torre Rainforest, que lhe dá acesso à floresta e vistas magníficas. Visita guiada e chá da manhã incluído.&lt;br /&gt;\r\nCape Tribulation. Ande na praia da floresta de renome mundial e admire a costa e recifes de corais das franjas do Mirante Kulki.&amp;nbsp;&lt;br /&gt;\r\nAlmoço tropical incluido. Com acesso especial a floresta em uma propriedade privada, desfrute de uma curta caminhada ao longo de um delicioso riacho tropical antes de um delicioso almoço tropical. Escolha de carne de qualidade, peixe ou refeição vegetariana com saladas frescas e prato de frutas, seguido de café ou chá Daintree.&lt;br /&gt;\r\nMirante Alexandra. Depois de passear através da floresta tropical da Faixa de Alexandra, aproveite este mirante espetacular sobre o estuário do rio Daintree, Snapper Island e além do Mar de Coral.&lt;br /&gt;\r\nDaintree River Cruise. Chegue a um entendimento deste ambiente selvagem por uma hora, habitat de aves, cobras, árvores, plantas únicas e, claro, o crocodilo estuarino.&lt;br /&gt;\r\nDaintree Ferry. Volte a atravessar o poderoso rio Daintree pela balsa cabo – um dos últimos de sua espécie!&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 4: DIA LIVRE EM CAIRNS&lt;/strong&gt;&lt;br /&gt;\r\nTire um tempo hoje para simplesmente explorar a cidade de Cairns e talvez o porto para relaxar, tomar um cerveja local e um pouco de compras, ou talvez uma outra excursão opcional.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 5: PARTIDA DE CAIRNS&lt;/strong&gt;&lt;br /&gt;\r\nHoje em horário apropriado traslado regular do seu hotel para o Aeroporto&lt;/p&gt;\r\n', 'Pacote parte terrestre em Cairns. Cairns é a porta de entrada para o Tropical North Queensland. Esta cidade está repleta de vida noturna, restaurantes, lojas e uma ampla gama de acomodações para todos os bolsos. A maioria das excursões parte de Cairns tor', 'pacotes', 'australia, cairns, pacotes, passeios, city tour, corais, barreira, great barrier reef, mergulho,'),
(52, 4, 'MICKEY EXPLORER', '&lt;p&gt;&lt;strong&gt;Apenas 6 dias em Orlando?&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Dia 1 Traslado Aeroporto Orlando/hotel&lt;br /&gt;\r\nDia 2 Magic Kingdom&lt;br /&gt;\r\nDia 3 Dia de Compras&lt;br /&gt;\r\nDia 4 Epcot Center&lt;br /&gt;\r\nDia 5 Hollywood Studios&lt;br /&gt;\r\nDia 6 Traslado hotel/ Aeroporto Orlando&lt;/p&gt;\r\n\r\n&lt;p&gt;Conheça os principais parques temáticos da Disney e um dia para compras.&amp;nbsp;&lt;br /&gt;\r\nPacote econômico incluindo todos os traslados, acomodação com café da manha e ingressos.&lt;/p&gt;\r\n\r\n&lt;p&gt;Datas de saída:&amp;nbsp;Diárias&lt;br /&gt;\r\nDuração 06 dias&lt;br /&gt;\r\nValidade: 2015&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;inclui:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Traslados regulares conforme mencionado no roteiro&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Acomodação por 5 noites @ Hotel Rose Inn International&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Café da Manhã diário no hotel&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Ingressos para as atrações mencionadas&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Tour de Compras, 1 dia nos principais centros de compras de Orlando&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Assistência em português durante os traslados&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;​&lt;/span&gt;&lt;/p&gt;\r\n', 'Conheça os principais parques temáticos da Disney e um dia para compras. \r\nPacote econômico incluindo todos os traslados, acomodação com café da manha e ingressos.', 'Orlando, Disney , Hollywood Studios,  Epcot Center, Magic Kingdom, compras', ''),
(53, 4, '01 Dia de parque no Magic Kingdom® Ticket', '&lt;p&gt;Ingresso de um dia para a Disney, ou melhor,&amp;nbsp;Magic Kingdom®&lt;/p&gt;\r\n', 'Ingresso de 1 dia Disney Magia a sua maneira. Orlando, FL.\r\n', 'ingressos', 'orlando, disney, ingresso, 1 dia, Magic Kingdom, disney'),
(54, 4, '02 DIAS - Magia a sua maneira Disney', '&lt;p&gt;Ingresso de um dia para a Disney, ou melhor,&amp;nbsp;Magic Kingdom®&lt;/p&gt;\r\n', 'Ingresso de 2 dias valido para qualquer parque temático da Disney em Orlando', 'ingressos', 'orlando, disney, ingresso, 2 dias, Magic Kingdom, disney, magia, sua, maneira'),
(55, 4, '03 DIAS - Magia a sua maneira Disney', '&lt;p&gt;Ingresso de tres dias para os parques tematicos da&amp;nbsp;Disney,&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Magic Kingdom®&lt;/li&gt;\r\n	&lt;li&gt;Epcot&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;®&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;Hollywood Studios&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;®&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;Animal Kingdom&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;®&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'Ingresso de 3 dias valido para qualquer parque temático da Disney em Orlando', 'ingressos', 'orlando, disney, ingresso, 2 dias, Magic Kingdom, disney, magia, sua, maneira'),
(56, 4, '04 DIAS - Magia a sua maneira Disney', '&lt;p&gt;Ingresso de quatro dias para os parques tematicos da&amp;nbsp;Disney,&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Magic Kingdom®&lt;/li&gt;\r\n	&lt;li&gt;Epcot&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;®&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;Hollywood Studios&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;®&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;Animal Kingdom&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;®&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'Ingresso de 4 dias valido para qualquer parque temático da Disney em Orlando', 'ingressos', 'orlando, disney, ingresso, 2 dias, Magic Kingdom, epcot, animal, mgm, disney, magia, sua, maneira'),
(57, 4, '1 Dia Universal ou Island of Adventure', '&lt;p&gt;Prepare-se para curtir todo um universo de ação, aventura e diversão! É o único lugar no mundo com dois incríveis parques temáticos, vida noturna ininterrupta e três hotéis de classe internacional, tudo em um único lugar. O Universal Orlando Resort possui ingressos sob medida para você e sua família. Ingressos de vários dias para uma experiência com mais flexibilidade.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://daxam.homolog.lojavirtual.digital/image/data/universal.island.adventure.orlando.jpg&quot; style=&quot;width: 449px; height: 60px; float: left;&quot; /&gt;&lt;/p&gt;\r\n', 'Ingresso de 1 dia para Universal Studios ou Island of adventure', 'Universal ', 'universal, harry, potter, orlando, desconto, ingressos'),
(58, 4, '2 Parques Bonus Ticket', '&lt;p&gt;Quatorze (14) dias consecutivos de acesso ilimitado aos parques:&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Inclui também acesso ao Universal CityWalk® durante quatorze (14) dias consecutivos. Esta oferta é exclusivamente online e não está disponível na entrada do parque.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://daxam.homolog.lojavirtual.digital/image/data/universal.island.adventure.orlando.jpg&quot; style=&quot;width: 449px; height: 60px; float: left;&quot; /&gt;&lt;/p&gt;\r\n', 'Quatorze (14) dias consecutivos de acesso ilimitado aos parques Universal Studios ou Island of adventure', 'Universal ', 'universal, harry, potter, orlando, desconto, ingressos'),
(59, 4, '3 Parques Bonus Ticket', '&lt;p&gt;Quatorze (14) dias consecutivos de acesso ilimitado aos parques:&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;ingressos universal orlando&quot; src=&quot;http://daxam.homolog.lojavirtual.digital/image/data/universal-florida-3parques.jpg&quot; style=&quot;line-height: 20.7999992370605px; opacity: 0.9; width: 449px; height: 59px; float: left;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Inclui também acesso ao Universal CityWalk® durante quatorze (14) dias consecutivos.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n', 'Quatorze (14) dias consecutivos de acesso ilimitado aos parques Universal Studios, Island of adventure e Wet ´n Wild', 'Universal ', 'universal, harry, potter, orlando, desconto, ingressos, wet n wild, 14 dias'),
(60, 4, '5 parques', '&lt;p&gt;Inclui entrada ilimitada por 14 dias aos 5 parques listados:&lt;/p&gt;\r\n\r\n&lt;p&gt;Universal Studios Florida®, Islands of Adventure®, Sea World of Orlando®, Sea World Aquatica® , SeaWorld’s Waterpark and Wet ''n Wild®&lt;/p&gt;\r\n', 'Universal Studios Florida®, Islands of Adventure®, Sea World of Orlando®, Sea World Aquatica® , SeaWorld’s Waterpark and Wet ''n Wild®', 'orlando', 'universal, harry, potter, orlando, desconto, ingressos, seaworld, wetwild, florida'),
(61, 4, '6 parques', '&lt;p&gt;Inclui entrada ilimitada por 14 dias aos 6&amp;nbsp;parques listados:&lt;/p&gt;\r\n\r\n&lt;p&gt;Universal Studios Florida®, Islands of Adventure®, Sea World of Orlando®, Sea World Aquatica® , SeaWorld’s Waterpark and Wet ''n Wild® e Busch &lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;Gardens®&amp;nbsp;&lt;/span&gt;em Tampa.&lt;/p&gt;\r\n\r\n&lt;p&gt;O Orlando FlexTicket™ Plus inclui tambem Busch Gardens® em Tampa Bay com transporte GRATUITO de ônibus no expresso Busch Gardens Shuttle de Orlando para Tampa.&lt;/p&gt;\r\n', 'Universal Studios Florida®, Islands of Adventure®, Sea World of Orlando®, Sea World Aquatica® , SeaWorld’s Waterpark and Wet ''n Wild® e Busch Garde em Tampa', 'orlando', 'universal, harry, potter, orlando, desconto, ingressos, seaworld, wetwild, florida, buschgardens'),
(71, 4, 'Brisbane 4 dias', '&lt;p&gt;&lt;strong&gt;DIA 1: CHEGADA EM BRISBANE&lt;/strong&gt;&lt;br /&gt;\r\nNa chegada no aeroporto de Brisbane, traslado regular para sua acomodação.&lt;br /&gt;\r\nO restante do dia é livre&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: BRISBANE CITY SIGHTS&lt;/strong&gt;&lt;br /&gt;\r\nComece hoje com um passeio de manhã com Australian Day Tours proporcionando uma grande visão do centro da cidade e subúrbios. Ouça a história desta cidade cada vez maior e veja porque mais e mais pessoas gostam de chamar Brisbane de lar. Faça um cruzeiro relaxante ao longo do rio Brisbane pelo centro da cidade, completa com comentário informativo de especialistas locais e chá Devonshire. Visite South Bank Parklands e explore as atrações, como a Galeria de Arte, Museu e Centro Cultural. Obtenha um sabor da história de Brisbane, seu centro vibrante e cultura clube de café neste passeio de meio dia com guia dos lugares e arquitetura que caracterizam a cidade capital de Queensland. Faça um passeio na Roda Gigante de Brisbane. Saiba mais sobre o passado presidiário do século 19 deste centro de rápido crescimento e cosmopolita situado nas margens do rio Brisbane. Passe Story Bridge, o Jardim Botânico e muitos sítios históricos com histórias para contar. O passeio parte e termina do seu hotel.&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: CROC EXPRESS A ZOO AUSTRALIA&amp;nbsp;&lt;/strong&gt;&lt;br /&gt;\r\nA Sunshine Coast, casa do Caçador de Crocodilos e Zoo da Australia, tem sido um parque de férias popular para o australiano e visitantes. Este passeio com Australian Day Tours vai diretamente para e do Zoo Austrália, famoso pelas travessuras de Steve Irwin e Terri com seus documentários mundiais e, agora, um legado vivo de Steve. Você terá tempo para experimentar o melhor do Zoo da Australia. Este parque temático da vida selvagem é muito bom para se apressar. Despender quase 6 horas vendo os muitos shows e manifestações, incluindo a alimentação de crocodilos e manipulação de cobra. Os manipuladores andam com alguns animais pelo parque para que você possa ver de perto&amp;nbsp;&amp;nbsp; &amp;nbsp;. O Zoo tem uma equipe de mais de 500 que acreditam na conservação através da educação emocionante, e vai garantir que você tenha uma experiência de vida selvagem que nunca vou esquecer. Veja as majestosas Montanhas Glasshouse rodeadas por fazendas de abacaxi e florestas de pinheiros enquanto você viaja ao longo da rota cênica Steve Irwin Way. O passeio parte e termina do seu hotel.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 4: PARTIDA BRISBANE&lt;/strong&gt;&lt;br /&gt;\r\nEm horario pré determinado seu traslado regular irá transportá-lo de volta ao aeroporto de Brisbane para a sua partida&lt;/p&gt;\r\n', 'Pacote parte terrestre em Brisbane', 'pacotes', 'australia, melbourne, pacotes, passeios, city tour, , captain cook, koala, canguru, pinguins'),
(72, 4, 'Experiencia Australiana 16 dias', '&lt;p&gt;amos ajudar a experimentar verdadeiramente alguns dos lugares favoritos da Austrália e você não se desapontará. A partir das ruas ocultas de &lt;strong&gt;MELBOURNE &lt;/strong&gt;para um shopping em &lt;strong&gt;SYDNEY&lt;/strong&gt;, no ambiente descontraído e úmido de &lt;strong&gt;DARWIN &lt;/strong&gt;e do pitoresco &quot;em nenhum outro lugar na Terra&quot; &lt;strong&gt;AYERS ROCK&lt;/strong&gt; e da &lt;strong&gt;GRANDE BARREIRA DE CORAIS&lt;/strong&gt;, apaixone-se e descubra a verdadeira Austrália.&lt;/p&gt;\r\n\r\n&lt;p&gt;Este itinerário inclui passeios e acomodação em hotéis selecionados e traslados que são a certeza de fazer a sua viagem Down Under livre de estresse e relaxada.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Itinerário&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 1: CHEGADA EM MELBOURNE&lt;/strong&gt;&lt;br /&gt;\r\nChegada ao aeroporto de Melbourne, traslado regular para seu hotel. O restante do dia é livre.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: PHILLIP ISLAND E PENGUIN PARADE&lt;/strong&gt;&lt;br /&gt;\r\nA manhã é livre e esta tarde a partir da Federation Square até Ilhas Phillip. Visite Warrook, uma fazenda de gado na região próspera de Gippsland. Encontre coalas em seu habitat natural, no Centro de Conservação Koala. Volta ao longo de calçadões elevados e coalas nas árvores. Observe paisagens costeiras espetaculares no Nobbies, dois afloramentos rochosos abundantes em vida marinha. Das passarelas você pode ter um vislumbre da maior população de focas da Austrália que vivem ao longo da costa rochosa. Assista os pinguins na batalha do surf e fazer o seu caminho para a suas tocas nas dunas. Conheça os métodos ambientais e de conservação que são iniciadas para garantir a notável vida selvagem e geologia vulnerável da Phillip Island. Veja os pequenos pinguins de perto voltando para seus ninhos para encontrar suas famílias jovens.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: MARAVILHOSA MELBOURNE&lt;/strong&gt;&lt;br /&gt;\r\nEsta manhã você vai partir da Federation Square para descobrir todos os encantos da elegante e contemporânea Melbourne. Ver Casa do Capitão Cook, Mercado da rainha Victoria, Fitzroy Gardens e Albert Park, local do Australian Formula One Grand Prix. Visite o Santuário histórico de Recordação e passeio ao longo da orla da Southbank. Esta cidade tem tudo - descubra por si mesmo. A tarde é livre.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 4: SAÍDA DE MELBOURNE PARA SYDNEY&lt;/strong&gt;&lt;br /&gt;\r\nNesta manhã traslado regular de volta ao aeroporto de Melbourne.&amp;nbsp;&lt;br /&gt;\r\nNa chegada no aeroporto de Sydney traslado regular para sua acomodação. Então você está livre para gastar o resto do dia a explorando Sydney em seu próprio ritmo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 5: BLUE MOUNTAINS E WILDLIFE PARK&lt;/strong&gt;&lt;br /&gt;\r\nDescubra as espetaculares Montanhas Azuis e ver a vida selvagem nativa.&lt;br /&gt;\r\nHoje, você vai passar pelo local dos Jogos Olímpicos de 2000, visite aldeia Leura para ver a deliciosa mistura de jardins bem cuidados e lojas pitorescas sobre a maneira de Echo Point para ver a famosa formação rochosa Três Irmãs. Em seguida, viaje através do Katoomba e descubra a beleza extraordinária das Montanhas Azuis, no parque nacional desfrute de uma caminhada fácil e ouça as antigas lendas indígenas desta formação rochosa impressionante.&amp;nbsp;&lt;br /&gt;\r\nFinalmente desfrutar de um encontro à tarde no Featherdale Park com os animais nativos australianos.&lt;br /&gt;\r\nNo final da tarde, traslado de volta para sua acomodação.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 6: SIGHTS SYDNEY com THE ROCKS&lt;/strong&gt;&lt;br /&gt;\r\nUm city tour de Sydney com The Rocks é uma introdução completa de Sydney e seus vizinhos. Na manhã, Manly Beach para um passeio ao longo do Corso para ver a praia que tinha fez Manly famosa. Ao longo do caminho para Manly aprecie vistas do Darling Harbour, e depois atravessando a Sydney Harbour Bridge.&lt;br /&gt;\r\nParada no Ponto Milsons para uma vista espetacular sobre o Opera House e a Harbour Bridge. Desfrute de vistas do Mirante Seaforth e parada no Mirante Arabanoo para uma visão panorâmica do Oceano Pacífico. Desfrute de tempo em na praia Manly antes de voltar para Sydney. Uma vez de volta em Sydney há 2 horas livres antes do passeio da tarde começar. Na parte da tarde, dirigimos através da área histórica de Rocks e contemplar a vista da Opera House, Hyde Park, Catedral de Santa Maria, Casa do Parlamento e da Galeria de Arte. Parada na Mrs Macquarie''s Chair para magníficas vistas sobre a Opera House e a Harbour Bridge.&lt;/p&gt;\r\n\r\n&lt;p&gt;Veja o colorido Royal Botanic Gardens e desfrute de uma vista deslumbrante do The Gap. Pare na mundialmente famosa Bondi Beach e desfrute da paisagem espetacular antes de retornar a Sydney, passando por Paddington, os subúrbios orientais e exclusivos Bay Rushcutters.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 7: SAÍDA DE SYDNEY PARA AYERS ROCK&lt;/strong&gt;&lt;br /&gt;\r\nNesta manhã traslado regular para transportá-lo de volta ao aeroporto de Sydney.&lt;br /&gt;\r\nChegada em Ayers Rock antes de 13h00min para participar de seu passeio.&lt;br /&gt;\r\nVisite o Cultural Centre and Maruku Arts and Craft Cooperative. Dê um passeio guiado no charco de Mutitjulu. Veja pinturas rupestres e ouça as lendas de Kuniya Tjukurpa (Python Dreaming), aprenda sobre a geologia e flora da região na caminhada de Mala. Passeio na base de Uluru e explore Gorge Kantju antes de você parar e desfrutar de uma taça e ver o pôr do sol sobre Uluru. Termine o dia com um jantar típico de churrasco Aussie e jantar sob as estrelas.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 8: EXPLORANDO ULURU E KATA TJUTA&lt;/strong&gt;&lt;br /&gt;\r\nLevante cedo e continue excursionando no Uluru Kata-Tjuta National Park. Testemunhe Uluru ao amanhecer e veja o deserto vir à vida. Vá a para a parte ocidental do Uluru-Kata Tjuta National Park para as imensas 36 cúpulas de rocha de Kata Tjuta. Desfrute de um passeio guiado em Walpa Gorge (Olga). Maravilhar-se com as paredes íngremes que ladeiam você enquanto entra no desfiladeiro. Aprenda sobre a formação cúpulas e da vida selvagem da região.&amp;nbsp;&lt;br /&gt;\r\nEsta noite uma experiência inesquecível espera por você num jantar Sounds of Silence com uma visão ininterrupta 360graus desta vasta paisagem. Na frente é o fabuloso Uluru; trás são a cúpulas de Kata Tjuta, e, possivelmente, o pôr do sol mais espetacular que você já viu. Desfrute de vinho espumante e canapés, seguido de um jantar buffet gourmet na churrasqueira. Com o termino do jantar sua atenção então se vira para alguns dos melhores céus estrelados no mundo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 9: SAÍDA AYERS ROCK PARA DARWIN&lt;/strong&gt;&lt;br /&gt;\r\nNesta manhã, traslado regular de volta para o aeroporto de Ayers Rock.&lt;br /&gt;\r\nNa chegada no aeroporto de Darwin, traslado para suas acomodações.&lt;br /&gt;\r\nO resto do dia é livre.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 10: KAKADU NOURLANGIE E YELLOW WATER COM ALMOÇO&lt;/strong&gt;&lt;br /&gt;\r\nNesta manhã saída de Darwin para o Kakadu National Park. Explorar as vastas zonas úmidas Kakadu e escarpas antigas. Visite também o Warradjan - Centro de Cultura Indígena, onde os tradicionais proprietários de terras indígenas (Bininj) de Kakadu National Park contam histórias de sua cultura através das mostras e exposições. Mantenha-se atento para os animais selvagens, incluindo crocodilos enquanto você faz um passeio de barco na Yellow Water billabong. No caminho para Darwin, parada em Window no Centro de Visitantes do Pântano para aprender sobre a vida selvagem, mudanças sazonais, os grupos de animais diversos e História Aborígine e Européia. Desfrute de uma bebida cortesia, com vistas sobre as planícies de inundação antes de voltar a Darwin.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 11: UM DIA DE ADMISSÃO - CROCOSAURUS COVE&lt;/strong&gt;&lt;br /&gt;\r\nEntre no mundo do crocodilo de água salgada do Northern Territory incrível, com alguns dos maiores cativeiros em exibição. Traga sua roupa de banho para &quot;Nadar com os Crocs&quot; na piscina separada lado a lado com os crocodilos gigantes. Veja também a maior exposição de répteis da Austrália no mundo, um novo aquário de dois andares, um santuário de tartarugas, arte aborígine e monitores de Cultura.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 12: SAÍDA DE DARWIN PARA CAIRNS&lt;/strong&gt;&lt;br /&gt;\r\nNesta manhã, traslado para o aeroporto de Darwin.&lt;br /&gt;\r\nNa chegada em Cairns traslado regular para sua acomodação. O resto do dia é livre.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 13: REEF MAGIC CRUISES - OUTER REEF FULL DAY CRUISE-SNORKEL&lt;/strong&gt;&lt;br /&gt;\r\nReef Magic Cruises parte de Cairns até a Grande Barreira de Corais para você passar 5 horas. Os hóspedes têm o tempo e espaço para desfrutar do maior leque de atividades no recife disponíveis em um ambiente descontraído, divertido e personalizado.&lt;br /&gt;\r\nAdequado para todas as faixas etárias e habilidades de natação, atividades incluem Snorkelling, introdutório e mergulho certificado, passeios guiados de snorkel, ou fique seco e faça um passeio interativo no semi-submersível, ou visite o Observatório Subaquático. Traslados do hotel estão incluídos.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 14: DAINTREE E AVENTURA CROC&lt;/strong&gt;&lt;br /&gt;\r\nEste passeio de Eco-turismo certificado segue para o norte para dar-lhe um dia memorável do cenário espetacular, aventura e atrações. Desfrute de um cruzeiro da vida selvagem no poderoso rio Daintree e visite a vila Daintree e seu museu de madeira. Desfrute de um fabuloso almoço Barramundi e deguste frutas tropicais no Daintree Tea House. Na parte da tarde você vai visitar o cênico Mossman Gorge para um passeio a pé guiado na floresta, passeio por Port Douglas e depois para a Aventura Crocodile Hartley Creek. Hartley permite ter encontros íntimos com todos os animais selvagens dos trópicos e se divertir com o show do ataque de crocodilo. Finalmente o dia é completado com o retorno a Cairns.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 15: DIA LIVRE EM CAIRNS&lt;/strong&gt;&lt;br /&gt;\r\nTire um tempo para explorar a cidade de Cairns - talvez o alto mar para relaxar, fazer algumas compras, ou talvez uma outra excursão opcional.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 16: SAÍDA CAIRNS&lt;/strong&gt;&lt;br /&gt;\r\nNesta manhã, traslado regular de volta para o aeroporto de Cairns aeroporto para sua partida.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;strong&gt;INCLUI&lt;/strong&gt;&lt;/em&gt;:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;&lt;strong&gt;MELBOURNE&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Traslado Regular do Aeroporto / Hotel / Aeroporto&lt;/li&gt;\r\n	&lt;li&gt;3 noites de acomodação&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Passeio - Phillip Island and Penguin Parade&lt;/li&gt;\r\n	&lt;li&gt;Passeio - Day Marvellous Melbourne&amp;nbsp;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;&lt;strong&gt;SYDNEY&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Traslado Regular do Aeroporto / Hotel / Aeroporto&lt;/li&gt;\r\n	&lt;li&gt;3 noites de acomodação&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Passeio - Blue Mountains and Wildlife Park com almoço&lt;/li&gt;\r\n	&lt;li&gt;Passeio - Sydney Sights with the Works&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;&lt;strong&gt;AYERS ROCK&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Passeio - 2 Dias Uluru/Ayers Rock Por do Sol &amp;nbsp;&amp;amp; Kata Tjuta incluindo traslado de aeroporto na chegada&lt;/li&gt;\r\n	&lt;li&gt;2 noites de acomodação&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Refeição – Uluru Aussie BBQ/Churrasco típico Australiano&lt;/li&gt;\r\n	&lt;li&gt;Refeição – Sounds Of Silence Dinner/Jantar&lt;/li&gt;\r\n	&lt;li&gt;Traslado regular para o aeroporto de Ayers Rock&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;&lt;strong&gt;DARWIN&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Traslado Regular do Aeroporto / Hotel / Aeroporto&lt;/li&gt;\r\n	&lt;li&gt;3 noites de acomodação&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Passeio - 1 Dia Kakadu Nourlangie e Yellow Water Cruise com almoço incluído.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Passeio - Admissão 1 dia Crocosaurus Cove&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;&lt;strong&gt;CAIRNS&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Traslado Regular do Aeroporto / Hotel / Aeroporto&lt;/li&gt;\r\n	&lt;li&gt;4 noites de acomodação&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Passeio - &amp;nbsp;Reef Magic Cruises, Outer Reef Full Day Cruise-Snorkel&lt;/li&gt;\r\n	&lt;li&gt;Passeio - &amp;nbsp;– Daintree and Croc Adventure&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Pacote parte terrestre Australia com 16 dias de duração. ', 'pacotes', 'australia, sydney, cairns, grande barreira de corais, Melbourne, darwn, ayers rock, pacotes, passeios, city tour, , captain cook, koala, canguru, pinguins');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(73, 4, 'Trem Australia', '&lt;p&gt;Rail Australia&lt;/p&gt;\r\n\r\n&lt;p&gt;Viajar de trem é uma forma conveniente, econômica e panorâmica de explorar a Austrália. Os serviços ferroviários interestaduais e intraestaduais ligam as nossas cidades e centros regionais, enquanto viagens de trem que atravessam o país oferecem uma perspectiva única para o tamanho e diversidade da Austrália. As opções de viagem vão de econômicas a luxuosas e uma variedade de bilhetes de trem pode reduzir os seus custos se planeja ver grandes seções do país.&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Passe de trem na Austrália Discover Pass&lt;/p&gt;\r\n\r\n&lt;p&gt;Ótimo valor quando você quer cobrir um monte de país&lt;br /&gt;\r\nA rede Regional NSW TrainLink conecta de trem e ônibus mais de 365 destinos em toda a Nova Gales do Sul, Victoria, Queensland e o Território da Capital Australiana.&lt;/p&gt;\r\n\r\n&lt;p&gt;Com o Discover Pass, você pode conhecer lugares tanto quanto quiser, no seu tempo de jeito que voce gosta.&lt;br /&gt;\r\n•&amp;nbsp;&amp;nbsp; &amp;nbsp;Viagens Ilimitadas classe Economia para qualquer lugar num trem NSW TrainLink Regional e sua rede de ônibus&lt;br /&gt;\r\n•&amp;nbsp;&amp;nbsp; &amp;nbsp;Escolha de passes: 14 dias, 1 mês, 3 meses ou 6 meses&lt;br /&gt;\r\n•&amp;nbsp;&amp;nbsp; &amp;nbsp;Pare onde quiser, e ficar o tempo que você quiser&lt;br /&gt;\r\n•&amp;nbsp;&amp;nbsp; &amp;nbsp;Compre até 6 meses antes de viajar&lt;br /&gt;\r\nValores por pessoa em dólares Australianos,&amp;nbsp;&lt;br /&gt;\r\nvalidos até 31 de março de 2015&lt;br /&gt;\r\nValor do passe DISCOVER PASS&lt;br /&gt;\r\n14 dias Discovery Pass&amp;nbsp;&amp;nbsp; &amp;nbsp;AUD 234&lt;br /&gt;\r\n1 mês Discovery Pass&amp;nbsp;&amp;nbsp; &amp;nbsp;AUD 278&lt;br /&gt;\r\n3 mês Discovery Pass&amp;nbsp;&amp;nbsp; &amp;nbsp;AUD 301&lt;br /&gt;\r\n6 mês Discovery Pass&amp;nbsp;&amp;nbsp; &amp;nbsp;AUD 424&lt;/p&gt;\r\n\r\n&lt;p&gt;Sydney&lt;br /&gt;\r\nÉ a maior, a mais antiga e, possivelmente, mais cosmopolita cidade da Austrália, e uma das cidades mais vibrantes e emocionantes do planeta. Seu porto espumante, praias deslumbrantes e ensolarado clima mediterrâneo são acompanhadas por uma série de museus esplêndidos e galerias, vida noturna animada, estilo de vida descontraído e rico património arquitetônico.&lt;/p&gt;\r\n\r\n&lt;p&gt;New South Wales&amp;nbsp;&lt;br /&gt;\r\nSe estende através das planícies ocidentais de sol de norte a sul.&lt;br /&gt;\r\nÉ onde você vai encontrar cidades inequivocamente australianos fundada por garimpeiros, pecuaristas e agricultores.&lt;br /&gt;\r\nEles agora atrair os amantes de comida e história.&lt;/p&gt;\r\n\r\n&lt;p&gt;Se o seu sonho é ir mais a oeste, em seguida, ir para o Outback, rico em património aborígine ea magia do deserto.&lt;br /&gt;\r\nO posto avançado mais distante em NSW é Broken Hill.&lt;br /&gt;\r\nSiga para o &amp;nbsp;North Coast para um gosto da cultura do surf clássico Aussie, ou descobrir a South Coast, com mais de 30 parques nacionais, parques marinhos e reservas.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mas você também pode usar seu Discover Pass para deixar o estado.&lt;br /&gt;\r\nServiços NSW TrainLink pode levá-lo para o norte até Brisbane e Gold Coast de Queensland, até o sul de Melbourne, e para a capital do país, Canberra.&lt;br /&gt;\r\nSolicite Atendimento&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;br /&gt;\r\nA Austrália também tem viagens ferroviárias épicas, tais como The Ghan e Indian-Pacific, que atravessam o continente, oferecendo conforto e uma sensação de romance de tempos passados.&lt;/p&gt;\r\n\r\n&lt;p&gt;O Indian-Pacific viaja entre Sydney e Perth, parando nos pontos turísticos de Broken Hill, Adelaide e em Kalgoorlie, que é rica em ouro.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;O lendário Ghan viaja entre Adelaide e Darwin, abrangendo o Red Centre da Austrália e o Top End tropical.&lt;/p&gt;\r\n', 'Opções de viagens de trem na Australia', 'trem', 'trem, australia, Indian-Pacifi, Ghan, NSW TrainLink, Discover Pass'),
(74, 4, 'Ayers Rock 3 dias', '&lt;p&gt;Experimente a cultura das histórias aborígenes, bem como conhecer a flora e fauna da região. Destaques incluem o nascer e o pôr do sol no Uluru e o Walppa Gorge (Olga) e, sem dúvida, a experiência de um jantar ao Sons do Silêncio.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;strong&gt;Itinerário&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 1: CHEGADA EM AYERS ROCK&lt;/strong&gt;&lt;br /&gt;\r\nChegada em Ayers Rock antes de 13hs para participar do seu passeio com Australian Pacific Tours. Visite o Centro Cultural e Cooperativa de Artesanato Marukue. Dê uma caminhada guiada ao charco de Mutitjulu. Observe pinturas rupestres e ouça as lendas de Kuniya Tjukurpa ((Python Dreaming), aprenda sobre a geologia e flora da região na caminhada de Mala. Passeio a base de Uluru e explorare Gorge Kantju antes de parar e apreciar um drink cortesia para observar o pôr do sol sobre Uluru. Termine o dia com um típico jantar de churrasco australiano sob as estrelas.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: EXPLORANDO ULURU E KATA TJUTA&lt;/strong&gt;&lt;br /&gt;\r\nLevantar cedo e fazer passeio, hoje, com Australian Pacific Tours você entra no Uluru Kata-Tjuta National Park. Testemunha Uluru ao amanhecer e veja o deserto vir à vida. Viaje para o trecho oeste de Uluru-Kata Tjuta National Park para as imensas 36 cúpulas de rocha de Kata Tjuta. Desfrute de um passeio guiado em Wallpa Goorge (Olga). Maravilhe-se com as paredes íngremes que ladeiam você enquanto você entra no desfiladeiro. Aprenda a formação de domos e da vida selvagem da região.&lt;/p&gt;\r\n\r\n&lt;p&gt;Neste final de tarde uma experiência inesquecível espera por você num jantar ao Sounds of Silence &amp;nbsp;com uma vista ininterrupta de 360º &amp;nbsp;desta vasta paisagem. Em frente é a fábula Uluruu; atrás são as cúpulas de Kata Tjuta, e, possivelmente, o pôr do sol mais espetacular que você já viu. Desfrute de espumante e canapés, seguido por um jantar buffet gourmet na churrasqueira.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: PARTIDA AYERS ROCK&lt;/strong&gt;&lt;br /&gt;\r\nNesta manhã em horário apropriado, traslado ara o aeroporto.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;strong&gt;inclui: &lt;/strong&gt;&lt;/em&gt;:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Traslado regular de aeroporto ida e volta.&lt;/li&gt;\r\n	&lt;li&gt;Acomodação por 3 noites&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Refeição: Jantar Sounds Of Silence @ Voyages Hotels and Resorts&lt;/li&gt;\r\n	&lt;li&gt;Passeio: Australian Pacific Tours - 2 Day Uluru/Ayers Rock Sunset &amp;amp; Kata Tjuta.&lt;/li&gt;\r\n	&lt;li&gt;Refeição: Uluru Aussie BBQ (churrasco australiano)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Pacote parte terrestre Australia com 16 dias de duração. ', 'pacotes', 'australia, ayers rock, Uluru Kata-Tjuta National Park, pacotes, passeios, city tour, , captain cook, koala, canguru, pinguins'),
(76, 4, 'De carro dando uma volta na Ilha do Sul 12 dias', '&lt;p&gt;&lt;strong&gt;U&lt;/strong&gt;ma paleta de cenários, a Ilha do Sul da Nova Zelândia acolhe as mais puras paisagens naturais que você nunca experimentou.&lt;br /&gt;\r\nApresentando o melhor dos bens da natureza, onde alpes imponentes encontram&amp;nbsp;sons pacíficos de costas escarpadas fundindo com planícies arrebatadoras. Não vamos esquecer a espinha dorsal da ilha - a maioria dos moradores terra-a-terra que você já conheceu.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Itinerário:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 01: Christchurch&lt;/strong&gt;&lt;br /&gt;\r\nChristchurch é uma das cidades históricas da Nova Zelândia com um ar distintamente &quot;Inglês&quot;. Tambem conhecida como Cidade Jardim pelo conjunto de parques e igrejas projetadas em meados da década de 1800. A cidade cresceu em uma comunidade eclética e vibrante, com teatros, galerias e festivais . O Jardim Botânico, escondido em um loop do rio Avon, são, indiscutivelmente, os mais belos jardins da Nova Zelândia.&lt;br /&gt;\r\nApós sua chegada, traslado para o hotel na cidade.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 02: Christchurch para Twizel ( 330 km )&lt;/strong&gt;&lt;br /&gt;\r\nVocê pega o seu carro hoje e inicia seu programa.&lt;br /&gt;\r\nEm direção ao oeste de Christchurch você vai cruzar as férteis planícies de Canterbury e as comunidades rurais de Geraldine e Fairlie antes de entrar no ermo da MacKenzie Country na região de Mount Cook . Pare na Igreja do&lt;br /&gt;\r\nBom Pastor, no Lago Tekapo para uma das mais pitorescas áreas de piquenique da Nova Zelândia.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 03: Twizel para Dunedin ( 330 km )&lt;/strong&gt;&lt;br /&gt;\r\nViaje para o interior via Omarama e Lago Pukaki , um espetacular lago glacial de cor turquesa. Passe por Oamaru e Palmerston na região de North Otago em seu caminho para a cidade de Dunedin . Dunedin, fundada por imigrantes escoceses em 1848, tem o caráter distintivo de uma cidade universitária como muitos cidadãos são estudantes. Dunedin está situada na Península de Otago, que é recortado com baías, fornecendo muitos locais de piquenique e de natação. As colinas acima são cruzadas com paredes de pedra.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 04: Dunedin&lt;/strong&gt;&lt;br /&gt;\r\nHoje sugerimos um passeio ao longo da Península de Otago para uma amostra única da vida selvagem da ilha sul encontrado em abundância nesta península cênica. Na ponta da península, fica Taiaroa Head, uma reserva especial , que inclui o único local em continente de assentamento do magnífico albatroz-real . Os raros pinguins de olhos amarelos também pode ser visto na Yellow -Eyed Pinguim Reserve, no meio do caminho ao longo da península .&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 05: Dunedin para Te Anau ( 292 km )&lt;/strong&gt;&lt;br /&gt;\r\nA posição mais ao sul no seu percurso leva através do município de Gore, uma dos principais zonas de pesca da truta marrom do mundo. Continuando Ocidente via Lumsden vai chegar em Te Anau, na entrada para o Parque Nacional de Fiordland .&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 06: Te Anau para Queenstown ( 170 km )&lt;/strong&gt;&lt;br /&gt;\r\nParque Nacional de Fiordland está listado como Patrimônio Mundial. Nos 1.520.000 hectares, é o maior parque nacional da Nova Zelândia e um dos maiores do mundo . Milford Sound é o mais conhecido , o mais facilmente acessível e um dos mais grandiosos fiordes ao longo da costa . Você tem que conhecer um dos mais famosos marcos da Nova Zelândia, Mitre Peak , que se eleva 1.692 metros quase em linha reta acima da água.. Esta tarde, continue para o norte ao longo das margens do Lago Wakatipu até Queenstown.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 07: Queenstown&lt;/strong&gt;&lt;br /&gt;\r\nEstes dois dias são de lazer para você explorar as muitas atividades e lindas paisagens de Queenstown e as zonas circundantes. Se você estiver sentindo aventureiro, faça um passeio com Heli -Jet no Rio Kawarau , Shotover Jet no Rio Shotover , tente rafting com um passeio de helicóptero e depois fazer bungee jumping. Ou, para um dia mais relaxante , faça um cruzeiro no Lago Wakatipu a bordo do TSS Earnslaw ou apenas fazer um piquenique e observar os belos cenários.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 08: Queenstown&lt;/strong&gt;&lt;br /&gt;\r\nDia a seu lazer&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 09: Queenstown para Região Glacial (404 km )&lt;/strong&gt;&lt;br /&gt;\r\nA sua rota de hoje leva você através da cidade a beira do lago de Wanaka e sobre a passagem de Haast no Parque Nacional Westland - um dos principais pontos turísticos na Nova Zelândia. O famoso Franz Josef Glacier é uma das geleiras mais íngremes e mais acessíveis do mundo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 10: Região Glacial para Hokitika ( 139 km)&lt;/strong&gt;&lt;br /&gt;\r\nDe Franz Josef dirija para o norte ao longo da espetacular costa oeste da Auto-estrada 6, até Hokitika .&amp;nbsp;&lt;br /&gt;\r\nHokitika foi o centro da área mais rica produtora de ouro na Nova Zelândia em 1960. Visite o Museu histórico da Costa Oeste para uma visão sobre a história da região .&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 11: Hokitika a Nelson ( 330 km )&lt;/strong&gt;&lt;br /&gt;\r\nApós a costa oeste para o norte, você vai entrar na região do Parque Nacional Abel Tasman e prossiga para a cidade de artesãos de Nelson, cidade mais ensolarada da Nova Zelândia, uma cidade ladeada pelo mar, praias de areia dourada e colinas.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 12: Nelson para Picton&lt;/strong&gt;&lt;br /&gt;\r\nDirija através de Havelock para Picton , onde esta parte da sua viagem termina.&amp;nbsp;&lt;br /&gt;\r\nDe Picton você tem fácil acesso aos espetaculares Marlborough Sounds .&lt;/p&gt;\r\n\r\n&lt;p&gt;O programa termina hoje, no entanto você ainda tem pleno uso do seu carro locado durante todo o dia.&lt;br /&gt;\r\nPor favor, note que seu carro deve ser devolvido na seguinte manhã, o mais tardar, no momento em que foi pego no dia 2.&lt;/p&gt;\r\n', 'Pacote de viagens terrestre na Ilha do Sul da Nova Zelandia com 12 dias de duração', 'pacotes', 'nova zelandia, pacotes, ilha do sul, Christchurch, Twizel , Dunedin , Te Anau, Milford Sound, Queenstown, Wanaka, Hokitika, Franz Josef , Nelson, Picton, Marlborough Sounds, '),
(75, 4, 'Darwin 3 dias', '&lt;p&gt;&lt;strong&gt;S&lt;/strong&gt;ua história colorida com mais de 50 nacionalidades tem contribuído para a diversidade cultural de Darwin, incluindo proprietários tradicionais da região os aborrgenes &amp;nbsp;Larrakia. A história de Darwin e do Top End cove encontrará em muitas reservas, museus históricos e atrações que mapeiam o progresso da região.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 1: CHEGADA EM DARWIN&lt;/strong&gt;&lt;br /&gt;\r\nNa chegada ao aeroporto de Darwin, será transferido de ônibus para a sua acomodação em Darwin.&lt;br /&gt;\r\nO resto do dia é a seu lazer.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: KAKADU NOURLANGIE&lt;/strong&gt;&lt;br /&gt;\r\nDepois de sair de Darwin viaje para o sul da Rodovia Arnhem através do rio Adelaide. Conduzido&amp;nbsp;através das planícies Marrakai onde uma grande variedade de fauna nativa faz desta região a sua casa. Pare no Rock Nourlangie onde seu motorista / guia vai liderar uma caminhada observando a arte rupestre aborígine.&lt;br /&gt;\r\nDesfrute de um almoço em Cooinda Lodge antes de participar com o guia local um cruzeiro no famoso Yellow Water Billabong. Busque crocodilos de água salgada e a colorida vida das aves conhecida nesta região. Visite o Centro Cultural aborígene Warradjan para ver as telas informativas que descrevem a tradições dos povos aborígenes em Kakadu, antes de retornar a Darwin.&lt;br /&gt;\r\n&amp;nbsp;&lt;br /&gt;\r\n&lt;strong&gt;DIA 3: LITCHFIELD WATERFALLS&lt;/strong&gt;&lt;br /&gt;\r\nDeixando de Darwin, seguimos a estrada de Stuart através do município de Batchelor até o Litchfield National Park. Visita as principais quedas do Parque, onde terá a oportunidade de caminhadas pela floresta de monção videira. Ver as quedas de Florence de um ponto de vista elevado antes de fazer o seu caminho até as escadas abaixo para a piscina com uma oportunidade de nadar, fazendo o caminho de volta através da floresta de monção. Nós viajamos para Tolmer para se apaixonar por uma magnífica vista sobre a água descendo em cascata para o charco profundo. Aventure-se nas &amp;nbsp;quedas Wangi por outra oportunidade de mergulho na grande piscina cristalina. Durante o dia, paramos para um piquenique. Retorna para Darwin. &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 4: PARTIDA DE DARWIN&lt;/strong&gt;&lt;br /&gt;\r\nEm horário apropriado seu traslado passará no hotel e te levara ao aeroporto&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;strong&gt;inclui:&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Traslado regular de aeroporto ida e volta.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Acomodação por 3 noites @ Novotel Atrium Darwin&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;AAT Kings 1 Day Litchfield Waterfalls Tour&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;AAT Kings 1 Day Kakadu National Park&amp;nbsp;&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Pacote parte terrestre para Darwin com 3 dias de duração. ', 'pacotes', 'australia, Darwin, Kakadu, Litchfield , pacotes, passeios, city tour, , captain cook, koala, canguru, pinguins'),
(77, 4, 'De carro pela Nova Zelandia 15 dias', '&lt;p&gt;De Auckland a Christchurch viajando de carro.&amp;nbsp;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Nova Zelândia é um país de imensa e diversificada paisagem. Você verá coisas aqui que você não vai ver em nenhum outro lugar do mundo.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Dentro de um dia ou dois do carro você pode ver espetaculares geleiras, fiordes pitorescos, montanhas escarpadas, vastas planícies, colinas, florestas subtropicais, um planalto vulcânico, e quilômetros de litoral com praias de areia branca. Grande parte dessas paisagens são protegidos por Parques Nacionais, com milhares de quilômetros de caminhadas e trilhas de abertura de sua beleza para o público.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em style=&quot;line-height: 1.6em;&quot;&gt;&lt;strong&gt;itinerário&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 01: AUCKLAND A PENÍNSULA DE COROMANDEL (160 KM)&lt;/strong&gt;&lt;br /&gt;\r\nSeguindo Sul na principal State Highway 1 de Auckland e na Highway 2 em direção a Península de Coromandel. Ao longo da costa da baia conhecida como Firth of Thames e o município de Thames fornece um lembrete da corrida do ouro , que começou em 1867. Por volta de 1900, a cidade tinha cerca de 19 mil habitantes. De Thames, é uma curta viagem através da bela Coromandel Ranges Mountains para a praia dos bacanas em Pauanui .&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 02: PENÍNSULA DE COROMANDEL&lt;/strong&gt;&lt;br /&gt;\r\nA Península de Coromandel é uma área bonita, com florestas temperadas , praias pitorescas, costas escarpadas e poços naturais para desfrutar . Dê uma bushwalk , um passeio na praia, solte uma linha , ou não fazer nada .&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 03: PENÍNSULA DE COROMANDEL PARA ROTORUA ( 218 KM)&lt;/strong&gt;&lt;br /&gt;\r\nContinue Sul de Pauanui passando muitas belas praias, e do município de Tauranga, um dos maiores portos do Norte da ilha. O percurso leva através do País da fruta kiwi em torno de Te Puke até o coração da atividade termal e centro cultural da Nova Zelândia, Rotorua.&lt;br /&gt;\r\nRotorua é no planalto vulcânico central de North Island , o que faz com que os gêiseres, piscinas de lama e água, gêiseres de vapor e terraços de sílica fervente. A mais conhecida área térmica é a Whakarewarewa Thermal Reserve .&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 04: ROTORUA PARA TONGARIRO NATIONAL PARK (177 KM)&lt;/strong&gt;&lt;br /&gt;\r\nViaje para o município de Taupo, bem à beira do Lago Taupo, o maior lago da Nova Zelândia. Taupo é um paraíso para os pescadores de trutas. Há também todo o tipo de atividades aquáticas disponíveis - para-sailng , vela, esqui aquático, windsurf , canoagem, rafting (no Rio Tongariro ), bem como passeios a cavalo , pára-quedismo e bungee jump . Ao norte de Taupo fica Huka Falls, uma área muito bonita. Dirija ao longo da costa leste do Lago Taupo até &amp;nbsp;Turangi, em seguida, na &amp;nbsp;State Highway 47 até o Tongariro National Park.&lt;br /&gt;\r\n&lt;em&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Dicaduca: Aqui vale uma noite extra, as caminhadas são incríveis!&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 05: PARQUE NACIONAL DE TONGARIRO PARA WELLINGTON ( 336 KM )&lt;/strong&gt;&lt;br /&gt;\r\nDeixando o &amp;nbsp;Tongariro National Park e seguindo até Wanganui, no Sul Taranaki Bight nas margens do rio Wanganui . De Wanganui viaje ao longo da costa oeste até Wellington , capital da Nova Zelândia, na ponta sudoeste da Ilha do Norte. Wellington fica em um belo porto , com o Monte Victoria, na periferia .&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 06: WELLINGTON PARA NELSON (DE BARCO)&lt;/strong&gt;&lt;br /&gt;\r\nFerry incluso de Wellington para Picton na ilha do Sul no terminal Inter -Island na zona portuária de Wellington. O carro terá de ser devolvido antes de pegar o ferry e um outro veículo estará disponível em Picton . O ferry navega através da bela Queen Charlotte Sound, &amp;nbsp;a chegada em Picton na bela área de Marlborough Sound. Passeie de carro em torno desta área , antes de viajar através de Havelock até Nelson, uma cidade ladeada pelo mar, praias de areia dourada e colinas.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 07: NELSON&lt;/strong&gt;&lt;br /&gt;\r\nUm dia livre para explorar a região de Marlborough e Abel Tasman em torno de Nelson.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 08: NELSON PARA A REGIÃO GLACIER ( 469 KM )&lt;/strong&gt;&lt;br /&gt;\r\nContinue para Sudoeste até a costa oeste da Ilha do Sul em Westport, na região conhecida como West Coast , uma estreita faixa costeira com 600 km de comprimento e não mais de 50 km de largura, espremida entre os Alpes do sul e do mar da Tasmânia . Dirija através da densa floresta Buller Gorge. A estrada é uma das mais bonitas e impressionantes passeios turísticos na Nova Zelândia.&lt;br /&gt;\r\nViage ao longo da costa através de Punakaiki, e depois para Greymouth, e Hokitika . O Franz Josef e Fox geleiras estão localizadas dentro do Parque Nacional de Westland .&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 09: REGIÃO DOS GLACIAIS PARA WANAKA (287 KM)&lt;/strong&gt;&lt;br /&gt;\r\nO famoso Fox Glacier é uma língua de gelo com 14 km de comprimento que desce a 250 metros acima do nível do mar. É a geleira mais acessível na Nova Zelândia. Franz Josef Glacier tem 12 km de comprimento. Deixando as geleiras de hoje , continue sudoeste na State Highway 6. Em Haast a estrada vira para o interior ao longo do Rio Haast , na região de Central Otago, passando pelo o lago Wanaka até a cidade de Wanaka .&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 10: WANAKA A QUEENSTOWN ( 117 KM)&lt;/strong&gt;&lt;br /&gt;\r\nDe Wanaka voce pode optar entre seguir a estrada principal para o interior através Luggate , Lowburn , Cromwell e de volta para o oeste até Queenstown, ou pegar a estrada Crown Range via Cardrona . O Vale Cardrona é uma antiga rota de mineração de ouro . O Monte Cardrona é um paraíso para os esquiadores de todos os padrões. Heli- esqui nas Montanhas é muito popular para esquiadores dedicados. Se você estiver sentindo aventureiro em Queenstown, um passeio com Heli -Jet no Rio Kawarau , Shotover Jet no Rio Shotover , tente rafting com um passeio de helicóptero e depois fazer bungee jumping. Ou, para um dia mais relaxante , faça um cruzeiro no Lago Wakatipu a bordo do TSS Earnslaw ou apenas fazer um piquenique e observar os belos cenários.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 11: QUEENSTOWN&lt;/strong&gt;&lt;br /&gt;\r\nHoje é livre para explorar as muitas atividades e maravilhas cênicas de Queenstown e áreas circundantes.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 12: QUEENSTOWN PARA TE ANAU (170 KM)&lt;/strong&gt;&lt;br /&gt;\r\nDe Queenstown viaje para o sul ao longo do Lago Wakatipu a oeste até Te Anau , nos arredores do Parque Nacional de Fiordland . O Parque Nacional de Fiordland está listado como Parque do Patrimônio Mundial. Com 1.520.000 hectares , é o maior parque nacional da Nova Zelândia e um dos maiores do mundo . Milford Sound é o mais conhecido , o mais facilmente acessível e um dos mais grandiosos fiordes ao longo da costa . Você tem que conhecer um dos mais famosos marcos da Nova Zelândia, Mitre Peak , que se eleva 1.692 metros quase em linha reta acima da água.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 13: TE ANAU PARA DUNEDIN ( 292 KM )&lt;/strong&gt;&lt;br /&gt;\r\nViagem para o leste na via Lumsden e Gore, conhecido pela sua pesca da truta marrom . Dunedin, fundada por imigrantes escoceses em 1848, tem o caráter distintivo de uma cidade universitária como muitos cidadãos são estudantes. Dunedin está situada na Península de Otago , que é recortado com baías , fornecendo muitos locais de piquenique e de natação. As colinas acima são cruzadas com as paredes de pedra. Na ponta da península, fica Taiaroa Head, uma reserva especial , que inclui o único local de ninhos continentais do magnífico albatroz-real .&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 14: DUNEDIN PARA CHRISTCHURCH ( 362 KM )&lt;/strong&gt;&lt;br /&gt;\r\nPasse por Palmerston e Oamaru na região de North Otago . Viajar para o interior via Omarama, Twizel e Lake Tekapo e Lago Pukaki , um espetacular cor turquesa do lago glacial. Pare na Igreja do Bom Pastor , no Lago Tekapo para uma das mais pitorescas áreas de piquenique da Nova Zelândia. Digite o Canterbury Plains, a maior área de terra plana na Nova Zelândia e em Christchurch.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 15: CHRISTCHURCH&lt;/strong&gt;&lt;br /&gt;\r\nChristchurch é uma das cidades históricas da Nova Zelândia com um ar distintamente &quot;Inglês&quot;. Tambem conhecida como Cidade Jardim pelo conjunto de parques e igrejas projetadas em meados da década de 1800. A cidade cresceu em uma comunidade eclética e vibrante, com teatros, galerias e festivais . O Jardim Botânico, escondido em um loop do rio Avon, são, indiscutivelmente, os mais belos jardins da Nova Zelândia.&lt;br /&gt;\r\nSeu programa termina hoje.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;Os itinerários de nosso programa Fly &amp;amp; Drive New Zealand incluem Acomodação, Locação de carro para a duração do itinerário (incluindo taxas one way onde aplicáveis) e&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;compreensivo manual como seu co-piloto incluindo mapas e brochuras com descontos para diversas atividades, apresentado em uma mochila backpack de Fly-Drive entregue aos passageiros na Nova Zelândia, antes do inicio do tour.&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;\r\n', 'Pacote de viagens terrestre na Ilha do Sul da Nova Zelandia com 15 dias de duração', 'pacotes', 'nova zelandia, pacotes, ilha do sul, Christchurch, Twizel , Dunedin , Te Anau, Milford Sound, Queenstown, Wanaka, Hokitika, Franz Josef , Nelson, Picton, Marlborough Sounds, '),
(78, 4, 'Peru a seu alcance 3 dias Lima Express', '&lt;p&gt;Descubra Lima, a fascinante capital do Peru! Lima, cidade cosmopolita os recebe com os braços abertos oferecendo cultura, diversão, uma gastronomia variada &amp;nbsp;e a amabilidade &amp;nbsp;de sua gente.&lt;/p&gt;\r\n\r\n&lt;p&gt;Lima Express&lt;br /&gt;\r\n3Dias/2Noites: Lima&lt;/p&gt;\r\n\r\n&lt;p&gt;Saídas: diárias.&lt;br /&gt;\r\nMínimo: 1 passageiro.&lt;br /&gt;\r\nTemporada de Operação: Todo o ano.&lt;br /&gt;\r\nServiço &amp;nbsp;: compartilhado.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Itinerário Detalhado&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;DIA 1: LIMA I REFEIÇÕES: -&lt;br /&gt;\r\nChegada à cidade de Lima, assistência e traslado ao hotel. Hospedagem em Lima.&lt;/p&gt;\r\n\r\n&lt;p&gt;DIA 2: LIMA I REFEIÇÕES: CAFÉ DA MANHA&lt;br /&gt;\r\nDia livre. Hospedagem em Lima.&lt;/p&gt;\r\n\r\n&lt;p&gt;DIA 3: LIMA I REFEIÇÕES: CAFÉ DA MANHA&lt;br /&gt;\r\nNa hora estipulada, saída ao aeroporto para a abordagem do vôo internacional.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;Fim de nossos serviços&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n', 'Descubra Lima, a fascinante capital do Peru! Lima, cidade cosmopolita os recebe com os braços abertos oferecendo cultura, diversão, uma gastronomia variada  e a amabilidade  de sua gente.', 'pacotes', 'pacotes, lima, peru, express,'),
(79, 4, 'Peru a seu alcance 3 dias Cusco Express', '&lt;p style=&quot;line-height: 20.7999992370605px;&quot;&gt;Se você dispõe de poucos dias de viagem, este programa é ideal para conhecer a Cidade Imperial de Cusco e Machu Picchu, uma das 7 Novas Maravilhas do Mundo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cusco Express&lt;/strong&gt;&lt;br /&gt;\r\n3Dias/2Noites: Cusco e Machu Picchu&lt;/p&gt;\r\n\r\n&lt;p&gt;Saídas: diárias.&lt;br /&gt;\r\nMínimo: 1 passageiro.&lt;br /&gt;\r\nTemporada de Operação: Todo o ano.&lt;br /&gt;\r\nServiço &amp;nbsp;: compartilhado.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Itinerário Detalhado&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 1: CUSCO I REFEIÇÕES: -&lt;/strong&gt;&lt;br /&gt;\r\nChegada à cidade de Cusco, assistência e traslado ao hotel. De tarde, visita à cidade imperial de Cusco. Visitaremos o Parque Arqueológico de Sacsayhuaman, iniciaremos a excursão visitando Q''enqo, antigo templo do Puma onde vamos poder apreciar um altar para sacrifícios na parte interna de uma enorme rocha, logo após conheceremos Tambomachay, fontes sagradas de vida e saúde. No trajeto teremos uma vista panorâmica de Puca Pucará, torre de vigia que cuidava a entrada a cidade; continuaremos nossa visita à fortaleza de Sacsayhuaman, belo lugar que irradia paz e tranquilidade, onde admiraremos as enormes pedras de até 4 metros de altura, que foram utilizadas em sua construção. Logo após, iremos nos dirigir &amp;nbsp;a Korikancha, Templo ao deus Inti, o Sol, sobre o qual foi construída a Igreja de Santo Domingo, contam as crônicas que este templo estava coberto de ouro em épocas incas. Para finalizar conheceremos a Praça de Armas e ingressaremos a Catedral, que conta com obras e pinturas coloniais impossíveis de avaliar, como a Cruz que chegou com os primeiros conquistadores. Hospedagem em Cusco.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: CUSCO/MACHU PICCHU/CUSCO I REFEIÇÕES: CAFÉ DA MANHA E ALMOCO&lt;/strong&gt;&lt;br /&gt;\r\nPartiremos de trem para conhecer uma das Novas 7 Maravilhas do Mundo. Chegaremos à estação de Aguas Calientes, onde nossa equipe nos receberá para abordar o transporte que ascenderá por um caminho intrincado oferecendo-nos uma espetacular vista do rio Urubamba que dá forma ao famoso cânion. A Cidade Perdida dos Incas, Machu Picchu, nos receberá com seus incríveis terraços, escadarias, recintos cerimoniais e áreas urbanas. A energia emana de todo o lugar. Depois de uma visita guiada, teremos tempo para explorar a cidadela e almoçar em um dos restaurantes do lugar. À hora programada, retornaremos de trem e seremos trasladados ao hotel. Hospedagem em Cusco.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: CUSCO I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nNa hora estipulada, saída ao aeroporto para a abordagem do vôo internacional.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Fim de nossos serviços&lt;/em&gt;&lt;/p&gt;\r\n', 'Se voce dispoe de poucos dias de viagem, este programa eh ideal para conhecer a Cidade Imperial de Cusco e Machu Picchu, uma das 7 Novas Maravilhas do Mundo.', 'pacotes', 'pacotes, cusco, cuzco, peru, express, machu, picchu, pichu'),
(80, 4, 'Peru a seu alcance 4 dias Peru Express', '&lt;p&gt;&lt;span style=&quot;line-height: 20.7999992370605px;&quot;&gt;Combinação dos fantásticos destinos, Lima a atual e cosmopolita capital do Peru e Cusco esplêndida capital do Império Incaico juntam-se no Peru Express oferecendo-nos um rápido panorama do Peru e sua cultura.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Peru Express&lt;br /&gt;\r\n4Dias&lt;span style=&quot;line-height: 1.6em;&quot;&gt;/3Noites: Lima, Cusco e Machu Picchu&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Saídas: diárias.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Mínimo: 1 passageiro.&lt;br /&gt;\r\nTemporada de Operação: Todo o ano.&lt;br /&gt;\r\nServiço &amp;nbsp;: compartilhado.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Itinerário Detalhado&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 1: LIMA I REFEIÇÕES: -&lt;/strong&gt;&lt;br /&gt;\r\nChegada à cidade de Lima, assistência e traslado ao hotel. À tarde, passearemos pelas principais ruas, praças e avenidas da cidade. Começaremos pelo Parque do Amor em Miraflores, com uma espetacular vista do Oceano Pacífico. Depois, teremos uma vista panorâmica da Huaca Pucllana, centro cerimonial da cultura Lima. Seguiremos à Praça de Armas, onde encontraremos o Palácio de Governo e o Palácio Municipal. Visitaremos a Catedral e caminharemos até o Convento de Santo Domingo, cujos corredores foram transitados por São Martín de Porras e Santa Rosa de Lima no século XVII e onde atualmente estão sepultados seus restos.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: LIMA/CUSCO I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nTraslado ao aeroporto para nossa saída a Cusco. Na chegada, assistência e traslado ao hotel. Resto da manha livre para aclimatacao. De tarde, visita à cidade imperial de Cusco. Visitaremos o Parque Arqueológico de Sacsayhuaman, iniciaremos a excursão visitando Q''enqo, antigo templo do Puma onde vamos poder apreciar um altar para sacrifícios na parte interna de uma enorme rocha, logo após conheceremos Tambomachay, fontes sagradas de vida e saúde. No trajeto teremos uma vista panorâmica de Puca Pucará, torre de viagia que cuidava a entrada a cidade; continuaremos nossa visita a fortaleza de Sacsayhuaman, belo lugar que irradia paz e tranquilidade, onde admiraremos as enormes pedras &amp;nbsp;de ate 4 metros de altura, que foram utilizadas em sua construção. Logo após, iremos nos dirigir a Korikancha, Templo ao deus Inti, o Sol, sobre o qual foi construída a Igreja de Santo Domingo, contam às crônicas que este templo estava coberto de ouro em épocas incas. Para finalizar conheceremos a Praça de Armas e ingressaremos a Catedral, que conta com &amp;nbsp;obras e pinturas coloniais impossíveis de avaliar, como a Cruz que chegou com os primeiros conquistadores. Hospedagem em Cusco.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: CUSCO/MACHU PICCHU/CUSCO I REFEIÇÕES: CAFÉ DA MANHA E ALMOCO&lt;/strong&gt;&lt;br /&gt;\r\nPartiremos de trem para conhecer uma das Novas 7 Maravilhas do Mundo. Chegaremos à estação &amp;nbsp;de Aguas Calientes, onde nossa equipe nos receberá para abordar o transporte que ascenderá por um caminho intrincado oferecendo-nos uma espetacular vista do rio Urubamba que dá forma ao famoso cânion. A Cidade Perdida dos Incas, Machu Picchu, nos receberá com seus incríveis terraços, escadarias, recintos cerimoniais e áreas urbanas. A energia emana de todo o lugar. Depois de uma visita guiada, teremos tempo para explorar a cidadela e almoçar em um dos restaurantes do lugar. À hora programada, retornaremos de trem e seremos trasladados ao hotel.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;br /&gt;\r\n&lt;strong&gt;DIA 4: CUSCO I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nNa hora estipulada, saída ao aeroporto para a abordagem do vôo internacional.&lt;br /&gt;\r\nFim de nossos serviços&lt;/p&gt;\r\n', 'Combinacao dos fantasticos destinos, Lima a atual e cosmopolita capital do Peru e Cusco esplendida capital do Imperio Inca juntam-se no Peru Express oferecendo-nos um rapido panorama do Peru e sua cultura.', 'pacotes', 'pacotes, lima, 4 noites, cusco, cuzco, peru, express, machu, picchu, pichu, Sacsayhuaman, Korikancha'),
(81, 4, 'Peru a seu alcance 5 dias Machu Picchu Magico', '&lt;p&gt;&lt;span style=&quot;line-height: 20.7999992370605px;&quot;&gt;Machu Picchu nos espera para oferecer-nos a energia que emana de cada uma das pedras que compõem este impressionante monumento perfeitamente fusionado com a paisagem que o rodeia. &amp;nbsp;Você está convidado a conhecer um dos mais impressionantes legados Incas.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Machu Picchu Mágico&lt;/strong&gt;&lt;br /&gt;\r\n5Dias/4Noites: Lima, Cusco e Machu Picchu&lt;/p&gt;\r\n\r\n&lt;p&gt;Saídas: diárias.&lt;br /&gt;\r\nMínimo: 1 passageiro.&lt;br /&gt;\r\nTemporada de Operação: Todo o ano.&lt;br /&gt;\r\nServiço: compartilhado.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Itinerário Detalhado&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 1: LIMA I REFEIÇÕES: -&lt;/strong&gt;&lt;br /&gt;\r\nChegada à cidade de Lima, assistência e traslado ao hotel. À tarde, passearemos pelas principais ruas, praças e avenidas da cidade. Começaremos pelo Parque do Amor em Miraflores, com uma espetacular vista do Oceano Pacífico. Depois, teremos uma vista panorâmica da Huaca Pucllana, centro cerimonial da cultura Lima. Seguiremos à Praça de Armas, onde encontraremos o Palácio de Governo e o Palácio Municipal. Visitaremos a Majestosa Catedral de Lima e caminharemos até o Convento de Santo Domingo, cujos corredores foram transitados por São Martín de Porras e Santa Rosa de Lima no século XVII e onde atualmente estão sepultados seus restos.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: LIMA/CUSCO I REFEIÇÕES: CAFE DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nTranslado ao aeroporto para nossa saída a Cusco. Na chegada, assistência e translado ao hotel. Resto da manhã livre para adaptação ao clima. À tarde, visita à cidade imperial de Cusco. Visitaremos o Parque Arqueológico de Sacsayhuaman, iniciaremos a excursão visitando Q''enqo, antigo templo do Puma onde vamos poder apreciar um altar para sacrifícios na parte interna de uma enorme rocha, logo após conheceremos Tambomachay, fontes sagradas de vida e saúde. No trajeto teremos uma vista panorâmica de Puca Pucará, torre que servia de observatório, que cuidava a entrada à cidade; continuaremos nossa visita a fortaleza de Sacsayhuaman, belo lugar que irradia paz e tranquilidade, onde admiraremos as enormes pedras &amp;nbsp;de até 4 metros de altura, que foram utilizadas em sua construção. Continuamos a visita da Korikancha, Templo ao Deus Inti, o Sol, sobre o qual foi construída a Igreja de Santo Domingo, contam às crônicas que este templo estava coberto de ouro em épocas incas. Para finalizar conheceremos a Praça de Armas e ingressaremos a Catedral, que tem &amp;nbsp;obras e pinturas coloniais impossíveis de avaliar, como a Cruz que chegou com os primeiros conquistadores. Hospedagem em Cusco.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: CUSCO/MACHU PICCHU I REFEIÇÕES: CAFÉ DA MANHA E ALMOCO&lt;/strong&gt;&lt;br /&gt;\r\nPartiremos de trem para conhecer uma das Novas 7 Maravilhas do Mundo. Chegaremos à estação &amp;nbsp;de Águas Calientes, onde nossa equipe nos receberá para abordar o transporte que ascenderá por um caminho intrincado oferecendo-nos uma espetacular vista do rio Urubamba que dá forma ao famoso cânion. A Cidade Perdida dos Incas, Machu Picchu, nos receberá com seus incríveis terraços, escadarias, recintos cerimoniais e áreas urbanas. A energia emana de todo o lugar. Depois de uma visita guiada, teremos tempo para explorar a cidadela e almoçar em um dos restaurantes do lugar. Hospedagem em um dos hoteis de Aguas calientes ou Machu Picchu, o que nos permitirá ficar mais tempo neste povoado.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 4: MACHU PICCHU/CUSCO I REFEIÇÕES: CAFE DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nManhã livre. Os ingressos para Machu Picchu são limitados, recomendamos reservar as entradas no momento da reserva, assim evitaremos congestionamento ou a falta de disponibilidade no local. Em uma visita adicional para Machu Picchu pode visitar os setores de: Intipunku, a Porta do Sol, &amp;nbsp;entrada da cidadela da Trilha Inca. Para aqueles que querem uma aventura mais intensa recomendamos visitar o Huayna Picchu. Considerar que existem apenas 400 quotas diarias, que devem ser previamente reservados. Na hora programada retornaremos do trem ao Cusco. Hospedagem em Cusco.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 5: CUSCO I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nNa hora estipulada, saída ao aeroporto para a abordagem do vôo internacional.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Fim de nossos serviços.&lt;/em&gt;&lt;/p&gt;\r\n', 'Machu Picchu nos espera para oferecer-nos a energia que emana de cada uma das pedras que compõem este impressionante monumento perfeitamente fusionado com a paisagem que o rodeia.  Você está convidado a conhecer um dos mais impressionantes legados Incas.', 'pacotes', 'pacotes, lima, 4 noites, 5 dias, magico, cusco, cuzco, peru, express, machu, picchu, pichu, Sacsayhuaman, Korikancha'),
(82, 4, 'Peru a seu alcance 6 dias Maravilhas Incas', '&lt;p style=&quot;line-height: 20.7999992370605px;&quot;&gt;Cusco, centro político, económico e religioso do Imperio Inca guarda em suas terras impressionantes monumentos arquitetônicos que nos transportam ao &amp;nbsp;glorioso passado Inca.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Maravilhas Incas&lt;/strong&gt;&lt;br /&gt;\r\n6D/5N: Lima, Cusco, Vale Sagrado e Machu Picchu&lt;/p&gt;\r\n\r\n&lt;p&gt;Saídas: diárias.&lt;br /&gt;\r\nMínimo: 1 passageiro.&lt;br /&gt;\r\nTemporada de Operação: Todo o ano.&lt;br /&gt;\r\nServiço: compartilhado.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Itinerário Detalhado&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 1: LIMA I REFEIÇÕES: -&lt;/strong&gt;&lt;br /&gt;\r\nChegada à cidade de Lima, assistência e translado ao hotel. À tarde, passearemos pelas principais ruas, praças e avenidas da cidade. Começaremos pelo Parque do Amor em Miraflores, com uma espetacular vista do Oceano Pacífico. Depois, teremos uma vista panorâmica da Huaca Pucllana, centro cerimonial da cultura Lima. Seguiremos à Praça de Armas, onde encontraremos o Palácio de Governo e o Palácio Municipal. Visitaremos a Catedral e caminharemos até o Convento de Santo Domingo, cujos corredores foram transitados por São Martín de Porras e Santa Rosa de Lima no século XVII e onde atualmente estão sepultados seus restos.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: LIMA/CUSCO I REFEIÇÕES: CAFE DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nTranslado ao aeroporto para irmos a Cusco. Na chegada, assistência e translado ao hotel. Resto da manhã livre para adaptação ao clima. À tarde, visita à cidade imperial de Cusco. Visitaremos o Parque Arqueológico de Sacsayhuaman, iniciaremos a excursão visitando Q''enqo, antigo templo do Puma onde vamos poder apreciar um altar para sacrifícios na parte interna de uma enorme rocha, logo após conheceremos Tambomachay, fontes sagradas de vida e saúde. No trajeto teremos uma vista panorâmica de Puca Pucará, torre que servia de observatório, que cuidava a entrada à cidade; continuaremos nossa visita a fortaleza de Sacsayhuaman, belo lugar que irradia paz e tranquilidade, onde admiraremos as enormes pedras &amp;nbsp;de até 4 metros de altura, que foram utilizadas em sua construção. Continuamos a visita da Korikancha, Templo ao Deus Inti, o Sol, sobre o qual foi construída a Igreja de Santo Domingo, contam às crônicas que este templo estava coberto de ouro em épocas incas. Para finalizar conheceremos a Praça de Armas e ingressaremos a Catedral, que tem &amp;nbsp;obras e pinturas coloniais impossíveis de avaliar, como a Cruz que chegou com os primeiros conquistadores. Hospedagem em Cusco.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: VALE SAGRADO/CUSCO I REFEIÇÕES: CAFE DA MANHA E ALMOCO&lt;/strong&gt;&lt;br /&gt;\r\nO Vale Sagrado dos Incas nos receberá este dia. No caminho nos pararemos &amp;nbsp;em Awanacancha, complexo onde conheceremos e poderemos alimentar a camélidos andinos como lhamas e alpacas, e povoadores locais nos mostrarão suas técnicas de tecelagem e tingido &amp;nbsp;de tecidos tradicionais. Chegaremos depois ao tradicional Mercado de Pisac, onde teremos tempo livre para percorrê-lo e comprar artesanatos, se você se animar a provar algo tradicional, passe pelos fornos à lenha de pão e pastéis. &amp;nbsp;Almoçaremos num restaurante da localidade. À tarde, iremos a Ollantaytambo, pitoresco povoado continuamente habitado desde a época inca, onde visitaremos o templo do mesmo nome, usado como fortaleza durante a resistência inca e desde onde obteremos imagens de coleção. Hospedagem em Cusco.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 4: CUSCO/MACHU PICCHU I REFEIÇÕES: CAFÉ DA MANHA E ALMOCO&lt;/strong&gt;&lt;br /&gt;\r\nPartiremos de trem para conhecer uma das Novas 7 Maravilhas do Mundo. Chegaremos à estação &amp;nbsp;de Águas Calientes, onde nossa equipe nos receberá para abordar o transporte que ascenderá por um caminho intrincado oferecendo-nos uma espetacular vista do rio Urubamba que dá forma ao famoso cânion. A Cidade Perdida dos Incas, Machu Picchu, nos receberá com seus incríveis terraços, escadarias, recintos cerimoniais e áreas urbanas. A energia emana de todo o lugar. Depois de uma visita guiada, teremos tempo para explorar a cidadela e almoçar em um dos restaurantes do lugar. Hospedagem em um dos hotéis de Águas Calientes ou Machu Picchu, o que nos permitirá ficarmos mais tempo neste povoado.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 5: MACHU PICCHU/CUSCO I REFEIÇÕES: CAFE DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nManhã livre. Os ingressos para Machu Picchu são limitadas, recomendamos reservar as entradas no momento da reserva, assim evitamos congestionamento ou falta de disponibilidade no local. Em uma visita adicional para Machu Picchu pode visitar os setores de: Intipunku, a Porta do Sol, &amp;nbsp;entrada da cidadela da Trilha Inca. Para aqueles que querem uma aventura mais intensa recomendamos visitar o Huayna Picchu. Considerar que existem apenas 400 quotas diarias, que devem ser previamente reservadas. Na hora programada retornaremos do trem a Cusco. Hospedagem em Cusco.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 6: CUSCO/LIMA I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nNa hora marcada, saída ao aeroporto para a abordagem do voo internacional.&lt;/p&gt;\r\n\r\n&lt;p&gt;Fim de nossos serviços&lt;/p&gt;\r\n', 'Cusco, centro politico, economico e religioso do Imperio Inca guarda em suas terras impressionantes monumentos arquitetonicos que nos transportam ao  glorioso passado Inca.', 'pacotes', 'pacotes, lima, 4 noites, 5 dias, magico, Vale Sagrado, cusco, cuzco, peru, express, machu, picchu, pichu, Sacsayhuaman, Korikancha');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(83, 4, 'Peru a seu alcance 7 dias Reinos do Norte Express', '&lt;p&gt;&lt;span style=&quot;line-height: 20.7999992370605px;&quot;&gt;O litoral &amp;nbsp;norte do Peru é o berço &amp;nbsp;de dois dos mais esplendorosos &amp;nbsp;reinos que se desenvolveram &amp;nbsp;na região, os Moche e posteriormente os Chimú, considerados respectivamente os melhores ceramistas e ourives do antigo Peru; deixaram-nos grandes vestígios de arte em diferentes âmbitos como os espetaculares frisos da Huaca da &amp;nbsp;Lua ou os tesouros do &amp;nbsp;Senhor de Sipán.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Reinos do Norte Express&lt;br /&gt;\r\n7D/6N: Lima, Trujillo e Chiclayo&lt;/p&gt;\r\n\r\n&lt;p&gt;Saídas: diárias.&lt;br /&gt;\r\nMínimo: 1 passageiro.&lt;br /&gt;\r\nTemporada de Operação: Todo o ano.&lt;br /&gt;\r\nServiço: compartilhado.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Itinerário Detalhado&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 1: LIMA I REFEIÇÕES: -&lt;/strong&gt;&lt;br /&gt;\r\nChegada à cidade de Lima, assistência e translado ao hotel. Resto do dia livre para aproveitar a cidade.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 2: LIMA/TRUJILLO I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nTranslado à estação de ônibus para nossa saída a Trujillo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: TRUJILLO I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\n&amp;nbsp;Na chegada, assistência e translado ao hotel. Restante do dia livre para aproveitar a cidade. Hospedagem em Trujillo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 4: TRUJILLO I REFEIÇÕES: CAFÉ DA MANHA E ALMOCO&lt;/strong&gt;&lt;br /&gt;\r\nComeçaremos visitando a Huaca de La Luna, a apenas 5 km. da cidade, destacam-se seus templos superpostos e frisos polícromos, uma beleza arquitetônica e urbanística. À tarde, &amp;nbsp;depois de visitar o Templo del Dragón chegaremos à maior cidade de barro da América do Sul: Chan Chan, a capital do Império Chimú. Seguimos caminho em direção ao porto dos pescadores de Huanchaco, famoso por seus Caballitos de Totora. Aí almoçaremos em um dos melhores restaurantes de peixes e frutos do mar da zona. Hospedagem em Trujillo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 5: TRUJILLO/CHICLAYO I REFEIÇÕES: CAFE DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nTraslado à estação de ônibus para nossa saída a Chiclayo. Na chegada, assistência e traslado ao hotel. Resto do dia livre. Hospedagem em Chiclayo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 6: CHICLAYO/LIMA I REFEIÇÕES: CAFE DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nA manhã começa com uma visita à Huaca Rajada, vestígio arqueológico onde foram descobertos os tesouros do Senhor de Sipán. Continuaremos com uma visita ao Museu das Tumbas Reais de Sipán, também conhecido como o Museu do Século XXI. Foi construído simulando a tumba original e alberga tesouros em ouro, prata e pedras preciosas de uma beleza única. Uma visita inesquecível. À tarde translado à estaҫão &amp;nbsp;de ônibus para nossa saída a Lima.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 7: LIMA I REFEIÇÕES: CAFE DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nNa chegada a Lima, assistência e translado ao aeroporto para a abordagem do voo internacional.&lt;/p&gt;\r\n\r\n&lt;p&gt;Fim de nossos serviços&lt;/p&gt;\r\n', 'O litoral  norte do Peru é o berço  de dois dos mais esplendorosos  reinos que se desenvolveram  na região, os Moche e posteriormente os Chimú, considerados respectivamente os melhores ceramistas e ourives do antigo Peru; deixaram-nos grandes vestígios de', 'pacotes', 'reinos do norte, Chimu, Trujillo, Moche, Chiclay,  pacotes, lima, 4 noites, 5 dias, magico, Vale Sagrado, cusco, cuzco, peru, express, machu, picchu, pichu, Sacsayhuaman, Korikancha'),
(84, 4, 'Peru a seu alcance 10 dias Rumo Norte: Cultura y Praia', '&lt;p&gt;&lt;span style=&quot;line-height: 20.7999992370605px;&quot;&gt;Depois de uma visita interessante para os reinos do norte do Moche antigo e Chimu, relaxaremos nas praias de águas quentes de Máncora e Vichayito desfrutar de belas paisagens, a simpatia do povo e da culinária local&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Rumo Norte: Cultura y Praia&lt;br /&gt;\r\n10D/9N: Lima, Trujillo, Chiclayo y Máncora&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\nSaídas: diárias.&lt;br /&gt;\r\nMínimo: 1 passageiro.&lt;br /&gt;\r\nTemporada de Operação: Todo o ano.&lt;br /&gt;\r\nServiço: compartilhado.&lt;/p&gt;\r\n\r\n&lt;p&gt;Itinerário Detalhado&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 1: LIMA I REFEIÇÕES: -&lt;/strong&gt;&lt;br /&gt;\r\nChegada à cidade de Lima, assistência e traslado ao hotel. Resto do dia livre para aproveitar a cidade.&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\n&lt;strong&gt;DIA 2: LIMA/TRUJILLO I REFEIÇÕES: CAFE DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nTraslado à estaҫão &amp;nbsp;de ônibus para nossa saída a Trujillo.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 3: TRUJILLO I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nChegando, assistência e traslado ao hotel. Restante do dia livre para aproveitar a cidade. Hospedagem em Trujillo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 4: TRUJILLO I REFEIÇÕES: CAFE DA MANHA E ALMOCO&lt;/strong&gt;&lt;br /&gt;\r\nComeçaremos visitando a Huaca de la Luna, a apenas 5 km. da cidade, destacam seus templos superpostos e frisos polícromos, uma beleza arquitetônica e urbanística. Pela tarde, e depois de visitar o Templo del Dragón chegaremos a maior cidade de barro da América do Sul: Chan Chan, a capital do Império Chimu. Seguimos caminho em direção ao porto dos pescadores de Huanchaco, famoso por seus Caballitos de Totora. Aí almoçaremos em um dos melhores restaurantes de peixes e frutos do mar da zona.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 5: TRUJILLO/CHICLAYO I REFEIÇÕES: CAFE DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nTraslado à estação &amp;nbsp;de ônibus para nossa saída a Chiclayo. Na chegada, assistência e traslado ao hotel. Resto do dia livre. Hospedagem em Chiclayo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 6: CHICLAYO/MANCORA I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nA manhã começa com uma visita a Huaca Rajada, vestígio arqueológico onde foram descobertos os tesouros do Senhor de Sipán. Continuaremos com uma visita ao Museu das Tumbas Reais de Sipán, também conhecido como o Museu do Século XXI. Foi construído simulando a tumba original e alberga tesouros em ouro, prata e pedras preciosas de uma beleza única. Uma visita inesquecível. À tarde traslado à estaҫão &amp;nbsp;de ônibus para nossa saída à Máncora. Noite a bordo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 7: MANCORA I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nNa chegada, assistência e traslado ao hotel. Restante do dia livre para aproveitar o tempo no hotel ou na praia.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 8: MANCORA I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nDia livre para aproveitar o tempo no hotel ou na praia.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 9: MANCORA I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nManhã livre. À tarde traslado à estaҫão &amp;nbsp;de ônibus para nossa saída a Lima. Noite a bordo.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DIA 10: LIMA I REFEIÇÕES: CAFÉ DA MANHA&lt;/strong&gt;&lt;br /&gt;\r\nChegando a Lima, assistência e traslado ao aeroporto para a abordagem do voo internacional.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;Fim de nossos serviços.&lt;/em&gt;&lt;/p&gt;\r\n', 'Depois de uma visita interessante para os reinos do norte do Moche antigo e Chimu, relaxaremos nas praias de águas quentes de Máncora e Vichayito desfrutar de belas paisagens, a simpatia do povo e da culinária local.', 'pacotes', 'Mancora, Chiclayo, reinos do norte, Chimu, Trujillo, Moche, Chiclay,  pacotes, lima, 4 noites, 5 dias, magico, Vale Sagrado, cusco, cuzco, peru, express, machu, picchu, pichu, Sacsayhuaman, Korikancha'),
(85, 4, 'Peru Festivo junho INTI RAYMI a festa do Sol', '&lt;p&gt;Tendo como cenario a fortaleza de Sacsayhuaman, a festa do&amp;nbsp;Inti Raymi é apresentado como a celebração de Cusco ao deus sol. Coincidindo com o solstício de inverno e tempo de colheita,&lt;br /&gt;\r\no Inca, sua força militar e nobreza comparecem perante a multidão e presta homenagem ao sol e preveem o&lt;br /&gt;\r\nfuturo em uma cerimônia de ofertas, marchas militares e burburinho geral&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Programa terrestre inclui:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Traslados aeroporto / hotel / estação de trem / hotel / aeroporto&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Passeio de meio dia de Visita de la ciudad&amp;nbsp;&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Dia inteiro de passeio a Machu Picchu - almoço buffet en restaurante local&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Dia inteiro de Fiesta &amp;nbsp;del Inti Raymi (Inc. Box lunch)&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;3 noites de acomodação em Cusco - café da manhã diario&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'Tendo como cenario a fortaleza de Sacsayhuaman, a festa do Inti Raymi é apresentado como a celebração de Cusco ao deus sol. Coincidindo com o solstício de inverno e tempo de colheita,\r\no Inca, sua força militar e nobreza comparecem perante a multidão e pr', 'pacotes', 'Fiesta, Inti Raymi, reinos do norte, Chimu, Trujillo, Moche, Chiclay,  pacotes, lima, 3 noites, 4 dias, magico, Vale Sagrado, cusco, cuzco, peru, express, machu, picchu, pichu, Sacsayhuaman, Korikancha'),
(86, 4, 'Peru Festivo junho INTI RAYMI com Vale Sagrado', '&lt;p&gt;Conhecendo Machu Picchu e o Vale Sagrado no dia 25 de julho tendo como cenario a fortaleza de Sacsayhuaman, a festa do&amp;nbsp;Inti Raymi é apresentado como a celebração de Cusco ao deus sol. Coincidindo com o solstício de inverno e tempo de colheita, Os&amp;nbsp;Incas e&amp;nbsp;sua força militar e a nobreza comparecem perante a multidão prestando homenagem ao sol e preveem o&amp;nbsp;futuro em uma cerimônia de ofertas, marchas militares e burburinho geral.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Programa terrestre inclui:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;CUSCO&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Meio Dia de Visita de la ciudad&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Traslados aeroporto / hotel / estação de trem / hotel / aeroporto&lt;/li&gt;\r\n	&lt;li&gt;Dia inteiro de passeio a Machu Picchu em trem - Almoço buffet em restaurante local&lt;/li&gt;\r\n	&lt;li&gt;Dia inteiro de Fiesta &amp;nbsp;del Inti Raymi (Inc. Box lunch)&lt;/li&gt;\r\n	&lt;li&gt;3 noites de acomodação em Cusco - Desayuno Diario&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;VALLE SAGRADO&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Dia inteiro de Valle Sagrado de los Incas : Mercado de Pisac y Fortaleza de Ollantaytambo con Almoço buffet em restaurante local.&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;1 noite de acomodação em el Valle Sagrado - Desayuno Diario&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Tendo como cenario a fortaleza de Sacsayhuaman, a festa do Inti Raymi é apresentado como a celebração de Cusco ao deus sol. Coincidindo com o solstício de inverno e tempo de colheita,\r\no Inca, sua força militar e nobreza comparecem perante a multidão e pr', 'pacotes', 'vale sagrado, Fiesta, Inti Raymi, reinos do norte, Chimu, Trujillo, Moche, Chiclay,  pacotes, lima, 3 noites, 4 dias, magico, Vale Sagrado, cusco, cuzco, peru, express, machu, picchu, pichu, Sacsayhuaman, Korikancha'),
(87, 4, 'aaaa', '', '', '', ''),
(50, 4, '12323 01 DIA -  1 dia de Epcot® ou Disney’s Hollywood Studios® ou Disney’s Animal Kingdom® Ticket', '&lt;p&gt;Ingresso de um dia para os parques:&amp;nbsp;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Epcot® ou Disney’s Hollywood Studios® ou Disney’s Animal Kingdom®&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Não inclui entrada para o Magic Kingdom!&lt;/span&gt;&lt;/p&gt;\r\n', 'Ingresso de 1 dia Disney Magia a sua maneira. Orlando, FL.\r\n', 'ingressos', 'orlando, disney, ingresso, 1 dia, Hollywood Studios, Animal Kingdom'),
(88, 4, 'aaa', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
`product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `currency_discount` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=474 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_fixed_prices`
--

CREATE TABLE `oc_product_fixed_prices` (
`fixed_prices_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `code` char(3) NOT NULL DEFAULT '',
  `products_price` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_product_fixed_prices`
--

INSERT INTO `oc_product_fixed_prices` (`fixed_prices_id`, `product_id`, `code`, `products_price`) VALUES
(1, 50, 'GBP', 0.0000),
(2, 50, 'EUR', 0.0000),
(3, 50, 'USD', 0.0000),
(4, 50, 'CAD', 0.0000),
(5, 50, 'AUD', 0.0000),
(6, 50, 'NZD', 0.0000),
(7, 50, 'BRL', 0.0000),
(8, 51, 'GBP', 0.0000),
(9, 51, 'EUR', 0.0000),
(10, 51, 'USD', 1099.0000),
(11, 51, 'CAD', 0.0000),
(12, 51, 'AUD', 0.0000),
(13, 51, 'NZD', 0.0000),
(14, 51, 'BRL', 0.0000),
(15, 87, 'GBP', 0.0000),
(16, 87, 'EUR', 4000.0000),
(17, 87, 'USD', 0.0000),
(18, 87, 'CAD', 0.0000),
(19, 87, 'AUD', 0.0000),
(20, 87, 'NZD', 0.0000),
(21, 87, 'BRL', 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
`product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3297 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(3294, 62, 'data/lasvegas.hotel.MardiGras.jpg', 2),
(3078, 59, 'data/universal-florida-wet2.jpg', 7),
(3079, 59, 'data/universal-florida-wet.jpg', 8),
(3083, 60, 'data/sea.world.jpg', 4),
(3084, 60, 'data/sea.world.aqauatica.jpg', 5),
(3234, 70, 'data/Australia_Cairns_snorkeling.jpg', 0),
(3204, 63, 'data/ticket.Universal.Florida.island.png', 4),
(3203, 63, 'data/Banner_Disney_Epcot.jpg', 2),
(3207, 52, 'data/orlando-disney.jpg', 0),
(3224, 68, 'data/Australia_Sydney_kanangra-walls-blue-mountains.jpg', 0),
(3221, 68, 'data/Australia_Sydney-Opera-House.jpg', 10),
(3222, 68, 'data/Australia_Sydney_luna-park.jpg', 0),
(3192, 64, 'data/lasvegas.hotel.MardiGras.jpg', 2),
(3191, 64, 'data/lasvegas.city.jpg', 1),
(3190, 64, 'data/lasvegas.sinal.jpg', 2),
(3189, 64, 'data/master.jpg', 10),
(3188, 64, 'data/lasvegas.hotel.MardiGrasNightPool.jpg', 3),
(3052, 54, 'data/orlando.animal.jpg', 0),
(3051, 54, 'data/Banner_Disney_holloywood.jpg', 4),
(3235, 70, 'data/Australia_Cairns_reef-magic-cruises-outer-reef-full-day-cruise---snorkel---.jpg', 0),
(3201, 63, 'data/Banner_Disney_holloywood.jpg', 3),
(3176, 65, 'data/cidades-new-york.3.jpg', 0),
(3202, 63, 'data/Banner_Disney_MagicKingdon.jpg', 5),
(3057, 55, 'data/orlando.animal.jpg', 0),
(3223, 68, 'data/Australia_Sydney-tourism.jpg', 0),
(3206, 52, 'data/orlando-family-disney.jpg', 0),
(3205, 52, 'data/Banner_Disney_holloywood.jpg', 0),
(3055, 55, 'data/Banner_Disney_MagicKingdon.jpg', 0),
(3056, 55, 'data/Banner_Disney_Epcot.jpg', 0),
(3199, 53, 'data/magiaSuaManeira.gif', 1),
(3200, 53, 'data/Banner_Disney_MagicKingdon.jpg', 0),
(3049, 54, 'data/Banner_Disney_Epcot.jpg', 3),
(3054, 55, 'data/magiaSuaManeira.gif', 1),
(3050, 54, 'data/Banner_Disney_MagicKingdon.jpg', 1),
(3048, 54, 'data/magiaSuaManeira.gif', 2),
(3053, 55, 'data/Banner_Disney_holloywood.jpg', 0),
(3061, 56, 'data/Banner_Disney_Epcot.jpg', 0),
(3062, 56, 'data/orlando.animal.jpg', 0),
(3060, 56, 'data/Banner_Disney_holloywood.jpg', 0),
(3059, 56, 'data/magiaSuaManeira.gif', 1),
(3058, 56, 'data/Banner_Disney_MagicKingdon.jpg', 0),
(3066, 57, 'data/ticket.Universal.Florida.island.png', 3),
(3065, 57, 'data/ticket.Universal.Florida.png', 2),
(3064, 57, 'data/universal-studios-florida-montagem.jpg', 1),
(3063, 57, 'data/universal-studios-florida-tubarao.jpg', 4),
(3070, 58, 'data/universal-studios-florida-montagem.jpg', 1),
(3071, 58, 'data/ticket.Universal.Florida.png', 2),
(3068, 58, 'data/ticket.Universal.Florida.island.png', 3),
(3069, 58, 'data/universal-studios-florida-tubarao.jpg', 4),
(3067, 58, 'data/universal-florida-city.jpg', 5),
(3076, 59, 'data/ticket.Universal.Florida.png', 2),
(3077, 59, 'data/ticket.Universal.Florida.wet.png', 6),
(3075, 59, 'data/universal-florida-city.jpg', 5),
(3074, 59, 'data/ticket.Universal.Florida.island.png', 3),
(3073, 59, 'data/universal-studios-florida-tubarao.jpg', 4),
(3072, 59, 'data/universal-studios-florida-montagem.jpg', 1),
(3082, 60, 'data/universal-florida-wet.jpg', 3),
(3081, 60, 'data/ticket.Universal.Florida.wet.png', 2),
(3080, 60, 'data/universal-studios-florida-montagem.jpg', 1),
(3252, 61, 'data/sea.world.aqauatica.jpg', 5),
(3253, 61, 'data/ticket.busch.logo.jpg', 1),
(3251, 61, 'data/sea.world.jpg', 4),
(3249, 61, 'data/ticket.Universal.Florida.wet.png', 2),
(3250, 61, 'data/universal-studios-florida-montagem.jpg', 1),
(3248, 61, 'data/universal-florida-wet.jpg', 3),
(3284, 51, 'data/pacotes.mundial.jiu-jitsu.jpg', 1),
(3293, 62, 'data/lasvegas.hotel.MardiGrasNightPool.jpg', 3),
(3292, 62, 'data/lasvegas.hotel.MardiGras.Business_Class_room.jpg', 4),
(3233, 70, 'data/Australia_Cairns_Snorkellers.jpg', 0),
(3230, 69, 'data/melbourne-sign.jpg', 0),
(3229, 69, 'data/pacote-para-melbourne+.jpg', 0),
(3236, 70, 'data/Australia_Cairns_semi-sub-on-outer-wall.jpg', 0),
(3239, 71, 'data/brisbane_cbd_story_bridge.jpg', 10),
(3240, 71, 'data/australia-mapa-brisbane.gif', 1),
(3241, 71, 'data/best-of-brisbane-full-day-sightseeing-tour-in-brisbane-45104.jpg', 0),
(3256, 74, 'data/ayers-rock-australia-retro-travel-poster,1982491.jpg', 0),
(3255, 74, 'data/Australaia_pacote_AyersRock_aborigene.jpg', 0),
(3247, 72, 'data/best-of-brisbane-full-day-sightseeing-tour-in-brisbane-45104.jpg', 0),
(3257, 74, 'data/Australaia_pacote_AyersRock.jpg', 0),
(3259, 75, 'data/australia-Nourlangie-Rock.gif', 0),
(3260, 75, 'data/australia-Litchfield-National-Park.jpg', 0),
(3261, 75, 'data/australia-Litchfield.jpg', 0),
(3267, 77, 'data/nova.zelandia.ilha.sul.milford-sound-kayak.jpg', 0),
(3266, 77, 'data/nova-zelandia-pacotes-viagens.jpg', 0),
(3265, 77, 'data/Nova_Zelandia_pacotes_economicos.jpg', 0),
(3268, 77, '', 0),
(3273, 85, 'data/pacotes.peru.inti-raymi-banner.jpg', 0),
(3272, 85, 'data/pacotes.peru.inti-raymi-celebracion.cortejo.jpg', 0),
(3274, 85, 'data/pacotes.peru.inti-raymi2.jpg', 0),
(3279, 86, 'data/pacotes.peru.inti-raymi-celebracion.cortejo.jpg', 0),
(3278, 86, 'data/pacotes.peru.inti-raymi-banner.jpg', 0),
(3280, 86, 'data/pacotes.peru.inti-raymi2.jpg', 0),
(3283, 51, 'data/pacotes.jiu.longbeach.hotel.quality.JPG', 2),
(3295, 62, 'data/lasvegas.sinal.jpg', 2),
(3291, 62, 'data/master.jpg', 10),
(3296, 62, 'data/lasvegas.city.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
`product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `option_value`, `required`) VALUES
(243, 65, 11, '', 1),
(242, 64, 11, '', 1),
(241, 63, 11, '', 1),
(231, 55, 2, '', 1),
(229, 53, 2, '', 1),
(230, 54, 2, '', 1),
(232, 56, 2, '', 1),
(233, 57, 2, '', 1),
(234, 58, 2, '', 1),
(235, 59, 2, '', 1),
(236, 60, 2, '', 1),
(237, 61, 2, '', 1),
(238, 51, 11, '', 1),
(239, 62, 11, '', 1),
(240, 51, 13, '', 1),
(244, 68, 11, '', 1),
(245, 69, 11, '', 1),
(246, 70, 11, '', 1),
(247, 71, 11, '', 1),
(248, 72, 11, '', 1),
(249, 74, 11, '', 1),
(250, 75, 11, '', 1),
(251, 87, 11, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_fixed_prices`
--

CREATE TABLE `oc_product_option_fixed_prices` (
`fixed_option_prices_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `code` char(3) NOT NULL DEFAULT '',
  `option_price` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_product_option_fixed_prices`
--

INSERT INTO `oc_product_option_fixed_prices` (`fixed_option_prices_id`, `product_option_value_id`, `code`, `option_price`) VALUES
(36, 45, 'GBP', 0.0000),
(37, 45, 'EUR', 0.0000),
(38, 45, 'USD', 0.0000),
(39, 45, 'CAD', 0.0000),
(40, 45, 'AUD', 0.0000),
(41, 45, 'NZD', 0.0000),
(42, 45, 'BRL', 130.0000),
(43, 40, 'GBP', 0.0000),
(44, 40, 'EUR', 0.0000),
(45, 40, 'USD', 0.0000),
(46, 40, 'CAD', 0.0000),
(47, 40, 'AUD', 0.0000),
(48, 40, 'NZD', 0.0000),
(49, 40, 'BRL', 663.0000),
(50, 39, 'GBP', 0.0000),
(51, 39, 'EUR', 0.0000),
(52, 39, 'USD', 0.0000),
(53, 39, 'CAD', 0.0000),
(54, 39, 'AUD', 0.0000),
(55, 39, 'NZD', 0.0000),
(56, 39, 'BRL', 213.0000),
(57, 37, 'GBP', 0.0000),
(58, 37, 'EUR', 0.0000),
(59, 37, 'USD', 0.0000),
(60, 37, 'CAD', 0.0000),
(61, 37, 'AUD', 0.0000),
(62, 37, 'NZD', 0.0000),
(63, 37, 'BRL', 0.0000),
(64, 38, 'GBP', 0.0000),
(65, 38, 'EUR', 0.0000),
(66, 38, 'USD', 0.0000),
(67, 38, 'CAD', 0.0000),
(68, 38, 'AUD', 0.0000),
(69, 38, 'NZD', 0.0000),
(70, 38, 'BRL', 79.0000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
`product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  `currency_option` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`, `currency_option`) VALUES
(50, 242, 64, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(51, 242, 64, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(48, 241, 63, 11, 47, 0, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(47, 241, 63, 11, 48, 0, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(46, 241, 63, 11, 49, 0, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(49, 241, 63, 11, 46, 0, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(23, 231, 55, 2, 24, 5, 1, 21.0000, '-', 0, '+', 0.00000000, '+', 'BRL'),
(24, 231, 55, 2, 23, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(20, 229, 53, 2, 24, 5, 1, 7.0000, '-', 0, '+', 0.00000000, '+', 'BRL'),
(19, 229, 53, 2, 23, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(21, 230, 54, 2, 24, 5, 1, 3.0000, '-', 0, '+', 0.00000000, '+', 'BRL'),
(22, 230, 54, 2, 23, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(25, 232, 56, 2, 23, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(26, 232, 56, 2, 24, 5, 1, 21.0000, '-', 0, '+', 0.00000000, '+', 'BRL'),
(28, 233, 57, 2, 24, 5, 1, 4.0000, '-', 0, '+', 0.00000000, '+', 'BRL'),
(27, 233, 57, 2, 23, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(30, 234, 58, 2, 24, 5, 1, 15.0000, '-', 0, '+', 0.00000000, '+', 'BRL'),
(29, 234, 58, 2, 23, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(31, 235, 59, 2, 23, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(32, 235, 59, 2, 24, 5, 1, 15.5500, '-', 0, '+', 0.00000000, '+', 'BRL'),
(34, 236, 60, 2, 23, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(33, 236, 60, 2, 24, 5, 1, 19.1600, '-', 0, '+', 0.00000000, '+', 'BRL'),
(35, 237, 61, 2, 24, 5, 1, 16.9300, '-', 0, '+', 0.00000000, '+', 'BRL'),
(36, 237, 61, 2, 23, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(37, 238, 51, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(39, 238, 51, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(40, 238, 51, 11, 46, 20, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(45, 240, 51, 13, 50, 0, 0, 130.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(41, 239, 62, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(42, 239, 62, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(43, 239, 62, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(44, 239, 62, 11, 46, 20, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(53, 242, 64, 11, 46, 19, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(52, 242, 64, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(54, 243, 65, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(55, 243, 65, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(56, 243, 65, 11, 46, 20, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(57, 243, 65, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(61, 244, 68, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(60, 244, 68, 11, 46, 20, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(59, 244, 68, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(58, 244, 68, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(65, 245, 69, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(64, 245, 69, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(63, 245, 69, 11, 46, 20, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(62, 245, 69, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(69, 246, 70, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(68, 246, 70, 11, 46, 20, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(67, 246, 70, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(66, 246, 70, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(73, 247, 71, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(72, 247, 71, 11, 46, 20, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(71, 247, 71, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(70, 247, 71, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(77, 248, 72, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(76, 248, 72, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(75, 248, 72, 11, 46, 20, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(74, 248, 72, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(81, 249, 74, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(80, 249, 74, 11, 46, 20, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(79, 249, 74, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(78, 249, 74, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(85, 250, 75, 11, 47, 20, 1, 213.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(84, 250, 75, 11, 46, 20, 1, 663.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(83, 250, 75, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(82, 250, 75, 11, 49, 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(38, 238, 51, 11, 48, 20, 1, 79.0000, '+', 0, '+', 0.00000000, '+', 'BRL'),
(86, 251, 87, 11, 47, 0, 1, 0.0000, '+', 0, '+', 0.00000000, '+', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_profile`
--

CREATE TABLE `oc_product_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_profile`
--

INSERT INTO `oc_product_profile` (`product_id`, `profile_id`, `customer_group_id`) VALUES
(51, 0, 3),
(62, 0, 3),
(64, 0, 3),
(65, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(51, 62),
(51, 64),
(51, 65),
(62, 51),
(62, 65),
(64, 51),
(64, 65),
(65, 51),
(65, 62),
(65, 64),
(78, 82),
(78, 83),
(78, 84),
(78, 85),
(78, 86),
(79, 80),
(79, 81),
(79, 82),
(79, 83),
(79, 84),
(79, 85),
(79, 86),
(80, 79),
(80, 82),
(80, 83),
(80, 84),
(80, 85),
(80, 86),
(81, 79),
(81, 82),
(81, 83),
(81, 84),
(81, 85),
(81, 86),
(82, 78),
(82, 79),
(82, 80),
(82, 81),
(82, 82),
(82, 83),
(82, 84),
(82, 85),
(82, 86),
(83, 78),
(83, 79),
(83, 80),
(83, 81),
(83, 82),
(83, 85),
(83, 86),
(84, 78),
(84, 79),
(84, 80),
(84, 81),
(84, 82),
(84, 85),
(84, 86),
(85, 78),
(85, 79),
(85, 80),
(85, 81),
(85, 82),
(85, 83),
(85, 84),
(86, 78),
(86, 79),
(86, 80),
(86, 81),
(86, 82),
(86, 83),
(86, 84);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
`product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=1337 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(1266, 51, 3, 0),
(1265, 51, 1, 0),
(961, 63, 3, 2),
(885, 65, 3, 0),
(960, 63, 1, 1),
(959, 63, 5, 1),
(1296, 62, 3, 0),
(1264, 51, 5, 0),
(1263, 51, 2, 0),
(900, 64, 3, 0),
(1295, 62, 1, 0),
(899, 64, 1, 0),
(898, 64, 5, 0),
(958, 63, 2, 1),
(1294, 62, 5, 0),
(897, 64, 2, 0),
(1293, 62, 2, 0),
(896, 64, 4, 0),
(957, 63, 4, 1),
(1316, 50, 3, 0),
(1262, 51, 4, 0),
(962, 52, 4, 0),
(906, 53, 4, 0),
(766, 54, 1, 0),
(767, 55, 1, 1),
(768, 56, 1, 1),
(770, 57, 1, 0),
(771, 58, 1, 0),
(772, 59, 1, 0),
(773, 60, 1, 0),
(1062, 61, 4, 0),
(1292, 62, 4, 0),
(884, 65, 1, 0),
(883, 65, 5, 0),
(882, 65, 2, 0),
(881, 65, 4, 0),
(907, 53, 2, 0),
(908, 53, 5, 0),
(909, 53, 1, 0),
(910, 53, 3, 0),
(1011, 66, 3, 0),
(1010, 66, 1, 0),
(1009, 66, 5, 0),
(1008, 66, 2, 0),
(1007, 66, 4, 0),
(1026, 67, 3, 0),
(1025, 67, 1, 0),
(1024, 67, 5, 0),
(1023, 67, 2, 0),
(1022, 67, 4, 0),
(963, 52, 2, 0),
(964, 52, 5, 0),
(965, 52, 1, 0),
(966, 52, 3, 0),
(986, 68, 3, 0),
(985, 68, 1, 0),
(984, 68, 5, 0),
(983, 68, 2, 0),
(982, 68, 4, 0),
(996, 69, 3, 0),
(995, 69, 1, 0),
(994, 69, 5, 0),
(993, 69, 2, 0),
(992, 69, 4, 0),
(1031, 70, 3, 0),
(1030, 70, 1, 0),
(1029, 70, 5, 0),
(1028, 70, 2, 0),
(1027, 70, 4, 0),
(1041, 71, 3, 0),
(1040, 71, 1, 0),
(1039, 71, 5, 0),
(1038, 71, 2, 0),
(1037, 71, 4, 0),
(1061, 72, 3, 0),
(1060, 72, 1, 0),
(1059, 72, 5, 0),
(1058, 72, 2, 0),
(1057, 72, 4, 0),
(1063, 61, 2, 0),
(1064, 61, 5, 0),
(1065, 61, 1, 0),
(1066, 61, 3, 0),
(1067, 73, 4, 0),
(1068, 73, 2, 0),
(1069, 73, 5, 0),
(1070, 73, 1, 0),
(1071, 73, 3, 0),
(1081, 74, 3, 0),
(1080, 74, 1, 0),
(1079, 74, 5, 0),
(1078, 74, 2, 0),
(1077, 74, 4, 0),
(1091, 75, 3, 0),
(1090, 75, 1, 0),
(1089, 75, 5, 0),
(1088, 75, 2, 0),
(1087, 75, 4, 0),
(1126, 76, 3, 0),
(1125, 76, 1, 0),
(1124, 76, 5, 0),
(1123, 76, 2, 0),
(1122, 76, 4, 0),
(1121, 77, 3, 0),
(1120, 77, 1, 0),
(1119, 77, 5, 0),
(1118, 77, 2, 0),
(1117, 77, 4, 0),
(1181, 78, 3, 0),
(1180, 78, 1, 0),
(1179, 78, 5, 0),
(1178, 78, 2, 0),
(1177, 78, 4, 0),
(1176, 79, 3, 0),
(1175, 79, 1, 0),
(1174, 79, 5, 0),
(1173, 79, 2, 0),
(1172, 79, 4, 0),
(1191, 80, 3, 0),
(1190, 80, 1, 0),
(1189, 80, 5, 0),
(1188, 80, 2, 0),
(1187, 80, 4, 0),
(1186, 81, 3, 0),
(1185, 81, 1, 0),
(1184, 81, 5, 0),
(1183, 81, 2, 0),
(1182, 81, 4, 0),
(1201, 82, 3, 0),
(1200, 82, 1, 0),
(1199, 82, 5, 0),
(1198, 82, 2, 0),
(1197, 82, 4, 0),
(1211, 83, 3, 0),
(1210, 83, 1, 0),
(1209, 83, 5, 0),
(1208, 83, 2, 0),
(1207, 83, 4, 0),
(1221, 84, 3, 0),
(1220, 84, 1, 0),
(1219, 84, 5, 0),
(1218, 84, 2, 0),
(1217, 84, 4, 0),
(1241, 85, 3, 0),
(1240, 85, 1, 0),
(1239, 85, 5, 0),
(1238, 85, 2, 0),
(1237, 85, 4, 0),
(1251, 86, 3, 0),
(1250, 86, 1, 0),
(1249, 86, 5, 0),
(1248, 86, 2, 0),
(1247, 86, 4, 0),
(1315, 50, 1, 0),
(1314, 50, 5, 0),
(1313, 50, 2, 0),
(1312, 50, 4, 0),
(1301, 87, 3, 0),
(1300, 87, 1, 0),
(1299, 87, 5, 0),
(1298, 87, 2, 0),
(1297, 87, 4, 0),
(1336, 88, 3, 0),
(1335, 88, 1, 0),
(1334, 88, 5, 0),
(1333, 88, 2, 0),
(1332, 88, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
`product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `currency_special` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=533 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`, `currency_special`) VALUES
(532, 53, 1, 0, 117.0000, '2015-04-17', '2015-12-31', 'BRL');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(50, 92),
(50, 100),
(50, 101),
(50, 102),
(50, 112),
(51, 104),
(51, 105),
(52, 87),
(52, 88),
(52, 92),
(53, 92),
(53, 100),
(53, 101),
(53, 102),
(54, 92),
(54, 100),
(54, 101),
(54, 102),
(55, 92),
(55, 100),
(55, 101),
(55, 102),
(56, 92),
(56, 100),
(56, 101),
(56, 102),
(57, 92),
(57, 100),
(57, 101),
(57, 103),
(58, 92),
(58, 100),
(58, 101),
(58, 103),
(59, 92),
(59, 100),
(59, 101),
(59, 103),
(60, 92),
(60, 100),
(60, 101),
(60, 132),
(61, 92),
(61, 100),
(61, 101),
(61, 132),
(62, 88),
(62, 89),
(62, 91),
(62, 104),
(62, 105),
(63, 87),
(63, 88),
(63, 89),
(63, 90),
(63, 91),
(63, 92),
(64, 88),
(64, 89),
(64, 91),
(64, 104),
(64, 105),
(65, 88),
(65, 89),
(65, 91),
(65, 104),
(65, 105),
(66, 88),
(66, 92),
(66, 100),
(66, 135),
(67, 100),
(68, 114),
(68, 126),
(68, 127),
(69, 114),
(69, 126),
(69, 127),
(69, 128),
(70, 114),
(70, 126),
(70, 127),
(70, 128),
(70, 129),
(71, 114),
(71, 126),
(71, 127),
(71, 128),
(71, 130),
(72, 87),
(72, 114),
(72, 126),
(72, 127),
(72, 128),
(72, 130),
(73, 112),
(73, 114),
(73, 126),
(74, 87),
(74, 114),
(74, 126),
(74, 127),
(74, 128),
(74, 130),
(74, 136),
(75, 87),
(75, 114),
(75, 126),
(75, 127),
(75, 128),
(75, 130),
(75, 137),
(76, 87),
(76, 88),
(76, 115),
(76, 125),
(76, 126),
(77, 87),
(77, 88),
(77, 115),
(77, 125),
(77, 126),
(78, 87),
(78, 95),
(78, 98),
(79, 87),
(79, 95),
(79, 98),
(80, 87),
(80, 95),
(80, 98),
(81, 87),
(81, 95),
(81, 98),
(82, 87),
(82, 95),
(82, 98),
(83, 87),
(83, 95),
(83, 98),
(84, 87),
(84, 95),
(84, 98),
(85, 87),
(85, 95),
(85, 98),
(86, 87),
(86, 95),
(86, 98);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_profile`
--

CREATE TABLE `oc_profile` (
`profile_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_profile_description`
--

CREATE TABLE `oc_profile_description` (
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
`return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
`return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 4, 'Refunded'),
(2, 4, 'Credit Issued'),
(3, 4, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
`return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
`return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 4, 'Dead On Arrival'),
(2, 4, 'Received Wrong Item'),
(3, 4, 'Order Error'),
(4, 4, 'Faulty, please supply details'),
(5, 4, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
`return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 4, 'Pending'),
(3, 4, 'Complete'),
(2, 4, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
`review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
`setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5925 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(5155, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(5157, 0, 'tax', 'tax_sort_order', '5', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(5156, 0, 'tax', 'tax_status', '0', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(5138, 0, 'pagseguro', 'pagseguro_total', '', 0),
(5137, 0, 'pagseguro', 'pagseguro_email', '1', 0),
(5136, 0, 'pagseguro', 'pagseguro_token', '1', 0),
(5154, 0, 'shipping', 'shipping_status', '0', 0),
(5153, 0, 'shipping', 'shipping_estimator', '0', 0),
(4794, 0, 'compare', 'compare_module', 'a:2:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(5125, 0, 'correios', 'correios_contrato_codigo', '', 0),
(5124, 0, 'correios', 'correios_41106', '1', 0),
(5887, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(5886, 0, 'config', 'config_seo_url', '1', 0),
(5871, 0, 'config', 'config_smtp_host', 'smtp.mandrillapp.com', 0),
(5872, 0, 'config', 'config_smtp_username', 'alex_br@hotmail.com', 0),
(5873, 0, 'config', 'config_smtp_password', 'Lp1yGcKHxMCZXGEQsI5hmg', 0),
(5874, 0, 'config', 'config_smtp_port', '587', 0),
(5875, 0, 'config', 'config_smtp_timeout', '5', 0),
(5876, 0, 'config', 'config_alert_mail', '1', 0),
(5877, 0, 'config', 'config_account_mail', '1', 0),
(5878, 0, 'config', 'config_alert_emails', '', 0),
(5879, 0, 'config', 'config_fraud_detection', '0', 0),
(5880, 0, 'config', 'config_fraud_key', '', 0),
(5881, 0, 'config', 'config_fraud_score', '', 0),
(5882, 0, 'config', 'config_fraud_status_id', '7', 0),
(5883, 0, 'config', 'config_secure', '0', 0),
(5884, 0, 'config', 'config_shared', '0', 0),
(5885, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwget\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(5123, 0, 'correios', 'correios_40215', '1', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(4584, 0, 'account', 'account_module', 'a:7:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:3;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:4;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:5;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:6;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(4804, 0, 'special', 'special_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"270";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(4353, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(4134, 0, 'filter', 'filter_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(3579, 0, 'information', 'information_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5860, 0, 'config', 'config_image_wishlist_height', '47', 0),
(5861, 0, 'config', 'config_image_cart_width', '47', 0),
(5862, 0, 'config', 'config_image_cart_height', '47', 0),
(5863, 0, 'config', 'config_ftp_host', '192.168.9.2', 0),
(5864, 0, 'config', 'config_ftp_port', '21', 0),
(5865, 0, 'config', 'config_ftp_username', '', 0),
(5866, 0, 'config', 'config_ftp_password', '', 0),
(5867, 0, 'config', 'config_ftp_root', '', 0),
(5868, 0, 'config', 'config_ftp_status', '0', 0),
(5869, 0, 'config', 'config_mail_protocol', 'smtp', 0),
(5870, 0, 'config', 'config_mail_parameter', '', 0),
(5857, 0, 'config', 'config_image_compare_width', '90', 0),
(5858, 0, 'config', 'config_image_compare_height', '90', 0),
(5859, 0, 'config', 'config_image_wishlist_width', '47', 0),
(4911, 0, 'banner', 'banner_module', 'a:2:{i:0;a:7:{s:9:"banner_id";s:2:"16";s:5:"width";s:3:"370";s:6:"height";s:3:"172";s:9:"layout_id";s:1:"1";s:8:"position";s:10:"header_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:7:{s:9:"banner_id";s:2:"20";s:5:"width";s:4:"1170";s:6:"height";s:3:"242";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(2056, 0, 'newslideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"14";s:5:"width";s:4:"1000";s:6:"height";s:3:"400";s:9:"layout_id";s:1:"6";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(5856, 0, 'config', 'config_image_related_height', '170', 0),
(5855, 0, 'config', 'config_image_related_width', '170', 0),
(5854, 0, 'config', 'config_image_additional_height', '70', 0),
(5122, 0, 'correios', 'correios_40010', '1', 0),
(5121, 0, 'correios', 'correios_postcode', '09560260', 0),
(4802, 0, 'bestseller', 'bestseller_module', 'a:4:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"270";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"270";s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"270";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:3;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"270";s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(4803, 0, 'latest', 'latest_module', 'a:4:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"270";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"270";s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"270";s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:3;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"270";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(5677, 0, 'featured', 'featured_product', '51,62,64,65', 0),
(5678, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"8";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"270";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5853, 0, 'config', 'config_image_additional_width', '70', 0),
(5852, 0, 'config', 'config_image_product_height', '270', 0),
(5851, 0, 'config', 'config_image_product_width', '270', 0),
(5850, 0, 'config', 'config_image_popup_height', '400', 0),
(5849, 0, 'config', 'config_image_popup_width', '400', 0),
(5848, 0, 'config', 'config_image_thumb_height', '270', 0),
(5847, 0, 'config', 'config_image_thumb_width', '270', 0),
(5846, 0, 'config', 'config_image_category_height', '190', 0),
(5845, 0, 'config', 'config_image_category_width', '190', 0),
(5844, 0, 'config', 'config_icon', 'data/favicon.png', 0),
(5843, 0, 'config', 'config_logo', 'data/daxam.tour.operator.jpg', 0),
(5842, 0, 'config', 'config_return_status_id', '1', 0),
(5841, 0, 'config', 'config_return_id', '5', 0),
(5840, 0, 'config', 'config_commission', '0,25', 0),
(5839, 0, 'config', 'config_affiliate_id', '3', 0),
(4797, 0, 'newcarousel', 'newcarousel_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"15";s:5:"width";s:4:"1170";s:6:"height";s:3:"546";s:9:"layout_id";s:1:"1";s:8:"position";s:10:"header_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(5676, 0, 'featured', 'product', 'pacote', 0),
(5838, 0, 'config', 'config_stock_status_id', '8', 0),
(5837, 0, 'config', 'config_stock_checkout', '0', 0),
(5836, 0, 'config', 'config_stock_warning', '0', 0),
(5835, 0, 'config', 'config_stock_display', '0', 0),
(5834, 0, 'config', 'config_complete_status_id', '5', 0),
(5833, 0, 'config', 'config_order_status_id', '1', 0),
(5832, 0, 'config', 'config_invoice_prefix', 'DAXAM-100', 0),
(5831, 0, 'config', 'config_order_edit', '1', 0),
(5830, 0, 'config', 'config_checkout_id', '5', 0),
(5829, 0, 'config', 'config_guest_checkout', '1', 0),
(5828, 0, 'config', 'config_cart_weight', '0', 0),
(5827, 0, 'config', 'config_account_id', '3', 0),
(5826, 0, 'config', 'config_customer_price', '0', 0),
(5825, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(5824, 0, 'config', 'config_customer_group_id', '1', 0),
(5126, 0, 'correios', 'correios_contrato_senha', '', 0),
(5127, 0, 'correios', 'correios_mao_propria', 'n', 0),
(5128, 0, 'correios', 'correios_aviso_recebimento', 'n', 0),
(5129, 0, 'correios', 'correios_declarar_valor', 'n', 0),
(5130, 0, 'correios', 'correios_adicional', '15', 0),
(5131, 0, 'correios', 'correios_prazo_adicional', '', 0),
(5132, 0, 'correios', 'correios_tax_class_id', '0', 0),
(5133, 0, 'correios', 'correios_geo_zone_id', '0', 0),
(5134, 0, 'correios', 'correios_status', '1', 0),
(5135, 0, 'correios', 'correios_sort_order', '', 0),
(5139, 0, 'pagseguro', 'pagseguro_posfixo', '', 0),
(5140, 0, 'pagseguro', 'pagseguro_tipo_frete', '0', 0),
(5141, 0, 'pagseguro', 'pagseguro_order_aguardando_retorno', '7', 0),
(5142, 0, 'pagseguro', 'pagseguro_order_aguardando_pagamento', '7', 0),
(5143, 0, 'pagseguro', 'pagseguro_order_analise', '7', 0),
(5144, 0, 'pagseguro', 'pagseguro_order_paga', '7', 0),
(5145, 0, 'pagseguro', 'pagseguro_order_disponivel', '7', 0),
(5146, 0, 'pagseguro', 'pagseguro_order_disputa', '7', 0),
(5147, 0, 'pagseguro', 'pagseguro_order_devolvida', '7', 0),
(5148, 0, 'pagseguro', 'pagseguro_order_cancelada', '7', 0),
(5149, 0, 'pagseguro', 'pagseguro_update_status_alert', '0', 0),
(5150, 0, 'pagseguro', 'pagseguro_geo_zone_id', '0', 0),
(5151, 0, 'pagseguro', 'pagseguro_status', '1', 0),
(5152, 0, 'pagseguro', 'pagseguro_sort_order', '', 0),
(5823, 0, 'config', 'config_customer_online', '1', 0),
(5822, 0, 'config', 'config_tax_customer', '', 0),
(5821, 0, 'config', 'config_tax_default', '', 0),
(5820, 0, 'config', 'config_vat', '0', 0),
(5819, 0, 'config', 'config_tax', '1', 0),
(5818, 0, 'config', 'config_voucher_max', '5', 0),
(5817, 0, 'config', 'config_voucher_min', '1', 0),
(5816, 0, 'config', 'config_download', '0', 0),
(5815, 0, 'config', 'config_review_status', '1', 0),
(5814, 0, 'config', 'config_product_count', '0', 0),
(5813, 0, 'config', 'config_admin_limit', '20', 0),
(5812, 0, 'config', 'config_catalog_limit', '6', 0),
(5811, 0, 'config', 'config_weight_class_id', '1', 0),
(5810, 0, 'config', 'config_length_class_id', '1', 0),
(5809, 0, 'config', 'config_currency_auto', '1', 0),
(5808, 0, 'config', 'config_currency', 'BRL', 0),
(5807, 0, 'config', 'config_admin_language', 'pt-br', 0),
(5806, 0, 'config', 'config_language', 'pt-br', 0),
(5805, 0, 'config', 'config_zone_id', '464', 0),
(5804, 0, 'config', 'config_country_id', '30', 0),
(5803, 0, 'config', 'config_layout_id', '4', 0),
(5802, 0, 'config', 'config_template', 'theme390', 0),
(5801, 0, 'config', 'config_meta_description', 'Viagens e Turismo - Daxam Tour Operator', 0),
(5800, 0, 'config', 'config_title', 'Agencia de Viagens e Turismo Daxam Tour Operator', 0),
(5799, 0, 'config', 'config_fax', '', 0),
(5798, 0, 'config', 'config_telephone', '11 2614-4761', 0),
(5797, 0, 'config', 'config_email', 'site@daxam.com.br', 0),
(5796, 0, 'config', 'config_address', 'Rua Demóstenes, 890 \r\nCampo Belo\r\nSão Paulo, SP 04614-014\r\nBrasil', 0),
(5795, 0, 'config', 'config_owner', 'Daxam Tour Operator', 0),
(5794, 0, 'config', 'config_name', 'Daxam Tour Operator', 0),
(5782, 0, 'google_sitemap', 'google_sitemap_status', '1', 0),
(5783, 0, 'google_base', 'google_base_status', '1', 0),
(5786, 0, 'addist_installer', 'addist_installer_customer_id', '0', 0),
(5787, 0, 'addist_installer', 'addist_installer_token', '', 0),
(5788, 0, 'addist_installer', 'addist_installer_customer', '', 0),
(5789, 0, 'addist_installer', 'addist_installer_email', '', 0),
(5790, 0, 'addist_installer', 'addist_installer_last_refresh', '', 0),
(5791, 0, 'addist_installer', 'addist_installer_status', '', 0),
(5792, 0, 'ace84896960d67fe987d471fcda564bb', 'ace84896960d67fe987d471fcda564bb_extension', 'a:1:{s:7:"version";s:9:"%version%";}', 1),
(5793, 0, 'addist', 'addist_token', '98abc3430c77085f922f7e5fa484e976', 0),
(5888, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(5889, 0, 'config', 'config_maintenance', '0', 0),
(5890, 0, 'config', 'config_password', '1', 0),
(5891, 0, 'config', 'config_encryption', '61da66cbb0f3c3756d1fffbe0aa61dd1', 0),
(5892, 0, 'config', 'config_compression', '0', 0),
(5893, 0, 'config', 'config_error_display', '1', 0),
(5894, 0, 'config', 'config_error_log', '1', 0),
(5895, 0, 'config', 'config_error_filename', 'error.txt', 0),
(5896, 0, 'config', 'config_google_analytics', '&lt;script&gt;\r\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga'');\r\n\r\n  ga(''create'', ''UA-47225756-1'', ''auto'');\r\n  ga(''send'', ''pageview'');\r\n\r\n&lt;/script&gt;', 0),
(5897, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_status', '1', 0),
(5898, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_geo_zone_id', '0', 0),
(5899, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_order_status_id', '7', 0),
(5900, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_logo', '/image/data/daxam.tour.operator.jpg', 0),
(5901, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_identificacao', 'Daxam Tour Operator', 0),
(5902, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_cpf_cnpj', '', 0),
(5903, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_endereco', '', 0),
(5904, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_cidade_uf', 'São Paulo', 0),
(5905, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_cedente', 'Daxam Tour Operator', 0),
(5906, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_agencia', '0255', 0),
(5907, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_conta', '', 0),
(5908, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_conta_cedente', '523641', 0),
(5909, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_carteira', '14', 0),
(5910, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_dia_prazo_pg', '3', 0),
(5911, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_taxa_boleto', '', 0),
(5912, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_nosso_numero1', '', 0),
(5913, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_nosso_numero2', '', 0),
(5914, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_nosso_numero3', '', 0),
(5915, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_nosso_numero_const1', '2', 0),
(5916, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_nosso_numero_const2', '4', 0),
(5917, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_demonstrativo1', 'Demonstrativo1', 0),
(5918, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_demonstrativo2', 'Demonstrativo2', 0),
(5919, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_demonstrativo3', 'Demonstrativo3', 0),
(5920, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_instrucoes1', 'Instruções1', 0),
(5921, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_instrucoes2', 'Instruções2', 0),
(5922, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_instrucoes3', 'Instruções3', 0),
(5923, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_instrucoes4', 'Instruções4', 0),
(5924, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_sort_order', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
`stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 4, 'In Stock'),
(8, 4, 'Pre-Order'),
(5, 4, 'Out Of Stock'),
(6, 4, '2 - 3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
`store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
`tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
`tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (17.5%)', 17.5000, 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', 2.0000, 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
`tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
`url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=926 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(861, 'product_id=63', 'orlando-8dias'),
(840, 'product_id=65', 'pacote-pan-no-gI-jiu-jitsu'),
(783, 'information_id=4', 'about_us'),
(767, 'category_id=34', 'mp3-players'),
(789, 'category_id=88', 'desktops'),
(837, 'category_id=104', 'viagens-esportivas-ibjjf-maratonas-futebol'),
(908, 'category_id=110', 'hotel. acomodacao, hostel, albergue, barato, economico, orlando, florida, disney, miami, california, canada, franca, paris, inglaterra, lonfres, italia, roma, veneza, milao, alemanha, berlim. holanda, Amsterdam, portugal, lisboa, irlanda, dublin'),
(921, 'product_id=50', '12323'),
(793, 'manufacturer_id=11', 'disney-ingressos-desconto-familia-crianca-orlando-tickets'),
(848, 'product_id=53', 'ingresso.disney.mk.1dia'),
(822, 'product_id=54', 'disney-ingressos-desconto-familia-crianca-orlando-tickets'),
(806, 'manufacturer_id=12', 'universal-island-adventure-ingressos-desconto-familia-crianca-orlando-tickets'),
(807, 'category_id=132', 'orlando-universal-wet-seaworld-buschgardens-ingressos-desconto-familia-crianca-orlando-tickets'),
(818, 'category_id=87', 'pacotedeviagem'),
(810, 'manufacturer_id=13', 'cbjj-ibjjf'),
(811, 'manufacturer_id=14', 'pacotes-daxam'),
(826, 'information_id=7', 'reserve-seu-hotel'),
(917, 'product_id=62', 'pacote-viagem-jiujitsu-mundial-masters-seniors-e-pan-nogi'),
(911, 'product_id=51', 'pacote-de-viagem-campeonato-mundial-JiuJitsu-2015'),
(836, 'category_id=100', 'ingressos-parques-orlando'),
(843, 'product_id=64', 'pacote.mundial.seniors.las.vegas.2015'),
(880, 'category_id=126', 'australia'),
(846, 'category_id=134', 'caribe'),
(847, 'category_id=92', 'orlando'),
(869, 'category_id=135', 'passeios'),
(852, 'manufacturer_id=15', 'i-drive360'),
(868, 'product_id=66', 'orlando-eye'),
(872, 'product_id=67', 'orlando.eye.combo'),
(864, 'product_id=68', 'pacote-viagem-sydney'),
(865, 'category_id=128', 'cidade-melbourne'),
(866, 'product_id=69', 'pacote-viagem-melbourne'),
(873, 'product_id=70', 'pacote-viagem-cairns'),
(876, 'category_id=130', 'brisbane'),
(875, 'product_id=71', 'pacote-viagem-brisbane'),
(879, 'product_id=72', 'experiencia.australiana.16.dias'),
(881, 'category_id=114', 'trem-australia'),
(882, 'product_id=73', 'trem-australia'),
(883, 'category_id=136', 'pacote-viagem-ayers-rock'),
(884, 'product_id=74', 'pacote-ayers-rock'),
(885, 'category_id=137', 'pacote-viagem-darwin'),
(886, 'information_id=8', 'perguntas-frequentes-australia'),
(889, 'product_id=76', 'nova-zelandia-ilha-do-sul-16-dias'),
(888, 'product_id=77', 'pacote-viagem-nova-zelandia-de carro-15-dia'),
(891, 'category_id=98', 'machu-picchu.lima.peru'),
(899, 'product_id=78', 'pacote-viagem-lima'),
(898, 'product_id=79', 'pacote-viagem-cusco'),
(901, 'product_id=80', 'pacote-viagem-peru'),
(900, 'product_id=81', 'pacote-viagem-Machu-Picchu-Magico'),
(902, 'product_id=82', 'pacote-viagem-maravilhas-incas-06-dias'),
(903, 'product_id=83', 'pacote-viagem-peru-Reinos-do-Norte-Express-07-dias'),
(904, 'product_id=84', 'pacote-viagem-peru-Rumo-Norte:-Cultura-y-Praia-10-dias'),
(906, 'product_id=85', 'pacote-viagem-peru-fiesta-inti-raymi'),
(907, 'category_id=138', 'pacotes-turisticos-promocao'),
(918, 'product_id=87', 'aaaa'),
(925, 'product_id=88', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
`user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '1d360188d18a54ac863a32078919b6371229367f', 'd3706cc48', '', '', 'fernando.mendes@webca.com.br', '', '127.0.0.1', 1, '2015-04-13 21:15:31'),
(2, 1, 'daxam', 'd1f71a0a90b8e9c51df3637f8b5f0920d456cf2c', '7d3906cda', 'daxam', 'daxam', '', '', '201.83.32.177', 1, '2015-04-13 18:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
`user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Top Administrator', 'a:2:{s:6:"access";a:163:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:18:"common/filemanager";i:12;s:13:"design/banner";i:13;s:19:"design/custom_field";i:14;s:13:"design/layout";i:15;s:14:"extension/feed";i:16;s:17:"extension/manager";i:17;s:16:"extension/module";i:18;s:17:"extension/openbay";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:20:"localisation/country";i:25;s:21:"localisation/currency";i:26;s:21:"localisation/geo_zone";i:27;s:21:"localisation/language";i:28;s:25:"localisation/length_class";i:29;s:25:"localisation/order_status";i:30;s:26:"localisation/return_action";i:31;s:26:"localisation/return_reason";i:32;s:26:"localisation/return_status";i:33;s:25:"localisation/stock_status";i:34;s:22:"localisation/tax_class";i:35;s:21:"localisation/tax_rate";i:36;s:25:"localisation/weight_class";i:37;s:17:"localisation/zone";i:38;s:14:"module/account";i:39;s:16:"module/affiliate";i:40;s:29:"module/amazon_checkout_layout";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:18:"module/ebaydisplay";i:46;s:15:"module/featured";i:47;s:13:"module/filter";i:48;s:18:"module/google_talk";i:49;s:18:"module/information";i:50;s:13:"module/latest";i:51;s:17:"module/openbaypro";i:52;s:16:"module/pp_layout";i:53;s:16:"module/slideshow";i:54;s:14:"module/special";i:55;s:12:"module/store";i:56;s:14:"module/welcome";i:57;s:14:"openbay/amazon";i:58;s:22:"openbay/amazon_listing";i:59;s:22:"openbay/amazon_product";i:60;s:16:"openbay/amazonus";i:61;s:24:"openbay/amazonus_listing";i:62;s:24:"openbay/amazonus_product";i:63;s:20:"openbay/ebay_profile";i:64;s:21:"openbay/ebay_template";i:65;s:15:"openbay/openbay";i:66;s:23:"payment/amazon_checkout";i:67;s:24:"payment/authorizenet_aim";i:68;s:21:"payment/bank_transfer";i:69;s:14:"payment/cheque";i:70;s:11:"payment/cod";i:71;s:21:"payment/free_checkout";i:72;s:22:"payment/klarna_account";i:73;s:22:"payment/klarna_invoice";i:74;s:14:"payment/liqpay";i:75;s:20:"payment/moneybookers";i:76;s:14:"payment/nochex";i:77;s:15:"payment/paymate";i:78;s:16:"payment/paypoint";i:79;s:13:"payment/payza";i:80;s:26:"payment/perpetual_payments";i:81;s:18:"payment/pp_express";i:82;s:25:"payment/pp_payflow_iframe";i:83;s:14:"payment/pp_pro";i:84;s:21:"payment/pp_pro_iframe";i:85;s:17:"payment/pp_pro_pf";i:86;s:17:"payment/pp_pro_uk";i:87;s:19:"payment/pp_standard";i:88;s:15:"payment/sagepay";i:89;s:22:"payment/sagepay_direct";i:90;s:18:"payment/sagepay_us";i:91;s:19:"payment/twocheckout";i:92;s:28:"payment/web_payment_software";i:93;s:16:"payment/worldpay";i:94;s:27:"report/affiliate_commission";i:95;s:22:"report/customer_credit";i:96;s:22:"report/customer_online";i:97;s:21:"report/customer_order";i:98;s:22:"report/customer_reward";i:99;s:24:"report/product_purchased";i:100;s:21:"report/product_viewed";i:101;s:18:"report/sale_coupon";i:102;s:17:"report/sale_order";i:103;s:18:"report/sale_return";i:104;s:20:"report/sale_shipping";i:105;s:15:"report/sale_tax";i:106;s:14:"sale/affiliate";i:107;s:12:"sale/contact";i:108;s:11:"sale/coupon";i:109;s:13:"sale/customer";i:110;s:20:"sale/customer_ban_ip";i:111;s:19:"sale/customer_group";i:112;s:10:"sale/order";i:113;s:14:"sale/recurring";i:114;s:11:"sale/return";i:115;s:12:"sale/voucher";i:116;s:18:"sale/voucher_theme";i:117;s:15:"setting/setting";i:118;s:13:"setting/store";i:119;s:16:"shipping/auspost";i:120;s:17:"shipping/citylink";i:121;s:14:"shipping/fedex";i:122;s:13:"shipping/flat";i:123;s:13:"shipping/free";i:124;s:13:"shipping/item";i:125;s:23:"shipping/parcelforce_48";i:126;s:15:"shipping/pickup";i:127;s:19:"shipping/royal_mail";i:128;s:12:"shipping/ups";i:129;s:13:"shipping/usps";i:130;s:15:"shipping/weight";i:131;s:11:"tool/backup";i:132;s:14:"tool/error_log";i:133;s:12:"total/coupon";i:134;s:12:"total/credit";i:135;s:14:"total/handling";i:136;s:16:"total/klarna_fee";i:137;s:19:"total/low_order_fee";i:138;s:12:"total/reward";i:139;s:14:"total/shipping";i:140;s:15:"total/sub_total";i:141;s:9:"total/tax";i:142;s:11:"total/total";i:143;s:13:"total/voucher";i:144;s:9:"user/user";i:145;s:20:"user/user_permission";i:146;s:20:"module/vqmod_manager";i:147;s:14:"module/compare";i:148;s:18:"module/newcarousel";i:149;s:17:"shipping/correios";i:150;s:17:"payment/pagseguro";i:151;s:16:"feed/google_base";i:152;s:19:"feed/google_sitemap";i:153;s:21:"payment/bank_transfer";i:154;s:14:"payment/cheque";i:155;s:19:"module/fixed_prices";i:156;s:19:"module/fixed_prices";i:157;s:23:"module/addist_installer";i:158;s:23:"module/product_currency";i:159;s:23:"module/product_currency";i:160;s:23:"module/product_currency";i:161;s:19:"module/fixed_prices";i:162;s:24:"payment/boleto_cef_sigcb";}s:6:"modify";a:163:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:18:"common/filemanager";i:12;s:13:"design/banner";i:13;s:19:"design/custom_field";i:14;s:13:"design/layout";i:15;s:14:"extension/feed";i:16;s:17:"extension/manager";i:17;s:16:"extension/module";i:18;s:17:"extension/openbay";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:20:"localisation/country";i:25;s:21:"localisation/currency";i:26;s:21:"localisation/geo_zone";i:27;s:21:"localisation/language";i:28;s:25:"localisation/length_class";i:29;s:25:"localisation/order_status";i:30;s:26:"localisation/return_action";i:31;s:26:"localisation/return_reason";i:32;s:26:"localisation/return_status";i:33;s:25:"localisation/stock_status";i:34;s:22:"localisation/tax_class";i:35;s:21:"localisation/tax_rate";i:36;s:25:"localisation/weight_class";i:37;s:17:"localisation/zone";i:38;s:14:"module/account";i:39;s:16:"module/affiliate";i:40;s:29:"module/amazon_checkout_layout";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:18:"module/ebaydisplay";i:46;s:15:"module/featured";i:47;s:13:"module/filter";i:48;s:18:"module/google_talk";i:49;s:18:"module/information";i:50;s:13:"module/latest";i:51;s:17:"module/openbaypro";i:52;s:16:"module/pp_layout";i:53;s:16:"module/slideshow";i:54;s:14:"module/special";i:55;s:12:"module/store";i:56;s:14:"module/welcome";i:57;s:14:"openbay/amazon";i:58;s:22:"openbay/amazon_listing";i:59;s:22:"openbay/amazon_product";i:60;s:16:"openbay/amazonus";i:61;s:24:"openbay/amazonus_listing";i:62;s:24:"openbay/amazonus_product";i:63;s:20:"openbay/ebay_profile";i:64;s:21:"openbay/ebay_template";i:65;s:15:"openbay/openbay";i:66;s:23:"payment/amazon_checkout";i:67;s:24:"payment/authorizenet_aim";i:68;s:21:"payment/bank_transfer";i:69;s:14:"payment/cheque";i:70;s:11:"payment/cod";i:71;s:21:"payment/free_checkout";i:72;s:22:"payment/klarna_account";i:73;s:22:"payment/klarna_invoice";i:74;s:14:"payment/liqpay";i:75;s:20:"payment/moneybookers";i:76;s:14:"payment/nochex";i:77;s:15:"payment/paymate";i:78;s:16:"payment/paypoint";i:79;s:13:"payment/payza";i:80;s:26:"payment/perpetual_payments";i:81;s:18:"payment/pp_express";i:82;s:25:"payment/pp_payflow_iframe";i:83;s:14:"payment/pp_pro";i:84;s:21:"payment/pp_pro_iframe";i:85;s:17:"payment/pp_pro_pf";i:86;s:17:"payment/pp_pro_uk";i:87;s:19:"payment/pp_standard";i:88;s:15:"payment/sagepay";i:89;s:22:"payment/sagepay_direct";i:90;s:18:"payment/sagepay_us";i:91;s:19:"payment/twocheckout";i:92;s:28:"payment/web_payment_software";i:93;s:16:"payment/worldpay";i:94;s:27:"report/affiliate_commission";i:95;s:22:"report/customer_credit";i:96;s:22:"report/customer_online";i:97;s:21:"report/customer_order";i:98;s:22:"report/customer_reward";i:99;s:24:"report/product_purchased";i:100;s:21:"report/product_viewed";i:101;s:18:"report/sale_coupon";i:102;s:17:"report/sale_order";i:103;s:18:"report/sale_return";i:104;s:20:"report/sale_shipping";i:105;s:15:"report/sale_tax";i:106;s:14:"sale/affiliate";i:107;s:12:"sale/contact";i:108;s:11:"sale/coupon";i:109;s:13:"sale/customer";i:110;s:20:"sale/customer_ban_ip";i:111;s:19:"sale/customer_group";i:112;s:10:"sale/order";i:113;s:14:"sale/recurring";i:114;s:11:"sale/return";i:115;s:12:"sale/voucher";i:116;s:18:"sale/voucher_theme";i:117;s:15:"setting/setting";i:118;s:13:"setting/store";i:119;s:16:"shipping/auspost";i:120;s:17:"shipping/citylink";i:121;s:14:"shipping/fedex";i:122;s:13:"shipping/flat";i:123;s:13:"shipping/free";i:124;s:13:"shipping/item";i:125;s:23:"shipping/parcelforce_48";i:126;s:15:"shipping/pickup";i:127;s:19:"shipping/royal_mail";i:128;s:12:"shipping/ups";i:129;s:13:"shipping/usps";i:130;s:15:"shipping/weight";i:131;s:11:"tool/backup";i:132;s:14:"tool/error_log";i:133;s:12:"total/coupon";i:134;s:12:"total/credit";i:135;s:14:"total/handling";i:136;s:16:"total/klarna_fee";i:137;s:19:"total/low_order_fee";i:138;s:12:"total/reward";i:139;s:14:"total/shipping";i:140;s:15:"total/sub_total";i:141;s:9:"total/tax";i:142;s:11:"total/total";i:143;s:13:"total/voucher";i:144;s:9:"user/user";i:145;s:20:"user/user_permission";i:146;s:20:"module/vqmod_manager";i:147;s:14:"module/compare";i:148;s:18:"module/newcarousel";i:149;s:17:"shipping/correios";i:150;s:17:"payment/pagseguro";i:151;s:16:"feed/google_base";i:152;s:19:"feed/google_sitemap";i:153;s:21:"payment/bank_transfer";i:154;s:14:"payment/cheque";i:155;s:19:"module/fixed_prices";i:156;s:19:"module/fixed_prices";i:157;s:23:"module/addist_installer";i:158;s:23:"module/product_currency";i:159;s:23:"module/product_currency";i:160;s:23:"module/product_currency";i:161;s:19:"module/fixed_prices";i:162;s:24:"payment/boleto_cef_sigcb";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
`voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
`voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
`voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'data/demo/canon_eos_5d_2.jpg'),
(7, 'data/demo/gift-voucher-birthday.jpg'),
(6, 'data/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 4, 'Christmas'),
(7, 4, 'Birthday'),
(8, 4, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
`weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 1000.00000000),
(5, 2.20460000),
(6, 35.27400000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
`weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 4, 'Kilogram', 'kg'),
(2, 4, 'Gram', 'g'),
(5, 4, 'Pound ', 'lb'),
(6, 4, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
`zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4033 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Hi', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chi', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovar-Bilogora', 'BB', 1),
(848, 53, 'City of Zagreb', 'CZ', 1),
(849, 53, 'Dubrovnik-Neretva', 'DN', 1),
(850, 53, 'Istra', 'IS', 1),
(851, 53, 'Karlovac', 'KA', 1),
(852, 53, 'Koprivnica-Krizevci', 'KK', 1),
(853, 53, 'Krapina-Zagorje', 'KZ', 1),
(854, 53, 'Lika-Senj', 'LS', 1),
(855, 53, 'Medimurje', 'ME', 1),
(856, 53, 'Osijek-Baranja', 'OB', 1),
(857, 53, 'Pozega-Slavonia', 'PS', 1),
(858, 53, 'Primorje-Gorski Kotar', 'PG', 1),
(859, 53, 'Sibenik', 'SI', 1),
(860, 53, 'Sisak-Moslavina', 'SM', 1),
(861, 53, 'Slavonski Brod-Posavina', 'SB', 1),
(862, 53, 'Split-Dalmatia', 'SD', 1),
(863, 53, 'Varazdin', 'VA', 1),
(864, 53, 'Virovitica-Podravina', 'VP', 1),
(865, 53, 'Vukovar-Srijem', 'VS', 1),
(866, 53, 'Zadar-Knin', 'ZK', 1),
(867, 53, 'Zagreb', 'ZA', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan Laani', 'AL', 1),
(1086, 72, 'Etela-Suomen Laani', 'ES', 1),
(1087, 72, 'Ita-Suomen Laani', 'IS', 1),
(1088, 72, 'Lansi-Suomen Laani', 'LS', 1),
(1089, 72, 'Lapin Lanani', 'LA', 1),
(1090, 72, 'Oulun Laani', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1428, 97, 'Bacs-Kiskun', 'BK', 1),
(1429, 97, 'Baranya', 'BA', 1),
(1430, 97, 'Bekes', 'BE', 1),
(1431, 97, 'Bekescsaba', 'BS', 1),
(1432, 97, 'Borsod-Abauj-Zemplen', 'BZ', 1),
(1433, 97, 'Budapest', 'BU', 1),
(1434, 97, 'Csongrad', 'CS', 1),
(1435, 97, 'Debrecen', 'DE', 1),
(1436, 97, 'Dunaujvaros', 'DU', 1),
(1437, 97, 'Eger', 'EG', 1),
(1438, 97, 'Fejer', 'FE', 1),
(1439, 97, 'Gyor', 'GY', 1),
(1440, 97, 'Gyor-Moson-Sopron', 'GM', 1),
(1441, 97, 'Hajdu-Bihar', 'HB', 1),
(1442, 97, 'Heves', 'HE', 1),
(1443, 97, 'Hodmezovasarhely', 'HO', 1),
(1444, 97, 'Jasz-Nagykun-Szolnok', 'JN', 1),
(1445, 97, 'Kaposvar', 'KA', 1),
(1446, 97, 'Kecskemet', 'KE', 1),
(1447, 97, 'Komarom-Esztergom', 'KO', 1),
(1448, 97, 'Miskolc', 'MI', 1),
(1449, 97, 'Nagykanizsa', 'NA', 1),
(1450, 97, 'Nograd', 'NO', 1),
(1451, 97, 'Nyiregyhaza', 'NY', 1),
(1452, 97, 'Pecs', 'PE', 1),
(1453, 97, 'Pest', 'PS', 1),
(1454, 97, 'Somogy', 'SO', 1),
(1455, 97, 'Sopron', 'SP', 1),
(1456, 97, 'Szabolcs-Szatmar-Bereg', 'SS', 1),
(1457, 97, 'Szeged', 'SZ', 1),
(1458, 97, 'Szekesfehervar', 'SE', 1),
(1459, 97, 'Szolnok', 'SL', 1),
(1460, 97, 'Szombathely', 'SM', 1),
(1461, 97, 'Tatabanya', 'TA', 1),
(1462, 97, 'Tolna', 'TO', 1),
(1463, 97, 'Vas', 'VA', 1),
(1464, 97, 'Veszprem', 'VE', 1),
(1465, 97, 'Zala', 'ZA', 1),
(1466, 97, 'Zalaegerszeg', 'ZZ', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1819, 117, 'Aizkraukles Rajons', 'AIZ', 1),
(1820, 117, 'Aluksnes Rajons', 'ALU', 1),
(1821, 117, 'Balvu Rajons', 'BAL', 1),
(1822, 117, 'Bauskas Rajons', 'BAU', 1),
(1823, 117, 'Cesu Rajons', 'CES', 1),
(1824, 117, 'Daugavpils Rajons', 'DGR', 1),
(1825, 117, 'Dobeles Rajons', 'DOB', 1),
(1826, 117, 'Gulbenes Rajons', 'GUL', 1),
(1827, 117, 'Jekabpils Rajons', 'JEK', 1),
(1828, 117, 'Jelgavas Rajons', 'JGR', 1),
(1829, 117, 'Kraslavas Rajons', 'KRA', 1),
(1830, 117, 'Kuldigas Rajons', 'KUL', 1),
(1831, 117, 'Liepajas Rajons', 'LPR', 1),
(1832, 117, 'Limbazu Rajons', 'LIM', 1),
(1833, 117, 'Ludzas Rajons', 'LUD', 1),
(1834, 117, 'Madonas Rajons', 'MAD', 1),
(1835, 117, 'Ogres Rajons', 'OGR', 1),
(1836, 117, 'Preilu Rajons', 'PRE', 1),
(1837, 117, 'Rezeknes Rajons', 'RZR', 1),
(1838, 117, 'Rigas Rajons', 'RGR', 1),
(1839, 117, 'Saldus Rajons', 'SAL', 1),
(1840, 117, 'Talsu Rajons', 'TAL', 1),
(1841, 117, 'Tukuma Rajons', 'TUK', 1),
(1842, 117, 'Valkas Rajons', 'VLK', 1),
(1843, 117, 'Valmieras Rajons', 'VLM', 1),
(1844, 117, 'Ventspils Rajons', 'VSR', 1),
(1845, 117, 'Daugavpils', 'DGV', 1),
(1846, 117, 'Jelgava', 'JGV', 1),
(1847, 117, 'Jurmala', 'JUR', 1),
(1848, 117, 'Liepaja', 'LPK', 1),
(1849, 117, 'Rezekne', 'RZK', 1),
(1850, 117, 'Riga', 'RGA', 1),
(1851, 117, 'Ventspils', 'VSL', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'JO', 1),
(1972, 129, 'Kedah', 'KE', 1),
(1973, 129, 'Kelantan', 'KL', 1),
(1974, 129, 'Labuan', 'LA', 1),
(1975, 129, 'Melaka', 'ME', 1),
(1976, 129, 'Negeri Sembilan', 'NS', 1),
(1977, 129, 'Pahang', 'PA', 1),
(1978, 129, 'Perak', 'PE', 1),
(1979, 129, 'Perlis', 'PR', 1),
(1980, 129, 'Pulau Pinang', 'PP', 1),
(1981, 129, 'Sabah', 'SA', 1),
(1982, 129, 'Sarawak', 'SR', 1),
(1983, 129, 'Selangor', 'SE', 1),
(1984, 129, 'Terengganu', 'TE', 1),
(1985, 129, 'Wilayah Persekutuan', 'WP', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3031, 197, 'Ascension', 'A', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3033, 197, 'Tristan da Cunha', 'T', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakir', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkasy', 'CK', 1),
(3481, 220, 'Chernihiv', 'CH', 1),
(3482, 220, 'Chernivtsi', 'CV', 1),
(3483, 220, 'Crimea', 'CR', 1),
(3484, 220, 'Dnipropetrovs''k', 'DN', 1),
(3485, 220, 'Donets''k', 'DO', 1),
(3486, 220, 'Ivano-Frankivs''k', 'IV', 1),
(3487, 220, 'Kharkiv Kherson', 'KL', 1),
(3488, 220, 'Khmel''nyts''kyy', 'KM', 1),
(3489, 220, 'Kirovohrad', 'KR', 1),
(3490, 220, 'Kiev', 'KV', 1),
(3491, 220, 'Kyyiv', 'KY', 1),
(3492, 220, 'Luhans''k', 'LU', 1),
(3493, 220, 'L''viv', 'LV', 1),
(3494, 220, 'Mykolayiv', 'MY', 1),
(3495, 220, 'Odesa', 'OD', 1),
(3496, 220, 'Poltava', 'PO', 1),
(3497, 220, 'Rivne', 'RI', 1),
(3498, 220, 'Sevastopol', 'SE', 1),
(3499, 220, 'Sumy', 'SU', 1),
(3500, 220, 'Ternopil''', 'TE', 1),
(3501, 220, 'Vinnytsya', 'VI', 1),
(3502, 220, 'Volyn''', 'VO', 1),
(3503, 220, 'Zakarpattya', 'ZK', 1),
(3504, 220, 'Zaporizhzhya', 'ZA', 1),
(3505, 220, 'Zhytomyr', 'ZH', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3972, 222, 'Isle of Man', 'IOM', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4019, 243, 'Kosovo', 'KM', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
`zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(57, 222, 0, 3, '2010-02-26 22:33:24', '0000-00-00 00:00:00'),
(65, 222, 0, 4, '2010-12-15 15:18:13', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
 ADD PRIMARY KEY (`address_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
 ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
 ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
 ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
 ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
 ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
 ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
 ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
 ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
 ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
 ADD PRIMARY KEY (`category_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
 ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
 ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
 ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
 ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
 ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
 ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
 ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
 ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
 ADD PRIMARY KEY (`customer_ban_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_field`
--
ALTER TABLE `oc_customer_field`
 ADD PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
 ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
 ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
 ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
 ADD PRIMARY KEY (`customer_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
 ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
 ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
 ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
 ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
 ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_to_customer_group`
--
ALTER TABLE `oc_custom_field_to_customer_group`
 ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
 ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
 ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
 ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
 ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
 ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
 ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
 ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
 ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
 ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
 ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
 ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
 ADD PRIMARY KEY (`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
 ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
 ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
 ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
 ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
 ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
 ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
 ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
 ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
 ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
 ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_download`
--
ALTER TABLE `oc_order_download`
 ADD PRIMARY KEY (`order_download_id`);

--
-- Indexes for table `oc_order_field`
--
ALTER TABLE `oc_order_field`
 ADD PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`);

--
-- Indexes for table `oc_order_fraud`
--
ALTER TABLE `oc_order_fraud`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
 ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
 ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
 ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
 ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
 ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
 ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
 ADD PRIMARY KEY (`order_total_id`), ADD KEY `idx_orders_total_orders_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
 ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
 ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
 ADD PRIMARY KEY (`product_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
 ADD PRIMARY KEY (`product_discount_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
 ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_fixed_prices`
--
ALTER TABLE `oc_product_fixed_prices`
 ADD PRIMARY KEY (`fixed_prices_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
 ADD PRIMARY KEY (`product_image_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
 ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_fixed_prices`
--
ALTER TABLE `oc_product_option_fixed_prices`
 ADD PRIMARY KEY (`fixed_option_prices_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
 ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_profile`
--
ALTER TABLE `oc_product_profile`
 ADD PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
 ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
 ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
 ADD PRIMARY KEY (`product_special_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
 ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
 ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_profile`
--
ALTER TABLE `oc_profile`
 ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `oc_profile_description`
--
ALTER TABLE `oc_profile_description`
 ADD PRIMARY KEY (`profile_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
 ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
 ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
 ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
 ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
 ADD PRIMARY KEY (`review_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
 ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
 ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
 ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
 ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
 ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
 ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
 ADD PRIMARY KEY (`url_alias_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
 ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
 ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
 ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
 ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
 ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
 ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
 ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
 ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
 ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=425;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=509;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_download`
--
ALTER TABLE `oc_order_download`
MODIFY `order_download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=474;
--
-- AUTO_INCREMENT for table `oc_product_fixed_prices`
--
ALTER TABLE `oc_product_fixed_prices`
MODIFY `fixed_prices_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3297;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `oc_product_option_fixed_prices`
--
ALTER TABLE `oc_product_option_fixed_prices`
MODIFY `fixed_option_prices_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1337;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=533;
--
-- AUTO_INCREMENT for table `oc_profile`
--
ALTER TABLE `oc_profile`
MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5925;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=926;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4033;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
