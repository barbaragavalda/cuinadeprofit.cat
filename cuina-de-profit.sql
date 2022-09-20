/*
 Navicat Premium Data Transfer

 Source Server         : optisistem.com
 Source Server Type    : MySQL
 Source Server Version : 100516
 Source Host           : optisistem.com:3306
 Source Schema         : cuina-de-profit

 Target Server Type    : MySQL
 Target Server Version : 100516
 File Encoding         : 65001

 Date: 14/09/2022 10:55:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appacman_block
-- ----------------------------
DROP TABLE IF EXISTS `appacman_block`;
CREATE TABLE `appacman_block` (
  `id_appacman_block` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(4) unsigned NOT NULL,
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
  `id_appacman_block` tinyint(3) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
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
  `id_appacman_content` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `id_appacman_block` tinyint(3) unsigned DEFAULT NULL,
  `id_appacman_list_type` tinyint(3) unsigned DEFAULT NULL,
  `order_by` varchar(255) DEFAULT NULL,
  `order` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_appacman_content`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
INSERT INTO `appacman_content` VALUES (8, 'tag', 'fa-tag', 2, 1, '`order` ASC', 5);
INSERT INTO `appacman_content` VALUES (9, 'ingredient_category', 'fa-tag', 2, 1, '`name` ASC', 3);
COMMIT;

-- ----------------------------
-- Table structure for appacman_content_lang
-- ----------------------------
DROP TABLE IF EXISTS `appacman_content_lang`;
CREATE TABLE `appacman_content_lang` (
  `id_appacman_content_lang` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_content` tinyint(3) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_content_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
  `id_appacman_field` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_content` tinyint(3) unsigned NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `id_appacman_field_type` tinyint(3) unsigned DEFAULT NULL,
  `order` tinyint(3) unsigned DEFAULT NULL,
  `show_on_list` tinyint(1) unsigned DEFAULT NULL,
  `show_on_breadcrumb` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_appacman_field`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

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
INSERT INTO `appacman_field` VALUES (15, 3, 'image', 1, 8, 1, NULL);
INSERT INTO `appacman_field` VALUES (16, 3, 'description', NULL, 9, NULL, NULL);
INSERT INTO `appacman_field` VALUES (17, 3, 'recipe_tag', 6, 10, NULL, NULL);
INSERT INTO `appacman_field` VALUES (18, 3, 'recipe_ingredient', 21, 11, NULL, NULL);
INSERT INTO `appacman_field` VALUES (19, 3, 'recipe_step', 21, 12, NULL, NULL);
INSERT INTO `appacman_field` VALUES (20, 3, 'created', NULL, 14, NULL, NULL);
INSERT INTO `appacman_field` VALUES (21, 4, 'id_recipe', 22, NULL, NULL, NULL);
INSERT INTO `appacman_field` VALUES (22, 4, 'amount', 13, 1, NULL, NULL);
INSERT INTO `appacman_field` VALUES (23, 4, 'id_ingredient', 2, 3, NULL, NULL);
INSERT INTO `appacman_field` VALUES (24, 4, 'id_unit', 2, 2, NULL, NULL);
INSERT INTO `appacman_field` VALUES (25, 5, 'id_recipe', 22, NULL, NULL, NULL);
INSERT INTO `appacman_field` VALUES (26, 5, 'image_step', 1, 1, NULL, NULL);
INSERT INTO `appacman_field` VALUES (27, 5, 'description_step', NULL, 2, NULL, NULL);
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
INSERT INTO `appacman_field` VALUES (38, 3, 'prep_time', 13, 5, NULL, NULL);
INSERT INTO `appacman_field` VALUES (39, 3, 'cook_time', 13, 6, NULL, NULL);
INSERT INTO `appacman_field` VALUES (40, 3, 'link', 12, 13, NULL, NULL);
INSERT INTO `appacman_field` VALUES (41, 4, 'order_ingredient', 13, 6, NULL, NULL);
INSERT INTO `appacman_field` VALUES (42, 4, 'is_alternative', 3, 4, NULL, NULL);
INSERT INTO `appacman_field` VALUES (43, 7, 'plural', NULL, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (44, 6, 'id_recipe', 2, 4, 1, NULL);
INSERT INTO `appacman_field` VALUES (45, 8, 'order', 13, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (46, 4, 'is_optional', 3, 5, NULL, NULL);
INSERT INTO `appacman_field` VALUES (47, 3, 'is_highlighted', 3, 2, NULL, NULL);
INSERT INTO `appacman_field` VALUES (48, 8, 'is_highlighted', 3, 3, 1, NULL);
INSERT INTO `appacman_field` VALUES (49, 3, 'rest_time', 13, 7, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for appacman_field_lang
-- ----------------------------
DROP TABLE IF EXISTS `appacman_field_lang`;
CREATE TABLE `appacman_field_lang` (
  `id_appacman_field_lang` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_field` smallint(5) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_appacman_field_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

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
INSERT INTO `appacman_field_lang` VALUES (32, 32, 1, 'Singular', NULL);
INSERT INTO `appacman_field_lang` VALUES (33, 33, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (34, 34, 1, 'URI', NULL);
INSERT INTO `appacman_field_lang` VALUES (35, 35, 1, 'Categoria', NULL);
INSERT INTO `appacman_field_lang` VALUES (36, 36, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (37, 37, 1, 'URI', NULL);
INSERT INTO `appacman_field_lang` VALUES (38, 38, 1, 'Temps preparació (min)', NULL);
INSERT INTO `appacman_field_lang` VALUES (39, 39, 1, 'Temps cuinat (min)', NULL);
INSERT INTO `appacman_field_lang` VALUES (40, 40, 1, 'Link', NULL);
INSERT INTO `appacman_field_lang` VALUES (41, 41, 1, 'Ordre', NULL);
INSERT INTO `appacman_field_lang` VALUES (42, 42, 1, 'Alternativa?', NULL);
INSERT INTO `appacman_field_lang` VALUES (43, 43, 1, 'Plural', NULL);
INSERT INTO `appacman_field_lang` VALUES (44, 44, 1, 'Receta', NULL);
INSERT INTO `appacman_field_lang` VALUES (45, 45, 1, 'Ordre', NULL);
INSERT INTO `appacman_field_lang` VALUES (46, 46, 1, 'Opcional?', NULL);
INSERT INTO `appacman_field_lang` VALUES (47, 47, 1, 'Destacada?', NULL);
INSERT INTO `appacman_field_lang` VALUES (48, 48, 1, 'Destacada?', NULL);
INSERT INTO `appacman_field_lang` VALUES (49, 49, 1, 'Temps de repòs (min)', NULL);
COMMIT;

-- ----------------------------
-- Table structure for appacman_field_type
-- ----------------------------
DROP TABLE IF EXISTS `appacman_field_type`;
CREATE TABLE `appacman_field_type` (
  `id_appacman_field_type` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_field_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
  `id_appacman_file` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_file`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_file
-- ----------------------------
BEGIN;
INSERT INTO `appacman_file` VALUES (1, 'logo.png');
INSERT INTO `appacman_file` VALUES (2, '2_gohan.png');
INSERT INTO `appacman_file` VALUES (3, '3_oyako-don.jpg');
INSERT INTO `appacman_file` VALUES (4, '4_doritos.jpeg');
INSERT INTO `appacman_file` VALUES (5, '5_doritos.jpeg');
INSERT INTO `appacman_file` VALUES (6, '6_doritos-2.jpeg');
INSERT INTO `appacman_file` VALUES (7, '7_torrades-guacamole-mozzarella-cherry.jpeg');
INSERT INTO `appacman_file` VALUES (8, '8_galletas-parmesano.jpeg');
INSERT INTO `appacman_file` VALUES (9, '9_zite-alla-genovese.png');
INSERT INTO `appacman_file` VALUES (10, '10_tiramisu-pistacchio.jpg');
INSERT INTO `appacman_file` VALUES (11, '11_artur-rutkowski-2leopvy3oj0-unsplash.jpg');
INSERT INTO `appacman_file` VALUES (12, '12_caldo-dashi-1.jpeg');
INSERT INTO `appacman_file` VALUES (13, '13_tapenade-tomates-secos-7-web.jpeg');
INSERT INTO `appacman_file` VALUES (14, '14_pasta-pesto.png');
INSERT INTO `appacman_file` VALUES (15, '15_truita-espinacs.jpeg');
INSERT INTO `appacman_file` VALUES (16, '16_entrepa-porro-brie.jpeg');
INSERT INTO `appacman_file` VALUES (17, '17_braves.jpg');
INSERT INTO `appacman_file` VALUES (18, '18_pasta-full-farcida.jpeg');
INSERT INTO `appacman_file` VALUES (19, '19_tiramisu.jpg');
INSERT INTO `appacman_file` VALUES (20, '20_hummus.jpg');
INSERT INTO `appacman_file` VALUES (21, '21_poke.jpg');
INSERT INTO `appacman_file` VALUES (22, '22_celestiale.jpg');
INSERT INTO `appacman_file` VALUES (23, '23_entrepa-pollastre.jpg');
INSERT INTO `appacman_file` VALUES (24, '24_arros-sushi.jpg');
INSERT INTO `appacman_file` VALUES (25, '25_arros-sushi.jpg');
INSERT INTO `appacman_file` VALUES (26, '26_maionesa.jpg');
INSERT INTO `appacman_file` VALUES (27, '27_japanese-mayo.jpg');
INSERT INTO `appacman_file` VALUES (28, '28_rollets-primavera.jpeg');
INSERT INTO `appacman_file` VALUES (29, '29_how-to-roll.jpeg');
INSERT INTO `appacman_file` VALUES (30, '30_croissant-bikini.jpeg');
INSERT INTO `appacman_file` VALUES (31, '31_coleslaw.jpg');
INSERT INTO `appacman_file` VALUES (32, '32_quiche.jpg');
COMMIT;

-- ----------------------------
-- Table structure for appacman_file_resize
-- ----------------------------
DROP TABLE IF EXISTS `appacman_file_resize`;
CREATE TABLE `appacman_file_resize` (
  `id_appacman_file_resize` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_field` smallint(5) unsigned NOT NULL,
  `width` smallint(6) unsigned NOT NULL,
  `height` smallint(6) unsigned NOT NULL,
  `suffix` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_file_resize`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_file_resize
-- ----------------------------
BEGIN;
INSERT INTO `appacman_file_resize` VALUES (1, 15, 400, 400, 'thumb');
INSERT INTO `appacman_file_resize` VALUES (2, 15, 700, 700, 'list');
INSERT INTO `appacman_file_resize` VALUES (3, 26, 700, 700, 'step');
COMMIT;

-- ----------------------------
-- Table structure for appacman_lang
-- ----------------------------
DROP TABLE IF EXISTS `appacman_lang`;
CREATE TABLE `appacman_lang` (
  `id_appacman_lang` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `culture` varchar(10) NOT NULL,
  `order` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_appacman_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
  `order` tinyint(3) unsigned DEFAULT NULL,
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
  `id_appacman_legal` tinyint(3) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
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
  `id_appacman_user` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_appacman_user_profile` tinyint(3) unsigned DEFAULT NULL,
  `changing_password` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_appacman_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
  `id_appacman_user_permission` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_user_permission`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
  `id_appacman_user_permission_lang` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_user_permission` tinyint(3) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_user_permission_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

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
  `id_appacman_user_profile` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_appacman_user_profile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
  `id_appacman_user_profile_lang` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_user_profile` tinyint(3) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_user_profile_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
  `id_appacman_user_profile` tinyint(3) unsigned NOT NULL,
  `id_appacman_content` tinyint(3) unsigned NOT NULL,
  `id_appacman_user_permission` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id_appacman_user_profile`,`id_appacman_content`,`id_appacman_user_permission`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id_difficulty`) USING BTREE
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
  `id_recipe` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_ingredient`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ingredient
-- ----------------------------
BEGIN;
INSERT INTO `ingredient` VALUES (1, '$dryTomatoes', 4, 0);
INSERT INTO `ingredient` VALUES (2, '$virginOliveOil', NULL, 0);
INSERT INTO `ingredient` VALUES (3, '$blackOlives', NULL, 0);
INSERT INTO `ingredient` VALUES (4, '$goatRollCheese', 8, 0);
INSERT INTO `ingredient` VALUES (5, '$creamCheese', 8, 0);
INSERT INTO `ingredient` VALUES (6, '$lemon', 4, 0);
INSERT INTO `ingredient` VALUES (7, '$basil', 10, 0);
INSERT INTO `ingredient` VALUES (8, '$provencalHerbs', 10, 0);
INSERT INTO `ingredient` VALUES (9, '$pepper', 9, 0);
INSERT INTO `ingredient` VALUES (10, '$oilDryTomatoes', 13, NULL);
INSERT INTO `ingredient` VALUES (11, '$lemonJuice', NULL, 0);
INSERT INTO `ingredient` VALUES (12, '$baconStrips', 1, 0);
INSERT INTO `ingredient` VALUES (13, '$chickenBreasts', 6, 0);
INSERT INTO `ingredient` VALUES (14, '$freshSpinach', 3, 0);
INSERT INTO `ingredient` VALUES (15, '$milk', 11, 0);
INSERT INTO `ingredient` VALUES (16, '$fettuccine', 12, 0);
INSERT INTO `ingredient` VALUES (17, '$pesto', 16, 3);
INSERT INTO `ingredient` VALUES (18, '$parmesan', 8, 0);
INSERT INTO `ingredient` VALUES (19, '$onion', 5, 0);
INSERT INTO `ingredient` VALUES (20, '$garlic', 5, 0);
INSERT INTO `ingredient` VALUES (21, '$garlicPowder', 9, 0);
INSERT INTO `ingredient` VALUES (22, '$salt', 9, 0);
INSERT INTO `ingredient` VALUES (23, '$pecorino', 8, 0);
INSERT INTO `ingredient` VALUES (24, '$pineNut', 13, 0);
INSERT INTO `ingredient` VALUES (25, '$sushiRice', 7, NULL);
INSERT INTO `ingredient` VALUES (26, '$water', NULL, NULL);
INSERT INTO `ingredient` VALUES (27, '$gohan', 7, 5);
INSERT INTO `ingredient` VALUES (28, '$leek', 3, NULL);
INSERT INTO `ingredient` VALUES (29, '$kombu', 14, NULL);
INSERT INTO `ingredient` VALUES (30, '$katsuobushi', 2, NULL);
INSERT INTO `ingredient` VALUES (31, '$dashi', NULL, 6);
INSERT INTO `ingredient` VALUES (32, '$egg', NULL, NULL);
INSERT INTO `ingredient` VALUES (33, '$sugar', NULL, NULL);
INSERT INTO `ingredient` VALUES (34, '$soySauce', 16, NULL);
INSERT INTO `ingredient` VALUES (35, '$mirin', 18, NULL);
INSERT INTO `ingredient` VALUES (36, '$nori', 14, NULL);
INSERT INTO `ingredient` VALUES (37, '$cornTortitas', NULL, NULL);
INSERT INTO `ingredient` VALUES (38, '$onionPowder', 9, NULL);
INSERT INTO `ingredient` VALUES (39, '$sweetPaprika', 9, NULL);
INSERT INTO `ingredient` VALUES (40, '$cheesePowder', 8, NULL);
INSERT INTO `ingredient` VALUES (41, '$guacamole', 16, NULL);
INSERT INTO `ingredient` VALUES (42, '$mozzarellaBalls', 8, NULL);
INSERT INTO `ingredient` VALUES (43, '$toast', 17, NULL);
INSERT INTO `ingredient` VALUES (44, '$cherryTomatoes', 4, NULL);
INSERT INTO `ingredient` VALUES (45, '$blackSesameSeeds', 9, NULL);
INSERT INTO `ingredient` VALUES (46, '$flour', 15, NULL);
INSERT INTO `ingredient` VALUES (47, '$butter', 11, NULL);
INSERT INTO `ingredient` VALUES (48, '$thyme', 9, NULL);
INSERT INTO `ingredient` VALUES (49, '$stewBeef ', 1, NULL);
INSERT INTO `ingredient` VALUES (50, '$sweetOnion', 5, NULL);
INSERT INTO `ingredient` VALUES (51, '$carrot', 5, NULL);
INSERT INTO `ingredient` VALUES (52, '$celery', 5, NULL);
INSERT INTO `ingredient` VALUES (53, '$bayLeaf', 10, NULL);
INSERT INTO `ingredient` VALUES (54, '$whiteWine', 18, NULL);
INSERT INTO `ingredient` VALUES (55, '$zite10', 12, NULL);
INSERT INTO `ingredient` VALUES (56, '$rigatoni', 12, NULL);
INSERT INTO `ingredient` VALUES (57, '$pistachios', 13, NULL);
INSERT INTO `ingredient` VALUES (58, '$icingSugar', NULL, NULL);
INSERT INTO `ingredient` VALUES (59, '$sunflowerOil', NULL, NULL);
INSERT INTO `ingredient` VALUES (60, '$mascarpone', 8, NULL);
INSERT INTO `ingredient` VALUES (61, '$whiteChocolate', NULL, NULL);
INSERT INTO `ingredient` VALUES (62, '$coffee', NULL, NULL);
INSERT INTO `ingredient` VALUES (63, '$ladyFinger', NULL, NULL);
INSERT INTO `ingredient` VALUES (64, '$pureCocoaPowder', NULL, NULL);
INSERT INTO `ingredient` VALUES (65, '$slicesCheese', 8, NULL);
INSERT INTO `ingredient` VALUES (66, '$tomatoSauce', 16, NULL);
INSERT INTO `ingredient` VALUES (67, '$pear', 4, NULL);
INSERT INTO `ingredient` VALUES (68, '$cayennePowder', 9, NULL);
INSERT INTO `ingredient` VALUES (69, '$lemonPeel', NULL, NULL);
INSERT INTO `ingredient` VALUES (70, '$camembert', 8, NULL);
INSERT INTO `ingredient` VALUES (71, '$brie', 8, NULL);
INSERT INTO `ingredient` VALUES (72, '$baguette', 17, NULL);
INSERT INTO `ingredient` VALUES (73, '$oliveOil', NULL, NULL);
INSERT INTO `ingredient` VALUES (74, '$potato', 5, NULL);
INSERT INTO `ingredient` VALUES (75, '$spicyOil', NULL, NULL);
INSERT INTO `ingredient` VALUES (76, '$espinalerSauce', 16, NULL);
INSERT INTO `ingredient` VALUES (77, '$vermut', 18, NULL);
INSERT INTO `ingredient` VALUES (78, '$turmeric', 9, NULL);
INSERT INTO `ingredient` VALUES (79, '$spicyPaprika', 9, NULL);
INSERT INTO `ingredient` VALUES (80, '$zucchini', 3, NULL);
INSERT INTO `ingredient` VALUES (81, '$puffPastry', NULL, NULL);
INSERT INTO `ingredient` VALUES (82, '$cookedHam', 19, NULL);
INSERT INTO `ingredient` VALUES (83, '$whiteSesameSeeds', 9, NULL);
INSERT INTO `ingredient` VALUES (84, '$freshMozzarella', 8, NULL);
INSERT INTO `ingredient` VALUES (85, '$biscottiGoccioleDark', NULL, NULL);
INSERT INTO `ingredient` VALUES (86, '$chocolateCookies', NULL, NULL);
INSERT INTO `ingredient` VALUES (87, '$hazelnutCream', NULL, NULL);
INSERT INTO `ingredient` VALUES (88, '$pizzaDough', NULL, NULL);
INSERT INTO `ingredient` VALUES (89, '$burrata', 8, NULL);
INSERT INTO `ingredient` VALUES (90, '$gorgonzola', 8, NULL);
INSERT INTO `ingredient` VALUES (91, '$taleggio', 8, NULL);
INSERT INTO `ingredient` VALUES (92, '$gratedMozzarella', 8, NULL);
INSERT INTO `ingredient` VALUES (93, '$bufalaStracciatella', 8, NULL);
INSERT INTO `ingredient` VALUES (94, '$cookedChickpeas', 20, NULL);
INSERT INTO `ingredient` VALUES (95, '$tahini', 13, NULL);
INSERT INTO `ingredient` VALUES (96, '$redWine', 18, NULL);
INSERT INTO `ingredient` VALUES (97, '$frankfurtBread', 17, NULL);
INSERT INTO `ingredient` VALUES (98, '$anchovy', 21, NULL);
INSERT INTO `ingredient` VALUES (99, '$mortadella', 19, NULL);
INSERT INTO `ingredient` VALUES (100, '$balsamicVinegar', NULL, NULL);
INSERT INTO `ingredient` VALUES (101, '$lettuce', 3, NULL);
INSERT INTO `ingredient` VALUES (102, '$mayonnaise', 16, 44);
INSERT INTO `ingredient` VALUES (103, '$bread', 17, NULL);
INSERT INTO `ingredient` VALUES (104, '$riceVinegar', NULL, NULL);
INSERT INTO `ingredient` VALUES (105, '$sushiRice', 7, 45);
INSERT INTO `ingredient` VALUES (106, '$salmon', 2, NULL);
INSERT INTO `ingredient` VALUES (107, '$avocado', 4, NULL);
INSERT INTO `ingredient` VALUES (108, '$cucumber', 3, NULL);
INSERT INTO `ingredient` VALUES (109, '$chive', 3, NULL);
INSERT INTO `ingredient` VALUES (110, '$wakame', 14, NULL);
INSERT INTO `ingredient` VALUES (111, '$sesameOil', NULL, NULL);
INSERT INTO `ingredient` VALUES (112, '$japaneseMayonnaise', NULL, NULL);
INSERT INTO `ingredient` VALUES (113, '$eggYolk', NULL, NULL);
INSERT INTO `ingredient` VALUES (114, '$dijonMustard', 16, NULL);
INSERT INTO `ingredient` VALUES (115, '$dashiPowder', NULL, NULL);
INSERT INTO `ingredient` VALUES (116, '$ricePaper', 7, NULL);
INSERT INTO `ingredient` VALUES (117, '$cabbage', 3, NULL);
INSERT INTO `ingredient` VALUES (118, '$shiitake', NULL, NULL);
INSERT INTO `ingredient` VALUES (119, '$greenOnion', 3, NULL);
INSERT INTO `ingredient` VALUES (120, '$poppySeeds', 9, NULL);
INSERT INTO `ingredient` VALUES (121, '$curry', 9, NULL);
INSERT INTO `ingredient` VALUES (122, '$croissants', NULL, NULL);
INSERT INTO `ingredient` VALUES (123, '$cheeseSlices', 8, NULL);
INSERT INTO `ingredient` VALUES (124, '$aluminumFoil', 23, NULL);
INSERT INTO `ingredient` VALUES (125, '$appleVinegar', NULL, NULL);
INSERT INTO `ingredient` VALUES (126, '$sourCream', 16, NULL);
INSERT INTO `ingredient` VALUES (127, '$focaccia', 17, NULL);
INSERT INTO `ingredient` VALUES (128, '$apple', 4, NULL);
INSERT INTO `ingredient` VALUES (129, '$shortcrustPastry', NULL, NULL);
INSERT INTO `ingredient` VALUES (130, '$cookingCream', 11, NULL);
INSERT INTO `ingredient` VALUES (131, '$emmental', 8, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ingredient_category
-- ----------------------------
DROP TABLE IF EXISTS `ingredient_category`;
CREATE TABLE `ingredient_category` (
  `id_ingredient_category` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ingredient_category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

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
INSERT INTO `ingredient_category` VALUES (8);
INSERT INTO `ingredient_category` VALUES (9);
INSERT INTO `ingredient_category` VALUES (10);
INSERT INTO `ingredient_category` VALUES (11);
INSERT INTO `ingredient_category` VALUES (12);
INSERT INTO `ingredient_category` VALUES (13);
INSERT INTO `ingredient_category` VALUES (14);
INSERT INTO `ingredient_category` VALUES (15);
INSERT INTO `ingredient_category` VALUES (16);
INSERT INTO `ingredient_category` VALUES (17);
INSERT INTO `ingredient_category` VALUES (18);
INSERT INTO `ingredient_category` VALUES (19);
INSERT INTO `ingredient_category` VALUES (20);
INSERT INTO `ingredient_category` VALUES (21);
INSERT INTO `ingredient_category` VALUES (22);
INSERT INTO `ingredient_category` VALUES (23);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ingredient_category_lang
-- ----------------------------
BEGIN;
INSERT INTO `ingredient_category_lang` VALUES (1, 1, 1, 'Carn', 'carn');
INSERT INTO `ingredient_category_lang` VALUES (2, 1, 2, 'Carne', 'carne');
INSERT INTO `ingredient_category_lang` VALUES (3, 2, 1, 'Peix', 'peix');
INSERT INTO `ingredient_category_lang` VALUES (4, 2, 2, 'Pescado', 'pescado');
INSERT INTO `ingredient_category_lang` VALUES (5, 3, 1, 'Verdura', 'verdura');
INSERT INTO `ingredient_category_lang` VALUES (6, 3, 2, 'Verdura', 'verdura');
INSERT INTO `ingredient_category_lang` VALUES (7, 4, 1, 'Fruita', 'fruita');
INSERT INTO `ingredient_category_lang` VALUES (8, 4, 2, 'Fruta', 'fruta');
INSERT INTO `ingredient_category_lang` VALUES (9, 5, 1, 'Hortalissa', 'hortalissa');
INSERT INTO `ingredient_category_lang` VALUES (10, 5, 2, 'Hortaliza', 'hortaliza');
INSERT INTO `ingredient_category_lang` VALUES (11, 6, 1, 'Au', 'au');
INSERT INTO `ingredient_category_lang` VALUES (12, 6, 2, 'Ave', 'ave');
INSERT INTO `ingredient_category_lang` VALUES (13, 7, 1, 'Arròs', 'arros');
INSERT INTO `ingredient_category_lang` VALUES (14, 7, 2, 'Arroz', 'arroz');
INSERT INTO `ingredient_category_lang` VALUES (15, 8, 1, 'Formatge', 'formatge');
INSERT INTO `ingredient_category_lang` VALUES (16, 8, 2, 'Queso', 'queso');
INSERT INTO `ingredient_category_lang` VALUES (17, 9, 1, 'Espècie', 'especie');
INSERT INTO `ingredient_category_lang` VALUES (18, 9, 2, 'Especie', 'especie');
INSERT INTO `ingredient_category_lang` VALUES (19, 10, 1, 'Herba', 'herba');
INSERT INTO `ingredient_category_lang` VALUES (20, 10, 2, 'Hierba', 'hierba');
INSERT INTO `ingredient_category_lang` VALUES (21, 11, 1, 'Làctic', 'lactic');
INSERT INTO `ingredient_category_lang` VALUES (22, 11, 2, 'Lácteo', 'lacteo');
INSERT INTO `ingredient_category_lang` VALUES (23, 12, 1, 'Pasta', 'pasta');
INSERT INTO `ingredient_category_lang` VALUES (24, 12, 2, 'Pasta', 'pasta');
INSERT INTO `ingredient_category_lang` VALUES (25, 13, 1, 'Fruit sec', 'fruit-sec');
INSERT INTO `ingredient_category_lang` VALUES (26, 13, 2, 'Fruto seco', 'fruto-seco');
INSERT INTO `ingredient_category_lang` VALUES (27, 14, 1, 'Alga', 'alga');
INSERT INTO `ingredient_category_lang` VALUES (28, 14, 2, 'Alga', 'alga');
INSERT INTO `ingredient_category_lang` VALUES (29, 15, 1, 'Cereal', 'cereal');
INSERT INTO `ingredient_category_lang` VALUES (30, 15, 2, 'Cereal', 'cereal');
INSERT INTO `ingredient_category_lang` VALUES (31, 16, 1, 'Salsa', 'salsa');
INSERT INTO `ingredient_category_lang` VALUES (32, 16, 2, 'Salsa', 'salsa');
INSERT INTO `ingredient_category_lang` VALUES (33, 17, 1, 'Pa', 'pa');
INSERT INTO `ingredient_category_lang` VALUES (34, 17, 2, 'Pan', 'pan');
INSERT INTO `ingredient_category_lang` VALUES (35, 18, 1, 'Beguda', 'beguda');
INSERT INTO `ingredient_category_lang` VALUES (36, 18, 2, 'Bebida', 'bebida');
INSERT INTO `ingredient_category_lang` VALUES (37, 19, 1, 'Embotit', 'embotit');
INSERT INTO `ingredient_category_lang` VALUES (38, 19, 2, 'Embutido', 'embutido');
INSERT INTO `ingredient_category_lang` VALUES (39, 20, 1, 'Llegums', 'llegums');
INSERT INTO `ingredient_category_lang` VALUES (40, 20, 2, 'Legumbres', 'legumbres');
INSERT INTO `ingredient_category_lang` VALUES (41, 21, 1, 'Conserva', 'conserva');
INSERT INTO `ingredient_category_lang` VALUES (42, 21, 2, 'Conserva', 'conserva');
INSERT INTO `ingredient_category_lang` VALUES (43, 22, 1, 'Bolet', 'bolet');
INSERT INTO `ingredient_category_lang` VALUES (44, 22, 2, 'Seta', 'seta');
INSERT INTO `ingredient_category_lang` VALUES (45, 23, 1, 'Utensili', 'utensili');
INSERT INTO `ingredient_category_lang` VALUES (46, 23, 2, 'Utensilio', 'utensilio');
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
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ingredient_lang
-- ----------------------------
BEGIN;
INSERT INTO `ingredient_lang` VALUES (1, 1, 1, 'Tomàquets secs', 'tomaquets-secs');
INSERT INTO `ingredient_lang` VALUES (2, 1, 2, 'Tomates secos', 'tomates-secos');
INSERT INTO `ingredient_lang` VALUES (3, 2, 1, 'Oli d\'oliva verge', 'oli-doliva-verge');
INSERT INTO `ingredient_lang` VALUES (4, 2, 2, 'Aceite de oliva virgen', 'aceite-de-oliva-virgen');
INSERT INTO `ingredient_lang` VALUES (5, 3, 1, 'Olives negres', 'olives-negres');
INSERT INTO `ingredient_lang` VALUES (6, 3, 2, 'Olivas negras', 'olivas-negras');
INSERT INTO `ingredient_lang` VALUES (7, 4, 1, 'Formatge rulo de cabra', 'formatge-rulo-de-cabra');
INSERT INTO `ingredient_lang` VALUES (8, 4, 2, 'Queso rulo de cabra', 'queso-rulo-de-cabra');
INSERT INTO `ingredient_lang` VALUES (9, 5, 1, 'Formatge crema', 'formatge-crema');
INSERT INTO `ingredient_lang` VALUES (10, 5, 2, 'Queso crema', 'queso-crema');
INSERT INTO `ingredient_lang` VALUES (11, 6, 1, 'Llimona', 'llimona');
INSERT INTO `ingredient_lang` VALUES (12, 6, 2, 'Limón', 'limon');
INSERT INTO `ingredient_lang` VALUES (13, 7, 1, 'Alfàbrega', 'alfabrega');
INSERT INTO `ingredient_lang` VALUES (14, 7, 2, 'Albahaca', 'albahaca');
INSERT INTO `ingredient_lang` VALUES (15, 8, 1, 'Herbes provençals', 'herbes-provencals');
INSERT INTO `ingredient_lang` VALUES (16, 8, 2, 'Hierbas provenzales', 'hierbas-provenzales');
INSERT INTO `ingredient_lang` VALUES (17, 9, 1, 'Pebre', 'pebre');
INSERT INTO `ingredient_lang` VALUES (18, 9, 2, 'Pimienta', 'pimienta');
INSERT INTO `ingredient_lang` VALUES (19, 10, 1, 'Tomàquets secs en oli', 'tomaquets-secs-en-oli');
INSERT INTO `ingredient_lang` VALUES (20, 10, 2, 'Tomates secos en aceite', 'tomates-secos-en-aceite');
INSERT INTO `ingredient_lang` VALUES (21, 11, 1, 'Suc de llimona', 'suc-de-llimona');
INSERT INTO `ingredient_lang` VALUES (22, 11, 2, 'Zumo de limon', 'zumo-de-limon');
INSERT INTO `ingredient_lang` VALUES (23, 12, 1, 'Tires de bacó', 'tires-de-baco');
INSERT INTO `ingredient_lang` VALUES (24, 12, 2, 'Tiras de baicon', 'tiras-de-baicon');
INSERT INTO `ingredient_lang` VALUES (25, 13, 1, 'Pit de pollastre', 'pit-de-pollastre');
INSERT INTO `ingredient_lang` VALUES (26, 13, 2, 'Pechuga de pollo', 'pechuga-de-pollo');
INSERT INTO `ingredient_lang` VALUES (27, 14, 1, 'Espinacs frescos', 'espinacs-frescos');
INSERT INTO `ingredient_lang` VALUES (28, 14, 2, 'Espinacas frescas', 'espinacas-frescas');
INSERT INTO `ingredient_lang` VALUES (29, 15, 1, 'Llet', 'llet');
INSERT INTO `ingredient_lang` VALUES (30, 15, 2, 'Leche', 'leche');
INSERT INTO `ingredient_lang` VALUES (31, 16, 1, 'Fettuccine', 'fettuccine');
INSERT INTO `ingredient_lang` VALUES (32, 16, 2, 'Fettuccine', 'fettuccine');
INSERT INTO `ingredient_lang` VALUES (33, 17, 1, 'Pesto', 'pesto');
INSERT INTO `ingredient_lang` VALUES (34, 17, 2, 'Pesto', 'pesto');
INSERT INTO `ingredient_lang` VALUES (35, 18, 1, 'Parmesà', 'parmesa');
INSERT INTO `ingredient_lang` VALUES (36, 18, 2, 'Parmesano', 'parmesano');
INSERT INTO `ingredient_lang` VALUES (37, 19, 1, 'Ceba', 'ceba');
INSERT INTO `ingredient_lang` VALUES (38, 19, 2, 'Cebolla', 'cebolla');
INSERT INTO `ingredient_lang` VALUES (39, 20, 1, 'All', 'all');
INSERT INTO `ingredient_lang` VALUES (40, 20, 2, 'Ajo', 'ajo');
INSERT INTO `ingredient_lang` VALUES (41, 21, 1, 'All en pols', 'all-en-pols');
INSERT INTO `ingredient_lang` VALUES (42, 21, 2, 'Ajo en polvo', 'ajo-en-polvo');
INSERT INTO `ingredient_lang` VALUES (43, 22, 1, 'Sal', 'sal');
INSERT INTO `ingredient_lang` VALUES (44, 22, 2, 'Sal', 'sal');
INSERT INTO `ingredient_lang` VALUES (45, 23, 1, 'Pecorino', 'pecorino');
INSERT INTO `ingredient_lang` VALUES (46, 23, 2, 'Pecorino', 'pecorino');
INSERT INTO `ingredient_lang` VALUES (47, 24, 1, 'Pinyons', 'pinyons');
INSERT INTO `ingredient_lang` VALUES (48, 24, 2, 'Piñones', 'pinones');
INSERT INTO `ingredient_lang` VALUES (49, 25, 1, 'Arrós de sushi', 'arros-de-sushi');
INSERT INTO `ingredient_lang` VALUES (50, 25, 2, 'Arroz de sushi', 'arroz-de-sushi');
INSERT INTO `ingredient_lang` VALUES (51, 26, 1, 'Aigua', 'aigua');
INSERT INTO `ingredient_lang` VALUES (52, 26, 2, 'Agua', 'agua');
INSERT INTO `ingredient_lang` VALUES (53, 27, 1, 'Gohan (arròs japonés)', 'gohan-arros-japones');
INSERT INTO `ingredient_lang` VALUES (54, 27, 2, 'Gohan (arroz japonés)', 'gohan-arroz-japones');
INSERT INTO `ingredient_lang` VALUES (55, 28, 1, 'Porro', 'porro');
INSERT INTO `ingredient_lang` VALUES (56, 28, 2, 'Puerro', 'puerro');
INSERT INTO `ingredient_lang` VALUES (57, 29, 1, 'Kombu', 'kombu');
INSERT INTO `ingredient_lang` VALUES (58, 29, 2, 'Kombu', 'kombu');
INSERT INTO `ingredient_lang` VALUES (59, 30, 1, 'Katsuobushi', 'katsuobushi');
INSERT INTO `ingredient_lang` VALUES (60, 30, 2, 'Katsuobushi', 'katsuobushi');
INSERT INTO `ingredient_lang` VALUES (61, 31, 1, 'Dashi', 'dashi');
INSERT INTO `ingredient_lang` VALUES (62, 31, 2, 'Dashi', 'dashi');
INSERT INTO `ingredient_lang` VALUES (63, 32, 1, 'Ou', 'ou');
INSERT INTO `ingredient_lang` VALUES (64, 32, 2, 'Huevo', 'huevo');
INSERT INTO `ingredient_lang` VALUES (65, 33, 1, 'Sucre', 'sucre');
INSERT INTO `ingredient_lang` VALUES (66, 33, 2, 'Azucar', 'azucar');
INSERT INTO `ingredient_lang` VALUES (67, 34, 1, 'Salsa de soja', 'salsa-de-soja');
INSERT INTO `ingredient_lang` VALUES (68, 34, 2, 'Salsa de soja', 'salsa-de-soja');
INSERT INTO `ingredient_lang` VALUES (69, 35, 1, 'Mirin', 'mirin');
INSERT INTO `ingredient_lang` VALUES (70, 35, 2, 'Mirin', 'mirin');
INSERT INTO `ingredient_lang` VALUES (71, 36, 1, 'Nori', 'nori');
INSERT INTO `ingredient_lang` VALUES (72, 36, 2, 'Nori', 'nori');
INSERT INTO `ingredient_lang` VALUES (73, 37, 1, 'Tortitas de blat de moro', 'tortitas-de-blat-de-moro');
INSERT INTO `ingredient_lang` VALUES (74, 37, 2, 'Tortitas de maíz', 'tortitas-de-maiz');
INSERT INTO `ingredient_lang` VALUES (75, 38, 1, 'Ceba en pols', 'ceba-en-pols');
INSERT INTO `ingredient_lang` VALUES (76, 38, 2, 'Cebolla en polvo', 'cebolla-en-polvo');
INSERT INTO `ingredient_lang` VALUES (77, 39, 1, 'Pebre vermell dolç', 'pebre-vermell-dolc');
INSERT INTO `ingredient_lang` VALUES (78, 39, 2, 'Pimentón dulce', 'pimenton-dulce');
INSERT INTO `ingredient_lang` VALUES (79, 40, 1, 'Formatge en pols', 'formatge-en-pols');
INSERT INTO `ingredient_lang` VALUES (80, 40, 2, 'Queso en polvo', 'queso-en-polvo');
INSERT INTO `ingredient_lang` VALUES (81, 41, 1, 'Guacamole', 'guacamole');
INSERT INTO `ingredient_lang` VALUES (82, 41, 2, 'Guacamole', 'guacamole');
INSERT INTO `ingredient_lang` VALUES (83, 42, 1, 'Boletes de mozzarella', 'boletes-de-mozzarella');
INSERT INTO `ingredient_lang` VALUES (84, 42, 2, 'Bolitas de mozzarella', 'bolitas-de-mozzarella');
INSERT INTO `ingredient_lang` VALUES (85, 43, 1, 'Torrades', 'torrades');
INSERT INTO `ingredient_lang` VALUES (86, 43, 2, 'Tostades', 'tostades');
INSERT INTO `ingredient_lang` VALUES (87, 44, 1, 'Tomàquets cherry', 'tomaquets-cherry');
INSERT INTO `ingredient_lang` VALUES (88, 44, 2, 'Tomates cherry', 'tomates-cherry');
INSERT INTO `ingredient_lang` VALUES (89, 45, 1, 'Llavors de sèsam negre', 'llavors-de-sesam-negre');
INSERT INTO `ingredient_lang` VALUES (90, 45, 2, 'Semillas de sésamo negro', 'semillas-de-sesamo-negro');
INSERT INTO `ingredient_lang` VALUES (91, 46, 1, 'Farina', 'farina');
INSERT INTO `ingredient_lang` VALUES (92, 46, 2, 'Harina', 'harina');
INSERT INTO `ingredient_lang` VALUES (93, 47, 1, 'Mantega', 'mantega');
INSERT INTO `ingredient_lang` VALUES (94, 47, 2, 'Mantequilla', 'mantequilla');
INSERT INTO `ingredient_lang` VALUES (95, 48, 1, 'Farigola', 'farigola');
INSERT INTO `ingredient_lang` VALUES (96, 48, 2, 'Tomillo', 'tomillo');
INSERT INTO `ingredient_lang` VALUES (97, 49, 1, 'Carn de vedella per estofat', 'carn-de-vedella-per-estofat');
INSERT INTO `ingredient_lang` VALUES (98, 49, 2, 'Carne de ternera para estofado', 'carne-de-ternera-para-estofado');
INSERT INTO `ingredient_lang` VALUES (99, 50, 1, 'Ceba dolça', 'ceba-dolca');
INSERT INTO `ingredient_lang` VALUES (100, 50, 2, 'Cebolla dulce', 'cebolla-dulce');
INSERT INTO `ingredient_lang` VALUES (101, 51, 1, 'Pastanagues', 'pastanagues');
INSERT INTO `ingredient_lang` VALUES (102, 51, 2, 'Zanahorias', 'zanahorias');
INSERT INTO `ingredient_lang` VALUES (103, 52, 1, 'Api', 'api');
INSERT INTO `ingredient_lang` VALUES (104, 52, 2, 'Apio', 'apio');
INSERT INTO `ingredient_lang` VALUES (105, 53, 1, 'Fulles de llorer', 'fulles-de-llorer');
INSERT INTO `ingredient_lang` VALUES (106, 53, 2, 'Hojas de laurel', 'hojas-de-laurel');
INSERT INTO `ingredient_lang` VALUES (107, 54, 1, 'Vi blanc', 'vi-blanc');
INSERT INTO `ingredient_lang` VALUES (108, 54, 2, 'Vino blanco', 'vino-blanco');
INSERT INTO `ingredient_lang` VALUES (109, 55, 1, 'Zite nº10', 'zite-n10');
INSERT INTO `ingredient_lang` VALUES (110, 55, 2, 'Zite nº10', 'zite-n10');
INSERT INTO `ingredient_lang` VALUES (111, 56, 1, 'Rigatoni', 'rigatoni');
INSERT INTO `ingredient_lang` VALUES (112, 56, 2, 'Rigatoni', 'rigatoni');
INSERT INTO `ingredient_lang` VALUES (113, 57, 1, 'Festucs', 'festucs');
INSERT INTO `ingredient_lang` VALUES (114, 57, 2, 'Pistachos', 'pistachos');
INSERT INTO `ingredient_lang` VALUES (115, 58, 1, 'Sucre glas', 'sucre-glas');
INSERT INTO `ingredient_lang` VALUES (116, 58, 2, 'Azucar glas', 'azucar-glas');
INSERT INTO `ingredient_lang` VALUES (117, 59, 1, 'Oli de girasol', 'oli-de-girasol');
INSERT INTO `ingredient_lang` VALUES (118, 59, 2, 'Aceite de girasol', 'aceite-de-girasol');
INSERT INTO `ingredient_lang` VALUES (119, 60, 1, 'Mascarpone', 'mascarpone');
INSERT INTO `ingredient_lang` VALUES (120, 60, 2, 'Mascarpone', 'mascarpone');
INSERT INTO `ingredient_lang` VALUES (121, 61, 1, 'Xocolata blanca', 'xocolata-blanca');
INSERT INTO `ingredient_lang` VALUES (122, 61, 2, 'Chocolate blanco', 'chocolate-blanco');
INSERT INTO `ingredient_lang` VALUES (123, 62, 1, 'Café', 'cafe');
INSERT INTO `ingredient_lang` VALUES (124, 62, 2, 'Café', 'cafe');
INSERT INTO `ingredient_lang` VALUES (125, 63, 1, 'Melindros', 'melindros');
INSERT INTO `ingredient_lang` VALUES (126, 63, 2, 'Bizcochos de soletilla', 'bizcochos-de-soletilla');
INSERT INTO `ingredient_lang` VALUES (127, 64, 1, 'Cacau pur en pols', 'cacau-pur-en-pols');
INSERT INTO `ingredient_lang` VALUES (128, 64, 2, 'Cacao puro en polvo', 'cacao-puro-en-polvo');
INSERT INTO `ingredient_lang` VALUES (129, 65, 1, 'Rodanxes de formatge', 'rodanxes-de-formatge');
INSERT INTO `ingredient_lang` VALUES (130, 65, 2, 'Lonchas de queso', 'lonchas-de-queso');
INSERT INTO `ingredient_lang` VALUES (131, 66, 1, 'Tomàquet fregit', 'tomaquet-fregit');
INSERT INTO `ingredient_lang` VALUES (132, 66, 2, 'Tomate frito', 'tomate-frito');
INSERT INTO `ingredient_lang` VALUES (133, 67, 1, 'Pera', 'pera');
INSERT INTO `ingredient_lang` VALUES (134, 67, 2, 'Pera', 'pera');
INSERT INTO `ingredient_lang` VALUES (135, 68, 1, 'Caiena en pols', 'caiena-en-pols');
INSERT INTO `ingredient_lang` VALUES (136, 68, 2, 'Cayena en polvo', 'cayena-en-polvo');
INSERT INTO `ingredient_lang` VALUES (137, 69, 1, 'Pell de llimona', 'pell-de-llimona');
INSERT INTO `ingredient_lang` VALUES (138, 69, 2, 'Piel de limón', 'piel-de-limon');
INSERT INTO `ingredient_lang` VALUES (139, 70, 1, 'Camembert', 'camembert');
INSERT INTO `ingredient_lang` VALUES (140, 70, 2, 'Camembert', 'camembert');
INSERT INTO `ingredient_lang` VALUES (141, 71, 1, 'Brie', 'brie');
INSERT INTO `ingredient_lang` VALUES (142, 71, 2, 'Brie', 'brie');
INSERT INTO `ingredient_lang` VALUES (143, 72, 1, 'Baguette', 'baguette');
INSERT INTO `ingredient_lang` VALUES (144, 72, 2, 'Baguette', 'baguette');
INSERT INTO `ingredient_lang` VALUES (145, 73, 1, 'Oli d\'oliva', 'oli-doliva');
INSERT INTO `ingredient_lang` VALUES (146, 73, 2, 'Aceite de oliva', 'aceite-de-oliva');
INSERT INTO `ingredient_lang` VALUES (147, 74, 1, 'Patata', 'patata');
INSERT INTO `ingredient_lang` VALUES (148, 74, 2, 'Patata', 'patata');
INSERT INTO `ingredient_lang` VALUES (149, 75, 1, 'Oli picant', 'oli-picant');
INSERT INTO `ingredient_lang` VALUES (150, 75, 2, 'Aceite picante', 'aceite-picante');
INSERT INTO `ingredient_lang` VALUES (151, 76, 1, 'Salsa Espinaler', 'salsa-espinaler');
INSERT INTO `ingredient_lang` VALUES (152, 76, 2, 'Salsa Espinaler', 'salsa-espinaler');
INSERT INTO `ingredient_lang` VALUES (153, 77, 1, 'Vermut', 'vermut');
INSERT INTO `ingredient_lang` VALUES (154, 77, 2, 'Vermut', 'vermut');
INSERT INTO `ingredient_lang` VALUES (155, 78, 1, 'Cúrcuma', 'curcuma');
INSERT INTO `ingredient_lang` VALUES (156, 78, 2, 'Cúrcuma', 'curcuma');
INSERT INTO `ingredient_lang` VALUES (157, 79, 1, 'Pebre vermell picant', 'pebre-vermell-picant');
INSERT INTO `ingredient_lang` VALUES (158, 79, 2, 'Pimentón de la Vera', 'pimenton-de-la-vera');
INSERT INTO `ingredient_lang` VALUES (159, 80, 1, 'Carbassó', 'carbasso');
INSERT INTO `ingredient_lang` VALUES (160, 80, 2, 'Calabaín', 'calabain');
INSERT INTO `ingredient_lang` VALUES (161, 81, 1, 'Pasta de full', 'pasta-de-full');
INSERT INTO `ingredient_lang` VALUES (162, 81, 2, 'Hojaldre', 'hojaldre');
INSERT INTO `ingredient_lang` VALUES (163, 82, 1, 'Pernil dolç', 'pernil-dolc');
INSERT INTO `ingredient_lang` VALUES (164, 82, 2, 'Jamón cocido', 'jamon-cocido');
INSERT INTO `ingredient_lang` VALUES (165, 83, 1, 'Llavors de sèsam blanc', 'llavors-de-sesam-blanc');
INSERT INTO `ingredient_lang` VALUES (166, 83, 2, 'Semillas de sésamo blanco', 'semillas-de-sesamo-blanco');
INSERT INTO `ingredient_lang` VALUES (167, 84, 1, 'Mozzarella fresca', 'mozzarella-fresca');
INSERT INTO `ingredient_lang` VALUES (168, 84, 2, 'Mozzarella fresca', 'mozzarella-fresca');
INSERT INTO `ingredient_lang` VALUES (169, 85, 1, 'Biscotti Gocciole Extra Dark', 'biscotti-gocciole-extra-dark');
INSERT INTO `ingredient_lang` VALUES (170, 85, 2, 'Biscotti Gocciole Extra Dark', 'biscotti-gocciole-extra-dark');
INSERT INTO `ingredient_lang` VALUES (171, 86, 1, 'Galetes de xocolata', 'galetes-de-xocolata');
INSERT INTO `ingredient_lang` VALUES (172, 86, 2, 'Galletas de xocolate', 'galletas-de-xocolate');
INSERT INTO `ingredient_lang` VALUES (173, 87, 1, 'Crema d\'avellanes', 'crema-davellanes');
INSERT INTO `ingredient_lang` VALUES (174, 87, 2, 'Crema de avellanas', 'crema-de-avellanas');
INSERT INTO `ingredient_lang` VALUES (175, 88, 1, 'Massa de pizza', 'massa-de-pizza');
INSERT INTO `ingredient_lang` VALUES (176, 88, 2, 'Masa de pizza', 'masa-de-pizza');
INSERT INTO `ingredient_lang` VALUES (177, 89, 1, 'Burrata', 'burrata');
INSERT INTO `ingredient_lang` VALUES (178, 89, 2, 'Burrata', 'burrata');
INSERT INTO `ingredient_lang` VALUES (179, 90, 1, 'Gorgonzola', 'gorgonzola');
INSERT INTO `ingredient_lang` VALUES (180, 90, 2, 'Gorgonzola', 'gorgonzola');
INSERT INTO `ingredient_lang` VALUES (181, 91, 1, 'Taleggio', 'taleggio');
INSERT INTO `ingredient_lang` VALUES (182, 91, 2, 'Taleggio', 'taleggio');
INSERT INTO `ingredient_lang` VALUES (183, 92, 1, 'Mozzarella ratllada', 'mozzarella-ratllada');
INSERT INTO `ingredient_lang` VALUES (184, 92, 2, 'Mozzarella rallada', 'mozzarella-rallada');
INSERT INTO `ingredient_lang` VALUES (185, 93, 1, 'Stracciatella di bufala', 'stracciatella-di-bufala');
INSERT INTO `ingredient_lang` VALUES (186, 93, 2, 'Stracciatella di bufala', 'stracciatella-di-bufala');
INSERT INTO `ingredient_lang` VALUES (187, 94, 1, 'Cigrons cuits', 'cigrons-cuits');
INSERT INTO `ingredient_lang` VALUES (188, 94, 2, 'Garbanzos cocidos', 'garbanzos-cocidos');
INSERT INTO `ingredient_lang` VALUES (189, 95, 1, 'Tahina', 'tahina');
INSERT INTO `ingredient_lang` VALUES (190, 95, 2, 'Tahini', 'tahini');
INSERT INTO `ingredient_lang` VALUES (191, 96, 1, 'Vi negre', 'vi-negre');
INSERT INTO `ingredient_lang` VALUES (192, 96, 2, 'Vino tinto', 'vino-tinto');
INSERT INTO `ingredient_lang` VALUES (193, 97, 1, 'Pa de frankfurt', 'pa-de-frankfurt');
INSERT INTO `ingredient_lang` VALUES (194, 97, 2, 'Pan de frankfurt', 'pan-de-frankfurt');
INSERT INTO `ingredient_lang` VALUES (195, 98, 1, 'Anxoves en conserva', 'anxova-en-conserva');
INSERT INTO `ingredient_lang` VALUES (196, 98, 2, 'Anchoas en conserva', 'anchoa-en-conserva');
INSERT INTO `ingredient_lang` VALUES (197, 99, 1, 'Mortadel·la', 'mortadella');
INSERT INTO `ingredient_lang` VALUES (198, 99, 2, 'Mortadela', 'mortadela');
INSERT INTO `ingredient_lang` VALUES (199, 100, 1, 'Vinagre Balsàmic de Mòdena', 'vinagre-balsamic-de-modena');
INSERT INTO `ingredient_lang` VALUES (200, 100, 2, 'Vinagre Balsámico de Módena', 'vinagre-balsamico-de-modena');
INSERT INTO `ingredient_lang` VALUES (201, 101, 1, 'Enciam', 'enciam');
INSERT INTO `ingredient_lang` VALUES (202, 101, 2, 'Lechuga', 'lechuga');
INSERT INTO `ingredient_lang` VALUES (203, 102, 1, 'Maionesa', 'maionesa');
INSERT INTO `ingredient_lang` VALUES (204, 102, 2, 'Mayonesa', 'mayonesa');
INSERT INTO `ingredient_lang` VALUES (205, 103, 1, 'Pa', 'pa');
INSERT INTO `ingredient_lang` VALUES (206, 103, 2, 'Pan', 'pan');
INSERT INTO `ingredient_lang` VALUES (207, 104, 1, 'Vinagre d\'arròs', 'vinagre-darros');
INSERT INTO `ingredient_lang` VALUES (208, 104, 2, 'Vinagre de arroz', 'vinagre-de-arroz');
INSERT INTO `ingredient_lang` VALUES (209, 105, 1, 'Arròs per sushi', 'arros-per-sushi');
INSERT INTO `ingredient_lang` VALUES (210, 105, 2, 'Arroz para sushi', 'arroz-para-sushi');
INSERT INTO `ingredient_lang` VALUES (211, 106, 1, 'Salmó', 'salmo');
INSERT INTO `ingredient_lang` VALUES (212, 106, 2, 'Salmón', 'salmon');
INSERT INTO `ingredient_lang` VALUES (213, 107, 1, 'Alvocat', 'alvocat');
INSERT INTO `ingredient_lang` VALUES (214, 107, 2, 'Aguacate', 'aguacate');
INSERT INTO `ingredient_lang` VALUES (215, 108, 1, 'Cogombre', 'cogombre');
INSERT INTO `ingredient_lang` VALUES (216, 108, 2, 'Pepino', 'pepino');
INSERT INTO `ingredient_lang` VALUES (217, 109, 1, 'Cebulet', 'cebulet');
INSERT INTO `ingredient_lang` VALUES (218, 109, 2, 'Cebollino', 'cebollino');
INSERT INTO `ingredient_lang` VALUES (219, 110, 1, 'Wakame', 'wakame');
INSERT INTO `ingredient_lang` VALUES (220, 110, 2, 'Wakame', 'wakame');
INSERT INTO `ingredient_lang` VALUES (221, 111, 1, 'Oli de sèsam', 'oli-de-sesam');
INSERT INTO `ingredient_lang` VALUES (222, 111, 2, 'Aceite de sésamo', 'aceite-de-sesamo');
INSERT INTO `ingredient_lang` VALUES (223, 112, 1, 'Maionesa japonesa', 'maionesa-japonesa');
INSERT INTO `ingredient_lang` VALUES (224, 112, 2, 'Mayonesa japonesa', 'mayonesa-japonesa');
INSERT INTO `ingredient_lang` VALUES (225, 113, 1, 'Rovells d\'ou', 'rovells-dou');
INSERT INTO `ingredient_lang` VALUES (226, 113, 2, 'Yemas de huevo', 'yemas-de-huevo');
INSERT INTO `ingredient_lang` VALUES (227, 114, 1, 'Mostassa de Dijon', 'mostassa-de-dijon');
INSERT INTO `ingredient_lang` VALUES (228, 114, 2, 'Mostaza de Dijon', 'mostaza-de-dijon');
INSERT INTO `ingredient_lang` VALUES (229, 115, 1, 'Dashi en pols', 'dashi-en-pols');
INSERT INTO `ingredient_lang` VALUES (230, 115, 2, 'Dashi en polvo', 'dashi-en-polvo');
INSERT INTO `ingredient_lang` VALUES (231, 116, 1, 'Paper d\'arròs', 'paper-darros');
INSERT INTO `ingredient_lang` VALUES (232, 116, 2, 'Papel de arroz', 'papel-de-arroz');
INSERT INTO `ingredient_lang` VALUES (233, 117, 1, 'Col', 'col');
INSERT INTO `ingredient_lang` VALUES (234, 117, 2, 'Col (repollo)', 'col-repollo');
INSERT INTO `ingredient_lang` VALUES (235, 118, 1, 'Shiitake', 'shiitake');
INSERT INTO `ingredient_lang` VALUES (236, 118, 2, 'Shiitake', 'shiitake');
INSERT INTO `ingredient_lang` VALUES (237, 119, 1, 'Ceba tendra', 'ceba-tendra');
INSERT INTO `ingredient_lang` VALUES (238, 119, 2, 'Cebollas verde', 'cebollas-verde');
INSERT INTO `ingredient_lang` VALUES (239, 120, 1, 'Llavors de rosella', 'llavors-de-rosella');
INSERT INTO `ingredient_lang` VALUES (240, 120, 2, 'Semillas de amapola', 'semillas-de-amapola');
INSERT INTO `ingredient_lang` VALUES (241, 121, 1, 'Curry', 'curry');
INSERT INTO `ingredient_lang` VALUES (242, 121, 2, 'Curry', 'curry');
INSERT INTO `ingredient_lang` VALUES (243, 122, 1, 'Croissants', 'croissants');
INSERT INTO `ingredient_lang` VALUES (244, 122, 2, 'Croissants', 'croissants');
INSERT INTO `ingredient_lang` VALUES (245, 123, 1, 'Formatge en talls', 'formatge-en-talls');
INSERT INTO `ingredient_lang` VALUES (246, 123, 2, 'Lonchas de queso', 'lonchas-de-queso');
INSERT INTO `ingredient_lang` VALUES (247, 124, 1, 'Paper d\'alumini', 'paper-dalumini');
INSERT INTO `ingredient_lang` VALUES (248, 124, 2, 'Papel de aluminio', 'papel-de-aluminio');
INSERT INTO `ingredient_lang` VALUES (249, 125, 1, 'Vinagre de poma', 'vinagre-de-poma');
INSERT INTO `ingredient_lang` VALUES (250, 125, 2, 'Vinagre de manzana', 'vinagre-de-manzana');
INSERT INTO `ingredient_lang` VALUES (251, 126, 1, 'Crema agra', 'crema-agra');
INSERT INTO `ingredient_lang` VALUES (252, 126, 2, 'Crema agria', 'crema-agria');
INSERT INTO `ingredient_lang` VALUES (253, 127, 1, 'Focaccia', 'focaccia');
INSERT INTO `ingredient_lang` VALUES (254, 127, 2, 'Focaccia', 'focaccia');
INSERT INTO `ingredient_lang` VALUES (255, 128, 1, 'Poma', 'poma');
INSERT INTO `ingredient_lang` VALUES (256, 128, 2, 'Manzana', 'manzana');
INSERT INTO `ingredient_lang` VALUES (257, 129, 1, 'Pasta brisa (o pasta trencada)', 'pasta-brisa-o-pasta-trencada');
INSERT INTO `ingredient_lang` VALUES (258, 129, 2, 'Pasta brisa (o masa quebrada)', 'pasta-brisa-o-masa-quebrada');
INSERT INTO `ingredient_lang` VALUES (259, 130, 1, 'Nata de cuina', 'nata-de-cuina');
INSERT INTO `ingredient_lang` VALUES (260, 130, 2, 'Nata de cocina', 'nata-de-cocina');
INSERT INTO `ingredient_lang` VALUES (261, 131, 1, 'Emmental', 'emmental');
INSERT INTO `ingredient_lang` VALUES (262, 131, 2, 'Emmental', 'emmental');
COMMIT;

-- ----------------------------
-- Table structure for recipe
-- ----------------------------
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe` (
  `id_recipe` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_difficulty` tinyint(3) unsigned NOT NULL,
  `diners` tinyint(3) unsigned DEFAULT NULL,
  `prep_time` smallint(5) DEFAULT NULL,
  `cook_time` smallint(5) DEFAULT NULL,
  `rest_time` smallint(5) DEFAULT NULL,
  `image` mediumint(9) unsigned DEFAULT NULL,
  `is_highlighted` tinyint(1) unsigned DEFAULT 0,
  `link` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_recipe`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe
-- ----------------------------
BEGIN;
INSERT INTO `recipe` VALUES (1, 1, 0, 30, 15, NULL, 13, 0, 'http://www.nomecomesnada.es/tapenade-de-tomates-secos-y-queso-de-cabra/', '2020-09-02 13:52:42');
INSERT INTO `recipe` VALUES (2, 1, 4, 0, 60, NULL, 14, 0, 'https://tasty.co/recipe/one-pot-chicken-spinach-bacon-alfredo', '2020-10-14 16:16:32');
INSERT INTO `recipe` VALUES (3, 1, 4, 5, NULL, NULL, 11, 0, NULL, '2020-10-15 16:54:38');
INSERT INTO `recipe` VALUES (4, 1, 2, 55, 40, NULL, 3, 1, NULL, '2020-10-16 13:06:45');
INSERT INTO `recipe` VALUES (5, 1, 2, 10, 20, 30, 2, 0, NULL, '2020-10-16 13:13:34');
INSERT INTO `recipe` VALUES (6, 1, 0, 45, 15, NULL, 12, 0, NULL, '2020-10-16 14:31:42');
INSERT INTO `recipe` VALUES (7, 1, 2, 15, 5, NULL, 5, 0, 'https://www.instagram.com/p/CFsLgWohr5k/', '2022-03-16 18:35:12');
INSERT INTO `recipe` VALUES (8, 1, 2, 5, NULL, NULL, 7, 0, 'https://www.instagram.com/p/CCih-Nvq4ww/', '2022-03-16 18:58:55');
INSERT INTO `recipe` VALUES (9, 1, 8, 15, 10, NULL, 8, 1, 'https://www.instagram.com/p/B7ZLOybCvz_/', '2022-03-16 19:19:37');
INSERT INTO `recipe` VALUES (10, 1, 2, 15, 270, NULL, 9, 0, 'https://www.instagram.com/p/CWp_wJnolFA/', '2022-03-16 19:37:04');
INSERT INTO `recipe` VALUES (11, 2, 4, 30, NULL, 120, 10, 0, 'https://chefincamicia.com/ricetta/tiramisu-pistacchio-cioccolato-bianco/', '2022-03-16 19:40:06');
INSERT INTO `recipe` VALUES (12, 1, 1, 5, 5, NULL, 15, 0, 'https://www.instagram.com/p/CMQJ_i6L42p/', '2022-03-16 19:45:10');
INSERT INTO `recipe` VALUES (13, 1, 1, 20, 20, NULL, 16, 1, 'https://www.instagram.com/p/CNcLLYLBHGz/', '2022-03-16 19:46:59');
INSERT INTO `recipe` VALUES (14, 1, 2, 45, 15, NULL, 17, 0, NULL, '2022-03-16 19:52:27');
INSERT INTO `recipe` VALUES (15, 1, 2, 10, 30, NULL, 18, 0, 'https://www.instagram.com/p/B0bHFpPDyMG/', '2022-03-16 19:54:10');
INSERT INTO `recipe` VALUES (16, 1, 8, 30, NULL, 60, 19, 1, 'https://www.instagram.com/p/CLo8pkIgM5n/', '2022-03-16 19:55:48');
INSERT INTO `recipe` VALUES (17, 3, 0, 0, 0, NULL, NULL, 0, 'https://www.instagram.com/p/B9Ty0R5CyWZ/', '2022-03-16 19:57:06');
INSERT INTO `recipe` VALUES (18, 1, 1, 10, 10, NULL, NULL, 0, 'https://www.instagram.com/p/BvE20Uki8Ih/', '2022-03-16 19:58:27');
INSERT INTO `recipe` VALUES (19, 1, 0, 0, 0, NULL, NULL, 0, 'https://www.instagram.com/p/CFIC-sdoFLs/', '2022-03-16 19:59:51');
INSERT INTO `recipe` VALUES (20, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.instagram.com/p/BlVytV8nryM/', '2022-03-16 20:01:38');
INSERT INTO `recipe` VALUES (21, 1, 2, 20, 20, 30, 23, 0, 'https://chefincamicia.com/ricetta/panino-pollo-balsamico/', '2022-03-16 20:02:53');
INSERT INTO `recipe` VALUES (22, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.instagram.com/p/B2ZA-nPgItU/', '2022-03-16 20:05:36');
INSERT INTO `recipe` VALUES (23, 1, 0, 0, 0, NULL, NULL, 0, 'https://www.instagram.com/p/B1lyJ96jDVt/', '2022-03-16 20:06:47');
INSERT INTO `recipe` VALUES (24, 1, 6, 5, NULL, NULL, 20, 0, NULL, '2022-03-16 20:09:16');
INSERT INTO `recipe` VALUES (25, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.instagram.com/p/CAZ5oWmoVdx/', '2022-03-16 20:10:22');
INSERT INTO `recipe` VALUES (26, 1, 2, 10, NULL, NULL, 22, 1, 'https://chefincamicia.com/ricetta/panino-morbido-con-mortadella/', '2022-03-16 20:12:02');
INSERT INTO `recipe` VALUES (27, 1, 0, 0, 0, NULL, NULL, 0, 'https://www.directoalpaladar.com/recetas-de-carnes-y-aves/receta-de-pollo-a-la-crema-con-tomates-secos', '2022-03-16 20:13:56');
INSERT INTO `recipe` VALUES (28, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.directoalpaladar.com/recetas-de-sopas-y-cremas/receta-de-vichyssoise-tradicional-la-crema-de-puerros-para-disfrutar-en-frio-y-tambien-en-caliente', '2022-03-16 20:14:46');
INSERT INTO `recipe` VALUES (29, 1, 4, 5, 20, NULL, 30, 0, 'https://www.tasteofhome.com/recipes/french-market-sandwiches/', '2022-03-16 20:17:40');
INSERT INTO `recipe` VALUES (30, 1, 0, 0, 0, NULL, NULL, 0, 'https://www.directoalpaladar.com/cultura-gastronomica/que-raclette-suiza-como-se-prepara', '2022-03-16 20:21:02');
INSERT INTO `recipe` VALUES (31, 1, 0, 0, 0, NULL, NULL, 0, 'https://www.recetasderechupete.com/tartar-de-salmon-al-estilo-clasico-receta-paso-a-paso/10154/', '2022-03-16 20:22:08');
INSERT INTO `recipe` VALUES (32, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.shanazrafiq.com/2016/01/street-style-masala-egg-bun-bun-omelet/', '2022-03-16 20:23:49');
INSERT INTO `recipe` VALUES (33, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.chinasichuanfood.com/biang-biang-mian-biang-biang-noodles/', '2022-03-16 20:25:46');
INSERT INTO `recipe` VALUES (34, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.instagram.com/p/CFFIOq1AFnd/', '2022-03-16 20:27:49');
INSERT INTO `recipe` VALUES (35, 1, 0, 0, 0, NULL, NULL, 0, 'https://www.instagram.com/p/CBK3OaugsSl/', '2022-03-16 20:29:19');
INSERT INTO `recipe` VALUES (36, 1, 0, 0, 0, NULL, NULL, 0, 'https://www.instagram.com/p/CNR9UKyhxOS/', '2022-03-16 20:31:25');
INSERT INTO `recipe` VALUES (37, 2, 0, 0, 0, NULL, NULL, 0, 'https://www.instagram.com/p/B-U--1blCM6/', '2022-03-16 20:33:10');
INSERT INTO `recipe` VALUES (38, 1, 0, 0, 0, NULL, NULL, 0, 'https://www.instagram.com/p/CFFUnuoFhQf/', '2022-03-16 20:35:56');
INSERT INTO `recipe` VALUES (39, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.instagram.com/p/CPIso5gq8g9/', '2022-03-16 20:37:22');
INSERT INTO `recipe` VALUES (40, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.instagram.com/p/Bx7GHJrnwj-/', '2022-03-16 20:38:19');
INSERT INTO `recipe` VALUES (41, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.instagram.com/p/CJgNZwBAOTN/', '2022-03-16 20:40:03');
INSERT INTO `recipe` VALUES (42, 1, NULL, NULL, NULL, NULL, NULL, 0, 'https://www.instagram.com/p/CP-00KtLRmW/', '2022-03-16 20:41:48');
INSERT INTO `recipe` VALUES (43, 1, 4, 45, 60, NULL, 21, 0, NULL, '2022-09-05 12:45:32');
INSERT INTO `recipe` VALUES (44, 1, NULL, 5, NULL, NULL, 26, 0, NULL, '2022-09-05 13:26:38');
INSERT INTO `recipe` VALUES (45, 2, 4, 10, 20, 30, 25, 0, NULL, '2022-09-05 15:22:25');
INSERT INTO `recipe` VALUES (46, 1, NULL, 10, NULL, NULL, 27, 0, 'https://www.justonecookbook.com/japanese-mayonnaise/', '2022-09-05 15:57:35');
INSERT INTO `recipe` VALUES (47, 1, 4, 20, 10, NULL, 28, 0, 'https://www.instagram.com/p/CYQ92SFlRn2/', '2022-09-07 13:09:35');
INSERT INTO `recipe` VALUES (49, 1, 4, 15, NULL, 120, 31, 0, NULL, '2022-09-13 12:50:39');
INSERT INTO `recipe` VALUES (50, 1, 2, 10, 20, NULL, NULL, 0, 'https://www.instagram.com/p/CeqCpGRoxW8/', '2022-09-13 16:27:55');
INSERT INTO `recipe` VALUES (51, 1, 4, 20, 25, NULL, 32, 0, NULL, '2022-09-14 10:33:09');
COMMIT;

-- ----------------------------
-- Table structure for recipe_ingredient
-- ----------------------------
DROP TABLE IF EXISTS `recipe_ingredient`;
CREATE TABLE `recipe_ingredient` (
  `id_recipe_ingredient` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_recipe` smallint(5) unsigned NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `id_ingredient` smallint(5) unsigned NOT NULL,
  `id_unit` tinyint(3) unsigned DEFAULT NULL,
  `is_alternative` tinyint(1) unsigned DEFAULT 0,
  `is_optional` tinyint(1) unsigned DEFAULT 0,
  `order_ingredient` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id_recipe_ingredient`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe_ingredient
-- ----------------------------
BEGIN;
INSERT INTO `recipe_ingredient` VALUES (1, 1, '80', 1, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (2, 1, '80', 10, 3, 1, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (3, 1, '3', 2, 2, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (4, 1, '15', 3, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (5, 1, '70', 4, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (6, 1, '2', 5, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (7, 1, '1', 11, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (8, 1, '8', 7, 6, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (9, 1, '0', 8, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (10, 1, '0', 9, 8, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (11, 3, '20', 7, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (12, 3, '2', 24, 1, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (13, 3, '75', 23, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (14, 3, '75', 18, 3, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (15, 3, '30', 2, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (16, 2, '200', 12, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (17, 2, '2', 13, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (18, 2, '2', 22, 2, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (19, 2, '1', 9, 2, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (20, 2, '1', 21, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (21, 2, '4', 20, 10, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (22, 2, '2', 19, NULL, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (23, 2, '150', 14, 3, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (24, 2, '1500', 15, 4, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (25, 2, '400', 16, 3, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (26, 2, '150', 17, 3, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (27, 2, '150', 18, 3, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (28, 5, '200', 25, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (29, 5, '240', 26, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (30, 4, '200', 27, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (31, 4, '0.5', 13, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (32, 4, '0.5', 28, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (33, 6, '500', 26, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (34, 6, '5', 29, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (35, 6, '5', 30, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (36, 4, '200', 31, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (37, 4, '4', 32, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (38, 4, '3', 34, 1, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (39, 4, '1.5', 35, 1, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (40, 4, '0.5', 33, 1, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (41, 4, '1', 36, NULL, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (42, 7, '2', 37, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (43, 7, '5', 73, 1, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (44, 7, '5', 26, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (45, 7, '3', 39, 1, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (46, 7, '3', 40, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (47, 7, '1', 22, 7, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (48, 7, '1', 38, 7, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (49, 8, '4', 10, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (50, 8, '200', 41, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (51, 8, '12', 42, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (52, 8, '6', 44, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (53, 8, NULL, 2, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (54, 8, NULL, 7, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (55, 8, NULL, 45, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (56, 8, NULL, 22, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (57, 8, NULL, 9, 8, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (58, 9, '250', 18, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (59, 9, '250', 46, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (60, 9, '175', 47, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (61, 9, NULL, 22, 8, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (62, 9, NULL, 9, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (63, 9, NULL, 48, 8, 0, 1, 6);
INSERT INTO `recipe_ingredient` VALUES (64, 10, '250', 49, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (65, 10, '250', 55, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (66, 10, '250', 56, 3, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (67, 10, '500', 50, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (68, 10, '100', 51, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (69, 10, '100', 52, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (70, 10, '1', 53, NULL, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (71, 10, '100', 54, 4, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (72, 10, '80', 18, 3, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (73, 10, '0', 22, 8, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (74, 11, '140', 57, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (75, 11, '50', 58, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (76, 11, '10', 59, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (77, 11, '500', 60, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (78, 11, '150', 61, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (79, 11, '80', 33, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (80, 11, '2', 32, NULL, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (81, 11, '100', 62, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (82, 11, '12', 63, NULL, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (83, 11, NULL, 64, 8, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (84, 12, '0.25', 19, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (85, 12, '200', 14, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (86, 12, '2', 32, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (87, 12, '2', 65, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (88, 12, NULL, 66, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (89, 12, NULL, 22, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (90, 12, NULL, 9, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (91, 13, '2', 72, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (92, 13, '1', 52, 11, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (93, 13, '2', 67, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (94, 13, '2', 33, 1, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (95, 13, NULL, 68, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (96, 13, NULL, 69, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (97, 13, '3', 28, NULL, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (98, 13, '1', 70, NULL, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (99, 13, '1', 71, NULL, 1, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (100, 13, NULL, 73, 8, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (101, 13, NULL, 22, 8, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (102, 13, NULL, 9, 8, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (103, 12, NULL, 73, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (104, 14, '1', 74, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (105, 14, NULL, 73, 13, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (106, 14, '2', 75, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (107, 14, '2', 66, 1, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (108, 14, '8', 76, 12, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (109, 14, '4', 77, 12, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (110, 14, NULL, 9, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (111, 14, '1', 78, 7, 0, 1, 8);
INSERT INTO `recipe_ingredient` VALUES (112, 14, '1', 79, 2, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (113, 14, '0.5', 20, 10, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (114, 14, '1', 32, NULL, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (115, 14, '250', 59, 4, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (116, 14, NULL, 22, 8, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (117, 15, '1', 81, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (118, 15, '1', 80, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (119, 15, '1', 84, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (120, 15, '120', 82, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (121, 15, '1', 32, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (122, 15, NULL, 22, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (123, 15, NULL, 9, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (124, 15, NULL, 73, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (125, 15, NULL, 83, 8, 0, 0, NULL);
INSERT INTO `recipe_ingredient` VALUES (126, 16, '400', 85, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (127, 16, '400', 86, 3, 1, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (128, 16, '500', 60, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (129, 16, '4', 32, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (130, 16, '120', 33, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (131, 16, NULL, 87, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (132, 16, '120', 62, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (133, 16, NULL, 64, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (134, 18, '1', 88, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (135, 18, '40', 90, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (136, 18, '50', 91, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (137, 18, '50', 92, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (138, 18, '40', 93, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (139, 18, '1', 89, NULL, 1, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (140, 18, '40', 4, 3, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (141, 18, '30', 18, 3, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (142, 24, '400', 94, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (143, 24, '1', 95, 2, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (144, 24, '50', 73, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (145, 24, '40', 11, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (146, 24, '0.5', 22, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (147, 24, NULL, 39, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (148, 24, NULL, 79, 8, 1, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (149, 26, '2', 97, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (150, 26, '1', 89, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (151, 26, '3', 98, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (152, 26, '60', 57, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (153, 26, '100', 99, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (154, 26, NULL, 75, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (155, 21, NULL, 100, 8, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (156, 21, '1', 13, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (157, 21, NULL, 101, 8, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (158, 21, '30', 18, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (159, 21, NULL, 102, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (160, 21, NULL, 7, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (161, 21, NULL, 9, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (162, 21, NULL, 22, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (163, 21, NULL, 2, 8, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (164, 21, '2', 103, NULL, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (165, 45, '400', 25, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (166, 45, '400', 26, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (167, 45, '5', 29, 3, 0, 1, 3);
INSERT INTO `recipe_ingredient` VALUES (168, 45, '80', 104, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (169, 45, '3', 33, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (170, 45, '1', 22, 2, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (171, 43, '400', 105, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (172, 43, '500', 106, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (173, 43, '1', 107, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (174, 43, '1', 51, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (175, 43, '0.5', 108, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (176, 43, NULL, 109, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (177, 43, NULL, 68, 8, 0, 1, 7);
INSERT INTO `recipe_ingredient` VALUES (178, 43, NULL, 83, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (179, 43, NULL, 34, 8, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (180, 43, NULL, 110, 8, 0, 1, 10);
INSERT INTO `recipe_ingredient` VALUES (181, 43, '1', 111, 2, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (182, 43, NULL, 112, 8, 0, 1, 12);
INSERT INTO `recipe_ingredient` VALUES (183, 44, '1', 32, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (184, 44, '200', 59, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (185, 46, '2', 113, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (186, 46, '2', 114, 2, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (187, 46, '1.5', 59, 5, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (188, 46, '0.5', 22, 2, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (189, 46, '2', 33, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (190, 46, '0.5', 115, 2, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (191, 46, '2', 104, 1, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (192, 46, '4', 11, 2, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (193, 47, '8', 116, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (194, 47, '1', 50, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (195, 47, '2', 51, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (196, 47, '6', 118, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (197, 47, NULL, 22, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (198, 47, NULL, 59, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (199, 47, '400', 117, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (200, 47, NULL, 34, 8, 0, 1, 7);
INSERT INTO `recipe_ingredient` VALUES (201, 29, '50', 47, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (202, 29, '50', 114, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (203, 29, '1', 119, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (204, 29, '1', 120, 2, 0, 1, 4);
INSERT INTO `recipe_ingredient` VALUES (205, 29, '0.5', 121, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (206, 29, '4', 122, NULL, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (207, 29, '150', 82, 3, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (208, 29, '4', 123, NULL, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (209, 29, NULL, 124, NULL, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (210, 49, '0.25', 117, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (211, 49, '3', 51, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (212, 49, '4', 126, 1, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (213, 49, '2', 102, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (214, 49, '2', 114, 2, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (215, 49, NULL, 125, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (216, 26, '1', 127, NULL, 1, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (217, 49, '0.5', 128, NULL, 0, 1, 3);
INSERT INTO `recipe_ingredient` VALUES (218, 51, '1', 129, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (219, 51, '2', 28, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (220, 51, '2', 32, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (221, 51, '200', 130, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (222, 51, '100', 99, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (223, 51, '100', 131, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (224, 51, NULL, 47, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (225, 51, NULL, 22, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (226, 51, NULL, 9, 8, 0, 0, 9);
COMMIT;

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
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id_recipe_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe_lang
-- ----------------------------
BEGIN;
INSERT INTO `recipe_lang` VALUES (1, 1, 1, 'Tapenada de tomàquets secs', 'tapenada-de-tomaquets-secs', '<p>Una espècie de paté molt original i fresc.</p>');
INSERT INTO `recipe_lang` VALUES (2, 1, 2, 'Tapenade de tomates secos', 'tapenade-de-tomates-secos', '<p>Una especie de paté muy original y fresco.</p>');
INSERT INTO `recipe_lang` VALUES (3, 2, 1, 'Pasta cremosa de pollastre, bacó i espinacs', 'pasta-cremosa-de-pollastre-baco-i-espinacs', '<p>Pasta bullida amb llet i que es pot preparar de principi a fi a la mateixa olla.</p>');
INSERT INTO `recipe_lang` VALUES (4, 2, 2, 'Pasta cremosa de pollo, bacon y espinacas', 'pasta-cremosa-de-pollo-bacon-y-espinacas', '<p>Pasta hervida con leche y que se puede preparar de principio a fin en la misma olla.</p>');
INSERT INTO `recipe_lang` VALUES (5, 3, 1, 'Pesto', 'pesto', '<p>Salsa perfecta no tan sols per pasta, sinó també per amanides i entrepans.</p>');
INSERT INTO `recipe_lang` VALUES (6, 3, 2, 'Pesto', 'pesto', '<p>Salsa perfecta no sólo para pasta, sino también para ensaladas y bocadillos.</p>');
INSERT INTO `recipe_lang` VALUES (7, 4, 1, 'Oyako Don', 'oyako-don', 'Bol d\'arròs blanc amb una truita super cremosa de pollastres i porros.');
INSERT INTO `recipe_lang` VALUES (8, 4, 2, 'Oyako Don', 'oyako-don', '<p>Bol de arroz blanco con una tortilla super cremosa de pollos y puerros.</p>');
INSERT INTO `recipe_lang` VALUES (9, 5, 1, 'Gohan (arròs japonés)', 'gohan-arros-japones', '<p>Plat bàsic de la cuina japonesa. Un arròs aglutinat que ens servirà com a base per altres plats o com a simple acompanyament.</p>');
INSERT INTO `recipe_lang` VALUES (10, 5, 2, 'Gohan (arroz japonés)', 'gohan-arroz-japones', '<p>Plato básico de la cocina japonesa. Un arroz aglutinado que nos servirá como base para otros platos o como simple acompañamiento.</p>');
INSERT INTO `recipe_lang` VALUES (11, 6, 1, 'Dashi casolà', 'dashi-casola', '<p>Sopa bàsica a la cuina nipona a base de bonítol sec en flocs.</p>');
INSERT INTO `recipe_lang` VALUES (12, 6, 2, 'Dashi casero', 'dashi-casero', '<p>Sopa básica en la cocina nipona a base de bonito seco en copos.</p>');
INSERT INTO `recipe_lang` VALUES (13, 7, 1, 'Doritos casolans', 'doritos-casolans', '<p>Les patates de bossa que pots fer a casa teva amb les toritas que t\'han sobrat.</p>');
INSERT INTO `recipe_lang` VALUES (14, 7, 2, 'Doritos hechos en casa', 'doritos-hechos-en-casa', '<p>Las patatas de bolsa que puedes hacer en tu casa con las tortitas que te han sobrado.</p>');
INSERT INTO `recipe_lang` VALUES (15, 8, 1, 'Torrades de guacamole, mozzarella i cherry', 'torrades-de-guacamole-mozzarella-i-cherry', NULL);
INSERT INTO `recipe_lang` VALUES (16, 8, 2, 'Tostadas de guacamole, mozzarella y cherry', 'tostadas-de-guacamole-mozzarella-y-cherry', NULL);
INSERT INTO `recipe_lang` VALUES (17, 9, 1, 'Galetes de permesà', 'galetes-de-permesa', '<p>Una tapa que enamorarà als fanàtics del formatge.</p>');
INSERT INTO `recipe_lang` VALUES (18, 9, 2, 'Galletas de parmesano', 'galletas-de-parmesano', '<p>Una tapa que enamorará a los fanáticos del queso.</p>');
INSERT INTO `recipe_lang` VALUES (19, 10, 1, 'Zite N\'10 a la Genovese', 'zite-n10-a-la-genovese', '<p>T\'animo a preparar aquesta pasta si tens una tarda lliure: et sorprendrà.</p>');
INSERT INTO `recipe_lang` VALUES (20, 10, 2, 'Zite N\'10 a la Genovese', 'zite-n10-a-la-genovese', '<p>Te animo a preparar esta pasta si tienes una tarde libre: te sorprenderá.</p>');
INSERT INTO `recipe_lang` VALUES (21, 11, 1, 'Tiramisú de pistatxo i xocolata blanca', 'tiramisu-de-pistatxo-i-xocolata-blanca', NULL);
INSERT INTO `recipe_lang` VALUES (22, 11, 2, 'Tiramisú de pistacho y chocolate blanco', 'tiramisu-de-pistacho-y-chocolate-blanco', NULL);
INSERT INTO `recipe_lang` VALUES (23, 12, 1, 'Truita d\'espinacs i formatge', 'truita-despinacs-i-formatge', '<p>Sopar bo i fàcil en pocs minuts.</p>');
INSERT INTO `recipe_lang` VALUES (24, 12, 2, 'Tortilla de espinacas y queso', 'tortilla-de-espinacas-y-queso', '<p>Cena buena y fácil en pocos minutos.</p>');
INSERT INTO `recipe_lang` VALUES (25, 13, 1, 'Entrepà de porro i Camembert', 'entrepa-de-porro-i-camembert', NULL);
INSERT INTO `recipe_lang` VALUES (26, 13, 2, 'Bocata de puerro y Camembert', 'bocata-de-puerro-y-camembert', NULL);
INSERT INTO `recipe_lang` VALUES (27, 14, 1, 'Patates braves', 'patates-braves', '<p>Una recepta que aniràs millorant amb el temps i la pràctica.</p>');
INSERT INTO `recipe_lang` VALUES (28, 14, 2, 'Patatas bravas', 'patatas-bravas', '<p>Una receta que irás mejorando con el tiempo y la práctica.</p>');
INSERT INTO `recipe_lang` VALUES (29, 15, 1, 'Pasta de full farcida', 'pasta-de-full-farcida', NULL);
INSERT INTO `recipe_lang` VALUES (30, 15, 2, 'Hojaldre relleno', 'hojaldre-relleno', NULL);
INSERT INTO `recipe_lang` VALUES (31, 16, 1, 'Tiramisú de xocolata', 'tiramisu-de-xocolata', NULL);
INSERT INTO `recipe_lang` VALUES (32, 16, 2, 'Tiramisú de chocolate', 'tiramisu-de-chocolate', NULL);
INSERT INTO `recipe_lang` VALUES (33, 17, 1, 'Tacos suadero', 'tacos-suadero', NULL);
INSERT INTO `recipe_lang` VALUES (34, 17, 2, 'Tacos suadero', 'tacos-suadero', NULL);
INSERT INTO `recipe_lang` VALUES (35, 18, 1, 'Pizza sis formatges', 'pizza-sis-formatges', NULL);
INSERT INTO `recipe_lang` VALUES (36, 18, 2, 'Pizza seis quesos', 'pizza-seis-quesos', NULL);
INSERT INTO `recipe_lang` VALUES (37, 19, 1, 'Pizza barbacoa', 'pizza-barbacoa', NULL);
INSERT INTO `recipe_lang` VALUES (38, 19, 2, 'Pizza barbacoa', 'pizza-barbacoa', NULL);
INSERT INTO `recipe_lang` VALUES (39, 20, 1, 'Pizza burrata i pesto', 'pizza-burrata-i-pesto', NULL);
INSERT INTO `recipe_lang` VALUES (40, 20, 2, 'Pizza burrata y pesto', 'pizza-burrata-y-pesto', NULL);
INSERT INTO `recipe_lang` VALUES (41, 21, 1, 'Entrepà de pollastre', 'entrepa-de-pollastre', NULL);
INSERT INTO `recipe_lang` VALUES (42, 21, 2, 'Bocadillo de pollo', 'bocadillo-de-pollo', NULL);
INSERT INTO `recipe_lang` VALUES (43, 22, 1, 'Mitges llunes de carbassó cruixent', 'mitges-llunes-de-carbasso-cruixent', NULL);
INSERT INTO `recipe_lang` VALUES (44, 22, 2, 'Medias lunas de calabacín crujiente', 'medias-lunas-de-calabacin-crujiente', NULL);
INSERT INTO `recipe_lang` VALUES (45, 23, 1, 'Pizza pepperoni desconstruïda', 'pizza-pepperoni-desconstruida', NULL);
INSERT INTO `recipe_lang` VALUES (46, 23, 2, 'Pizza pepperoni deconstruida', 'pizza-pepperoni-deconstruida', NULL);
INSERT INTO `recipe_lang` VALUES (47, 24, 1, 'Hummus', 'hummus', NULL);
INSERT INTO `recipe_lang` VALUES (48, 24, 2, 'Hummus', 'hummus', NULL);
INSERT INTO `recipe_lang` VALUES (49, 25, 1, 'Entrepà de feta', 'entrepa-de-feta', NULL);
INSERT INTO `recipe_lang` VALUES (50, 25, 2, 'Bocadillo de feta', 'bocadillo-de-feta', NULL);
INSERT INTO `recipe_lang` VALUES (51, 26, 1, 'Celestiale', 'celestiale', '<p>Un entrepà elegant que si proveu: segur que l\'incorporareu als vostres menús.</p>');
INSERT INTO `recipe_lang` VALUES (52, 26, 2, 'Celestiale', 'celestiale', '<p>Un bocadillo elegante que si lo probáis: seguro que lo incorporaréis a vuestros menús.</p>');
INSERT INTO `recipe_lang` VALUES (53, 27, 1, 'Pollastre a la crema de tomaquets secs', 'pollastre-a-la-crema-de-tomaquets-secs', NULL);
INSERT INTO `recipe_lang` VALUES (54, 27, 2, 'Pollo a la crema de tomates secos', 'pollo-a-la-crema-de-tomates-secos', NULL);
INSERT INTO `recipe_lang` VALUES (55, 28, 1, 'Vichyssoise', 'vichyssoise', NULL);
INSERT INTO `recipe_lang` VALUES (56, 28, 2, 'Vichyssoise', 'vichyssoise', NULL);
INSERT INTO `recipe_lang` VALUES (57, 29, 1, 'Croissant bikini', 'croissant-bikini', NULL);
INSERT INTO `recipe_lang` VALUES (58, 29, 2, 'Croissant bikini', 'croissant-bikini', NULL);
INSERT INTO `recipe_lang` VALUES (59, 30, 1, 'Raclette', 'raclette', NULL);
INSERT INTO `recipe_lang` VALUES (60, 30, 2, 'Raclette', 'raclette', NULL);
INSERT INTO `recipe_lang` VALUES (61, 31, 1, 'Tartar de salmó', 'tartar-de-salmo', NULL);
INSERT INTO `recipe_lang` VALUES (62, 31, 2, 'Tartar de salmón', 'tartar-de-salmon', NULL);
INSERT INTO `recipe_lang` VALUES (63, 32, 1, 'Brioix d\'ou estil Masala', 'brioix-dou-estil-masala', NULL);
INSERT INTO `recipe_lang` VALUES (64, 32, 2, 'Bollo de huevo estilo Masala', 'bollo-de-huevo-estilo-masala', NULL);
INSERT INTO `recipe_lang` VALUES (65, 33, 1, 'Fideus Biang Biang Mian', 'fideus-biang-biang-mian', NULL);
INSERT INTO `recipe_lang` VALUES (66, 33, 2, 'Fideos Biang Biang Mian', 'fideos-biang-biang-mian', NULL);
INSERT INTO `recipe_lang` VALUES (67, 34, 1, 'Fusilli amb cigrons', 'fusilli-amb-cigrons', NULL);
INSERT INTO `recipe_lang` VALUES (68, 34, 2, 'Fusilli con garbanzos', 'fusilli-con-garbanzos', NULL);
INSERT INTO `recipe_lang` VALUES (69, 35, 1, 'Ous Benedictins amb salmó fumat', 'ous-benedictins-amb-salmo-fumat', NULL);
INSERT INTO `recipe_lang` VALUES (70, 35, 2, 'Huevos Benedictinos con salmón ahumado', 'huevos-benedictinos-con-salmon-ahumado', NULL);
INSERT INTO `recipe_lang` VALUES (71, 36, 1, 'Carbonara plus', 'carbonara-plus', NULL);
INSERT INTO `recipe_lang` VALUES (72, 36, 2, 'Carbonara plus', 'carbonara-plus', NULL);
INSERT INTO `recipe_lang` VALUES (73, 37, 1, 'Canelons d\'albergínia gratinats', 'canelons-dalberginia-gratinats', NULL);
INSERT INTO `recipe_lang` VALUES (74, 37, 2, 'Canelones de berenjena gratinados', 'canelones-de-berenjena-gratinados', NULL);
INSERT INTO `recipe_lang` VALUES (75, 38, 1, 'Rotllet de carbassó', 'rotllet-de-carbasso', NULL);
INSERT INTO `recipe_lang` VALUES (76, 38, 2, 'Rollito de calabacín', 'rollito-de-calabacin', NULL);
INSERT INTO `recipe_lang` VALUES (77, 39, 1, 'Hummus de pèsols i wasabi', 'hummus-de-pesols-i-wasabi', NULL);
INSERT INTO `recipe_lang` VALUES (78, 39, 2, 'Hummus de guisantes y wasabi', 'hummus-de-guisantes-y-wasabi', NULL);
INSERT INTO `recipe_lang` VALUES (79, 40, 1, 'Hummus de mongeta blanca i pèsols', 'hummus-de-mongeta-blanca-i-pesols', NULL);
INSERT INTO `recipe_lang` VALUES (80, 40, 2, 'Hummus de alubias y guisantes', 'hummus-de-alubias-y-guisantes', NULL);
INSERT INTO `recipe_lang` VALUES (81, 41, 1, 'Crema de carbassa', 'crema-de-carbassa', NULL);
INSERT INTO `recipe_lang` VALUES (82, 41, 2, 'Crema de calabaza', 'crema-de-calabaza', NULL);
INSERT INTO `recipe_lang` VALUES (83, 42, 1, '\"Salmó\" vegà', 'salmo-vega', NULL);
INSERT INTO `recipe_lang` VALUES (84, 42, 2, '\"Salmón\" vegano', 'salmon-vegano', NULL);
INSERT INTO `recipe_lang` VALUES (85, 43, 1, 'Poke', 'poke', NULL);
INSERT INTO `recipe_lang` VALUES (86, 43, 2, 'Poke', 'poke', NULL);
INSERT INTO `recipe_lang` VALUES (87, 44, 1, 'Maionesa', 'maionesa', NULL);
INSERT INTO `recipe_lang` VALUES (88, 44, 2, 'Mayonesa', 'mayonesa', NULL);
INSERT INTO `recipe_lang` VALUES (89, 45, 1, 'Arròs per sushi', 'arros-per-sushi', NULL);
INSERT INTO `recipe_lang` VALUES (90, 45, 2, 'Arroz para sushi', 'arroz-para-sushi', NULL);
INSERT INTO `recipe_lang` VALUES (91, 46, 1, 'Maionesa japonesa', 'maionesa-japonesa', NULL);
INSERT INTO `recipe_lang` VALUES (92, 46, 2, 'Mayonesa japonesa', 'mayonesa-japonesa', NULL);
INSERT INTO `recipe_lang` VALUES (93, 47, 1, 'Rotllets de primavera', 'rotllets-de-primavera', NULL);
INSERT INTO `recipe_lang` VALUES (94, 47, 2, 'Rollitos de primavera', 'rollitos-de-primavera', NULL);
INSERT INTO `recipe_lang` VALUES (97, 49, 1, 'Coleslaw', 'coleslaw', NULL);
INSERT INTO `recipe_lang` VALUES (98, 49, 2, 'Coleslaw', 'coleslaw', NULL);
INSERT INTO `recipe_lang` VALUES (99, 50, 1, 'Fideus amb oli y cebulet', 'fideus-amb-oli-y-cebulet', NULL);
INSERT INTO `recipe_lang` VALUES (100, 50, 2, 'Fideos con aceite y cebolleta', 'fideos-con-aceite-y-cebolleta', NULL);
INSERT INTO `recipe_lang` VALUES (101, 51, 1, 'Quiche', 'quiche', NULL);
INSERT INTO `recipe_lang` VALUES (102, 51, 2, 'Quiche', 'quiche', NULL);
COMMIT;

-- ----------------------------
-- Table structure for recipe_step
-- ----------------------------
DROP TABLE IF EXISTS `recipe_step`;
CREATE TABLE `recipe_step` (
  `id_recipe_step` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `id_recipe` smallint(5) unsigned NOT NULL,
  `image_step` mediumint(9) unsigned DEFAULT NULL,
  `order` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_recipe_step`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe_step
-- ----------------------------
BEGIN;
INSERT INTO `recipe_step` VALUES (1, 1, NULL, 1);
INSERT INTO `recipe_step` VALUES (2, 1, NULL, 2);
INSERT INTO `recipe_step` VALUES (3, 1, NULL, 3);
INSERT INTO `recipe_step` VALUES (4, 1, NULL, 4);
INSERT INTO `recipe_step` VALUES (5, 3, NULL, NULL);
INSERT INTO `recipe_step` VALUES (6, 2, NULL, 1);
INSERT INTO `recipe_step` VALUES (7, 2, NULL, 2);
INSERT INTO `recipe_step` VALUES (8, 2, NULL, 3);
INSERT INTO `recipe_step` VALUES (9, 2, NULL, 4);
INSERT INTO `recipe_step` VALUES (10, 2, NULL, 5);
INSERT INTO `recipe_step` VALUES (11, 2, NULL, 6);
INSERT INTO `recipe_step` VALUES (12, 2, NULL, 7);
INSERT INTO `recipe_step` VALUES (13, 5, NULL, 1);
INSERT INTO `recipe_step` VALUES (14, 5, NULL, 2);
INSERT INTO `recipe_step` VALUES (15, 5, NULL, 3);
INSERT INTO `recipe_step` VALUES (16, 5, NULL, 4);
INSERT INTO `recipe_step` VALUES (17, 6, NULL, 1);
INSERT INTO `recipe_step` VALUES (18, 6, NULL, 2);
INSERT INTO `recipe_step` VALUES (19, 6, NULL, 3);
INSERT INTO `recipe_step` VALUES (20, 4, NULL, 1);
INSERT INTO `recipe_step` VALUES (21, 4, NULL, 2);
INSERT INTO `recipe_step` VALUES (22, 4, NULL, 3);
INSERT INTO `recipe_step` VALUES (23, 4, NULL, 4);
INSERT INTO `recipe_step` VALUES (24, 7, NULL, 1);
INSERT INTO `recipe_step` VALUES (25, 7, 6, 2);
INSERT INTO `recipe_step` VALUES (26, 7, NULL, 3);
INSERT INTO `recipe_step` VALUES (27, 7, NULL, 4);
INSERT INTO `recipe_step` VALUES (28, 7, NULL, 5);
INSERT INTO `recipe_step` VALUES (29, 8, NULL, 1);
INSERT INTO `recipe_step` VALUES (30, 8, NULL, 2);
INSERT INTO `recipe_step` VALUES (31, 8, NULL, 3);
INSERT INTO `recipe_step` VALUES (32, 8, NULL, 4);
INSERT INTO `recipe_step` VALUES (33, 8, NULL, 5);
INSERT INTO `recipe_step` VALUES (34, 9, NULL, 1);
INSERT INTO `recipe_step` VALUES (35, 9, NULL, 2);
INSERT INTO `recipe_step` VALUES (36, 9, NULL, 3);
INSERT INTO `recipe_step` VALUES (37, 9, NULL, 4);
INSERT INTO `recipe_step` VALUES (38, 9, NULL, 5);
INSERT INTO `recipe_step` VALUES (39, 10, NULL, 1);
INSERT INTO `recipe_step` VALUES (40, 10, NULL, 2);
INSERT INTO `recipe_step` VALUES (41, 10, NULL, 3);
INSERT INTO `recipe_step` VALUES (42, 10, NULL, 4);
INSERT INTO `recipe_step` VALUES (43, 10, NULL, 5);
INSERT INTO `recipe_step` VALUES (44, 10, NULL, 5);
INSERT INTO `recipe_step` VALUES (45, 11, NULL, 1);
INSERT INTO `recipe_step` VALUES (46, 11, NULL, 2);
INSERT INTO `recipe_step` VALUES (47, 11, NULL, 3);
INSERT INTO `recipe_step` VALUES (48, 11, NULL, 4);
INSERT INTO `recipe_step` VALUES (49, 11, NULL, 5);
INSERT INTO `recipe_step` VALUES (50, 11, NULL, 6);
INSERT INTO `recipe_step` VALUES (51, 12, NULL, 1);
INSERT INTO `recipe_step` VALUES (52, 12, NULL, 2);
INSERT INTO `recipe_step` VALUES (53, 12, NULL, 3);
INSERT INTO `recipe_step` VALUES (54, 13, NULL, 1);
INSERT INTO `recipe_step` VALUES (55, 13, NULL, 2);
INSERT INTO `recipe_step` VALUES (56, 13, NULL, 3);
INSERT INTO `recipe_step` VALUES (57, 14, NULL, 1);
INSERT INTO `recipe_step` VALUES (58, 14, NULL, 2);
INSERT INTO `recipe_step` VALUES (59, 14, NULL, 3);
INSERT INTO `recipe_step` VALUES (60, 14, NULL, 4);
INSERT INTO `recipe_step` VALUES (61, 14, NULL, 5);
INSERT INTO `recipe_step` VALUES (62, 14, NULL, 6);
INSERT INTO `recipe_step` VALUES (63, 15, NULL, 1);
INSERT INTO `recipe_step` VALUES (64, 15, NULL, 2);
INSERT INTO `recipe_step` VALUES (65, 15, NULL, 3);
INSERT INTO `recipe_step` VALUES (66, 15, NULL, 4);
INSERT INTO `recipe_step` VALUES (67, 15, NULL, 5);
INSERT INTO `recipe_step` VALUES (68, 15, NULL, 6);
INSERT INTO `recipe_step` VALUES (69, 16, NULL, 1);
INSERT INTO `recipe_step` VALUES (70, 16, NULL, 2);
INSERT INTO `recipe_step` VALUES (71, 16, NULL, 3);
INSERT INTO `recipe_step` VALUES (72, 16, NULL, 4);
INSERT INTO `recipe_step` VALUES (73, 18, NULL, 1);
INSERT INTO `recipe_step` VALUES (74, 18, NULL, 2);
INSERT INTO `recipe_step` VALUES (75, 18, NULL, 3);
INSERT INTO `recipe_step` VALUES (76, 18, NULL, 4);
INSERT INTO `recipe_step` VALUES (77, 24, NULL, 1);
INSERT INTO `recipe_step` VALUES (78, 24, NULL, 2);
INSERT INTO `recipe_step` VALUES (79, 24, NULL, 3);
INSERT INTO `recipe_step` VALUES (80, 24, NULL, 5);
INSERT INTO `recipe_step` VALUES (81, 26, NULL, 1);
INSERT INTO `recipe_step` VALUES (82, 26, NULL, 2);
INSERT INTO `recipe_step` VALUES (83, 26, NULL, 3);
INSERT INTO `recipe_step` VALUES (84, 21, NULL, 1);
INSERT INTO `recipe_step` VALUES (85, 21, NULL, 2);
INSERT INTO `recipe_step` VALUES (86, 21, NULL, 3);
INSERT INTO `recipe_step` VALUES (87, 21, NULL, 4);
INSERT INTO `recipe_step` VALUES (88, 21, NULL, 5);
INSERT INTO `recipe_step` VALUES (89, 45, NULL, 1);
INSERT INTO `recipe_step` VALUES (90, 45, NULL, 2);
INSERT INTO `recipe_step` VALUES (91, 45, NULL, 3);
INSERT INTO `recipe_step` VALUES (92, 45, NULL, 4);
INSERT INTO `recipe_step` VALUES (93, 45, NULL, 5);
INSERT INTO `recipe_step` VALUES (94, 43, NULL, 1);
INSERT INTO `recipe_step` VALUES (95, 43, NULL, 2);
INSERT INTO `recipe_step` VALUES (96, 43, NULL, 3);
INSERT INTO `recipe_step` VALUES (97, 43, NULL, 4);
INSERT INTO `recipe_step` VALUES (98, 44, NULL, 1);
INSERT INTO `recipe_step` VALUES (99, 46, NULL, 1);
INSERT INTO `recipe_step` VALUES (100, 46, NULL, 2);
INSERT INTO `recipe_step` VALUES (101, 46, NULL, 3);
INSERT INTO `recipe_step` VALUES (102, 46, NULL, 4);
INSERT INTO `recipe_step` VALUES (103, 46, NULL, 5);
INSERT INTO `recipe_step` VALUES (104, 47, NULL, 1);
INSERT INTO `recipe_step` VALUES (105, 47, NULL, 2);
INSERT INTO `recipe_step` VALUES (106, 47, 29, 3);
INSERT INTO `recipe_step` VALUES (107, 47, NULL, 4);
INSERT INTO `recipe_step` VALUES (108, 29, NULL, 1);
INSERT INTO `recipe_step` VALUES (109, 29, NULL, 2);
INSERT INTO `recipe_step` VALUES (110, 29, NULL, 3);
INSERT INTO `recipe_step` VALUES (111, 49, NULL, 1);
INSERT INTO `recipe_step` VALUES (112, 49, NULL, 2);
INSERT INTO `recipe_step` VALUES (113, 49, NULL, 3);
INSERT INTO `recipe_step` VALUES (114, 51, NULL, 1);
INSERT INTO `recipe_step` VALUES (115, 51, NULL, 2);
INSERT INTO `recipe_step` VALUES (116, 51, NULL, 3);
INSERT INTO `recipe_step` VALUES (117, 51, NULL, 4);
INSERT INTO `recipe_step` VALUES (118, 51, NULL, 5);
INSERT INTO `recipe_step` VALUES (119, 51, NULL, 6);
INSERT INTO `recipe_step` VALUES (120, 51, NULL, 7);
COMMIT;

-- ----------------------------
-- Table structure for recipe_step_lang
-- ----------------------------
DROP TABLE IF EXISTS `recipe_step_lang`;
CREATE TABLE `recipe_step_lang` (
  `id_recipe_step_lang` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `id_recipe_step` mediumint(7) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `description_step` text NOT NULL,
  PRIMARY KEY (`id_recipe_step_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe_step_lang
-- ----------------------------
BEGIN;
INSERT INTO `recipe_step_lang` VALUES (1, 1, 1, '<p>Aquest pas es pot ometre si utilitzem $oilDryTomatoes.</p><p>Hidratem els $dryTomatoes en aigua molt calenta durant 30 min. Passat aquest temps els escorrem.</p>');
INSERT INTO `recipe_step_lang` VALUES (2, 1, 2, '<p>Este paso se puede omitir si utilizamos $oilDryTomatoes.</p><p>Hidratamos los $dryTomatoes en agua muy caliente durante 30 min. Pasado este tiempo los escurrimos.</p>');
INSERT INTO `recipe_step_lang` VALUES (3, 2, 1, '<p>Mentrestant, podem treure l\'os de les $blackOlives.</p>');
INSERT INTO `recipe_step_lang` VALUES (4, 2, 2, '<p>Mientras tanto, podemos sacar el hueso de las $blackOlives.</p>');
INSERT INTO `recipe_step_lang` VALUES (5, 3, 1, '<p>Afegim tots els ingredients a un robot de cuina o vas de batidora i ho triturem fins a obtenir una pasta més aviat densa.</p><p>Ho tastem i rectifiquem afegint més $pepper, $lemonJuice, $basil, $provencalHerbs o $creamCheese.</p>');
INSERT INTO `recipe_step_lang` VALUES (6, 3, 2, '<p>Añadimos todos los ingredientes en un robot de cocina o vaso de batidora y triturar hasta obtener una pasta más bien densa.</p><p>Lo probamos y rectificamos añadiendo más $pepper, $lemonJuice, $basil, $provencalHerbs o $creamCheese.</p>');
INSERT INTO `recipe_step_lang` VALUES (7, 4, 1, '<p>Finalment ho servim en un bol acompanyat de torrades.</p><p>Sabem que la pinta no sempre és molt agradable... però confieu en nosaltres i animeu-vos a fer aquesta recepta tant fàcil que segur que us encantarà per afegir als vostres pica-pica.</p>');
INSERT INTO `recipe_step_lang` VALUES (8, 4, 2, '<p>Finalmente lo servimos en un cuenco acompañado de tostadas.</p><p>Sabemos que la pinta no siempre es muy agradable... pero confiad en nosotros y animaros a hacer esta receta tan fácil que seguro que os encantará para añadir a vuestros picoteos.</p>');
INSERT INTO `recipe_step_lang` VALUES (9, 5, 1, '<p>Afegim tots els ingredients al vas de la batedora o al processador d\'aliments i ho piquem fins a obtenir el pesto.</p><p>A mi m\'agrada que no quedi massa liquida, però podeu afegir tant $virginOliveOil(0) com vulgueu fins que us quedi la textura desitjada.</p><p>Per conservar-ho: a la nevera en un pot petit amb un raig d\'oli per cobrir la salsa i evitar que l\'aire el faci malbé.</p>');
INSERT INTO `recipe_step_lang` VALUES (10, 5, 2, '<p>Añadimos todos los ingredientes en el vaso de la batidora o el procesador de alimentos y lo picamos hasta obtener el pesto.</p><p>A mí me gusta que no quede demasiado liquido, pero puede añadir tanto $virginOliveOil(0) como desee hasta que quede la textura deseada.</p><p>Para conservarlo: en la nevera en un bote pequeño con un chorro de aceite para cubrir la salsa y evitar que el aire el estropee.</p>');
INSERT INTO `recipe_step_lang` VALUES (11, 6, 1, '<p>Ho prepararem tot (de principi a fi) en una olla o cassola prou gran on poder bullir tota la pasta.</p><p>A foc mig-alt daurem tot el $baconStrips fins que estiguin daurades. Mentrestant:</p><ul><li>tallem el $chickenBreasts en daus </li><li>piquem l\'$garlic </li><li>tallem la $onion en juliana.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (12, 6, 2, '<p>Lo prepararemos todo (de principio a fin) en una olla o cacerola suficientemente grande donde poder hervir toda la pasta.</p><p>A fuego medio-alto doramos todo el $baconStrips hasta que estén doradas. Mientras:</p><ul><li>cortamos el $chickenBreasts en dados</li><li>picamos el $garlic</li><li>cortamos la $onion en juliana.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (13, 7, 1, '<p>Afegim el $chickenBreasts, la $salt ,el $pepper i l\'$garlicPowder.</p><p>Quan el pollastre hagi perdut el color rosa, el retirem de la cassola i deixem només les $baconStrips(0) daurades.</p>');
INSERT INTO `recipe_step_lang` VALUES (14, 7, 2, '<p>Añadimos el $chickenBreasts, la $salt, el $pepper y el $garlicPowder.</p><p>Cuando el pollo haya perdido el color rosa, lo retiramos de la cazuela y dejamos sólo las $baconStrips(0) doradas.</p>');
INSERT INTO `recipe_step_lang` VALUES (15, 8, 1, '<p>Afegim l\'$garlic i la $onion i ho cuinem tot fins que la ceba estigui potxat. Si cal: baixem el foc.</p>');
INSERT INTO `recipe_step_lang` VALUES (16, 8, 2, '<p>Añadimos el $garlic y la $ onion y lo cocinamos todo hasta que la cebolla esté pochada. Si es necesario: bajamos el fuego.</p>');
INSERT INTO `recipe_step_lang` VALUES (17, 9, 1, '<p>Afegim els $freshSpinach i els cuinem fins que s\'estovin i redueixin.</p>');
INSERT INTO `recipe_step_lang` VALUES (18, 9, 2, '<p>Añadimos los $freshSpinach y los cocinamos hasta que se ablanden y reduzcan.</p>');
INSERT INTO `recipe_step_lang` VALUES (19, 10, 1, '<p>Bolcar a la cassola una part de la $milk(0.6666) i portar-la a ebullició. En aquest moment: afegim els $fettuccine i els cuinem tapats durant 7 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (20, 10, 2, '<p>Volcar en la cazuela una parte de la $milk(0.6666) y llevarla a ebullición. En este momento: añadimos los $fettuccine y los cocinamos tapados durante 7 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (21, 11, 1, '<p>Destapem i anem remenant i afegint més $milk(0.3333) si cal fins que la pasta estigui cuita (com faríem en un risotto).</p>');
INSERT INTO `recipe_step_lang` VALUES (22, 11, 2, '<p>Destapamos y vamos removiendo y añadiendo más $milk(0.3333) si es necesario hasta que la pasta esté cocida (como haríamos en un risotto).</p>');
INSERT INTO `recipe_step_lang` VALUES (23, 12, 1, '<p>Quan la pasta estigui feta, finalitzem el plat afegint el $chickenBreasts anteriorment retirat, el $pesto i el $parmesan. Llest per servir!</p>');
INSERT INTO `recipe_step_lang` VALUES (24, 12, 2, '<p>Cuando la pasta esté hecha, finalizamos el plato añadiendo el $chickenBreasts anteriormente retirado, el $pesto y el $parmesan. ¡Listo para servir!</p>');
INSERT INTO `recipe_step_lang` VALUES (25, 13, 1, '<p>Hem de rentar l\'arròs per treure-li el midó.</p><p>Omplim un bol gran d\'aigua, afegim l\'$sushiRice i amb la mà (en posició com si tinguéssim una pilota de tenis dins) donem unes 20 voltes aproximadament. </p><p>Colem l\'arròs per descartar aquesta aigua i repetim el procés 3 o 4 vegades.</p>');
INSERT INTO `recipe_step_lang` VALUES (26, 13, 2, '<p>Debemos lavar el arroz para sacarle el almidón.</p><p>Llenamos un bol grande de agua, añadimos el $sushiRice y con la mano (en posición como si tuviéramos una pelota de tenis dentro) damos unas 20 vueltas aproximadamente. </p><p>Colar el arroz para descartar esta agua y repetimos el proceso 3 o 4 veces.</p>');
INSERT INTO `recipe_step_lang` VALUES (27, 14, 1, '<p>Deixem reposar l\'$sushiRice cobert d\'aigua en el bol durant 30 minuts perquè el gra absorbeixi aigua.</p>');
INSERT INTO `recipe_step_lang` VALUES (28, 14, 2, '<p>Dejamos reposar el $sushiRice cubierto de agua en el bol durante 30 minutos para que el grano absorba agua.</p>');
INSERT INTO `recipe_step_lang` VALUES (29, 15, 1, '<p>Afegim en una cassola gruixuda i que tingui tapa (millor si és de vidre per veure quan comença a bullir) l\'$sushiRice escorregut i l\'$water.</p><p>Encenem el foc a foc fort i quan comença a bullir ho baixem al mínim. Ha d\'estar al mínim durant 10 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (30, 15, 2, '<p>Añadimos en una cacerola gruesa y que tenga tapa (mejor si es de vidrio para ver cuando empieza a hervir) el $sushiRice escurrido y el $water.</p><p>Encendemos el fuego a fuego fuerte y cuando empieza a hervir lo bajamos al mínimo. Debe estar al mínimo durante 10 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (31, 16, 1, '<p>Apaguem el foc i deixem reposar 10 minuts més <b>sense treure la tapa</b> i llest.</p>');
INSERT INTO `recipe_step_lang` VALUES (32, 16, 2, '<p>Apagamos el fuego y dejamos reposar 10 minutos más <b>sin quitar la tapa</b> y listo.</p>');
INSERT INTO `recipe_step_lang` VALUES (33, 17, 1, 'Posar el $kombu en remull en una cassola amb l\'$water durant almenys 30 minuts (poden ser hores o la nit abans).');
INSERT INTO `recipe_step_lang` VALUES (34, 17, 2, '<p>Poner el $kombu en remojo en una cazuela con el $water durante al menos 30 minutos (pueden ser horas o la noche antes).</p>');
INSERT INTO `recipe_step_lang` VALUES (35, 18, 1, '<p>Passat aquest temps, escalfem la cassola a foc lent i abans que comenci a bullir retirem el $kombu (aproximadament 15 minuts).</p><p>Pugem a foc mitjà i hi afegim el $katsuobushi. En el moment que arrenca el bull: apaguem el foc i ho deixem reposar 10 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (36, 18, 2, '<p>Pasado este tiempo, calentamos la cazuela a fuego lento y antes de que empiece a hervir retiramos el $kombu (aproximadamente 15 minutos).</p><p>Subimos a fuego medio y añadimos el $katsuobushi. En el momento que empieza a hervir: apagamos el fuego y lo dejamos reposar 10 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (37, 19, 1, 'Colem el caldo i pressionem el $katsuobushi perquè deixi anar tot el caldo que ha absorbit.');
INSERT INTO `recipe_step_lang` VALUES (38, 19, 2, '<p>Colar el caldo y presionamos el $katsuobushi para que suelte todo el caldo que ha absorbido.</p>');
INSERT INTO `recipe_step_lang` VALUES (39, 20, 1, '<p>Preparem [5].</p><p>Tallem:</p><ul><li>el $chickenBreasts en daus d\'aproximadament 2 cm</li><li>la part blanca del $leek en diagonal en trossos de 1 cm de gruix</li><li>l\'alga $nori en quadrats.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (40, 20, 2, '<p>Preparamos [5].</p><p>Cortamos:</p><ul><li>el $chickenBreasts en dados de aproximadamente 2 cm</li><li>la parte blanca del $leek en diagonal en trozos de 1 cm de espesor</li><li>la alga $nori en cuadrados.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (41, 21, 1, '<p>Portar a ebullició el $dashi amb el $leek a foc mitjà.</p><p>Quan arrenqui el bull afegim el $chickenBreasts, $sugar, $mirin y $soySauce i ho cuinem fins que el pollastre estigui cuit (uns 5-10 minuts).</p>');
INSERT INTO `recipe_step_lang` VALUES (42, 21, 2, '<p>Llevar a ebullición el $dashi con el $leek a fuego medio.</p><p>Cuando rompa a hervir añadimos el $chickenBreasts, $sugar, $mirin y $soySauce y lo cocinamos hasta que el pollo esté cocido (unos 5-10 minutos).</p>');
INSERT INTO `recipe_step_lang` VALUES (43, 22, 1, '<p>Comencem a preparar el plat, ja que això anirà de pressa: repartim el $gohan en bols individuals que cobrirem amb una <i>truita</i> individual de dos ous per cadascun dels comensals.</p><p>En una paella prèviament escalfada, afegim la part proporcional de la sopa amb els seus ingredients (en el nostre cas la meitat). Incorporem els 2 ous batuts.</p><p>Quan la clara comenci a quallar: tapem la paella durant 30 segons i finalment tapem l\'arròs amb la <i>truita</i> que ha quedat no gaire feta i cremosa.</p>');
INSERT INTO `recipe_step_lang` VALUES (44, 22, 2, '<p>Empezamos a preparar el plato, ya que esto irá deprisa: repartimos el $gohan en cuencos individuales que cubriremos con una <i>tortilla</i> individual de dos huevos por cada uno de los comensales.</p><p>En una sartén previamente calentada, añadimos la parte proporcional de la sopa con sus ingredientes (en nuestro caso la mitad). Incorporamos los 2 huevos batidos.</p><p>Cuando la clara empiece a cuajar: tapamos la sartén durante 30 segundos y finalmente tapamos el arroz con la <i>tortilla</i> que ha quedado no muy hecha y cremosa.</p>');
INSERT INTO `recipe_step_lang` VALUES (45, 23, 1, '<p>Decorem amb els quadrats d\'alga $nori que li donarà un toc salat.</p>');
INSERT INTO `recipe_step_lang` VALUES (46, 23, 2, '<p>Decoramos con los cuadrados de alga $nori que le dará un toque salado.</p>');
INSERT INTO `recipe_step_lang` VALUES (47, 24, 1, '<p>Preescalfem el forn a 170ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (48, 24, 2, '<p>Precalentamos el horno a 170ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (49, 25, 1, '<p>Tallem les $cornTortitas com a la foto.</p>');
INSERT INTO `recipe_step_lang` VALUES (50, 25, 2, '<p>Cortamos las $cornTortitas como en la foto.</p>');
INSERT INTO `recipe_step_lang` VALUES (51, 26, 1, '<p>En un bol barregem la resta d\'ingredients ($oliveOil, $water, $sweetPaprika, $cheesePowder, $salt i $onionPowder) fins que obtinguem una barreja homogènia. Afegim els triangles perquè es vagin impregnant bé.</p>');
INSERT INTO `recipe_step_lang` VALUES (52, 26, 2, '<p>En un cuenco mezclamos el resto de ingredientes ($oliveOil, $water, $sweetPaprika, $cheesePowder, $salt i $onionPowder) hasta que obtengamos una mezcla homogénea. Añadimos los triángulos para que se vayan impregnando bien.</p>');
INSERT INTO `recipe_step_lang` VALUES (53, 27, 1, '<p>En una safata de forn sobre un paper vegetal, anem col·locant els triangles impregnats de la barreja separats: que no es toquin ni quedi un damunt l\'altre.</p>');
INSERT INTO `recipe_step_lang` VALUES (54, 27, 2, '<p>En una bandeja de horno sobre un papel vegetal, vamos colocando los triangulitos impregnados de la mezcla separados: que no se toquen ni quede uno encima de otro.</p>');
INSERT INTO `recipe_step_lang` VALUES (55, 28, 1, '<p>Enfornar fins que comencin a daurar i llest! No patiu, després d\'un ratolí de sortir del forn, quedaran ben cruixents.</p>');
INSERT INTO `recipe_step_lang` VALUES (56, 28, 2, '<p>Hornear hasta que empiecen a dorar y listo! No sufráis, después de un rato de salir del horno, quedaran bien crujientes.</p>');
INSERT INTO `recipe_step_lang` VALUES (57, 29, 1, '<p>Escorre les $mozzarellaBalls.</p><p>Renta, asseca i talla per la meitat els $cherryTomatoes.⁣</p>');
INSERT INTO `recipe_step_lang` VALUES (58, 29, 2, '<p>Escurre las $mozzarellaBalls.</p><p>Lava, seca y corta por la mitad los $cherryTomatoes.⁣</p><p><br></p><p>⁣</p>');
INSERT INTO `recipe_step_lang` VALUES (59, 30, 1, '<p>Estén sobre les torrades una mica de $guacamole.</p>');
INSERT INTO `recipe_step_lang` VALUES (60, 30, 2, '<p>Extiende sobre las tostadas un poco de $guacamole.⁣</p>');
INSERT INTO `recipe_step_lang` VALUES (61, 31, 1, '<p>Distribueix les $mozzarellaBalls i les meitats de $cherryTomatoes per sobre del guacamole.</p>');
INSERT INTO `recipe_step_lang` VALUES (62, 31, 2, '<p>Distribuye las $mozzarellaBalls y las mitades de $cherryTomatoes por encima del guacamole.⁣</p>');
INSERT INTO `recipe_step_lang` VALUES (63, 32, 1, '<p>Afegeix-hi un rajolí d\'$virginOliveOil, $salt i $pepper.</p>');
INSERT INTO `recipe_step_lang` VALUES (64, 32, 2, '<p>Añade un chorrito de $virginOliveOil, $salt y $pepper.⁣</p>');
INSERT INTO `recipe_step_lang` VALUES (65, 33, 1, '<p>Incorpora unes fulles d\'$basil i les $blackSesameSeeds.</p>');
INSERT INTO `recipe_step_lang` VALUES (66, 33, 2, '<p>Incorpora unas hojas de $basil y las $blackSesameSeeds.⁣</p>');
INSERT INTO `recipe_step_lang` VALUES (67, 34, 1, '<p>Comencem barrejant el formatge $parmesan ratllat amb la $butter pomada (a temperatura ambient en comptes de freda de la nevera).</p>');
INSERT INTO `recipe_step_lang` VALUES (68, 34, 2, '<p>Comenzamos mezclando el queso $parmesan rallado con la $butter pomada (a temperatura ambiente en vez de fría de la nevera).</p>');
INSERT INTO `recipe_step_lang` VALUES (69, 35, 1, '<p>Ara afegim la $flour tamisada, $salt, $pepper i $thyme, i ho amassem molt bé.</p>');
INSERT INTO `recipe_step_lang` VALUES (70, 35, 2, '<p>Ahora añadimos la $flour tamizada, $salt, $pepper y $thyme, y lo amasamos muy bien.</p>');
INSERT INTO `recipe_step_lang` VALUES (71, 36, 1, '<p>Preescalfem el forn a 180ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (72, 36, 2, '<p>Precalentamos el horno a 180ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (73, 37, 1, '<p>Un cop pastat estenem la massa a la taula, com d\'1 cm de gruix, i tallem amb un motlle.</p>');
INSERT INTO `recipe_step_lang` VALUES (74, 37, 2, '<p>Una vez amasado extendemos la masa en la mesa, como de 1 cm de grosor, y cortamos con un molde.</p>');
INSERT INTO `recipe_step_lang` VALUES (75, 38, 1, '<p>Ara posem les galetes en una safata de forn. Les introduïm al form durant 10 minuts més o menys, si no estan daurades: deixar-les uns minuts més.</p>');
INSERT INTO `recipe_step_lang` VALUES (76, 38, 2, '<p>Ahora ponemos las galletas en una bandeja de horno. Las introducimos al horno durante 10 minutos mas o menos, si no están doradas: dejarlas unos minutos más.</p>');
INSERT INTO `recipe_step_lang` VALUES (77, 39, 1, '<p>Preparem les verdures: per una banda piquem les $carrot i l\'$celery.</p><p>Per l\'altra tallem tota la $sweetOnion en juliana i la reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (78, 39, 2, '<p>Preparamos las verduras: por un lado picamos las $carrot y el $celery.</p><p>Por otro lado cortamos toda la $sweetOnion en juliana y la reservamos.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (79, 40, 1, '<p>Tallem la $stewBeef en tacos de la mateixa mida aproximadament.</p>');
INSERT INTO `recipe_step_lang` VALUES (80, 40, 2, '<p>Cortamos la $stewBeef en tacos del mismo tamaño aproximadamente.</p>');
INSERT INTO `recipe_step_lang` VALUES (81, 41, 1, '<p>En una cassola que tingui tapa i sigui suficientment gran per encabir tota la ceba, afegim la pastanaga i l\'api i sofregim a foc mig fins que agafi color.</p><p>En aquest moment, afegim també la carn i la marquem una mica per totes les cares.</p>');
INSERT INTO `recipe_step_lang` VALUES (82, 41, 2, '<p>En una cazuela que tenga tapa y sea suficientemente grande para albergar toda la cebolla, añadimos la zanahoria y el apio y sofreímos a fuego medio hasta que tome color.</p><p>En ese momento, añadimos también la carne y la marcamos un poco por todas las caras.</p>');
INSERT INTO `recipe_step_lang` VALUES (83, 42, 1, '<p>Afegim el $whiteWine fins a evaporar l\'alcohol.</p>');
INSERT INTO `recipe_step_lang` VALUES (84, 42, 2, '<p>Añadimos el $whiteWine hasta evaporar el alcohol.</p>');
INSERT INTO `recipe_step_lang` VALUES (85, 43, 1, '<p>Ho cobrim tot amb la ceba i afegim una mica de $salt i les $bayLeaf.</p><p>Tapem la cassola i ho deixem cuinar durant 4 hores, barrejant cada 30 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (86, 43, 2, '<p>Cubrimos todo con la cebolla y añadimos un poco de $salt y las $bayLeaf.</p><p>Tapamos la cazuela y dejamos cocinar durante 4 horas, mezclando cada 30 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (87, 44, 1, '<p>Quan ja tenim la carn llesta, partim els $zite10 en 3 parts i els bullim en abundant aigua salda.</p><p>Passat el temps de cocció, ho afegim a la salsa i incorporem també una mica d\'aigua de cocció. En uns 3-5 minuts ja tenim llesta la nostra pasta!</p>');
INSERT INTO `recipe_step_lang` VALUES (88, 44, 2, '<p>Cuando ya tenemos la carne lista, partimos los $zite10 en 3 partes y los hervimos en abundante agua salda.</p><p>Pasado el tiempo de cocción, añadimos a la salsa e incorporamos también un poco de agua de cocción. ¡En unos 3-5 minutos ya tenemos lista nuestra pasta!</p>');
INSERT INTO `recipe_step_lang` VALUES (89, 45, 1, '<p>Començarem per la crema de $pistachios(0.714285): aquests han de ser sense closca ni pell. Els deixem en remull durant 1 hora i després el triturem molt bé en una processadora junt amb el $icingSugar i el $sunflowerOil fins a obtenir una textura similar a la crema d\'avellanes.</p>');
INSERT INTO `recipe_step_lang` VALUES (90, 45, 2, '<p>Empezaremos por la quema de $pistachios(0.714285): éstos deben ser sin caparazón ni piel. Los dejamos a remojo durante 1 hora y después lo trituramos muy bien en una procesadora junto con el $icingSugar y el $sunflowerOil hasta obtener una textura similar a la quema de avellanas.</p>');
INSERT INTO `recipe_step_lang` VALUES (91, 46, 1, '<p>Fonem la $whiteChocolate al bany maria.</p>');
INSERT INTO `recipe_step_lang` VALUES (92, 46, 2, '<p>Fundamos la $whiteChocolate en el baño maría.</p>');
INSERT INTO `recipe_step_lang` VALUES (93, 47, 1, '<p>Continuem amb els $egg. Separem la clara dels rovells en dos bols grandets.</p><p>Batem el $sugar junt amb els rovells amb l\'ajuda del minipimer i les varetes fins a obtenir una espuma densa tant blanquinosa com sigui possible.</p>');
INSERT INTO `recipe_step_lang` VALUES (94, 47, 2, '<p>Continuamos con los $egg. Separamos la clara de las yemas en dos cuencos grandecitos.</p><p>Batimos el $sugar junto con las yemas con la ayuda del minipimer y las varillas hasta obtener una espuma densa lo más blanquecina posible.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (95, 48, 1, '<p>Incorporem als rovells el $mascarpone gradualment mentre ho seguim integrant amb les varetes.</p><p>A continuació, incorporem també la xocolata fosa i la crema de festucs.</p>');
INSERT INTO `recipe_step_lang` VALUES (96, 48, 2, '<p>Incorporamos a las yemas el $mascarpone gradualmente mientras lo seguimos integrando con las varillas.</p><p>A continuación, incorporamos también el chocolate fundido y la crema de pistachos.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (97, 49, 1, '<p>Muntem les clares a punt de neu i les incorporem a la barreja anterior a poc a poc i amb moviments envolvents per no eliminar l\'espuma de les clares.</p>');
INSERT INTO `recipe_step_lang` VALUES (98, 49, 2, '<p>Montamos las claras a punto de nieve y las incorporamos a la mezcla anterior despacio y con movimientos envolventes para no eliminar la espuma de las claras.</p>');
INSERT INTO `recipe_step_lang` VALUES (99, 50, 1, '<p>Emplatem en una safata: fem una capa de $ladyFinger(0.5) sucats de $coffee, afegim la meitat de la barreja d\'ous, festucs, xocolata i mascarpone. Repetim perquè el tiramisú tingui dues capes.</p><p>Finalment, empolvorem amb $pureCocoaPowder i amb uns $pistachios(0.2858) picats per decorar.</p><p>Deixem refredar mínim una hora a la nevera.</p>');
INSERT INTO `recipe_step_lang` VALUES (100, 50, 2, '<p>Emplatamos en una bandeja: hacemos una capa de $ladyFinger(0.5) mojados de $coffee, añadimos la mitad de la mezcla de huevos, pistachos, chocolate y mascarpone. Repetimos para que el tiramisú tenga dos capas.</p><p>Por último, espolvoreamos con $pureCocoaPowder y con unos $pistachios(0.2858) picados para decorar.</p><p>Dejamos enfriar mínimo una hora en la nevera.</p>');
INSERT INTO `recipe_step_lang` VALUES (101, 51, 1, '<p>Sofregim la $onion i un cop daurada afegim els $freshSpinach.</p>');
INSERT INTO `recipe_step_lang` VALUES (102, 51, 2, '<p>Pochamos la $onion y una vez dorada agregamos las $freshSpinach.</p>');
INSERT INTO `recipe_step_lang` VALUES (103, 52, 1, '<p>Batem els $egg amb una mica de $salt i $pepper i quan els espinacs hagin reduït afegim els ous.</p>');
INSERT INTO `recipe_step_lang` VALUES (104, 52, 2, '<p>Batimos los $egg con un poco de $salt y $pepper y cuando las espinacas hayan reducido agregamos los huevos.</p>');
INSERT INTO `recipe_step_lang` VALUES (105, 53, 1, '<p>Quallem per un costat i en donar la volta posem per sobre una mica de tomàquet fregit casolà i les $slicesCheese, fins que quedi fos i llest per clavar la dent.</p>');
INSERT INTO `recipe_step_lang` VALUES (106, 53, 2, '<p>Cuajamos por un lado y al dar la vuelta ponemos por encima un poco de tomate frito casero y las $slicesCheese, hasta que quede derretido y listo para hincar el diente.</p>');
INSERT INTO `recipe_step_lang` VALUES (107, 54, 1, '<p>Netejar la tija del $celery traient la part fibrosa.</p><p>Talleu l\'api i la $pear en cubs per pochar-ho a foc lent en una paella amb una mica de $oliveOil, el $sugar, la $cayennePowder i una mica de $lemonPeel.</p><p>Quan estigui llest el triturem amb el minipimer i ho reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (108, 54, 2, '<p>Limpiar el tallo del $celery quitando la parte fibrosa.</p><p>Cortar el apio y la $pear en cubos para pocharlo a fuego lento en una sartén con un poco de $oliveOil, el $sugar, la $cayennePowder y un poco de $lemonPeel.</p><p>Cuando esté listo lo trituramos con el minipimer y lo reservamos.</p>');
INSERT INTO `recipe_step_lang` VALUES (109, 55, 1, '<p>Ofeguem els $leek en una paella amb un rajolí de $oliveOil a foc mitjà amb una mica de $salt.</p><p>Cuinem durant uns 5-10 minuts per obtenir un resultat torrat i cruixent.</p>');
INSERT INTO `recipe_step_lang` VALUES (110, 55, 2, '<p>Rehogamos los $leek en una sartén con un chorrito de $oliveOil a fuego medio con un poco de $salt.</p><p>Cocinamos durante unos 5-10 minutos para obtener un resultado tostado y crujiente.</p>');
INSERT INTO `recipe_step_lang` VALUES (111, 56, 1, '<p>Finalitzem l\'entrepà: tallem la $baguette per la meitat i el torrem en una paella durant uns 3-4 minuts. Tallem el $camembert a rodanxes fines.</p><p>Estenem una mica de la crema de pera sobre la base del pa, completar amb les rodanxes de Camembert i els porros estofats.</p>');
INSERT INTO `recipe_step_lang` VALUES (112, 56, 2, '<p>Finalizamos el bocadillo: cortamos la $baguette por la mitad y tostar en una paella durante unos 3-4 minutos. Cortamos el $camembert en rodajas finas.</p><p>Extendemos un poco de la crema de pera y apio sobre la base del pan, completar con las rodajas de Camembert y los puerros estofados.</p>');
INSERT INTO `recipe_step_lang` VALUES (113, 57, 1, '<p>Preparem les $potato, les tallem en daus no molt petits i les salpebrem. Ho deixem reposar 15 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (114, 57, 2, '<p>Preparamos las $potato, las cortamos en dados no muy pequeños y salpimentamos. Dejar reposar 15 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (115, 58, 1, '<p>Mentrestant, podem preparar l\'allioli ràpid: al túrmix afegim l\'$sunflowerOil, $garlic, $egg i la $salt i ho batem a velocitat baixa mantenint el braç a l\'inferior del vas. Quan hagi començat a emulsionar, podem fer petits moviments a dalt i a baix per acabar d\'integrar-ho tot i triturar l\'all per complet.</p>');
INSERT INTO `recipe_step_lang` VALUES (116, 58, 2, '<p>Mientras tanto, podemos preparar el alioli rápido: al túrmix añadimos el $sunflowerOil, $garlic, $egg y la $salt y lo batimos a velocidad baja manteniendo el brazo en el inferior del vaso. Cuando haya empezado a emulsionar, podemos realizar pequeños movimientos arriba y abajo para acabar de integrarlo todo y triturar el ajo por completo.</p>');
INSERT INTO `recipe_step_lang` VALUES (117, 59, 1, '<p>També podem anar preparant la salsa vermella.</p><p>En un bol afegim tots els ingredients ($spicyOil, $tomatoSauce, $espinalerSauce, $vermut, $pepper, $turmeric i $spicyPaprika)  els barregem bé i ho deixem reposar un mínim de 10 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (118, 59, 2, '<p>También podemos ir preparando la salsa roja.</p><p>En un cuenco añadimos todos los ingredientes ($spicyOil, $tomatoSauce, $espinalerSauce, $vermut, $pepper, $turmeric y $spicyPaprika) los mezclamos bien y lo dejamos reposar un mínimo de 10 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (119, 60, 1, '<p>Passats els minuts, eliminem l\'excés d\'aigua i les fregim durant 5 minuts <b>a 150ºC</b>.<br></p><p>Les colem i les escorrem i les col·loquem en un bol que taparem amb paper d\'alumini 15 minuts més perquè s\'acabin d\'estovar per dins.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (120, 60, 2, '<p>Pasados los minutos, eliminamos el exceso de agua y freímos durante 5 minutos <b>a 150ºC</b>.</p><p>Las colamos y las escurrimos y las colocamos en un cuenco que taparemos con papel de aluminio 15 minutos más para que se acaben de ablandar por dentro.</p>');
INSERT INTO `recipe_step_lang` VALUES (121, 61, 1, '<p>Tornem a eliminar l\'excés de líquid i fem la segona fregida de les patates <b>a 190ºC</b> durant uns 4 minuts o fins que les patates quedin daurades al nostre gust.</p>');
INSERT INTO `recipe_step_lang` VALUES (122, 61, 2, '<p>Volvemos a eliminar el exceso de líquido y hacemos la segunda fritura de las patatas <b>a 190ºC</b> durante unos 4 minutos o hasta que las patatas queden doradas a nuestro gusto.</p>');
INSERT INTO `recipe_step_lang` VALUES (123, 62, 1, '<p>Emplatem! Col·loquem les patates a un bol, la salsa vermella i, per sobre de tot, l\'allioli.</p><p>Opcionalment, podem afegir un rajolí d\'oli (o oli picant) per decorar.</p>');
INSERT INTO `recipe_step_lang` VALUES (124, 62, 2, '<p>Emplatamos! Colocamos las patatas en un cuenco, la salsa roja y, por encima de todo, el alioli.</p><p>Opcionalmente, podemos añadir un chorrito de aceite (u aceite picante) para decorar.</p>');
INSERT INTO `recipe_step_lang` VALUES (125, 63, 1, '<p>Tallem el $zucchini en làmines i el salpebrem.</p><p>El marquem a la paella amb una mica d\'$oliveOil i el reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (126, 63, 2, '<p>Cortamos el $zucchini en láminas y lo salpimentamos.</p><p>Lo marcamos en la sartén con un poco de $oliveOil y lo reservamos.</p>');
INSERT INTO `recipe_step_lang` VALUES (127, 64, 1, '<p>Preescalfem el forn a 190ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (128, 64, 2, '<p>Precalentamos el horno a 190ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (129, 65, 1, '<p>Tallem la $freshMozzarella la reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (130, 65, 2, '<p>Cortamos la $freshMozzarella la reservamos.</p>');
INSERT INTO `recipe_step_lang` VALUES (131, 66, 1, '<p>Estenem la $puffPastry i en la meitat dreta (deixant un espai per poder embolicar-ho més tard) col·loquem la meitat de la Mozzarella, el carabassó, el $cookedHam i la resta de Mozzarella. Afegim una mica de $pepper.</p>');
INSERT INTO `recipe_step_lang` VALUES (132, 66, 2, '<p>Extendemos la $puffPastry y en la mitad derecha (dejando un espacio para poder envolverlo más tarde) colocamos la mitad de la Mozzarella, el calabacín, el $cookedHam y el resto de Mozzarella. Añadimos un poco de $pepper.</p>');
INSERT INTO `recipe_step_lang` VALUES (133, 67, 1, '<p>Emboliquem la pasta de full primer la part inferior, superior i dreta (que han de ser les més petites) i després la part esquerra que ha de cobrir tots els ingredients.</p><p>Amb un ganivet, fem unes marques en forma de quadrícula.</p><p>Pintem la pasta de full amb l\'$egg batut.</p>');
INSERT INTO `recipe_step_lang` VALUES (134, 67, 2, '<p>Envolvemos el hojaldre primero la parte inferior, superior y derecha (que deben ser las más pequeñas) y después la parte izquierda que debe cubrir todos los ingredientes.</p><p>Con un cuchillo, hacemos unas marcas en forma de cuadrícula.</p><p>Pintamos el hojaldre con el $egg batido.</p>');
INSERT INTO `recipe_step_lang` VALUES (135, 68, 1, '<p>Ho enfornem durant 20 minuts o fins que estigui daurat.</p>');
INSERT INTO `recipe_step_lang` VALUES (136, 68, 2, '<p>Hornear durante 20 minutos o hasta que esté dorado.</p>');
INSERT INTO `recipe_step_lang` VALUES (137, 69, 1, '<p>Comencem amb els $egg. Separem la clara dels rovells en dos bols grandets.</p><p>Batem el $sugar junt amb els rovells amb l\'ajuda del minipimer i les varetes fins a obtenir una espuma densa tant blanquinosa com sigui possible.</p>');
INSERT INTO `recipe_step_lang` VALUES (138, 69, 2, '<p>Empezamos con los $egg. Separamos la clara de las yemas en dos cuencos grandecitos.</p><p>Batimos el $sugar junto con las yemas con la ayuda del minipimer y las varillas hasta obtener una espuma densa lo más blanquecina posible.</p>');
INSERT INTO `recipe_step_lang` VALUES (139, 70, 1, '<p>Incorporem als rovells el $mascarpone gradualment mentre ho seguim integrant amb les varetes.</p>');
INSERT INTO `recipe_step_lang` VALUES (140, 70, 2, '<p>Incorporamos a las yemas el $mascarpone gradualmente mientras lo seguimos integrando con las varillas.</p>');
INSERT INTO `recipe_step_lang` VALUES (141, 71, 1, '<p>Muntem les clares a punt de neu i les incorporem a la barreja anterior a poc a poc i amb moviments envolvents per no eliminar l\'espuma de les clares.</p>');
INSERT INTO `recipe_step_lang` VALUES (142, 71, 2, '<p>Montamos las claras a punto de nieve y las incorporamos a la mezcla anterior despacio y con movimientos envolventes para no eliminar la espuma de las claras.</p>');
INSERT INTO `recipe_step_lang` VALUES (143, 72, 1, '<p>Emplatem en una safata: fem una capa de $biscottiGoccioleDark(0.5) sucades de $coffee, afegim la meitat de la barreja d\'ous i mascarpone. Amb una cullera repartim una mica de $hazelnutCream.</p><p>Repetim perquè el tiramisú tingui dues capes.</p><p>Finalment, empolvorem amb $pureCocoaPowder per decorar.</p><p>Deixem refredar mínim una hora a la nevera.</p>');
INSERT INTO `recipe_step_lang` VALUES (144, 72, 2, '<p>Emplatamos en una bandeja: hacemos una capa de $biscottiGoccioleDark(0.5) mojadas de $coffee, añadimos la mitad de la mezcla de huevos y mascarpone. Con una cuchara repartimos un poco de $hazelnutCream.</p><p>Repetimos para que el tiramisú tenga dos capas.<br></p><p>Por último, espolvoreamos con $pureCocoaPowder para decorar.<br></p><p>Dejamos enfriar mínimo una hora en la nevera.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (145, 73, 1, '<p>Preescalfem el forn a 300ºC o al màxim que et permeti el teu forn.</p>');
INSERT INTO `recipe_step_lang` VALUES (146, 73, 2, '<p>Precalentamos el horno a 300ºC o lo máximo que te permita tu horno.</p>');
INSERT INTO `recipe_step_lang` VALUES (147, 74, 1, '<p>Sobre de la massa de pizza repartim la $gratedMozzarella, el $gorgonzola i el  $taleggio.</p><p>Quan el forn estigui calent, enfornem la pizza durant uns 5-10 minuts, fins que t\'agradi com queden de desfets o torrats els formatges.</p>');
INSERT INTO `recipe_step_lang` VALUES (148, 74, 2, '<p>Encima de la masa de pizza repartimos $gratedMozzarella, $gorgonzola y $taleggio.</p><p>Cuando el horno esté caliente, horneamos la pizza durante unos 5-10 minutos, hasta que te guste lo que quedan de deshechos o tostados los quesos.</p>');
INSERT INTO `recipe_step_lang` VALUES (149, 75, 1, '<p>Mentrestant tallem el $parmesan en làmines amb l\'ajuda d\'un pelador de patates.</p>');
INSERT INTO `recipe_step_lang` VALUES (150, 75, 2, '<p>Mientras tanto cortamos el $parmesan en láminas con la ayuda de un pelador de patatas.</p>');
INSERT INTO `recipe_step_lang` VALUES (151, 76, 1, '<p>Quan traiem la pizza del forn només ens queda repartir la $bufalaStracciatella, el $goatRollCheese, el $parmesan i... a gaudir!</p>');
INSERT INTO `recipe_step_lang` VALUES (152, 76, 2, '<p>Cuando sacamos la pizza del horno sólo nos queda repartir la $bufalaStracciatella, el $goatRollCheese, el $parmesan y... ¡a disfrutar!</p>');
INSERT INTO `recipe_step_lang` VALUES (153, 77, 1, '<p>Escorreu els $cookedChickpeas reservant el líquid sobrant.</p>');
INSERT INTO `recipe_step_lang` VALUES (154, 77, 2, '<p>Escurrimos los $cookedChickpeas reservando el líquido sobrante.</p>');
INSERT INTO `recipe_step_lang` VALUES (155, 78, 1, '<p>En el vas del túrmix afegim els cigrons, $tahini, $oliveOil, $lemonJuice i la $salt.</p><p>Compte amb la quantitat dels ingredients, però sobretot amb el suc de llimona i la Tahina. Ves provant com queda: sempre ets a temps d\'afegir-ne més. Amb la pràctica, aprendràs quines són les quantitats que més t\'agraden.</p>');
INSERT INTO `recipe_step_lang` VALUES (156, 78, 2, '<p>En el vaso del turmix añadimos los garbanzos, $tahini, $oliveOil, $lemonJuice y la $salt.</p><p>Cuidado con la cantidad de los ingredientes, pero sobre todo con el zumo de limón y la Tahina. Ve probando cómo queda: siempre estás a tiempo de añadir más. Con la práctica, aprenderás cuáles son las cantidades que más te gustan.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (157, 79, 1, '<p>Tritura-ho tot amb el túrmix. Si queda molt espès, pots afegir el líquid dels cigrons fins que tingui la textura desitjada.</p>');
INSERT INTO `recipe_step_lang` VALUES (158, 79, 2, '<p>Tritura todo con el túrmix. Si queda muy espeso, puedes añadir el líquido de los garbanzos hasta que tenga la textura deseada.</p>');
INSERT INTO `recipe_step_lang` VALUES (159, 80, 1, '<p>Emplata-ho empolvorant una mica de $sweetPaprika o $spicyPaprika i un raig d\'oli.</p><p>Ho pots acompanyar amb torradetes o amb palets de pastanaga.</p>');
INSERT INTO `recipe_step_lang` VALUES (160, 80, 2, '<p>Emplatar espolvoreando un poco de $sweetPaprika o $spicyPaprika y un chorro de aceite.</p><p>Lo puedes acompañar con tostaditas o con palitos de zanahoria.</p>');
INSERT INTO `recipe_step_lang` VALUES (161, 81, 1, '<p>Tallem el $frankfurtBread i el torrem a una paella o al forn.</p>');
INSERT INTO `recipe_step_lang` VALUES (162, 81, 2, '<p>Cortamos el $frankfurtBread y lo tostamos en una sartén o en el horno.</p>');
INSERT INTO `recipe_step_lang` VALUES (163, 82, 1, '<p>En un morter afegim els $pistachios pelats, les $anchovy i l\'$spicyOil.</p><p>Ho piquem.</p>');
INSERT INTO `recipe_step_lang` VALUES (164, 82, 2, '<p>En un mortero añadimos los $pistachios pelados, las $anchovy y el $spicyOil.</p><p>Lo picamos.</p>');
INSERT INTO `recipe_step_lang` VALUES (165, 83, 1, '<p>Emplatem: sobre de la base del pa hi posem la part interior de la $burrata, sobre la pasta de festucs i anxoves, i finalment la $mortadella (3-4 filets aproximadament per entrepà).</p>');
INSERT INTO `recipe_step_lang` VALUES (166, 83, 2, '<p>Emplatamos: sobre la base del pan ponemos la parte interior de la $burrata, sobre la pasta de pistachos y anchoas, y finalmente la $mortadella (3-4 filetes aproximadamente por bocadillo).</p>');
INSERT INTO `recipe_step_lang` VALUES (167, 84, 1, '<p>Marinar la $chickenBreasts sencera durant almenys 30 minuts en abundant $balsamicVinegar a la nevera.</p>');
INSERT INTO `recipe_step_lang` VALUES (168, 84, 2, '<p>Marinar la $chickenBreasts entera durante al menos 30 minutos en abundante $balsamicVinegar en el frigorífico.</p>');
INSERT INTO `recipe_step_lang` VALUES (169, 85, 1, '<p>Preparem la salsa barrejant la $mayonnaise, l\'$basil i el $pepper.</p>');
INSERT INTO `recipe_step_lang` VALUES (170, 85, 2, '<p>Preparamos la salsa mezclando la $mayonnaise, el $basil y el $pepper.</p>');
INSERT INTO `recipe_step_lang` VALUES (171, 86, 1, '<p>Un cop marinat el pit de pollastre, cuina-la bé en una paella i laquejant de tant en tant amb un rajolí de vinagre balsàmic.</p>');
INSERT INTO `recipe_step_lang` VALUES (172, 86, 2, '<p>Una vez marinada la pechuga de pollo, cuece bien en una sartén y laqueando de vez en cuando con un chorrito de vinagre balsámico.</p>');
INSERT INTO `recipe_step_lang` VALUES (173, 87, 1, '<p>Amaneix la $lettuce amb $salt, $virginOliveOil i $pepper.</p>');
INSERT INTO `recipe_step_lang` VALUES (174, 87, 2, '<p>Aliña la $lettucce con $salt, $virginOliveOil y $pepper.</p>');
INSERT INTO `recipe_step_lang` VALUES (175, 88, 1, '<p>Sobre la base del $bread posar la maionesa d\'alfàbrega, després l\'amanida i finalment el pit de pollastre laminat.</p>');
INSERT INTO `recipe_step_lang` VALUES (176, 88, 2, '<p>Sobre la base del $bread poner la mayonesa de albahaca, luego la ensalada y por último la pechuga de pollo laminada.</p>');
INSERT INTO `recipe_step_lang` VALUES (177, 89, 1, '<p>Hem de rentar l\'arròs per treure-li el midó.</p><p>Omplim un bol gran d\'aigua, afegim l\'$sushiRice i amb la mà (en posició com si tinguéssim una pilota de tenis dins) donem unes 20 voltes aproximadament.</p><p>Colem l\'arròs per descartar aquesta aigua i repetim el procés 3 o 4 vegades.</p>');
INSERT INTO `recipe_step_lang` VALUES (178, 89, 2, '<p>Debemos lavar el arroz para sacarle el almidón.</p><p>Llenamos un bol grande de agua, añadimos el $sushiRice y con la mano (en posición como si tuviéramos una pelota de tenis dentro) damos unas 20 vueltas aproximadamente.<br></p><p>Colar el arroz para descartar esta agua y repetimos el proceso 3 o 4 veces.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (179, 90, 1, '<p>Afegim en una cassola gruixuda i que tingui tapa (millor si és de vidre per veure quan comença a bullir) l\'$sushiRice escorregut, l\'$water i l\'alga $kombu.</p><p>Encenem el foc a foc fort i quan comença a bullir ho baixem al mínim. Ha d\'estar al mínim durant 10 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (180, 90, 2, '<p>Añadimos en una cacerola gruesa y que tenga tapa (mejor si es de vidrio para ver cuando empieza a hervir) el $sushiRice escurrido, el $water y el alga $kombu.</p><p>Encendemos el fuego a fuego fuerte y cuando empieza a hervir lo bajamos al mínimo. Debe estar al mínimo durante 10 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (181, 91, 1, '<p>Apaguem el foc i deixem reposar 10 minuts més <b>sense treure la tapa</b>.</p>');
INSERT INTO `recipe_step_lang` VALUES (182, 91, 2, '<p>Apagamos el fuego y dejamos reposar 10 minutos más <b>sin quitar la tapa</b>.</p>');
INSERT INTO `recipe_step_lang` VALUES (183, 92, 1, '<p>Mentrestant, en un bol barregem el $riceVinegar, el $sugar i la $salt.</p><p>Ho escalfem una mica al microones perquè s\'integrin tots els ingredients.</p>');
INSERT INTO `recipe_step_lang` VALUES (184, 92, 2, '<p>Mientras tanto, en un cuenco mezclamos el $riceVinegar, el $sugar y la $salt.</p><p>Lo calentamos un poco en el microondas para que se integren todos los ingredientes.</p>');
INSERT INTO `recipe_step_lang` VALUES (185, 93, 1, '<p>Quan l\'arròs està llest, en un bol mesclem bé la salsa de vinagre amb l\'arròs i ho deixem refredar uns 30 minuts a la nevera.</p>');
INSERT INTO `recipe_step_lang` VALUES (186, 93, 2, '<p>Cuando el arroz está listo, en un cuenco mezclamos bien la salsa de vinagre con el arroz y lo dejamos enfriar uns 30 minuts a la nevera.</p>');
INSERT INTO `recipe_step_lang` VALUES (187, 94, 1, '<p>Preparem el $sushiRice.</p>');
INSERT INTO `recipe_step_lang` VALUES (188, 94, 2, '<p>Preparamos el $sushiRice.</p>');
INSERT INTO `recipe_step_lang` VALUES (189, 95, 1, '<p>Mentrestant, marinem el $salmon tallat en daus amb $soySauce, $sesameOil i $whiteSesameSeeds.</p>');
INSERT INTO `recipe_step_lang` VALUES (190, 95, 2, '<p>Mientras, marinamos el $salmon cortado en dados con $soySauce, $sesameOil y $whiteSesameSeeds.</p>');
INSERT INTO `recipe_step_lang` VALUES (191, 96, 1, '<p>Piquem el $chive.</p><p>Tallem les $carrots en tires, el $cucumber en daus i l\'$avocado en làmines.</p>');
INSERT INTO `recipe_step_lang` VALUES (192, 96, 2, '<p>Picamos el $chive.</p><p>Cortamos las $carrots en tiras, el $cucumber  en dados y el $avocado en láminas.</p>');
INSERT INTO `recipe_step_lang` VALUES (193, 97, 1, '<p>Emplatem: fem un fons d\'arròs i repartim per dalt els ingredients de manera ordenada.</p><p>Opcionalment, podem afegir una mica de $cayennePowder per donar-li un toc picant.</p><p>També podem preparar una mica de $japaneseMayonnaise perquè cadascú s\'hi afegeixi al gust.</p>');
INSERT INTO `recipe_step_lang` VALUES (194, 97, 2, '<p>Emplatamos: hacemos un fondo de arroz y repartimos por arriba los ingredientes de forma ordenada.</p><p>Opcionalmente, podemos añadir algo de $cayennePowder para darle un toque picante.</p><p>También podemos preparar un poco de $japaneseMayonnaise para que cada uno se sume al gusto.</p>');
INSERT INTO `recipe_step_lang` VALUES (195, 98, 1, '<p>En el vas de la batedora afegim l\'$egg (millor si és a temperatura ambient) i l\'$sunflowerOil.</p><p>Afegim el braç tocant el cul del vas i activem la batedora a una velocitat baixa. Quan veiem que ha emulsionat, podem començar a moure el braç amunt i avall per acabar de mesclar els ingredients.</p>');
INSERT INTO `recipe_step_lang` VALUES (196, 98, 2, '<p>En el vaso de la batidora añadimos el $egg (mejor si es a temperatura ambiente) y el $sunflowerOil.</p><p>Añadimos el brazo tocando el culo del vaso y activamos la batidora a una velocidad baja. Cuando vemos que ha emulsionado, podemos empezar a mover el brazo arriba y abajo para acabar de mezclar los ingredientes.</p>');
INSERT INTO `recipe_step_lang` VALUES (197, 99, 1, '<p>Afegim els $eggYolk al vas de la batedora i ho processem durant 20 segons.</p>');
INSERT INTO `recipe_step_lang` VALUES (198, 99, 2, '<p>Añadimos los $eggYolk al vaso de la batidora y lo procesamos durante 20 segundos.</p>');
INSERT INTO `recipe_step_lang` VALUES (199, 100, 1, '<p>Amb la batedora funcionant molt lentament, afegim a poc a poc el $sunflowerOil(0.3) perquè emulsioni.</p>');
INSERT INTO `recipe_step_lang` VALUES (200, 100, 2, '<p>Con la batidora funcionando muy lentamente, añadimos poco a poco el $sunflowerOil(0.3) para que emulsione.</p>');
INSERT INTO `recipe_step_lang` VALUES (201, 101, 1, '<p>Afegim ara la $salt, el $sugar i el $dashiPowder i activem uns segons la batedora per integrar-ho tot.</p>');
INSERT INTO `recipe_step_lang` VALUES (202, 101, 2, '<p>Añadimos ahora la $salt, el $sugar y el $dashiPowder y activamos unos segundos la batidora para integrarlo todo.</p>');
INSERT INTO `recipe_step_lang` VALUES (203, 102, 1, '<p>De nou (amb la batedora funcionant molt lentament) afegim a poc a poc més $sunflowerOil(0.3).</p>');
INSERT INTO `recipe_step_lang` VALUES (204, 102, 2, '<p>De nuevo (con la batidora funcionando muy lentamente) añadimos poco a poco más $sunflowerOil(0.3).</p>');
INSERT INTO `recipe_step_lang` VALUES (205, 103, 1, '<p>Finalment, afegim el $riceVinegar, el $lemonJuice i l\'$sunflowerOil(0.3) restant durant 10 segons més.</p>');
INSERT INTO `recipe_step_lang` VALUES (206, 103, 2, '<p>Finalmente, añadimos $riceVinegar, $lemonJuice y $sunflowerOil(0.3) restante durante 10 segundos más.</p>');
INSERT INTO `recipe_step_lang` VALUES (207, 104, 1, '<p>Tallem la $sweetOnion en juliana i la passem per la paella amb un raig d\'$sunflowerOil i una mica de $salt.</p>');
INSERT INTO `recipe_step_lang` VALUES (208, 104, 2, '<p>Cortamos la $sweetOnion en juliana y la pasamos por la sartén con un chorro de $sunflowerOil y algo de $salt.</p>');
INSERT INTO `recipe_step_lang` VALUES (209, 105, 1, '<p>Mentrestant, tallem la $cabbage, les $carrots i els $shittake en tires i ho incorporem a la ceba perquè s\'estovin una mica tots els ingredients.</p><p>Afegim una mica de $soySauce si volem.</p>');
INSERT INTO `recipe_step_lang` VALUES (210, 105, 2, '<p>Mientras tanto, cortamos la $cabbage, las $carrots y los $shittake en tiras y lo incorporamos a la cebolla para que se ablanden un poco todos los ingredientes.</p><p>Añadimos un poco de $soySauce si queremos.</p>');
INSERT INTO `recipe_step_lang` VALUES (211, 106, 1, '<p>Fem els rotllets: mullem un $ricePaper amb aigua durant 20-30 segons freda perquè s\'estovi.</p><p>En retirar-lo de l\'aigua procedim a enrotllar-lo com si fos un burrito.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (212, 106, 2, '<p>Hacemos los rollitos: mojamos un $ricePaper con agua durante 20-30 segundos fría para que se ablande.</p><p>Al retirarlo del agua procedemos a enrollarlo como si fuera un burrito.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (213, 107, 1, '<p>Opcionalment, podem passar-los per la paella amb una mica d\'$sunflowerOil perquè quedin cruixents.</p>');
INSERT INTO `recipe_step_lang` VALUES (214, 107, 2, '<p>Opcionalmente, podemos pasarlos por la sartén con algo de $sunflowerOil para que queden crujientes.</p>');
INSERT INTO `recipe_step_lang` VALUES (215, 108, 1, '<p>Preescalfa el forn a 180°C. </p>');
INSERT INTO `recipe_step_lang` VALUES (216, 108, 2, '<p>Precalienta el horno a 180°C.</p>');
INSERT INTO `recipe_step_lang` VALUES (217, 109, 1, '<p>Talla els $croissants a mode d\'entrepà.</p><p>En un bol, combina la $butter, la $dijonMustard, les $greenOnion picades, les $poppySeeds i el $curry en pols i escampa la salsa per les dues meitats de tots els croissants.</p>');
INSERT INTO `recipe_step_lang` VALUES (218, 109, 2, '<p>Corta los $croissants a modo de bocadillo.</p><p>En un bol combina la $butter, la $dijonMustard, las $greenOnion picadas, las $poppySeeds y el $curry en polvo y esparce la salsa por las dos mitades de todos los croissants.</p>');
INSERT INTO `recipe_step_lang` VALUES (219, 110, 1, '<p>Poseu el $cookedHam i el $cheeseSlices als croissants i tanca el croissant y embolica individualment amb $aluminumFoil.</p><p>Coure al forn 15-20 minuts o fins que s\'escalfi.</p>');
INSERT INTO `recipe_step_lang` VALUES (220, 110, 2, '<p>Pon el $cookedHam y el $cheeseSlices a los croissants y cierra el croissant y envuelve individualmente con $aluminumFoil.</p><p>Cocer en el horno 15-20 minutos o hasta que se caliente.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (221, 111, 1, '<p>Tallem la $cabbage a rodanxes molt fines. La $carrot i la $apple a tires.</p>');
INSERT INTO `recipe_step_lang` VALUES (222, 111, 2, '<p>Cortamos la $cabbage en rodajas muy finas. La $carrot y la $apple a tiras.</p>');
INSERT INTO `recipe_step_lang` VALUES (223, 112, 1, '<p>Per fer la salsa, barregem la $sourCream, la $mayonnaise i la $dijonMustard. Afegim un bon raig d\'$appleVinegar i ho movem amb unes varetes fins a tenir una crema homogènia.</p>');
INSERT INTO `recipe_step_lang` VALUES (224, 112, 2, '<p>Para hacer la salsa, mezclamos la $sourCream, la $mayonnaise y la $dijonMustard. Añadimos un buen chorro de $appleVinegar  y lo movemos con unas varillas hasta tener una crema homogénea.</p>');
INSERT INTO `recipe_step_lang` VALUES (225, 113, 1, '<p>Amanir l\'amanida amb la salsa, remenem bé i la deixem a la nevera un mínim de dues hores abans de servir.</p>');
INSERT INTO `recipe_step_lang` VALUES (226, 113, 2, '<p>Aliñar la ensalada con la salsa, removemos bien y la dejamos en la nevera un mínimo de dos horas antes de servir.</p>');
INSERT INTO `recipe_step_lang` VALUES (227, 114, 1, '<p>Preescalfem el forn a 200ºC. Jo ho poso amb l\'opció ventilador i calor per la part inferior.</p>');
INSERT INTO `recipe_step_lang` VALUES (228, 114, 2, '<p>Precalentamos el horno a 200ºC. Yo lo pongo con la opción ventilador y calor por la parte inferior.</p>');
INSERT INTO `recipe_step_lang` VALUES (229, 115, 1, '<p>Col·loquem la $shortcrustPastry en un motlle i la punxem amb una forquilla vàries vegades.</p><p>Quan el forn està calent, la fem durant 5 min.</p>');
INSERT INTO `recipe_step_lang` VALUES (230, 115, 2, '<p>Colocamos la $shortcrustPastry en un molde y la pinchamos con un tenedor varias veces.</p><p>Cuando el horno está caliente, la hacemos durante 5 min.</p>');
INSERT INTO `recipe_step_lang` VALUES (231, 116, 1, '<p>Potxem el $leek tallat en juliana amb $butter i $salt.</p>');
INSERT INTO `recipe_step_lang` VALUES (232, 116, 2, '<p>Pochamos el $leek cortado en juliana con $butter y $salto.</p>');
INSERT INTO `recipe_step_lang` VALUES (233, 117, 1, '<p>Afegim la $mortadella tallada a quadrats i ho cuinem durant un parell de minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (234, 117, 2, '<p>Añadimos la $mortadella cortada a cuadrados y lo cocinamos durante un par de minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (235, 118, 1, '<p>En un bol batem: els $egg, la $cookingCream i la meitat del $emmental(0.5) ratllat.</p><p>Ho salpebrem i afegim també els porros amb la mortadel·la.</p>');
INSERT INTO `recipe_step_lang` VALUES (236, 118, 2, '<p>En un cuenco batimos: los $egg, la $cookingCream y la mitad del $emmental(0.5) rallado.</p><p>Lo salpimentamos y añadimos también los puerros con la mortadela.</p>');
INSERT INTO `recipe_step_lang` VALUES (237, 119, 1, '<p>Omplim la massa amb la mescla i ho cobrim amb la resta del formatge $emmental(0.5) ratllat.</p>');
INSERT INTO `recipe_step_lang` VALUES (238, 119, 2, '<p>Llenamos la masa con la mezcla y cubrimos con el resto del queso $emmental(0.5) rallado.</p>');
INSERT INTO `recipe_step_lang` VALUES (239, 120, 1, '<p>Al forn durant 20 minuts o fins que estigui gratinat.</p>');
INSERT INTO `recipe_step_lang` VALUES (240, 120, 2, '<p>En el horno durante 20 minutos o hasta que esté gratinado.</p>');
COMMIT;

-- ----------------------------
-- Table structure for recipe_tag
-- ----------------------------
DROP TABLE IF EXISTS `recipe_tag`;
CREATE TABLE `recipe_tag` (
  `id_recipe` smallint(5) unsigned NOT NULL,
  `id_tag` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id_recipe`,`id_tag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe_tag
-- ----------------------------
BEGIN;
INSERT INTO `recipe_tag` VALUES (1, 4);
INSERT INTO `recipe_tag` VALUES (1, 11);
INSERT INTO `recipe_tag` VALUES (1, 13);
INSERT INTO `recipe_tag` VALUES (2, 1);
INSERT INTO `recipe_tag` VALUES (2, 13);
INSERT INTO `recipe_tag` VALUES (3, 2);
INSERT INTO `recipe_tag` VALUES (3, 8);
INSERT INTO `recipe_tag` VALUES (3, 13);
INSERT INTO `recipe_tag` VALUES (3, 18);
INSERT INTO `recipe_tag` VALUES (4, 1);
INSERT INTO `recipe_tag` VALUES (4, 7);
INSERT INTO `recipe_tag` VALUES (4, 13);
INSERT INTO `recipe_tag` VALUES (5, 3);
INSERT INTO `recipe_tag` VALUES (5, 7);
INSERT INTO `recipe_tag` VALUES (5, 13);
INSERT INTO `recipe_tag` VALUES (5, 18);
INSERT INTO `recipe_tag` VALUES (6, 6);
INSERT INTO `recipe_tag` VALUES (6, 7);
INSERT INTO `recipe_tag` VALUES (6, 13);
INSERT INTO `recipe_tag` VALUES (7, 3);
INSERT INTO `recipe_tag` VALUES (7, 9);
INSERT INTO `recipe_tag` VALUES (7, 13);
INSERT INTO `recipe_tag` VALUES (7, 18);
INSERT INTO `recipe_tag` VALUES (8, 3);
INSERT INTO `recipe_tag` VALUES (8, 4);
INSERT INTO `recipe_tag` VALUES (8, 11);
INSERT INTO `recipe_tag` VALUES (8, 13);
INSERT INTO `recipe_tag` VALUES (8, 16);
INSERT INTO `recipe_tag` VALUES (8, 18);
INSERT INTO `recipe_tag` VALUES (9, 4);
INSERT INTO `recipe_tag` VALUES (9, 13);
INSERT INTO `recipe_tag` VALUES (9, 18);
INSERT INTO `recipe_tag` VALUES (10, 1);
INSERT INTO `recipe_tag` VALUES (10, 8);
INSERT INTO `recipe_tag` VALUES (10, 14);
INSERT INTO `recipe_tag` VALUES (11, 5);
INSERT INTO `recipe_tag` VALUES (11, 8);
INSERT INTO `recipe_tag` VALUES (11, 12);
INSERT INTO `recipe_tag` VALUES (11, 18);
INSERT INTO `recipe_tag` VALUES (12, 1);
INSERT INTO `recipe_tag` VALUES (12, 13);
INSERT INTO `recipe_tag` VALUES (12, 18);
INSERT INTO `recipe_tag` VALUES (13, 1);
INSERT INTO `recipe_tag` VALUES (13, 13);
INSERT INTO `recipe_tag` VALUES (13, 18);
INSERT INTO `recipe_tag` VALUES (14, 4);
INSERT INTO `recipe_tag` VALUES (14, 13);
INSERT INTO `recipe_tag` VALUES (14, 18);
INSERT INTO `recipe_tag` VALUES (15, 3);
INSERT INTO `recipe_tag` VALUES (15, 11);
INSERT INTO `recipe_tag` VALUES (15, 13);
INSERT INTO `recipe_tag` VALUES (15, 16);
INSERT INTO `recipe_tag` VALUES (16, 5);
INSERT INTO `recipe_tag` VALUES (16, 8);
INSERT INTO `recipe_tag` VALUES (16, 12);
INSERT INTO `recipe_tag` VALUES (16, 18);
INSERT INTO `recipe_tag` VALUES (17, 1);
INSERT INTO `recipe_tag` VALUES (17, 10);
INSERT INTO `recipe_tag` VALUES (17, 13);
INSERT INTO `recipe_tag` VALUES (18, 1);
INSERT INTO `recipe_tag` VALUES (18, 8);
INSERT INTO `recipe_tag` VALUES (18, 13);
INSERT INTO `recipe_tag` VALUES (18, 18);
INSERT INTO `recipe_tag` VALUES (19, 1);
INSERT INTO `recipe_tag` VALUES (19, 8);
INSERT INTO `recipe_tag` VALUES (19, 13);
INSERT INTO `recipe_tag` VALUES (20, 1);
INSERT INTO `recipe_tag` VALUES (20, 8);
INSERT INTO `recipe_tag` VALUES (20, 13);
INSERT INTO `recipe_tag` VALUES (20, 18);
INSERT INTO `recipe_tag` VALUES (21, 1);
INSERT INTO `recipe_tag` VALUES (21, 13);
INSERT INTO `recipe_tag` VALUES (21, 15);
INSERT INTO `recipe_tag` VALUES (22, 3);
INSERT INTO `recipe_tag` VALUES (22, 13);
INSERT INTO `recipe_tag` VALUES (22, 18);
INSERT INTO `recipe_tag` VALUES (23, 2);
INSERT INTO `recipe_tag` VALUES (23, 3);
INSERT INTO `recipe_tag` VALUES (23, 4);
INSERT INTO `recipe_tag` VALUES (24, 2);
INSERT INTO `recipe_tag` VALUES (24, 3);
INSERT INTO `recipe_tag` VALUES (24, 4);
INSERT INTO `recipe_tag` VALUES (24, 13);
INSERT INTO `recipe_tag` VALUES (24, 18);
INSERT INTO `recipe_tag` VALUES (25, 1);
INSERT INTO `recipe_tag` VALUES (25, 13);
INSERT INTO `recipe_tag` VALUES (25, 15);
INSERT INTO `recipe_tag` VALUES (25, 18);
INSERT INTO `recipe_tag` VALUES (26, 8);
INSERT INTO `recipe_tag` VALUES (26, 13);
INSERT INTO `recipe_tag` VALUES (26, 15);
INSERT INTO `recipe_tag` VALUES (27, 1);
INSERT INTO `recipe_tag` VALUES (27, 13);
INSERT INTO `recipe_tag` VALUES (28, 1);
INSERT INTO `recipe_tag` VALUES (28, 11);
INSERT INTO `recipe_tag` VALUES (28, 13);
INSERT INTO `recipe_tag` VALUES (28, 18);
INSERT INTO `recipe_tag` VALUES (29, 12);
INSERT INTO `recipe_tag` VALUES (29, 13);
INSERT INTO `recipe_tag` VALUES (29, 16);
INSERT INTO `recipe_tag` VALUES (30, 1);
INSERT INTO `recipe_tag` VALUES (30, 13);
INSERT INTO `recipe_tag` VALUES (31, 3);
INSERT INTO `recipe_tag` VALUES (31, 4);
INSERT INTO `recipe_tag` VALUES (31, 13);
INSERT INTO `recipe_tag` VALUES (31, 16);
INSERT INTO `recipe_tag` VALUES (32, 1);
INSERT INTO `recipe_tag` VALUES (32, 13);
INSERT INTO `recipe_tag` VALUES (32, 15);
INSERT INTO `recipe_tag` VALUES (32, 16);
INSERT INTO `recipe_tag` VALUES (32, 18);
INSERT INTO `recipe_tag` VALUES (33, 1);
INSERT INTO `recipe_tag` VALUES (33, 13);
INSERT INTO `recipe_tag` VALUES (33, 18);
INSERT INTO `recipe_tag` VALUES (34, 1);
INSERT INTO `recipe_tag` VALUES (34, 8);
INSERT INTO `recipe_tag` VALUES (34, 13);
INSERT INTO `recipe_tag` VALUES (34, 14);
INSERT INTO `recipe_tag` VALUES (35, 13);
INSERT INTO `recipe_tag` VALUES (35, 15);
INSERT INTO `recipe_tag` VALUES (35, 16);
INSERT INTO `recipe_tag` VALUES (36, 1);
INSERT INTO `recipe_tag` VALUES (36, 8);
INSERT INTO `recipe_tag` VALUES (36, 13);
INSERT INTO `recipe_tag` VALUES (36, 14);
INSERT INTO `recipe_tag` VALUES (37, 1);
INSERT INTO `recipe_tag` VALUES (37, 11);
INSERT INTO `recipe_tag` VALUES (37, 13);
INSERT INTO `recipe_tag` VALUES (38, 13);
INSERT INTO `recipe_tag` VALUES (38, 16);
INSERT INTO `recipe_tag` VALUES (39, 2);
INSERT INTO `recipe_tag` VALUES (39, 3);
INSERT INTO `recipe_tag` VALUES (39, 13);
INSERT INTO `recipe_tag` VALUES (39, 18);
INSERT INTO `recipe_tag` VALUES (40, 2);
INSERT INTO `recipe_tag` VALUES (40, 3);
INSERT INTO `recipe_tag` VALUES (40, 13);
INSERT INTO `recipe_tag` VALUES (40, 18);
INSERT INTO `recipe_tag` VALUES (41, 1);
INSERT INTO `recipe_tag` VALUES (41, 6);
INSERT INTO `recipe_tag` VALUES (41, 11);
INSERT INTO `recipe_tag` VALUES (41, 13);
INSERT INTO `recipe_tag` VALUES (41, 18);
INSERT INTO `recipe_tag` VALUES (42, 3);
INSERT INTO `recipe_tag` VALUES (42, 13);
INSERT INTO `recipe_tag` VALUES (42, 18);
INSERT INTO `recipe_tag` VALUES (43, 1);
INSERT INTO `recipe_tag` VALUES (43, 7);
INSERT INTO `recipe_tag` VALUES (43, 13);
INSERT INTO `recipe_tag` VALUES (44, 2);
INSERT INTO `recipe_tag` VALUES (44, 13);
INSERT INTO `recipe_tag` VALUES (44, 18);
INSERT INTO `recipe_tag` VALUES (45, 7);
INSERT INTO `recipe_tag` VALUES (46, 2);
INSERT INTO `recipe_tag` VALUES (46, 7);
INSERT INTO `recipe_tag` VALUES (46, 18);
INSERT INTO `recipe_tag` VALUES (47, 3);
INSERT INTO `recipe_tag` VALUES (47, 13);
INSERT INTO `recipe_tag` VALUES (47, 19);
INSERT INTO `recipe_tag` VALUES (48, 3);
INSERT INTO `recipe_tag` VALUES (48, 13);
INSERT INTO `recipe_tag` VALUES (48, 18);
INSERT INTO `recipe_tag` VALUES (49, 3);
INSERT INTO `recipe_tag` VALUES (49, 13);
INSERT INTO `recipe_tag` VALUES (49, 18);
INSERT INTO `recipe_tag` VALUES (50, 13);
INSERT INTO `recipe_tag` VALUES (50, 14);
INSERT INTO `recipe_tag` VALUES (50, 18);
INSERT INTO `recipe_tag` VALUES (50, 19);
INSERT INTO `recipe_tag` VALUES (51, 3);
INSERT INTO `recipe_tag` VALUES (51, 13);
INSERT INTO `recipe_tag` VALUES (51, 16);
COMMIT;

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id_tag` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `is_highlighted` tinyint(1) unsigned DEFAULT 0,
  `order` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_tag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
BEGIN;
INSERT INTO `tag` VALUES (1, 1, 2);
INSERT INTO `tag` VALUES (2, 0, 2);
INSERT INTO `tag` VALUES (3, 1, 2);
INSERT INTO `tag` VALUES (4, 1, 2);
INSERT INTO `tag` VALUES (5, 0, 2);
INSERT INTO `tag` VALUES (6, 0, 3);
INSERT INTO `tag` VALUES (7, 1, 3);
INSERT INTO `tag` VALUES (8, 1, 3);
INSERT INTO `tag` VALUES (9, 0, 4);
INSERT INTO `tag` VALUES (10, 0, 3);
INSERT INTO `tag` VALUES (11, 0, 3);
INSERT INTO `tag` VALUES (12, 0, 1);
INSERT INTO `tag` VALUES (13, 0, 1);
INSERT INTO `tag` VALUES (14, 0, 3);
INSERT INTO `tag` VALUES (15, 0, 3);
INSERT INTO `tag` VALUES (16, 0, 4);
INSERT INTO `tag` VALUES (17, 0, 3);
INSERT INTO `tag` VALUES (18, 0, 4);
INSERT INTO `tag` VALUES (19, 0, 3);
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
  PRIMARY KEY (`id_tag_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

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
INSERT INTO `tag_lang` VALUES (21, 11, 1, 'Mediterrani', 'mediterrani');
INSERT INTO `tag_lang` VALUES (22, 11, 2, 'Mediterráneo', 'mediterraneo');
INSERT INTO `tag_lang` VALUES (23, 12, 1, 'Dolç', 'dolc');
INSERT INTO `tag_lang` VALUES (24, 12, 2, 'Dulce', 'dulce');
INSERT INTO `tag_lang` VALUES (25, 13, 1, 'Salat', 'salat');
INSERT INTO `tag_lang` VALUES (26, 13, 2, 'Salado', 'salado');
INSERT INTO `tag_lang` VALUES (27, 14, 1, 'Pasta', 'pasta');
INSERT INTO `tag_lang` VALUES (28, 14, 2, 'Pasta', 'pasta');
INSERT INTO `tag_lang` VALUES (29, 15, 1, 'Entrepà', 'entrepa');
INSERT INTO `tag_lang` VALUES (30, 15, 2, 'Bocadillo', 'bocadillo');
INSERT INTO `tag_lang` VALUES (31, 16, 1, 'Brunch', 'brunch');
INSERT INTO `tag_lang` VALUES (32, 16, 2, 'Brunch', 'brunch');
INSERT INTO `tag_lang` VALUES (33, 17, 1, 'Xinès', 'xines');
INSERT INTO `tag_lang` VALUES (34, 17, 2, 'Chino', 'chino');
INSERT INTO `tag_lang` VALUES (35, 18, 1, 'Vegetarià', 'vegetaria');
INSERT INTO `tag_lang` VALUES (36, 18, 2, 'Vegetariano', 'vegetariano');
INSERT INTO `tag_lang` VALUES (37, 19, 1, 'Asiàtic', 'asiatic');
INSERT INTO `tag_lang` VALUES (38, 19, 2, 'Asiático', 'asiatico');
COMMIT;

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `id_unit` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_unit`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit
-- ----------------------------
BEGIN;
INSERT INTO `unit` VALUES (1);
INSERT INTO `unit` VALUES (2);
INSERT INTO `unit` VALUES (3);
INSERT INTO `unit` VALUES (4);
INSERT INTO `unit` VALUES (5);
INSERT INTO `unit` VALUES (6);
INSERT INTO `unit` VALUES (7);
INSERT INTO `unit` VALUES (8);
INSERT INTO `unit` VALUES (9);
INSERT INTO `unit` VALUES (10);
INSERT INTO `unit` VALUES (11);
INSERT INTO `unit` VALUES (12);
INSERT INTO `unit` VALUES (13);
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
  `plural` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_unit_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit_lang
-- ----------------------------
BEGIN;
INSERT INTO `unit_lang` VALUES (1, 1, 1, 'cullerada (tbsp)', 'cullerades (tbsp)');
INSERT INTO `unit_lang` VALUES (2, 1, 2, 'cucharada (tbsp)', 'cucharadas (tbsp)');
INSERT INTO `unit_lang` VALUES (3, 2, 1, 'culleradeta (tsp)', 'culleradetes (tsp)');
INSERT INTO `unit_lang` VALUES (4, 2, 2, 'cucharadita (tsp)', 'cucharaditas (tsp)');
INSERT INTO `unit_lang` VALUES (5, 3, 1, 'gram', 'grams');
INSERT INTO `unit_lang` VALUES (6, 3, 2, 'gramo', 'gramos');
INSERT INTO `unit_lang` VALUES (7, 4, 1, 'mililitre', 'mililitres');
INSERT INTO `unit_lang` VALUES (8, 4, 2, 'mililitro', 'mililitros');
INSERT INTO `unit_lang` VALUES (9, 5, 1, 'tassa (cup)', 'tasses (cup)');
INSERT INTO `unit_lang` VALUES (10, 5, 2, 'taza (cup)', 'tazas (cup)');
INSERT INTO `unit_lang` VALUES (11, 6, 1, 'fulla', 'fulles');
INSERT INTO `unit_lang` VALUES (12, 6, 2, 'hoja', 'hojas');
INSERT INTO `unit_lang` VALUES (13, 7, 1, 'pessic', 'pessics');
INSERT INTO `unit_lang` VALUES (14, 7, 2, 'pellizco', 'pellizcos');
INSERT INTO `unit_lang` VALUES (15, 8, 1, 'al gust', NULL);
INSERT INTO `unit_lang` VALUES (16, 8, 2, 'al gusto', NULL);
INSERT INTO `unit_lang` VALUES (17, 9, 1, 'raig', 'raigs');
INSERT INTO `unit_lang` VALUES (18, 9, 2, 'chorro', 'chorros');
INSERT INTO `unit_lang` VALUES (19, 10, 1, 'dent', 'dents');
INSERT INTO `unit_lang` VALUES (20, 10, 2, 'diente', 'dientes');
INSERT INTO `unit_lang` VALUES (21, 11, 1, 'branca', 'branques');
INSERT INTO `unit_lang` VALUES (22, 11, 2, 'rama', 'ramas');
INSERT INTO `unit_lang` VALUES (23, 12, 1, 'gota', 'gotes');
INSERT INTO `unit_lang` VALUES (24, 12, 2, 'gota', 'gotas');
INSERT INTO `unit_lang` VALUES (25, 13, 1, 'abundant', 'abundant');
INSERT INTO `unit_lang` VALUES (26, 13, 2, 'abundante', 'abundante');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
