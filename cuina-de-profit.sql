/*
 Navicat Premium Data Transfer

 Source Server         : VM
 Source Server Type    : MySQL
 Source Server Version : 100038
 Source Host           : localhost:3306
 Source Schema         : cuina-de-profit

 Target Server Type    : MySQL
 Target Server Version : 100038
 File Encoding         : 65001

 Date: 03/08/2020 18:21:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appacman_block
-- ----------------------------
DROP TABLE IF EXISTS `appacman_block`;
CREATE TABLE `appacman_block` (
  `id_appacman_block` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_appacman_block`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_block
-- ----------------------------
BEGIN;
INSERT INTO `appacman_block` VALUES (1, 100);
INSERT INTO `appacman_block` VALUES (2, 1);
INSERT INTO `appacman_block` VALUES (3, 2);
COMMIT;

-- ----------------------------
-- Table structure for appacman_block_lang
-- ----------------------------
DROP TABLE IF EXISTS `appacman_block_lang`;
CREATE TABLE `appacman_block_lang` (
  `id_appacman_block_lang` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_block` tinyint(3) NOT NULL,
  `id_appacman_lang` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_block_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_block_lang
-- ----------------------------
BEGIN;
INSERT INTO `appacman_block_lang` VALUES (1, 1, 1, 'Gestor');
INSERT INTO `appacman_block_lang` VALUES (2, 2, 1, 'Receptes');
INSERT INTO `appacman_block_lang` VALUES (3, 3, 1, 'Web');
COMMIT;

-- ----------------------------
-- Table structure for appacman_config
-- ----------------------------
DROP TABLE IF EXISTS `appacman_config`;
CREATE TABLE `appacman_config` (
  `id_appacman_config` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_config`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_config
-- ----------------------------
BEGIN;
INSERT INTO `appacman_config` VALUES (1, 'logo', '1');
INSERT INTO `appacman_config` VALUES (2, 'name', 'Cuina de profit');
INSERT INTO `appacman_config` VALUES (3, 'support_email', 'app@optisistem.com');
INSERT INTO `appacman_config` VALUES (4, 'support_phone', '+34 93 553 38 47');
COMMIT;

-- ----------------------------
-- Table structure for appacman_content
-- ----------------------------
DROP TABLE IF EXISTS `appacman_content`;
CREATE TABLE `appacman_content` (
  `id_appacman_content` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_appacman_block` int(11) DEFAULT NULL,
  `id_appacman_list_type` tinyint(3) DEFAULT NULL,
  `order_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_appacman_content`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_content
-- ----------------------------
BEGIN;
INSERT INTO `appacman_content` VALUES (1, 'appacman_user', 'fa-user', 1, 1, NULL, 1);
INSERT INTO `appacman_content` VALUES (2, 'appacman_legal', 'fa-legal', 3, 1, '`order` ASC', 1);
INSERT INTO `appacman_content` VALUES (3, 'recipe', 'fa-cutlery', 2, 1, '`created` DESC', 1);
INSERT INTO `appacman_content` VALUES (4, 'recipe_ingredient', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `appacman_content` VALUES (5, 'recipe_step', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `appacman_content` VALUES (6, 'ingredient', 'fa-shopping-cart', 2, 1, '`name` ASC', 2);
INSERT INTO `appacman_content` VALUES (7, 'unit', 'fa-flask', 2, 1, '`name` ASC', 4);
INSERT INTO `appacman_content` VALUES (8, 'tag', 'fa-tag', 2, 1, '`name` ASC', 5);
INSERT INTO `appacman_content` VALUES (9, 'ingredient_category', 'fa-tag', 2, 1, '`name` ASC', 3);
COMMIT;

-- ----------------------------
-- Table structure for appacman_content_lang
-- ----------------------------
DROP TABLE IF EXISTS `appacman_content_lang`;
CREATE TABLE `appacman_content_lang` (
  `id_appacman_content_lang` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_content` int(11) NOT NULL,
  `id_appacman_lang` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_appacman_content_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_content_lang
-- ----------------------------
BEGIN;
INSERT INTO `appacman_content_lang` VALUES (1, 1, 1, 'Administradors');
INSERT INTO `appacman_content_lang` VALUES (2, 2, 1, 'Textos legals');
INSERT INTO `appacman_content_lang` VALUES (3, 3, 1, 'Receptes');
INSERT INTO `appacman_content_lang` VALUES (4, 4, 1, 'Recepta: ingredient');
INSERT INTO `appacman_content_lang` VALUES (5, 5, 1, 'Recepta: pas');
INSERT INTO `appacman_content_lang` VALUES (6, 6, 1, 'Ingredients');
INSERT INTO `appacman_content_lang` VALUES (7, 7, 1, 'Unitats');
INSERT INTO `appacman_content_lang` VALUES (8, 8, 1, 'Etiquetes');
INSERT INTO `appacman_content_lang` VALUES (9, 9, 1, 'Categoria');
COMMIT;

-- ----------------------------
-- Table structure for appacman_field
-- ----------------------------
DROP TABLE IF EXISTS `appacman_field`;
CREATE TABLE `appacman_field` (
  `id_appacman_field` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_content` int(11) NOT NULL,
  `field_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_appacman_field_type` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `show_on_list` tinyint(1) DEFAULT NULL,
  `show_on_breadcrumb` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_appacman_field`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_field
-- ----------------------------
BEGIN;
INSERT INTO `appacman_field` VALUES (1, 1, 'name', 9, 1, 1, 1);
INSERT INTO `appacman_field` VALUES (2, 1, 'email', 9, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (3, 1, 'password', 10, 3, NULL, NULL);
INSERT INTO `appacman_field` VALUES (4, 1, 'id_appacman_user_profile', 2, 4, NULL, NULL);
INSERT INTO `appacman_field` VALUES (5, 1, 'changing_password', 4, 5, NULL, NULL);
INSERT INTO `appacman_field` VALUES (6, 1, 'created', NULL, 6, NULL, NULL);
INSERT INTO `appacman_field` VALUES (7, 2, 'name', 19, 1, 1, 1);
INSERT INTO `appacman_field` VALUES (8, 2, 'uri', 4, 2, NULL, NULL);
INSERT INTO `appacman_field` VALUES (9, 2, 'text', NULL, 3, NULL, NULL);
INSERT INTO `appacman_field` VALUES (10, 2, 'order', 13, 4, 1, NULL);
INSERT INTO `appacman_field` VALUES (11, 3, 'name', NULL, 1, 1, 1);
INSERT INTO `appacman_field` VALUES (12, 3, 'uri', 8, NULL, NULL, NULL);
INSERT INTO `appacman_field` VALUES (13, 3, 'id_difficulty', 2, 3, 1, NULL);
INSERT INTO `appacman_field` VALUES (14, 3, 'diners', 13, 4, NULL, NULL);
INSERT INTO `appacman_field` VALUES (15, 3, 'image', 1, 5, 1, NULL);
INSERT INTO `appacman_field` VALUES (16, 3, 'description', NULL, 6, NULL, NULL);
INSERT INTO `appacman_field` VALUES (17, 3, 'recipe_tag', 6, 7, 1, NULL);
INSERT INTO `appacman_field` VALUES (18, 3, 'recipe_ingredient', 21, 8, NULL, NULL);
INSERT INTO `appacman_field` VALUES (19, 3, 'recipe_step', 21, 9, NULL, NULL);
INSERT INTO `appacman_field` VALUES (20, 3, 'created', NULL, 10, NULL, NULL);
INSERT INTO `appacman_field` VALUES (21, 4, 'id_recipe', 22, NULL, NULL, NULL);
INSERT INTO `appacman_field` VALUES (22, 4, 'amount', 13, 1, NULL, NULL);
INSERT INTO `appacman_field` VALUES (23, 4, 'id_ingredient', 2, 2, NULL, NULL);
INSERT INTO `appacman_field` VALUES (24, 4, 'id_unit', 2, 3, NULL, NULL);
INSERT INTO `appacman_field` VALUES (25, 5, 'id_recipe', 22, NULL, NULL, NULL);
INSERT INTO `appacman_field` VALUES (26, 5, 'image', 1, 1, NULL, NULL);
INSERT INTO `appacman_field` VALUES (27, 5, 'description', 7, 2, NULL, NULL);
INSERT INTO `appacman_field` VALUES (28, 5, 'order', 13, 3, NULL, NULL);
INSERT INTO `appacman_field` VALUES (29, 6, 'name', NULL, 1, 1, 1);
INSERT INTO `appacman_field` VALUES (30, 6, 'uri', 8, NULL, NULL, NULL);
INSERT INTO `appacman_field` VALUES (31, 6, 'variable', NULL, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (32, 7, 'name', NULL, 1, 1, 1);
INSERT INTO `appacman_field` VALUES (33, 8, 'name', NULL, 1, 1, 1);
INSERT INTO `appacman_field` VALUES (34, 8, 'uri', 8, NULL, NULL, NULL);
INSERT INTO `appacman_field` VALUES (35, 6, 'id_ingredient_category', 2, 3, 1, NULL);
INSERT INTO `appacman_field` VALUES (36, 9, 'name', NULL, 1, 1, 1);
INSERT INTO `appacman_field` VALUES (37, 9, 'uri', 8, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for appacman_field_lang
-- ----------------------------
DROP TABLE IF EXISTS `appacman_field_lang`;
CREATE TABLE `appacman_field_lang` (
  `id_appacman_field_lang` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_field` int(11) NOT NULL,
  `id_appacman_lang` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_appacman_field_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_field_lang
-- ----------------------------
BEGIN;
INSERT INTO `appacman_field_lang` VALUES (1, 1, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (2, 2, 1, 'Email', NULL);
INSERT INTO `appacman_field_lang` VALUES (3, 3, 1, 'Contrasenya', NULL);
INSERT INTO `appacman_field_lang` VALUES (4, 4, 1, 'Perfil', NULL);
INSERT INTO `appacman_field_lang` VALUES (5, 5, 1, 'Token email', NULL);
INSERT INTO `appacman_field_lang` VALUES (6, 6, 1, 'Data creació', NULL);
INSERT INTO `appacman_field_lang` VALUES (7, 7, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (8, 8, 1, 'URI', NULL);
INSERT INTO `appacman_field_lang` VALUES (9, 9, 1, 'Text', NULL);
INSERT INTO `appacman_field_lang` VALUES (10, 10, 1, 'Ordre', NULL);
INSERT INTO `appacman_field_lang` VALUES (11, 11, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (12, 12, 1, 'URI', NULL);
INSERT INTO `appacman_field_lang` VALUES (13, 13, 1, 'Dificultat', NULL);
INSERT INTO `appacman_field_lang` VALUES (14, 14, 1, 'Comensals', NULL);
INSERT INTO `appacman_field_lang` VALUES (15, 15, 1, 'Imatge', NULL);
INSERT INTO `appacman_field_lang` VALUES (16, 16, 1, 'Descripció', NULL);
INSERT INTO `appacman_field_lang` VALUES (17, 17, 1, 'Tags', NULL);
INSERT INTO `appacman_field_lang` VALUES (18, 18, 1, 'Ingredients', NULL);
INSERT INTO `appacman_field_lang` VALUES (19, 19, 1, 'Pasos', NULL);
INSERT INTO `appacman_field_lang` VALUES (20, 20, 1, 'Data creació', NULL);
INSERT INTO `appacman_field_lang` VALUES (21, 21, 1, 'ID recepta', NULL);
INSERT INTO `appacman_field_lang` VALUES (22, 22, 1, 'Quantitat', NULL);
INSERT INTO `appacman_field_lang` VALUES (23, 23, 1, 'Ingredient', NULL);
INSERT INTO `appacman_field_lang` VALUES (24, 24, 1, 'Unitat', NULL);
INSERT INTO `appacman_field_lang` VALUES (25, 25, 1, 'ID recepta', NULL);
INSERT INTO `appacman_field_lang` VALUES (26, 26, 1, 'Imatge', NULL);
INSERT INTO `appacman_field_lang` VALUES (27, 27, 1, 'Descripció', NULL);
INSERT INTO `appacman_field_lang` VALUES (28, 28, 1, 'Ordre', NULL);
INSERT INTO `appacman_field_lang` VALUES (29, 29, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (30, 30, 1, 'URI', NULL);
INSERT INTO `appacman_field_lang` VALUES (31, 31, 1, 'Variable', NULL);
INSERT INTO `appacman_field_lang` VALUES (32, 32, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (33, 33, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (34, 34, 1, 'URI', NULL);
INSERT INTO `appacman_field_lang` VALUES (35, 35, 1, 'Categoria', NULL);
INSERT INTO `appacman_field_lang` VALUES (36, 36, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (37, 37, 1, 'URI', NULL);
COMMIT;

-- ----------------------------
-- Table structure for appacman_field_type
-- ----------------------------
DROP TABLE IF EXISTS `appacman_field_type`;
CREATE TABLE `appacman_field_type` (
  `id_appacman_field_type` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_appacman_field_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_field_type
-- ----------------------------
BEGIN;
INSERT INTO `appacman_field_type` VALUES (1, 'image');
INSERT INTO `appacman_field_type` VALUES (2, 'select');
INSERT INTO `appacman_field_type` VALUES (3, 'check');
INSERT INTO `appacman_field_type` VALUES (4, 'unmodifiable');
INSERT INTO `appacman_field_type` VALUES (5, 'imageSeeOnly');
INSERT INTO `appacman_field_type` VALUES (6, 'selectMulti');
INSERT INTO `appacman_field_type` VALUES (7, 'textSimple');
INSERT INTO `appacman_field_type` VALUES (8, 'uri');
INSERT INTO `appacman_field_type` VALUES (9, 'encryptedTwoWay');
INSERT INTO `appacman_field_type` VALUES (10, 'encryptedOneWay');
INSERT INTO `appacman_field_type` VALUES (11, 'genericFile');
INSERT INTO `appacman_field_type` VALUES (12, 'link');
INSERT INTO `appacman_field_type` VALUES (13, 'number');
INSERT INTO `appacman_field_type` VALUES (14, 'selectEncryptedTwoWay');
INSERT INTO `appacman_field_type` VALUES (15, 'time');
INSERT INTO `appacman_field_type` VALUES (16, 'dateTime');
INSERT INTO `appacman_field_type` VALUES (17, 'selectPush');
INSERT INTO `appacman_field_type` VALUES (18, 'selectDeepLink');
INSERT INTO `appacman_field_type` VALUES (19, 'seeOnly');
INSERT INTO `appacman_field_type` VALUES (20, 'address');
INSERT INTO `appacman_field_type` VALUES (21, 'dynamic');
INSERT INTO `appacman_field_type` VALUES (22, 'hidden');
INSERT INTO `appacman_field_type` VALUES (23, 'colorPicker');
INSERT INTO `appacman_field_type` VALUES (24, 'encryptedTwoWaySeeOnly');
INSERT INTO `appacman_field_type` VALUES (25, 'genericFileSeeOnly');
COMMIT;

-- ----------------------------
-- Table structure for appacman_file
-- ----------------------------
DROP TABLE IF EXISTS `appacman_file`;
CREATE TABLE `appacman_file` (
  `id_appacman_file` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_appacman_file`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4859 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_file
-- ----------------------------
BEGIN;
INSERT INTO `appacman_file` VALUES (1, 'logo.png');
COMMIT;

-- ----------------------------
-- Table structure for appacman_file_resize
-- ----------------------------
DROP TABLE IF EXISTS `appacman_file_resize`;
CREATE TABLE `appacman_file_resize` (
  `id_appacman_file_resize` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_field` smallint(5) NOT NULL,
  `width` smallint(6) NOT NULL,
  `height` smallint(6) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_file_resize`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for appacman_lang
-- ----------------------------
DROP TABLE IF EXISTS `appacman_lang`;
CREATE TABLE `appacman_lang` (
  `id_appacman_lang` tinyint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `culture` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `order` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`id_appacman_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_lang
-- ----------------------------
BEGIN;
INSERT INTO `appacman_lang` VALUES (1, 'Català', 'ca', 1);
INSERT INTO `appacman_lang` VALUES (2, 'Castellano', 'es', 2);
COMMIT;

-- ----------------------------
-- Table structure for appacman_legal
-- ----------------------------
DROP TABLE IF EXISTS `appacman_legal`;
CREATE TABLE `appacman_legal` (
  `id_appacman_legal` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_appacman_legal`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_legal
-- ----------------------------
BEGIN;
INSERT INTO `appacman_legal` VALUES (1, 1);
INSERT INTO `appacman_legal` VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for appacman_legal_lang
-- ----------------------------
DROP TABLE IF EXISTS `appacman_legal_lang`;
CREATE TABLE `appacman_legal_lang` (
  `id_appacman_legal_lang` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_legal` tinyint(4) NOT NULL,
  `id_appacman_lang` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id_appacman_legal_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_legal_lang
-- ----------------------------
BEGIN;
INSERT INTO `appacman_legal_lang` VALUES (1, 1, 2, 'Política de Privacidad', 'politica-de-privacidad', '<p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\"><b><u>POLÍTICA GENERAL PRIVACIDAD </u></b>\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">La presente Política de Privacidad tiene por objeto facilitar y poner al alcance de los usuarios tota la información relativa al tratamiento de sus datos personales fruto del uso del portal web <a href=\"http://www.pugutextile.com\">www.pugutextile.com</a>&nbsp;(en adelante ”el Portal”) conforme a lo dispuesto en el Reglamento General de Protección de Datos 679/2016 (en adelante “RGPD”) y la Ley Orgánica de Protección de Datos Personales y Garantía de Derechos Digitales 3/2018 (en adelante “LOPDGDD”).\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\"><b>1. Responsable del tratamiento de datos\r\n</b></p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">De conformidad al artículo 13 del RGPD le información que el responsable del tratamiento de los datos del Portal es la sociedad PUGUTEXTILE S.L sita en C/ Aragó 597,08026 Barcelona,  con número CIF B67263889 (en adelante “<b>PUGU</b>” o el “<b>Responsable</b>” indistintamente)\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\"><b>2. Finalidades del tratamiento de datos\r\n</b></p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">En función de las funcionales que el usuario quiera disfrutar durante su navegación en el Portal podremos tener acceso a los siguientes datos:\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;(i) datos identificativos: nombre, apellido, NIF …\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;(ii) datos económicos: número de cuenta corriente, número de tarjeta \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;(iii) datos de contacto: teléfono, email, dirección\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;(iv) datos de navegación: clicks, productos consultados, carrito,…\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">El Responsable tratará los datos para las siguientes finalidades:\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">- Gestionar y formalizar el registro para crear una cuenta \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">- Gestionar y formalizar las compras realizadas en el Portal \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">- Enviar los productos comprados en el Portal \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">- Responder y atender a las solicitudes y consultas que el usuario pueda hacer por cualquier medio de contacto con el Responsable\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">- Enviar informaciones en aquellos casos que el usuario se haya suscrito a la Newsletter al mismo y de acuerdo con el detalle contenido en el apartado 3.de la presente Política General de Privacidad\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">- Mejorar los servicios, contenidos y el Portal\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">- Dar cumplimiento a obligaciones legales o en relación a una relación contractual con el usuario.\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\"><b>3. Envío de informaciones del Boletín de Noticias\r\n</b></p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">En el supuesto que el usuario haya autorizado mediante la subscripción en el formulario a tal efecto o mediante la marcación de la casilla pertinente en los formularios del Portal a la recepción de la Newsletter, PUGU le enviará información sobre sus actividades, productos, servicios, novedades, etc. \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">El usuario inscrito a la Newsletter, podrá revocar su consentimiento a recibir comunicaciones en cualquier momento, mediante el link o botón al efecto en cada una de las comunicaciones, o comunicando su voluntad de revocar el consentimiento a través de los siguientes canales: \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;(i). Correo electrónico que deberá dirigir a la dirección info@pugutextile.com\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;(ii). Correo postal dirigido a PUGUTEXTILE S.L. C/ Aragó 597,08026 Barcelona\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\"><b>4. Destinatarios\r\n</b></p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">PUGU es el destinatario principal de los datos personales de los usuarios. Los datos personales obtenidos del usuario no serán vendidos, alquilados, cedidos o puestos a disposición de terceros, salvo a aquellos proveedores de servicios de PUGU que requieran acceso a los datos, en cualquier caso se hará con las garantías legales pertinentes y en ningún caso tratarán los datos para finalidades propias.\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\"><b>5.  Duración del Tratamiento y plazo de conservación de los datos\r\n</b></p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">El Responsable tratará los datos personales de los usuarios mientras éstos sean necesarios para el servicio  y/o hasta que el usuario solicite el borrado de los mismos. \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">En cualquier caso, y aunque el usuario solicite el borrado de sus datos, PUGU podrá conservarlos y mantenerlos, bajo el debido bloqueo, durante el plazo necesario para cumplir con nuestras obligaciones legales y para su puesta a disposición de las Autoridades con competencia en las distintas materias que sean de aplicación. \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\"><b>6 Transferencias internacionales de datos\r\n</b></p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">El tratamiento de los datos de los usuarios no está sujeto a transferencias internacionales de datos. No obstante lo anterior, en el caso que se requiriera, el Responsable se asegurará de que dichos tratamientos de datos se protejan siempre con las garantías oportunas, que podrán incluir:\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;-	Cláusulas Tipo aprobadas por la UE: Se trata de contratos aprobados por el regulador Europeo, y que proporcionan las garantías suficientes para garantizar que el tratamiento cumple con los requisitos establecidos por el Reglamento Europeo de Protección de Datos.\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;-	Certificaciones de los terceros: Por ejemplo, el Privacy Shield, acuerdo marco entre la UE y Estados Unidos que establece un marco estandarizado para el tratamiento de datos acorde a los requisitos del Reglamento Europeo de Protección de Datos.&nbsp;<br></p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\"><b>\r\n7. Elaboración de perfiles y tratamientos automatizados de datos&nbsp;</b></p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">Para algunos servicios, el Responsable puede tratar sus datos personales utilizando medios automatizados. Ello significa que determinadas decisiones se toman de forma automática sin intervención humana. \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">Otros tratamientos que podemos llevar a cabo, es elaborar un perfil con la finalidad de predecir su comportamiento en la web, mostrándole en la página principal productos que puedan ser de su interés, en base a las preferencias que haya demostrado mediante su navegación, o información obtenida a través de las cookies. Puede configurar sus cookies en su navegador tal y como se detalla en la Política de Cookies \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\"><b>8. Ejercicio de derechos\r\n</b></p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">La legislación vigente otorga una serie de derechos a los usuarios por razón del tratamiento de sus datos, los cuales se resumen a continuación:\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">1.	Derecho de acceso: el usuario tendrá derecho a conocer sus datos personales tratados por el Responsable y las finalidades.\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">\r\n2.	Derecho de rectificación: el usuario puede solicitar la rectificación de sus datos en cualquier momento.&nbsp;</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">\r\n3.	Derecho de supresión: el usuario podrá solicitar, en cualquier momento, que sus datos personales sean suprimidos de los ficheros del Responsable. Sin embargo, y tal y como indicamos en el apartado de conservación de datos, en determinadas circunstancias, el cumplimiento de la legislación vigente puede impedir el efectivo ejercicio de este derecho.&nbsp;</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">\r\n4.	Derecho de oposición: el usuario podrá oponerse al tratamiento de sus datos en relación con cualesquiera de las finalidades con las que el Responsable trate sus datos, de acuerdo con las políticas de privacidad aplicables en cada caso.&nbsp;&nbsp;</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">\r\n5.	Derecho de limitación del tratamiento: el usuario podrá solicitar la limitación del tratamiento en los siguientes casos:&nbsp;</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">\r\n&nbsp;&nbsp;&nbsp;&nbsp;a.	Si considera que los datos no son correctos o exactos;&nbsp;</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;b.	Si considera que no se están tratando sus datos de forma legítima, pero prefiere que limitemos el tratamiento de los mismos a su eliminación;\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;c.	Si los datos ya no nos son necesarios conforme a la finalidad para los que fueron recabados, pero necesita que se conserven para interponer reclamaciones legales;\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;d.	Si, habiendo ejercido el derecho de oposición a algún tratamiento, está pendiente de respuesta al respecto por parte del Responsable.\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">\r\n6.	Derecho a la portabilidad de sus datos: el usuario tendrá derecho a, siempre que sea posible técnicamente y sea razonable, solicitar que los datos personales que haya proporcionado directamente sean comunicados a otro responsable del tratamiento.&nbsp;</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">\r\nA pesar que los datos se hayan recabado mediante consentimiento, el usuario podrá revocarlo en cualquier momento, sin que tenga consecuencias para éste más allá de, según el derecho ejercido, no poder prestarle determinados servicios.&nbsp;</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">El ejercicio de los derechos que el usuario ostenta podrá hacerlo efectivo dirigiéndose a PUGU a través de alguno de los siguientes medios, acompañando copia de su DNI o documento identificativo equivalente: \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;(i). Correo electrónico que deberá dirigir a la dirección info@pugutextile.com\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;(ii). Correo postal dirigido a PUGUTEXTILE S.L. C/ Aragó 597,08026 Barcelona\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">El usuario podrá realizar consultas o sugerencias en relación con el tratamiento de sus datos de carácter personal dirigiéndose a las direcciones facilitadas para el ejercicio de los derechos.\r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">El usuario, podrá presentar una reclamación ante la Autoridad Competente en materia de protección de datos si considera que no se han tratado sus datos de forma lícita o que no se han atendido sus solicitudes o derechos. \r\n</p><p style=\"font-family: Arial, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" margin-top:=\"\" 1em;=\"\" margin-bottom:=\"\" padding:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" border:=\"\" outline:=\"\" 0px;\"=\"\">En España, dicha Autoridad Competente es la Agencia Española de Protección de Datos.\r\n</p>');
INSERT INTO `appacman_legal_lang` VALUES (2, 2, 2, 'Política de Cookies', 'politica-de-cookies', '<p><b><u>POLITICA GENERAL DE COOKIES\r\n</u></b></p><p>Las cookies o dispositivo de almacenamiento y recuperación de datos, es un fichero enviado por una página web al navegador del usuario y que se almacena automáticamente en el terminal de éste para que la página web en cuestión pueda consultar la actividad previa del usuario y “reconocerle”.\r\n</p><p>Las cookies pueden recordar otros tipos de información personal, como la contraseña de un usuario, de manera que no haya que volver a escribirla cada vez que visita el mismo sitio, o sus preferencias en cuanto a la configuración de la página web (idioma, resolución de pantalla, entre otros).\r\n</p><p>Las cookies son esenciales para el funcionamiento de internet, aportando innumerables ventajas en la prestación de servicios interactivos, facilitándole la navegación y usabilidad de la web. Las cookies no pueden dañar su equipo y que estén activadas ayuda a identificar y resolver los errores.\r\n</p><p>En definitiva, una cookie no es más que una sucesión de datos de navegación que se almacenan en el equipo del usuario y que las páginas web detectan y reconocen para “recordar” dicha navegación.\r\n</p><p>A continuación, proporcionamos más información sobre el uso de cookies utilizadas en el Sitio Web, distinguiendo:\r\n</p><p>&nbsp;&nbsp;&nbsp;&nbsp;- Cookies de sesión: Son un tipo de cookies diseñadas para recabar y almacenar datos mientras el usuario accede a una página web y caducan al terminar la sesión. La información obtenida por medio de estas cookies sirve para analizar pautas de tráfico en la web. A la larga, esto permite proporcionar una mejor experiencia para mejorar el contenido y facilitar su uso.\r\n</p><p>&nbsp;&nbsp;&nbsp;&nbsp;- Cookies analíticas: Son aquellas que permiten al responsable de las mismas, el seguimiento y análisis del comportamiento de los usuarios de los sitios web a los que están vinculadas.\r\n</p><p><b>Este Sitio Web utiliza cookies de sesión, cookies analíticas para asegurar la mejor experiencia \r\n</b></p><p>Las aplicaciones utilizadas para obtener esta información son las siguientes:\r\n</p><p><b>COOKIES ANALÍTICAS</b>\r\n</p><p>&nbsp;&nbsp;&nbsp;&nbsp;SERVICIO: Google analytics</p><p>&nbsp;&nbsp;&nbsp;&nbsp;PROVEEDOR: Google</p><p> &nbsp;&nbsp;&nbsp;&nbsp;MAS INFORMACIÓN\r\n:&nbsp; <a href=\"http://www.google.es/intl/es/policies/\">http://www.google.es/intl/es/policies/</a></p><p><b><br></b></p><p><b>Garantías complementarias – Gestión de cookies</b></p><p>&nbsp;&nbsp;&nbsp;&nbsp;_utma\r\n (Google Analytics):&nbsp; La cookie genera un ID de usuario único que registra la fecha, la primera vez que el usuario visitó la web. Se utiliza para hacer recuento de las visitas del usuario a la web. 	Duración de 2 años&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;_utmb (Google Analytics): Conocer el tiempo que el usuario permanece en la página	Caduca a los 30 minutos desde la última actualización. \r\n Se elimina a cambiar de web o cerrar el navegador&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;_utmc (Google Analytics): Conocer el tiempo de visita del usuario en la web, en la que está instalado el código de seguimiento urchin.js	Caduca cuando se cierra el explorador\r\n</p><p>&nbsp;&nbsp;&nbsp;&nbsp;.texto (Cookie técnica): Se encarga de conocer si se ha leído la política de cookies y se ha aceptado su uso. La información no aparecerá en sucesivas visitas a la web	Caduca 365 días después de que el usuario acepte la política de cookies\r\n</p><p>&nbsp;&nbsp;&nbsp;&nbsp;_utmz (Google Analytics): Almacena el origen del visitante  y el acceso que ha seguido. Ya sea empleando links o Adwords	Caduca a los 6 meses. \r\nLa cookie se actualiza cada vez que se accede a la web&nbsp;</p><p><br></p><p>Todos los navegadores de Internet permiten limitar el comportamiento de una cookie o desactivar las cookies dentro de la configuración o las opciones del navegador. Los pasos para hacerlo son diferentes para cada navegador, pudiéndose encontrar instrucciones en el menú de ayuda de tu navegador.\r\n</p><p>Asimismo, el usuario puede activar, según el navegador utilizado, cualesquiera de las siguientes opciones para limitar el alcance de las cookies instaladas o su funcionamiento:\r\n</p><p>&nbsp;&nbsp;&nbsp;&nbsp;- la navegación privada, mediante la cual su navegador deja de guardar el historial de navegación, contraseñas de sitios web, cookies y otra información de las páginas que visita, o\r\n</p><p>&nbsp;&nbsp;&nbsp;&nbsp;- la función de no rastrear, por la que el navegador pide a los sitios web que visita que no rastreen sus hábitos de navegación, para por ejemplo, servirle publicidad de su interés en los sitios que visita.\r\n</p><p>Dependiendo de cada navegador este modo privado, puede tener diferentes nombres. A continuación se puede encontrar una lista de los navegadores más comunes con un enlace a la configuración de cookies y los diferentes nombres de este “modo privado”:\r\n</p><p><b>Internet Explorer 8 y superior; InPrivate \r\n</b></p><p><a href=\"http://windows.microsoft.com/es-es/windows-vista/block-or-allow-cookies\">http://windows.microsoft.com/es-es/windows-vista/block-or-allow-cookies</a></p><p>\r\n</p><p><b>Safari 2 y superior; Navegación Privada\r\n</b></p><p><a href=\"http://support.apple.com/kb/ht1677?viewlocale=es_es&amp;locale=es_es\">http://support.apple.com/kb/ht1677?viewlocale=es_es&amp;locale=es_es</a></p><p>\r\n</p><p><b>Opera 10.5 y superior; Navegación Privada\r\n</b></p><p><a href=\"http://help.opera.com/Windows/11.50/es-ES/cookies.html\">http://help.opera.com/Windows/11.50/es-ES/cookies.html</a></p><p>\r\n</p><p><b>FireFox 3.5 y superior; Navegación Privada\r\n</b><br class=\"Apple-interchange-newline\"></p><p>http://support.mozilla.org/es/kb/habilitar-y-deshabilitar-cookies-que-los-sitios-we</p><p>\r\n</p><p><b>Google Chrome 10 y superior; Incógnito\r\n</b></p><p><a href=\"https://support.google.com/chrome/answer/95647?hl=es\">https://support.google.com/chrome/answer/95647?hl=es</a></p><p><br></p><p>\r\n</p><p>Si desea tener un mayor control sobre la instalación de Cookies, puede instalar programas o complementos a su navegador, conocidos como herramientas de “Do Not Track”, que le permitirán escoger aquellas Cookies que desea permitir.\r\n</p><p>Finalmente, le informamos de que tiene la posibilidad de revocar en cualquier momento el consentimiento prestado para la utilización de cookies por parte de PUGUTEXTILE S.L. configurando para ello su navegador en los términos previstos en el punto anterior.</p>');
COMMIT;

-- ----------------------------
-- Table structure for appacman_list_type
-- ----------------------------
DROP TABLE IF EXISTS `appacman_list_type`;
CREATE TABLE `appacman_list_type` (
  `id_appacman_list_type` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_list_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_list_type
-- ----------------------------
BEGIN;
INSERT INTO `appacman_list_type` VALUES (1, 'table');
INSERT INTO `appacman_list_type` VALUES (2, 'cart');
COMMIT;

-- ----------------------------
-- Table structure for appacman_user
-- ----------------------------
DROP TABLE IF EXISTS `appacman_user`;
CREATE TABLE `appacman_user` (
  `id_appacman_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_appacman_user_profile` int(11) DEFAULT NULL,
  `changing_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_appacman_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_user
-- ----------------------------
BEGIN;
INSERT INTO `appacman_user` VALUES (1, '44b838da3ebc52a5addcb4f1d154b80fcd7RU3ynPJ3gD0gzciwBkA==', 'cdb10be1355fd3605eb7b38181e0e959c+P9lHy51g59wEGzKYISOYNd', '$6$rounds=5000$1bfe542fb14f15e0$95oCA3LX3.TSZwrhMqmc04GZdFofijh1/y9u8lO1KoaUT/ean1DUXKLEurSJg4NcXgN7YuoW4ZmS677w1Bmo6.', 1, NULL, '2017-11-17 12:44:18');
COMMIT;

-- ----------------------------
-- Table structure for appacman_user_permission
-- ----------------------------
DROP TABLE IF EXISTS `appacman_user_permission`;
CREATE TABLE `appacman_user_permission` (
  `id_appacman_user_permission` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_appacman_user_permission`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_user_permission
-- ----------------------------
BEGIN;
INSERT INTO `appacman_user_permission` VALUES (1, 'create');
INSERT INTO `appacman_user_permission` VALUES (2, 'edit');
INSERT INTO `appacman_user_permission` VALUES (3, 'delete');
INSERT INTO `appacman_user_permission` VALUES (4, 'see');
INSERT INTO `appacman_user_permission` VALUES (5, 'export');
INSERT INTO `appacman_user_permission` VALUES (6, 'lock');
INSERT INTO `appacman_user_permission` VALUES (7, 'own');
INSERT INTO `appacman_user_permission` VALUES (8, 'duplicate');
INSERT INTO `appacman_user_permission` VALUES (9, 'firebase');
INSERT INTO `appacman_user_permission` VALUES (10, 'send-changes');
COMMIT;

-- ----------------------------
-- Table structure for appacman_user_permission_lang
-- ----------------------------
DROP TABLE IF EXISTS `appacman_user_permission_lang`;
CREATE TABLE `appacman_user_permission_lang` (
  `id_appacman_user_permission_lang` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_user_permission` int(11) NOT NULL,
  `id_appacman_lang` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_appacman_user_permission_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_user_permission_lang
-- ----------------------------
BEGIN;
INSERT INTO `appacman_user_permission_lang` VALUES (1, 1, 1, 'Crear');
INSERT INTO `appacman_user_permission_lang` VALUES (2, 1, 2, 'Crear');
INSERT INTO `appacman_user_permission_lang` VALUES (3, 2, 1, 'Editar');
INSERT INTO `appacman_user_permission_lang` VALUES (4, 2, 2, 'Editar');
INSERT INTO `appacman_user_permission_lang` VALUES (5, 3, 1, 'Eliminar');
INSERT INTO `appacman_user_permission_lang` VALUES (6, 3, 2, 'Eliminar');
INSERT INTO `appacman_user_permission_lang` VALUES (7, 4, 1, 'Ver');
INSERT INTO `appacman_user_permission_lang` VALUES (8, 4, 2, 'Ver');
INSERT INTO `appacman_user_permission_lang` VALUES (9, 5, 1, 'Exportar');
INSERT INTO `appacman_user_permission_lang` VALUES (10, 5, 2, 'Exportar');
INSERT INTO `appacman_user_permission_lang` VALUES (11, 6, 1, 'Bloquejar');
INSERT INTO `appacman_user_permission_lang` VALUES (12, 6, 2, 'Bloquear');
INSERT INTO `appacman_user_permission_lang` VALUES (13, 7, 1, 'Editar');
INSERT INTO `appacman_user_permission_lang` VALUES (14, 7, 2, 'Editar');
INSERT INTO `appacman_user_permission_lang` VALUES (15, 8, 1, 'Duplicar');
INSERT INTO `appacman_user_permission_lang` VALUES (16, 8, 2, 'Duplicar');
INSERT INTO `appacman_user_permission_lang` VALUES (17, 9, 1, 'Firebase');
INSERT INTO `appacman_user_permission_lang` VALUES (18, 9, 2, 'Firebase');
INSERT INTO `appacman_user_permission_lang` VALUES (19, 10, 1, 'The changes are send to all admins');
INSERT INTO `appacman_user_permission_lang` VALUES (20, 10, 2, 'Los cambios se envian a los admins');
COMMIT;

-- ----------------------------
-- Table structure for appacman_user_profile
-- ----------------------------
DROP TABLE IF EXISTS `appacman_user_profile`;
CREATE TABLE `appacman_user_profile` (
  `id_appacman_user_profile` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_appacman_user_profile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_user_profile
-- ----------------------------
BEGIN;
INSERT INTO `appacman_user_profile` VALUES (1);
INSERT INTO `appacman_user_profile` VALUES (2);
COMMIT;

-- ----------------------------
-- Table structure for appacman_user_profile_lang
-- ----------------------------
DROP TABLE IF EXISTS `appacman_user_profile_lang`;
CREATE TABLE `appacman_user_profile_lang` (
  `id_appacman_user_profile_lang` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_user_profile` int(11) NOT NULL,
  `id_appacman_lang` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_appacman_user_profile_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_user_profile_lang
-- ----------------------------
BEGIN;
INSERT INTO `appacman_user_profile_lang` VALUES (1, 2, 1, 'SuperAdministrador');
INSERT INTO `appacman_user_profile_lang` VALUES (2, 2, 2, 'SuperAdministrador');
INSERT INTO `appacman_user_profile_lang` VALUES (3, 1, 1, 'Administrador');
INSERT INTO `appacman_user_profile_lang` VALUES (4, 1, 2, 'Administrador');
COMMIT;

-- ----------------------------
-- Table structure for appacman_user_profile_permission
-- ----------------------------
DROP TABLE IF EXISTS `appacman_user_profile_permission`;
CREATE TABLE `appacman_user_profile_permission` (
  `id_appacman_user_profile` int(11) NOT NULL,
  `id_appacman_content` int(11) NOT NULL,
  `id_appacman_user_permission` int(11) NOT NULL,
  PRIMARY KEY (`id_appacman_user_profile`,`id_appacman_content`,`id_appacman_user_permission`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of appacman_user_profile_permission
-- ----------------------------
BEGIN;
INSERT INTO `appacman_user_profile_permission` VALUES (1, 1, 1);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 1, 2);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 1, 3);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 2, 2);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 2, 10);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 3, 1);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 3, 2);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 3, 3);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 6, 1);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 6, 2);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 6, 3);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 7, 1);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 7, 2);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 7, 3);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 8, 1);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 8, 2);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 8, 3);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 9, 1);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 9, 2);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 9, 3);
COMMIT;

-- ----------------------------
-- Table structure for difficulty
-- ----------------------------
DROP TABLE IF EXISTS `difficulty`;
CREATE TABLE `difficulty` (
  `id_difficulty` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_difficulty`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of difficulty
-- ----------------------------
BEGIN;
INSERT INTO `difficulty` VALUES (1);
INSERT INTO `difficulty` VALUES (2);
INSERT INTO `difficulty` VALUES (3);
COMMIT;

-- ----------------------------
-- Table structure for difficulty_lang
-- ----------------------------
DROP TABLE IF EXISTS `difficulty_lang`;
CREATE TABLE `difficulty_lang` (
  `id_difficulty_lang` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_difficulty` tinyint(3) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  PRIMARY KEY (`id_difficulty_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of difficulty_lang
-- ----------------------------
BEGIN;
INSERT INTO `difficulty_lang` VALUES (1, 1, 1, 'Fàcil', 'facil');
INSERT INTO `difficulty_lang` VALUES (2, 1, 2, 'Facil', 'facil');
INSERT INTO `difficulty_lang` VALUES (3, 2, 1, 'Normal', 'normal');
INSERT INTO `difficulty_lang` VALUES (4, 2, 2, 'Normal', 'normal');
INSERT INTO `difficulty_lang` VALUES (5, 3, 1, 'Difícil', 'dificil');
INSERT INTO `difficulty_lang` VALUES (6, 3, 2, 'Difícil', 'dificil');
COMMIT;

-- ----------------------------
-- Table structure for ingredient
-- ----------------------------
DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE `ingredient` (
  `id_ingredient` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `variable` varchar(255) NOT NULL,
  `id_ingredient_category` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ingredient_category
-- ----------------------------
DROP TABLE IF EXISTS `ingredient_category`;
CREATE TABLE `ingredient_category` (
  `id_ingredient_category` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ingredient_category`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ingredient_category
-- ----------------------------
BEGIN;
INSERT INTO `ingredient_category` VALUES (1);
INSERT INTO `ingredient_category` VALUES (2);
INSERT INTO `ingredient_category` VALUES (3);
INSERT INTO `ingredient_category` VALUES (4);
INSERT INTO `ingredient_category` VALUES (5);
INSERT INTO `ingredient_category` VALUES (6);
INSERT INTO `ingredient_category` VALUES (7);
COMMIT;

-- ----------------------------
-- Table structure for ingredient_category_lang
-- ----------------------------
DROP TABLE IF EXISTS `ingredient_category_lang`;
CREATE TABLE `ingredient_category_lang` (
  `id_ingredient_category_lang` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_ingredient_category` tinyint(3) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  PRIMARY KEY (`id_ingredient_category_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ingredient_category_lang
-- ----------------------------
BEGIN;
INSERT INTO `ingredient_category_lang` VALUES (1, 1, 1, 'Carn', 'carn');
INSERT INTO `ingredient_category_lang` VALUES (2, 1, 2, 'Carne', 'carne');
INSERT INTO `ingredient_category_lang` VALUES (3, 2, 1, 'Peix', 'peix');
INSERT INTO `ingredient_category_lang` VALUES (4, 2, 2, 'Pescado', 'pescado');
INSERT INTO `ingredient_category_lang` VALUES (5, 3, 1, 'Verdures', 'verdures');
INSERT INTO `ingredient_category_lang` VALUES (6, 3, 2, 'Verdura', 'verdura');
INSERT INTO `ingredient_category_lang` VALUES (7, 4, 1, 'Fruita', 'fruita');
INSERT INTO `ingredient_category_lang` VALUES (8, 4, 2, 'Fruta', 'fruta');
INSERT INTO `ingredient_category_lang` VALUES (9, 5, 1, 'Hortalisses', 'hortalisses');
INSERT INTO `ingredient_category_lang` VALUES (10, 5, 2, 'Hortalizas', 'hortalizas');
INSERT INTO `ingredient_category_lang` VALUES (11, 6, 1, 'Aus', 'aus');
INSERT INTO `ingredient_category_lang` VALUES (12, 6, 2, 'Aves', 'aves');
INSERT INTO `ingredient_category_lang` VALUES (13, 7, 1, 'Arròs', 'arros');
INSERT INTO `ingredient_category_lang` VALUES (14, 7, 2, 'Arroz', 'arroz');
COMMIT;

-- ----------------------------
-- Table structure for ingredient_lang
-- ----------------------------
DROP TABLE IF EXISTS `ingredient_lang`;
CREATE TABLE `ingredient_lang` (
  `id_ingredient_lang` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_ingredient` smallint(5) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  PRIMARY KEY (`id_ingredient_lang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recipe
-- ----------------------------
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe` (
  `id_recipe` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_difficulty` tinyint(3) unsigned DEFAULT NULL,
  `diners` tinyint(3) unsigned DEFAULT NULL,
  `image` mediumint(9) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_recipe`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recipe_ingredient
-- ----------------------------
DROP TABLE IF EXISTS `recipe_ingredient`;
CREATE TABLE `recipe_ingredient` (
  `id_recipe_ingredient` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_recipe` smallint(5) unsigned NOT NULL,
  `amount` varchar(255) NOT NULL,
  `id_ingredient` smallint(5) unsigned NOT NULL,
  `id_unit` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_recipe_ingredient`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recipe_lang
-- ----------------------------
DROP TABLE IF EXISTS `recipe_lang`;
CREATE TABLE `recipe_lang` (
  `id_recipe_lang` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_recipe` smallint(5) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_recipe_lang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recipe_step
-- ----------------------------
DROP TABLE IF EXISTS `recipe_step`;
CREATE TABLE `recipe_step` (
  `id_recipe_step` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `id_recipe` smallint(5) unsigned NOT NULL,
  `image` mediumint(9) unsigned DEFAULT NULL,
  `order` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_recipe_step`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recipe_step_lang
-- ----------------------------
DROP TABLE IF EXISTS `recipe_step_lang`;
CREATE TABLE `recipe_step_lang` (
  `id_recipe_step_lang` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `id_recipe_step` mediumint(7) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_recipe_step_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recipe_tag
-- ----------------------------
DROP TABLE IF EXISTS `recipe_tag`;
CREATE TABLE `recipe_tag` (
  `id_recipe` smallint(5) unsigned NOT NULL,
  `id_tag` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id_recipe`,`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id_tag` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
BEGIN;
INSERT INTO `tag` VALUES (1);
INSERT INTO `tag` VALUES (2);
INSERT INTO `tag` VALUES (3);
INSERT INTO `tag` VALUES (4);
INSERT INTO `tag` VALUES (5);
INSERT INTO `tag` VALUES (6);
INSERT INTO `tag` VALUES (7);
INSERT INTO `tag` VALUES (8);
INSERT INTO `tag` VALUES (9);
INSERT INTO `tag` VALUES (10);
COMMIT;

-- ----------------------------
-- Table structure for tag_lang
-- ----------------------------
DROP TABLE IF EXISTS `tag_lang`;
CREATE TABLE `tag_lang` (
  `id_tag_lang` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_tag` tinyint(3) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tag_lang`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag_lang
-- ----------------------------
BEGIN;
INSERT INTO `tag_lang` VALUES (1, 1, 1, 'Plat principal', 'plat-principal');
INSERT INTO `tag_lang` VALUES (2, 1, 2, 'Plato principal', 'plato-principal');
INSERT INTO `tag_lang` VALUES (3, 2, 1, 'Salsa', 'salsa');
INSERT INTO `tag_lang` VALUES (4, 2, 2, 'Salsa', 'salsa');
INSERT INTO `tag_lang` VALUES (5, 3, 1, 'Acompanyament', 'acompanyament');
INSERT INTO `tag_lang` VALUES (6, 3, 2, 'Acompañamiento', 'acompanamiento');
INSERT INTO `tag_lang` VALUES (7, 4, 1, 'Tapa', 'tapa');
INSERT INTO `tag_lang` VALUES (8, 4, 2, 'Tapa', 'tapa');
INSERT INTO `tag_lang` VALUES (9, 5, 1, 'Postre', 'postre');
INSERT INTO `tag_lang` VALUES (10, 5, 2, 'Postre', 'postre');
INSERT INTO `tag_lang` VALUES (11, 6, 1, 'Sopes', 'sopes');
INSERT INTO `tag_lang` VALUES (12, 6, 2, 'Sopas', 'sopas');
INSERT INTO `tag_lang` VALUES (13, 7, 1, 'Japonès', 'japones');
INSERT INTO `tag_lang` VALUES (14, 7, 2, 'Japonés', 'japones');
INSERT INTO `tag_lang` VALUES (15, 8, 1, 'Italià', 'italia');
INSERT INTO `tag_lang` VALUES (16, 8, 2, 'Italiano', 'italiano');
INSERT INTO `tag_lang` VALUES (17, 9, 1, 'Per nens', 'per-nens');
INSERT INTO `tag_lang` VALUES (18, 9, 2, 'Para niños', 'para-ninos');
INSERT INTO `tag_lang` VALUES (19, 10, 1, 'Mexicà', 'mexica');
INSERT INTO `tag_lang` VALUES (20, 10, 2, 'Mejicano', 'mejicano');
COMMIT;

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `id_unit` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_unit`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit
-- ----------------------------
BEGIN;
INSERT INTO `unit` VALUES (1);
INSERT INTO `unit` VALUES (2);
INSERT INTO `unit` VALUES (3);
INSERT INTO `unit` VALUES (4);
INSERT INTO `unit` VALUES (5);
COMMIT;

-- ----------------------------
-- Table structure for unit_lang
-- ----------------------------
DROP TABLE IF EXISTS `unit_lang`;
CREATE TABLE `unit_lang` (
  `id_unit_lang` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_unit` tinyint(3) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_unit_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit_lang
-- ----------------------------
BEGIN;
INSERT INTO `unit_lang` VALUES (1, 1, 1, 'cullerada (tbsp)');
INSERT INTO `unit_lang` VALUES (2, 1, 2, 'cucharada (tbsp)');
INSERT INTO `unit_lang` VALUES (3, 2, 1, 'culleradeta (tsp)');
INSERT INTO `unit_lang` VALUES (4, 2, 2, 'cucharadita (tsp)');
INSERT INTO `unit_lang` VALUES (5, 3, 1, 'grams');
INSERT INTO `unit_lang` VALUES (6, 3, 2, 'gramos');
INSERT INTO `unit_lang` VALUES (7, 4, 1, 'mililitres');
INSERT INTO `unit_lang` VALUES (8, 4, 2, 'mililitros');
INSERT INTO `unit_lang` VALUES (9, 5, 1, 'tassa (cup)');
INSERT INTO `unit_lang` VALUES (10, 5, 2, 'taza (cup)');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
