/*
 Navicat Premium Data Transfer

 Source Server         : VM
 Source Server Type    : MySQL
 Source Server Version : 101103
 Source Host           : localhost:3306
 Source Schema         : cuina-de-profit

 Target Server Type    : MySQL
 Target Server Version : 101103
 File Encoding         : 65001

 Date: 24/05/2023 12:45:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appacman_block
-- ----------------------------
DROP TABLE IF EXISTS `appacman_block`;
CREATE TABLE `appacman_block` (
  `id_appacman_block` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id_appacman_block`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of appacman_content
-- ----------------------------
BEGIN;
INSERT INTO `appacman_content` VALUES (1, 'appacman_user', 'fa-user', 1, 1, NULL, 1);
INSERT INTO `appacman_content` VALUES (2, 'appacman_legal', 'fa-legal', 3, 1, '`order` ASC', 2);
INSERT INTO `appacman_content` VALUES (3, 'recipe', 'fa-cutlery', 2, 1, '`created` DESC', 1);
INSERT INTO `appacman_content` VALUES (4, 'recipe_ingredient', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `appacman_content` VALUES (5, 'recipe_step', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `appacman_content` VALUES (6, 'ingredient', 'fa-shopping-cart', 2, 1, '`name` ASC', 2);
INSERT INTO `appacman_content` VALUES (7, 'unit', 'fa-flask', 2, 1, '`name` ASC', 4);
INSERT INTO `appacman_content` VALUES (8, 'tag', 'fa-tag', 2, 1, '`order` ASC', 5);
INSERT INTO `appacman_content` VALUES (9, 'ingredient_category', 'fa-tag', 2, 1, '`name` ASC', 3);
INSERT INTO `appacman_content` VALUES (10, 'restaurant', 'fa-map-marker', 3, 1, '`name` ASC', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `appacman_content_lang` VALUES (10, 10, 1, 'Restaurants');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `appacman_field` VALUES (13, 3, 'id_difficulty', 2, 4, 1, NULL);
INSERT INTO `appacman_field` VALUES (14, 3, 'diners', 13, 5, NULL, NULL);
INSERT INTO `appacman_field` VALUES (15, 3, 'image', 1, 9, 1, NULL);
INSERT INTO `appacman_field` VALUES (16, 3, 'description', NULL, 10, NULL, NULL);
INSERT INTO `appacman_field` VALUES (17, 3, 'recipe_tag', 6, 11, NULL, NULL);
INSERT INTO `appacman_field` VALUES (18, 3, 'recipe_ingredient', 21, 12, NULL, NULL);
INSERT INTO `appacman_field` VALUES (19, 3, 'recipe_step', 21, 13, NULL, NULL);
INSERT INTO `appacman_field` VALUES (20, 3, 'created', NULL, 15, NULL, NULL);
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
INSERT INTO `appacman_field` VALUES (38, 3, 'prep_time', 13, 6, NULL, NULL);
INSERT INTO `appacman_field` VALUES (39, 3, 'cook_time', 13, 7, NULL, NULL);
INSERT INTO `appacman_field` VALUES (40, 3, 'link', 12, 14, NULL, NULL);
INSERT INTO `appacman_field` VALUES (41, 4, 'order_ingredient', 13, 6, NULL, NULL);
INSERT INTO `appacman_field` VALUES (42, 4, 'is_alternative', 3, 4, NULL, NULL);
INSERT INTO `appacman_field` VALUES (43, 7, 'plural', NULL, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (44, 6, 'id_recipe', 2, 4, 1, NULL);
INSERT INTO `appacman_field` VALUES (45, 8, 'order', 13, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (46, 4, 'is_optional', 3, 5, NULL, NULL);
INSERT INTO `appacman_field` VALUES (47, 3, 'is_highlighted', 3, 2, NULL, NULL);
INSERT INTO `appacman_field` VALUES (48, 8, 'is_highlighted', 3, 3, 1, NULL);
INSERT INTO `appacman_field` VALUES (49, 3, 'rest_time', 13, 8, NULL, NULL);
INSERT INTO `appacman_field` VALUES (50, 3, 'is_visible', 3, 3, 1, NULL);
INSERT INTO `appacman_field` VALUES (51, 10, 'name', NULL, 1, 1, 1);
INSERT INTO `appacman_field` VALUES (52, 10, 'text', 7, 3, 1, NULL);
INSERT INTO `appacman_field` VALUES (53, 10, 'latitude', 13, 5, NULL, NULL);
INSERT INTO `appacman_field` VALUES (54, 10, 'longitude', 13, 6, NULL, NULL);
INSERT INTO `appacman_field` VALUES (55, 10, 'last_visit', 26, 7, NULL, NULL);
INSERT INTO `appacman_field` VALUES (56, 10, 'address', NULL, 4, NULL, NULL);
INSERT INTO `appacman_field` VALUES (57, 10, 'image', 1, 2, 1, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `appacman_field_lang` VALUES (50, 50, 1, 'Visible?', NULL);
INSERT INTO `appacman_field_lang` VALUES (51, 51, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (52, 52, 1, 'Text', NULL);
INSERT INTO `appacman_field_lang` VALUES (53, 53, 1, 'Latitud', NULL);
INSERT INTO `appacman_field_lang` VALUES (54, 54, 1, 'Longitud', NULL);
INSERT INTO `appacman_field_lang` VALUES (55, 55, 1, 'Última visita', NULL);
INSERT INTO `appacman_field_lang` VALUES (56, 56, 1, 'Adreça', NULL);
INSERT INTO `appacman_field_lang` VALUES (57, 57, 1, 'Imatge', NULL);
COMMIT;

-- ----------------------------
-- Table structure for appacman_field_type
-- ----------------------------
DROP TABLE IF EXISTS `appacman_field_type`;
CREATE TABLE `appacman_field_type` (
  `id_appacman_field_type` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_field_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `appacman_field_type` VALUES (26, 'date');
COMMIT;

-- ----------------------------
-- Table structure for appacman_file
-- ----------------------------
DROP TABLE IF EXISTS `appacman_file`;
CREATE TABLE `appacman_file` (
  `id_appacman_file` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_file`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of appacman_file
-- ----------------------------
BEGIN;
INSERT INTO `appacman_file` VALUES (1, 'logo.png');
INSERT INTO `appacman_file` VALUES (2, '2_gohan.png');
INSERT INTO `appacman_file` VALUES (3, '3_oyako-don.jpg');
INSERT INTO `appacman_file` VALUES (4, '4_doritos.jpeg');
INSERT INTO `appacman_file` VALUES (6, '6_doritos-2.jpeg');
INSERT INTO `appacman_file` VALUES (11, '11_artur-rutkowski-2leopvy3oj0-unsplash.jpg');
INSERT INTO `appacman_file` VALUES (12, '12_caldo-dashi-1.jpeg');
INSERT INTO `appacman_file` VALUES (19, '19_tiramisu.jpg');
INSERT INTO `appacman_file` VALUES (24, '24_arros-sushi.jpg');
INSERT INTO `appacman_file` VALUES (25, '25_arros-sushi.jpg');
INSERT INTO `appacman_file` VALUES (27, '27_japanese-mayo.jpg');
INSERT INTO `appacman_file` VALUES (29, '29_how-to-roll.jpeg');
INSERT INTO `appacman_file` VALUES (31, '31_coleslaw.jpg');
INSERT INTO `appacman_file` VALUES (34, '34_cafe-dalgona.jpeg');
INSERT INTO `appacman_file` VALUES (35, '35_celestiale.jpg');
INSERT INTO `appacman_file` VALUES (36, '36_entrepa-de-pollastre.jpg');
INSERT INTO `appacman_file` VALUES (37, '37_poke.jpg');
INSERT INTO `appacman_file` VALUES (38, '38_hummus.jpeg');
INSERT INTO `appacman_file` VALUES (39, '39_pizza-6-formatges.jpg');
INSERT INTO `appacman_file` VALUES (40, '40_pizza-bbq.jpg');
INSERT INTO `appacman_file` VALUES (41, '41_pizza-burrata.jpg');
INSERT INTO `appacman_file` VALUES (42, '42_IMG_4897.mp4');
INSERT INTO `appacman_file` VALUES (43, '43_img_4945.jpeg');
INSERT INTO `appacman_file` VALUES (44, '44_9ed74336-5446-48b2-bcdc-e8fc004c1439.jpeg');
INSERT INTO `appacman_file` VALUES (45, '45_9b3e220b-72d0-4145-a63a-0e630e25c1bf.jpeg');
INSERT INTO `appacman_file` VALUES (46, '46_560e55b5-8ae4-4d74-b51a-164db2a64a89.jpeg');
INSERT INTO `appacman_file` VALUES (47, '47_9ff0af96-4f36-442e-9ed4-49804aeeb75d.jpeg');
INSERT INTO `appacman_file` VALUES (48, '48_634f31e3-10e6-47bc-b83d-71a078e0a80d.jpeg');
INSERT INTO `appacman_file` VALUES (49, '49_cb79499c-6d53-448f-8cb9-bfbb12e27cca.jpeg');
INSERT INTO `appacman_file` VALUES (50, '50_d940baee-44bd-4443-b22c-d47ed46c5dcc.jpeg');
INSERT INTO `appacman_file` VALUES (51, '51_228ae4d4-3626-46de-8060-d12f6e2d13c6.jpeg');
INSERT INTO `appacman_file` VALUES (52, '52_66fe3bce-2c42-4bcf-8d72-56f060e95658.jpeg');
INSERT INTO `appacman_file` VALUES (53, '53_200dfba6-d549-4417-9615-d10ce883b688.jpeg');
INSERT INTO `appacman_file` VALUES (54, '54_6ec1494d-9258-4e96-9eb6-eb79be9b568b.jpeg');
INSERT INTO `appacman_file` VALUES (55, '55_371966bc-2c23-4db7-b515-f82c86384e8d.jpeg');
INSERT INTO `appacman_file` VALUES (56, '56_bbe7184b-ba7b-43a6-89d4-6ef1c8917d41.jpeg');
INSERT INTO `appacman_file` VALUES (57, '57_5527dd72-c167-48d1-b274-fc646fed3f9e.jpeg');
INSERT INTO `appacman_file` VALUES (58, '58_img_6279.jpeg');
INSERT INTO `appacman_file` VALUES (59, '59_img_6270.jpg');
INSERT INTO `appacman_file` VALUES (60, '60_img_6272.jpeg');
INSERT INTO `appacman_file` VALUES (61, '61_img_6270.jpg');
INSERT INTO `appacman_file` VALUES (62, '62_img_7014.jpeg');
INSERT INTO `appacman_file` VALUES (63, '63_img_7305.jpeg');
INSERT INTO `appacman_file` VALUES (64, '64_img_7304.jpeg');
INSERT INTO `appacman_file` VALUES (65, '65_img_7313.jpeg');
INSERT INTO `appacman_file` VALUES (66, '66_img_7312.jpeg');
INSERT INTO `appacman_file` VALUES (67, '67_img_6964.webp');
INSERT INTO `appacman_file` VALUES (68, '68_ea58dd1b-bb4a-4f18-95c8-06870d444922.webp');
INSERT INTO `appacman_file` VALUES (69, '69_img_6011.webp');
INSERT INTO `appacman_file` VALUES (70, '70_img_6159.webp');
INSERT INTO `appacman_file` VALUES (71, '71_2021-09-17---1211.webp');
INSERT INTO `appacman_file` VALUES (72, '72_img_4520.webp');
INSERT INTO `appacman_file` VALUES (73, '73_img_6094.webp');
INSERT INTO `appacman_file` VALUES (74, '74_img_1279.webp');
INSERT INTO `appacman_file` VALUES (75, '75_img_6318.webp');
INSERT INTO `appacman_file` VALUES (76, '76_img_1880.webp');
INSERT INTO `appacman_file` VALUES (77, '77_img_1049.webp');
INSERT INTO `appacman_file` VALUES (78, '78_291227412_310603137952197_117293842538866852_n.webp');
COMMIT;

-- ----------------------------
-- Table structure for appacman_file_resize
-- ----------------------------
DROP TABLE IF EXISTS `appacman_file_resize`;
CREATE TABLE `appacman_file_resize` (
  `id_appacman_file_resize` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_appacman_field` smallint(5) unsigned NOT NULL,
  `width` smallint(5) unsigned NOT NULL,
  `height` smallint(5) unsigned NOT NULL,
  `suffix` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_file_resize`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of appacman_file_resize
-- ----------------------------
BEGIN;
INSERT INTO `appacman_file_resize` VALUES (1, 15, 400, 400, 'thumb');
INSERT INTO `appacman_file_resize` VALUES (2, 15, 700, 700, 'list');
INSERT INTO `appacman_file_resize` VALUES (3, 26, 700, 700, 'step');
INSERT INTO `appacman_file_resize` VALUES (4, 57, 400, 400, 'thumb');
INSERT INTO `appacman_file_resize` VALUES (5, 57, 700, 700, 'list');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `appacman_user_profile_permission` VALUES (1, 10, 1);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 10, 2);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 10, 3);
COMMIT;

-- ----------------------------
-- Table structure for difficulty
-- ----------------------------
DROP TABLE IF EXISTS `difficulty`;
CREATE TABLE `difficulty` (
  `id_difficulty` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_difficulty`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `ingredient` VALUES (112, '$japaneseMayonnaise', 16, 46);
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
INSERT INTO `ingredient` VALUES (132, '$instantCoffee', NULL, NULL);
INSERT INTO `ingredient` VALUES (133, '$ice', NULL, NULL);
INSERT INTO `ingredient` VALUES (134, '$passata', 16, NULL);
INSERT INTO `ingredient` VALUES (135, '$mincedBeef', 1, NULL);
INSERT INTO `ingredient` VALUES (136, '$bbqSauce', 16, 53);
INSERT INTO `ingredient` VALUES (137, '$wheatSemolina', NULL, NULL);
INSERT INTO `ingredient` VALUES (138, '$crushedTomato', 16, NULL);
INSERT INTO `ingredient` VALUES (139, '$ketchup', 16, NULL);
INSERT INTO `ingredient` VALUES (140, '$whiteWineVinegar', NULL, NULL);
INSERT INTO `ingredient` VALUES (141, '$hamburgerBun', 17, 68);
INSERT INTO `ingredient` VALUES (142, '$tomato', 4, NULL);
INSERT INTO `ingredient` VALUES (143, '$chiliPowder', 9, NULL);
INSERT INTO `ingredient` VALUES (144, '$rasElHanout', 9, NULL);
INSERT INTO `ingredient` VALUES (145, '$chickenBroth', NULL, NULL);
INSERT INTO `ingredient` VALUES (146, '$vegetableBroth', NULL, NULL);
INSERT INTO `ingredient` VALUES (147, '$gyozaWrappers', NULL, 56);
INSERT INTO `ingredient` VALUES (148, '$empanadillaDough', NULL, NULL);
INSERT INTO `ingredient` VALUES (149, '$porkBelly', 1, NULL);
INSERT INTO `ingredient` VALUES (150, '$chineseCabbage', 3, NULL);
INSERT INTO `ingredient` VALUES (151, '$ginger', 5, NULL);
INSERT INTO `ingredient` VALUES (152, '$sake', 18, NULL);
INSERT INTO `ingredient` VALUES (153, '$oysterSauce', 16, NULL);
INSERT INTO `ingredient` VALUES (155, '$chickenWings', 6, NULL);
INSERT INTO `ingredient` VALUES (156, '$cayennePepper', 9, NULL);
INSERT INTO `ingredient` VALUES (157, '$nyora', 9, NULL);
INSERT INTO `ingredient` VALUES (158, '$nyoraPaste', 9, NULL);
INSERT INTO `ingredient` VALUES (159, '$brandy', 18, NULL);
INSERT INTO `ingredient` VALUES (160, '$leekGreenPart', 3, NULL);
INSERT INTO `ingredient` VALUES (161, '$gnocchi', 12, NULL);
INSERT INTO `ingredient` VALUES (162, '$bacon', 1, NULL);
INSERT INTO `ingredient` VALUES (163, '$potatoStarch', NULL, NULL);
INSERT INTO `ingredient` VALUES (164, '$plasticWrap', 23, NULL);
INSERT INTO `ingredient` VALUES (165, '$8cmMold', 23, NULL);
INSERT INTO `ingredient` VALUES (166, '$rollingPin', 23, NULL);
INSERT INTO `ingredient` VALUES (167, '$pickledCapers', 24, NULL);
INSERT INTO `ingredient` VALUES (168, '$pickles', 24, NULL);
INSERT INTO `ingredient` VALUES (169, '$oldFashionedMustard', 16, NULL);
INSERT INTO `ingredient` VALUES (170, '$worcestershireSauce', 16, NULL);
INSERT INTO `ingredient` VALUES (171, '$perrinsSauce', 16, NULL);
INSERT INTO `ingredient` VALUES (172, '$tabasco', 16, NULL);
INSERT INTO `ingredient` VALUES (173, '$basmatiRice', 7, NULL);
INSERT INTO `ingredient` VALUES (174, '$feta', 8, NULL);
INSERT INTO `ingredient` VALUES (175, '$botifarra', 1, NULL);
INSERT INTO `ingredient` VALUES (176, '$duckBreast', 1, NULL);
INSERT INTO `ingredient` VALUES (177, '$n4Fideus', 12, NULL);
INSERT INTO `ingredient` VALUES (178, '$driedHornOfPlenty', 22, NULL);
INSERT INTO `ingredient` VALUES (179, '$sobrassada', 1, NULL);
INSERT INTO `ingredient` VALUES (180, '$escudellaBroth', NULL, NULL);
INSERT INTO `ingredient` VALUES (181, '$moldBread', 17, NULL);
INSERT INTO `ingredient` VALUES (182, '$parsley', 9, NULL);
INSERT INTO `ingredient` VALUES (183, '$pickledChives', 24, NULL);
INSERT INTO `ingredient` VALUES (184, '$almond', 13, NULL);
INSERT INTO `ingredient` VALUES (185, '$ginger', NULL, NULL);
INSERT INTO `ingredient` VALUES (186, '$porkLoin', 1, NULL);
INSERT INTO `ingredient` VALUES (187, '$brownSugar', NULL, NULL);
INSERT INTO `ingredient` VALUES (188, '$pressureCooker', 23, NULL);
INSERT INTO `ingredient` VALUES (189, '$filo', NULL, NULL);
INSERT INTO `ingredient` VALUES (190, '$redOnion', 3, NULL);
INSERT INTO `ingredient` VALUES (191, '$pickledRedOnion', 24, 64);
INSERT INTO `ingredient` VALUES (192, '$grainBlackPepper', 9, NULL);
INSERT INTO `ingredient` VALUES (193, '$glassJar', 23, NULL);
INSERT INTO `ingredient` VALUES (194, '$pulledPork', 1, 62);
INSERT INTO `ingredient` VALUES (195, '$bao', 17, NULL);
INSERT INTO `ingredient` VALUES (196, '$pumpkin', 3, NULL);
INSERT INTO `ingredient` VALUES (197, '$cocoMilk', NULL, NULL);
INSERT INTO `ingredient` VALUES (198, '$rice', 7, NULL);
INSERT INTO `ingredient` VALUES (199, '$dehydratedCep', 22, NULL);
INSERT INTO `ingredient` VALUES (200, '$beefTenderloin', 1, NULL);
INSERT INTO `ingredient` VALUES (201, '$oxTenderloin', 1, NULL);
INSERT INTO `ingredient` VALUES (202, '$mushrooms', 22, NULL);
INSERT INTO `ingredient` VALUES (203, '$foie', NULL, NULL);
INSERT INTO `ingredient` VALUES (204, '$serranoHam', 19, NULL);
INSERT INTO `ingredient` VALUES (205, '$freshYeast', NULL, NULL);
INSERT INTO `ingredient` VALUES (206, '$caramelizedOnion', NULL, 69);
INSERT INTO `ingredient` VALUES (207, '$giltHeadBream', 2, NULL);
INSERT INTO `ingredient` VALUES (208, '$greekYogurt', 11, NULL);
INSERT INTO `ingredient` VALUES (209, '$freshMint', 10, NULL);
INSERT INTO `ingredient` VALUES (210, '$panko', 17, NULL);
INSERT INTO `ingredient` VALUES (211, '$semicuredCheese', 8, NULL);
INSERT INTO `ingredient` VALUES (212, '$tzatziki', 16, 71);
INSERT INTO `ingredient` VALUES (213, '$friedOnion', NULL, NULL);
INSERT INTO `ingredient` VALUES (214, '$eggplant', 3, NULL);
INSERT INTO `ingredient` VALUES (215, '$yogurt', 11, NULL);
INSERT INTO `ingredient` VALUES (216, '$blackGarlic', 5, NULL);
INSERT INTO `ingredient` VALUES (217, '$parmesanCrust', 8, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ingredient_category
-- ----------------------------
DROP TABLE IF EXISTS `ingredient_category`;
CREATE TABLE `ingredient_category` (
  `id_ingredient_category` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ingredient_category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `ingredient_category` VALUES (24);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `ingredient_category_lang` VALUES (47, 24, 1, 'Encurtits', 'encurtits');
INSERT INTO `ingredient_category_lang` VALUES (48, 24, 2, 'Encurtidos', 'encurtidos');
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
) ENGINE=InnoDB AUTO_INCREMENT=435 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `ingredient_lang` VALUES (49, 25, 1, 'Arròs de sushi', 'arros-de-sushi');
INSERT INTO `ingredient_lang` VALUES (50, 25, 2, 'Arroz de sushi', 'arroz-de-sushi');
INSERT INTO `ingredient_lang` VALUES (51, 26, 1, 'Aigua', 'aigua');
INSERT INTO `ingredient_lang` VALUES (52, 26, 2, 'Agua', 'agua');
INSERT INTO `ingredient_lang` VALUES (53, 27, 1, 'Gohan (arròs japonés)', 'gohan-arros-japones');
INSERT INTO `ingredient_lang` VALUES (54, 27, 2, 'Gohan (arroz japonés)', 'gohan-arroz-japones');
INSERT INTO `ingredient_lang` VALUES (55, 28, 1, 'Porro (part blanca)', 'porro-part-blanca');
INSERT INTO `ingredient_lang` VALUES (56, 28, 2, 'Puerro (parte blanca)', 'puerro-parte-blanca');
INSERT INTO `ingredient_lang` VALUES (57, 29, 1, 'Kombu', 'kombu');
INSERT INTO `ingredient_lang` VALUES (58, 29, 2, 'Kombu', 'kombu');
INSERT INTO `ingredient_lang` VALUES (59, 30, 1, 'Katsuobushi', 'katsuobushi');
INSERT INTO `ingredient_lang` VALUES (60, 30, 2, 'Katsuobushi', 'katsuobushi');
INSERT INTO `ingredient_lang` VALUES (61, 31, 1, 'Dashi', 'dashi');
INSERT INTO `ingredient_lang` VALUES (62, 31, 2, 'Dashi', 'dashi');
INSERT INTO `ingredient_lang` VALUES (63, 32, 1, 'Ous', 'ous');
INSERT INTO `ingredient_lang` VALUES (64, 32, 2, 'Huevos', 'huevos');
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
INSERT INTO `ingredient_lang` VALUES (263, 132, 1, 'Cafè soluble', 'cafe-soluble');
INSERT INTO `ingredient_lang` VALUES (264, 132, 2, 'Café soluble', 'cafe-soluble');
INSERT INTO `ingredient_lang` VALUES (265, 133, 1, 'Gel', 'gel');
INSERT INTO `ingredient_lang` VALUES (266, 133, 2, 'Hielo', 'hielo');
INSERT INTO `ingredient_lang` VALUES (267, 134, 1, 'Passata', 'passata');
INSERT INTO `ingredient_lang` VALUES (268, 134, 2, 'Passata', 'passata');
INSERT INTO `ingredient_lang` VALUES (269, 135, 1, 'Carn picada de vadella', 'carn-picada-de-vadella');
INSERT INTO `ingredient_lang` VALUES (270, 135, 2, 'Carne picada de ternera', 'carne-picada-de-ternera');
INSERT INTO `ingredient_lang` VALUES (271, 136, 1, 'Salsa barbacoa', 'salsa-barbacoa');
INSERT INTO `ingredient_lang` VALUES (272, 136, 2, 'Salsa barbacoa', 'salsa-barbacoa');
INSERT INTO `ingredient_lang` VALUES (273, 137, 1, 'Sèmola de blat', 'semola-de-blat');
INSERT INTO `ingredient_lang` VALUES (274, 137, 2, 'Sémola de trigo', 'semola-de-trigo');
INSERT INTO `ingredient_lang` VALUES (275, 138, 1, 'Tomàquet triturat', 'tomaquet-triturat');
INSERT INTO `ingredient_lang` VALUES (276, 138, 2, 'Tomate triturado', 'tomate-triturado');
INSERT INTO `ingredient_lang` VALUES (277, 139, 1, 'Quètxup', 'quetxup');
INSERT INTO `ingredient_lang` VALUES (278, 139, 2, 'Kétchup', 'ketchup');
INSERT INTO `ingredient_lang` VALUES (279, 140, 1, 'Vinagre de vi blanc', 'vinagre-de-vi-blanc');
INSERT INTO `ingredient_lang` VALUES (280, 140, 2, 'Vinagre de vino blanco', 'vinagre-de-vino-blanco');
INSERT INTO `ingredient_lang` VALUES (281, 141, 1, 'Pa d\'hamburguesa', 'pa-dhamburguesa');
INSERT INTO `ingredient_lang` VALUES (282, 141, 2, 'Pan de hamburguesa', 'pan-de-hamburguesa');
INSERT INTO `ingredient_lang` VALUES (283, 142, 1, 'Tomàquet per sucar', 'tomaquet-per-sucar');
INSERT INTO `ingredient_lang` VALUES (284, 142, 2, 'Tomate para untar', 'tomate-para-untar');
INSERT INTO `ingredient_lang` VALUES (285, 143, 1, 'Xili en pols', 'xili-en-pols');
INSERT INTO `ingredient_lang` VALUES (286, 143, 2, 'Chile en polvo', 'chile-en-polvo');
INSERT INTO `ingredient_lang` VALUES (287, 144, 1, 'Ras el hanout', 'ras-el-hanout');
INSERT INTO `ingredient_lang` VALUES (288, 144, 2, 'Ras el hanout', 'ras-el-hanout');
INSERT INTO `ingredient_lang` VALUES (289, 145, 1, 'Caldo de pollastre', 'caldo-de-pollastre');
INSERT INTO `ingredient_lang` VALUES (290, 145, 2, 'Caldo de pollo', 'caldo-de-pollo');
INSERT INTO `ingredient_lang` VALUES (291, 146, 1, 'Caldo de verdures', 'caldo-de-verdures');
INSERT INTO `ingredient_lang` VALUES (292, 146, 2, 'Caldo de verduras', 'caldo-de-verduras');
INSERT INTO `ingredient_lang` VALUES (293, 147, 1, 'Pasta per gyozas', 'pasta-per-gyozas');
INSERT INTO `ingredient_lang` VALUES (294, 147, 2, 'Pasta para gyozas', 'pasta-para-gyozas');
INSERT INTO `ingredient_lang` VALUES (295, 148, 1, 'Massa per empanadilles', 'massa-per-empanadilles');
INSERT INTO `ingredient_lang` VALUES (296, 148, 2, 'Masa para empanadillas', 'masa-para-empanadillas');
INSERT INTO `ingredient_lang` VALUES (297, 149, 1, 'Cansalada de porc', 'cansalada-de-porc');
INSERT INTO `ingredient_lang` VALUES (298, 149, 2, 'Panceta de cerdo', 'panceta-de-cerdo');
INSERT INTO `ingredient_lang` VALUES (299, 150, 1, 'Col xina', 'col-xina');
INSERT INTO `ingredient_lang` VALUES (300, 150, 2, 'Col china', 'col-china');
INSERT INTO `ingredient_lang` VALUES (301, 151, 1, 'Gingebre', 'gingebre');
INSERT INTO `ingredient_lang` VALUES (302, 151, 2, 'Jengibre', 'jengibre');
INSERT INTO `ingredient_lang` VALUES (303, 152, 1, 'Sake', 'sake');
INSERT INTO `ingredient_lang` VALUES (304, 152, 2, 'Sake', 'sake');
INSERT INTO `ingredient_lang` VALUES (305, 153, 1, 'Salsa d\'ostra', 'salsa-dostra');
INSERT INTO `ingredient_lang` VALUES (306, 153, 2, 'Salsa de ostra', 'salsa-de-ostra');
INSERT INTO `ingredient_lang` VALUES (309, 155, 1, 'Aletes de pollastre', 'aletes-de-pollastre');
INSERT INTO `ingredient_lang` VALUES (310, 155, 2, 'Alitas de pollo', 'alitas-de-pollo');
INSERT INTO `ingredient_lang` VALUES (311, 156, 1, 'Caiena', 'caiena');
INSERT INTO `ingredient_lang` VALUES (312, 156, 2, 'Cayena', 'cayena');
INSERT INTO `ingredient_lang` VALUES (313, 157, 1, 'Nyora', 'nyora');
INSERT INTO `ingredient_lang` VALUES (314, 157, 2, 'Ñora', 'nora');
INSERT INTO `ingredient_lang` VALUES (315, 158, 1, 'Pasta de nyora', 'pasta-de-nyora');
INSERT INTO `ingredient_lang` VALUES (316, 158, 2, 'Pasta de ñora', 'pasta-de-nora');
INSERT INTO `ingredient_lang` VALUES (317, 159, 1, 'Brandy', 'brandy');
INSERT INTO `ingredient_lang` VALUES (318, 159, 2, 'Brandy', 'brandy');
INSERT INTO `ingredient_lang` VALUES (319, 160, 1, 'Porro (part verda)', 'porro-part-verda');
INSERT INTO `ingredient_lang` VALUES (320, 160, 2, 'Puerro (parte verde)', 'puerro-parte-verde');
INSERT INTO `ingredient_lang` VALUES (321, 161, 1, 'Nyoquis', 'nyoquis');
INSERT INTO `ingredient_lang` VALUES (322, 161, 2, 'Ñoquis', 'noquis');
INSERT INTO `ingredient_lang` VALUES (323, 162, 1, 'Bacó', 'baco');
INSERT INTO `ingredient_lang` VALUES (324, 162, 2, 'Bacon', 'bacon');
INSERT INTO `ingredient_lang` VALUES (325, 163, 1, 'Fècula de patata', 'fecula-de-patata');
INSERT INTO `ingredient_lang` VALUES (326, 163, 2, 'Almidón de patata', 'almidon-de-patata');
INSERT INTO `ingredient_lang` VALUES (327, 164, 1, 'Film transparent', 'film-transparent');
INSERT INTO `ingredient_lang` VALUES (328, 164, 2, 'Film transparente', 'film-transparente');
INSERT INTO `ingredient_lang` VALUES (329, 165, 1, 'Motlle de 8cm de diàmetre', 'motlle-de-8cm-de-diametre');
INSERT INTO `ingredient_lang` VALUES (330, 165, 2, 'Molde de 8cm de diámetro', 'molde-de-8cm-de-diametro');
INSERT INTO `ingredient_lang` VALUES (331, 166, 1, 'Corró', 'corro');
INSERT INTO `ingredient_lang` VALUES (332, 166, 2, 'Rodillo', 'rodillo');
INSERT INTO `ingredient_lang` VALUES (333, 167, 1, 'Tàperes encurtides', 'taperes-encurtides');
INSERT INTO `ingredient_lang` VALUES (334, 167, 2, 'Alcaparras encurtidas', 'alcaparras-encurtidas');
INSERT INTO `ingredient_lang` VALUES (335, 168, 1, 'Cogombres encurtits', 'cogombres-encurtits');
INSERT INTO `ingredient_lang` VALUES (336, 168, 2, 'Pepinillos encurtidos', 'pepinillos-encurtidos');
INSERT INTO `ingredient_lang` VALUES (337, 169, 1, 'Mostassa a l\'antiga', 'mostassa-a-lantiga');
INSERT INTO `ingredient_lang` VALUES (338, 169, 2, 'Mostaza a la antigua', 'mostaza-a-la-antigua');
INSERT INTO `ingredient_lang` VALUES (339, 170, 1, 'Salsa Worcestershire', 'salsa-worcestershire');
INSERT INTO `ingredient_lang` VALUES (340, 170, 2, 'Salsa Worcestershire', 'salsa-worcestershire');
INSERT INTO `ingredient_lang` VALUES (341, 171, 1, 'Salsa Perrins', 'salsa-perrins');
INSERT INTO `ingredient_lang` VALUES (342, 171, 2, 'Salsa Perrins', 'salsa-perrins');
INSERT INTO `ingredient_lang` VALUES (343, 172, 1, 'Tabasco', 'tabasco');
INSERT INTO `ingredient_lang` VALUES (344, 172, 2, 'Tabasco', 'tabasco');
INSERT INTO `ingredient_lang` VALUES (345, 173, 1, 'Arròs basmati', 'arros-basmati');
INSERT INTO `ingredient_lang` VALUES (346, 173, 2, 'Arroz basmati', 'arroz-basmati');
INSERT INTO `ingredient_lang` VALUES (347, 174, 1, 'Feta', 'feta');
INSERT INTO `ingredient_lang` VALUES (348, 174, 2, 'Feta', 'feta');
INSERT INTO `ingredient_lang` VALUES (349, 175, 1, 'Botifarra', 'botifarra');
INSERT INTO `ingredient_lang` VALUES (350, 175, 2, 'Butifarra', 'butifarra');
INSERT INTO `ingredient_lang` VALUES (351, 176, 1, 'Magret d\'ànec', 'magret-danec');
INSERT INTO `ingredient_lang` VALUES (352, 176, 2, 'Magret de pato', 'magret-de-pato');
INSERT INTO `ingredient_lang` VALUES (353, 177, 1, 'Fideus nº4', 'fideus-n4');
INSERT INTO `ingredient_lang` VALUES (354, 177, 2, 'Fideos nº4', 'fideos-n4');
INSERT INTO `ingredient_lang` VALUES (355, 178, 1, 'Trompetes de la mort seques', 'trompetes-de-la-mort-seques');
INSERT INTO `ingredient_lang` VALUES (356, 178, 2, 'Trompetas de la muerte secas', 'trompetas-de-la-muerte-secas');
INSERT INTO `ingredient_lang` VALUES (357, 179, 1, 'Sobrassada', 'sobrassada');
INSERT INTO `ingredient_lang` VALUES (358, 179, 2, 'Sobrasada', 'sobrasada');
INSERT INTO `ingredient_lang` VALUES (359, 180, 1, 'Caldo d\'escudella', 'caldo-descudella');
INSERT INTO `ingredient_lang` VALUES (360, 180, 2, 'Caldo de cocido', 'caldo-de-cocido');
INSERT INTO `ingredient_lang` VALUES (361, 181, 1, 'Pa de motlle', 'pa-de-motlle');
INSERT INTO `ingredient_lang` VALUES (362, 181, 2, 'Pan de molde', 'pan-de-molde');
INSERT INTO `ingredient_lang` VALUES (363, 182, 1, 'Julivert', 'julivert');
INSERT INTO `ingredient_lang` VALUES (364, 182, 2, 'Perejil', 'perejil');
INSERT INTO `ingredient_lang` VALUES (365, 183, 1, 'Cebetes encurtides', 'cebetes-encurtides');
INSERT INTO `ingredient_lang` VALUES (366, 183, 2, 'Cebollitas encurtidas', 'cebollitas-encurtidas');
INSERT INTO `ingredient_lang` VALUES (367, 184, 1, 'Ametlla', 'ametlla');
INSERT INTO `ingredient_lang` VALUES (368, 184, 2, 'Almendra', 'almendra');
INSERT INTO `ingredient_lang` VALUES (369, 185, 1, 'Jengibre', 'jengibre');
INSERT INTO `ingredient_lang` VALUES (370, 185, 2, 'Jengibre', 'jengibre');
INSERT INTO `ingredient_lang` VALUES (371, 186, 1, 'Llom de porc', 'llom-de-porc');
INSERT INTO `ingredient_lang` VALUES (372, 186, 2, 'Lomo de cerdo', 'lomo-de-cerdo');
INSERT INTO `ingredient_lang` VALUES (373, 187, 1, 'Sucre bru', 'sucre-bru');
INSERT INTO `ingredient_lang` VALUES (374, 187, 2, 'Azúcar moreno', 'azucar-moreno');
INSERT INTO `ingredient_lang` VALUES (375, 188, 1, 'Olla a pressió', 'olla-a-pressio');
INSERT INTO `ingredient_lang` VALUES (376, 188, 2, 'Olla a presión', 'olla-a-presion');
INSERT INTO `ingredient_lang` VALUES (377, 189, 1, 'Pasta fil·lo', 'pasta-fillo');
INSERT INTO `ingredient_lang` VALUES (378, 189, 2, 'Masa filo', 'masa-filo');
INSERT INTO `ingredient_lang` VALUES (379, 190, 1, 'Ceba vermella', 'ceba-vermella');
INSERT INTO `ingredient_lang` VALUES (380, 190, 2, 'Cebolla morada', 'cebolla-morada');
INSERT INTO `ingredient_lang` VALUES (381, 191, 1, 'Ceba vermella encurtida', 'ceba-vermella-encurtida');
INSERT INTO `ingredient_lang` VALUES (382, 191, 2, 'Cebolla morada encurtida', 'cebolla-morada-encurtida');
INSERT INTO `ingredient_lang` VALUES (383, 192, 1, 'Pebre negre en grà', 'pebre-negre-en-gra');
INSERT INTO `ingredient_lang` VALUES (384, 192, 2, 'Pimienta negra en grano', 'pimienta-negra-en-grano');
INSERT INTO `ingredient_lang` VALUES (385, 193, 1, 'Pot de vidre', 'pot-de-vidre');
INSERT INTO `ingredient_lang` VALUES (386, 193, 2, 'Bote de cristal', 'bote-de-cristal');
INSERT INTO `ingredient_lang` VALUES (387, 194, 1, 'Pulled pork', 'pulled-pork');
INSERT INTO `ingredient_lang` VALUES (388, 194, 2, 'Pulled pork', 'pulled-pork');
INSERT INTO `ingredient_lang` VALUES (389, 195, 1, 'Bao', 'bao');
INSERT INTO `ingredient_lang` VALUES (390, 195, 2, 'Bao', 'bao');
INSERT INTO `ingredient_lang` VALUES (391, 196, 1, 'Carbassa⁠', 'carbassa');
INSERT INTO `ingredient_lang` VALUES (392, 196, 2, 'Calabaza⁠', 'calabaza');
INSERT INTO `ingredient_lang` VALUES (393, 197, 1, 'Llet de coco', 'llet-de-coco');
INSERT INTO `ingredient_lang` VALUES (394, 197, 2, 'Leche de coco', 'leche-de-coco');
INSERT INTO `ingredient_lang` VALUES (395, 198, 1, 'Arròs', 'arros');
INSERT INTO `ingredient_lang` VALUES (396, 198, 2, 'Arroz', 'arroz');
INSERT INTO `ingredient_lang` VALUES (397, 199, 1, 'Ceps deshidratats', 'ceps-deshidratats');
INSERT INTO `ingredient_lang` VALUES (398, 199, 2, 'Boletus deshidratados', 'boletus-deshidratados');
INSERT INTO `ingredient_lang` VALUES (399, 200, 1, 'Filet de vadella', 'filet-de-vadella');
INSERT INTO `ingredient_lang` VALUES (400, 200, 2, 'Solomillo de ternera', 'solomillo-de-ternera');
INSERT INTO `ingredient_lang` VALUES (401, 201, 1, 'Filet de bou', 'filet-de-bou');
INSERT INTO `ingredient_lang` VALUES (402, 201, 2, 'Solomillo de buey', 'solomillo-de-buey');
INSERT INTO `ingredient_lang` VALUES (403, 202, 1, 'Xampinyons', 'xampinyons');
INSERT INTO `ingredient_lang` VALUES (404, 202, 2, 'Champiñones', 'champinones');
INSERT INTO `ingredient_lang` VALUES (405, 203, 1, 'Foie', 'foie');
INSERT INTO `ingredient_lang` VALUES (406, 203, 2, 'Foie', 'foie');
INSERT INTO `ingredient_lang` VALUES (407, 204, 1, 'Pernil salat', 'pernil-salat');
INSERT INTO `ingredient_lang` VALUES (408, 204, 2, 'Jamón serrano', 'jamon-serrano');
INSERT INTO `ingredient_lang` VALUES (409, 205, 1, 'Llevat fresc', 'llevat-fresc');
INSERT INTO `ingredient_lang` VALUES (410, 205, 2, 'Levadura fresca', 'levadura-fresca');
INSERT INTO `ingredient_lang` VALUES (411, 206, 1, 'Ceba caramel·litzada', 'ceba-caramellitzada');
INSERT INTO `ingredient_lang` VALUES (412, 206, 2, 'Cebolla caramelizada', 'cebolla-caramelizada');
INSERT INTO `ingredient_lang` VALUES (413, 207, 1, 'Orada', 'orada');
INSERT INTO `ingredient_lang` VALUES (414, 207, 2, 'Dorada', 'dorada');
INSERT INTO `ingredient_lang` VALUES (415, 208, 1, 'Iogurt grec', 'iogurt-grec');
INSERT INTO `ingredient_lang` VALUES (416, 208, 2, 'Yogur griego', 'yogur-griego');
INSERT INTO `ingredient_lang` VALUES (417, 209, 1, 'Menta fresca', 'menta-fresca');
INSERT INTO `ingredient_lang` VALUES (418, 209, 2, 'Menta fresca', 'menta-fresca');
INSERT INTO `ingredient_lang` VALUES (419, 210, 1, 'Panko', 'panko');
INSERT INTO `ingredient_lang` VALUES (420, 210, 2, 'Panko', 'panko');
INSERT INTO `ingredient_lang` VALUES (421, 211, 1, 'Formatge semicurat', 'formatge-semicurat');
INSERT INTO `ingredient_lang` VALUES (422, 211, 2, 'Queso semicurado', 'queso-semicurado');
INSERT INTO `ingredient_lang` VALUES (423, 212, 1, 'Tzatziki', 'tzatziki');
INSERT INTO `ingredient_lang` VALUES (424, 212, 2, 'Tzatziki', 'tzatziki');
INSERT INTO `ingredient_lang` VALUES (425, 213, 1, 'Ceba fregida', 'ceba-fregida');
INSERT INTO `ingredient_lang` VALUES (426, 213, 2, 'Cebolla frita', 'cebolla-frita');
INSERT INTO `ingredient_lang` VALUES (427, 214, 1, 'Albergínia', 'alberginia');
INSERT INTO `ingredient_lang` VALUES (428, 214, 2, 'Berenjena', 'berenjena');
INSERT INTO `ingredient_lang` VALUES (429, 215, 1, 'Iogurt', 'iogurt');
INSERT INTO `ingredient_lang` VALUES (430, 215, 2, 'Yogur', 'yogur');
INSERT INTO `ingredient_lang` VALUES (431, 216, 1, 'All negre', 'all-negre');
INSERT INTO `ingredient_lang` VALUES (432, 216, 2, 'Ajo negro', 'ajo-negro');
INSERT INTO `ingredient_lang` VALUES (433, 217, 1, 'Escorça de parmesà', 'escorca-de-parmesa');
INSERT INTO `ingredient_lang` VALUES (434, 217, 2, 'Corteza de parmesano', 'corteza-de-parmesano');
COMMIT;

-- ----------------------------
-- Table structure for recipe
-- ----------------------------
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe` (
  `id_recipe` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_difficulty` tinyint(3) unsigned NOT NULL,
  `diners` tinyint(3) unsigned DEFAULT NULL,
  `prep_time` smallint(6) DEFAULT NULL,
  `cook_time` smallint(6) DEFAULT NULL,
  `rest_time` smallint(6) DEFAULT NULL,
  `image` mediumint(8) unsigned DEFAULT NULL,
  `is_highlighted` tinyint(1) unsigned DEFAULT 0,
  `is_visible` tinyint(1) unsigned DEFAULT 0,
  `link` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_recipe`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of recipe
-- ----------------------------
BEGIN;
INSERT INTO `recipe` VALUES (1, 1, NULL, 30, 15, NULL, NULL, 0, 1, 'http://www.nomecomesnada.es/tapenade-de-tomates-secos-y-queso-de-cabra/', '2020-09-02 13:52:42');
INSERT INTO `recipe` VALUES (2, 1, 4, NULL, 60, NULL, NULL, 0, 1, 'https://tasty.co/recipe/one-pot-chicken-spinach-bacon-alfredo', '2020-10-14 16:16:32');
INSERT INTO `recipe` VALUES (3, 1, 4, 5, NULL, NULL, 11, 0, 1, NULL, '2020-10-15 16:54:38');
INSERT INTO `recipe` VALUES (4, 1, 2, 55, 40, NULL, 3, 1, 1, NULL, '2020-10-16 13:06:45');
INSERT INTO `recipe` VALUES (5, 1, 2, 10, 20, 30, 2, 0, 1, NULL, '2020-10-16 13:13:34');
INSERT INTO `recipe` VALUES (6, 1, 0, 45, 15, NULL, 12, 0, 1, NULL, '2020-10-16 14:31:42');
INSERT INTO `recipe` VALUES (7, 1, 2, 15, 5, NULL, NULL, 0, 1, 'https://www.instagram.com/p/CFsLgWohr5k/', '2022-03-16 18:35:12');
INSERT INTO `recipe` VALUES (8, 1, 2, 5, NULL, NULL, NULL, 0, 1, 'https://www.instagram.com/p/CCih-Nvq4ww/', '2022-03-16 18:58:55');
INSERT INTO `recipe` VALUES (9, 1, 8, 15, 10, NULL, 49, 1, 1, 'https://www.instagram.com/p/B7ZLOybCvz_/', '2022-03-16 19:19:37');
INSERT INTO `recipe` VALUES (10, 1, 2, 15, 270, NULL, NULL, 0, 1, 'https://www.instagram.com/p/CWp_wJnolFA/', '2022-03-16 19:37:04');
INSERT INTO `recipe` VALUES (11, 2, 4, 30, NULL, 120, 43, 0, 1, 'https://chefincamicia.com/ricetta/tiramisu-pistacchio-cioccolato-bianco/', '2022-03-16 19:40:06');
INSERT INTO `recipe` VALUES (12, 1, 1, 5, 5, NULL, 0, 0, 1, 'https://www.instagram.com/p/CMQJ_i6L42p/', '2022-03-16 19:45:10');
INSERT INTO `recipe` VALUES (13, 1, 1, 20, 20, NULL, NULL, 0, 1, 'https://www.instagram.com/p/CNcLLYLBHGz/', '2022-03-16 19:46:59');
INSERT INTO `recipe` VALUES (14, 1, 4, 45, 45, NULL, 48, 0, 1, NULL, '2022-03-16 19:52:27');
INSERT INTO `recipe` VALUES (15, 1, 2, 10, 30, NULL, NULL, 0, 1, 'https://www.instagram.com/p/B0bHFpPDyMG/', '2022-03-16 19:54:10');
INSERT INTO `recipe` VALUES (16, 1, 8, 30, NULL, 60, 19, 1, 1, 'https://www.instagram.com/p/CLo8pkIgM5n/', '2022-03-16 19:55:48');
INSERT INTO `recipe` VALUES (17, 3, 0, 0, 0, NULL, NULL, 0, 0, 'https://www.instagram.com/p/B9Ty0R5CyWZ/', '2022-03-16 19:57:06');
INSERT INTO `recipe` VALUES (18, 1, 1, 10, 10, NULL, 39, 0, 1, 'https://www.instagram.com/p/BvE20Uki8Ih/', '2022-03-16 19:58:27');
INSERT INTO `recipe` VALUES (19, 1, 1, 15, 10, NULL, 40, 0, 1, NULL, '2022-03-16 19:59:51');
INSERT INTO `recipe` VALUES (20, 1, 2, 10, 15, NULL, 41, 1, 1, 'https://www.instagram.com/p/BlVytV8nryM/', '2022-03-16 20:01:38');
INSERT INTO `recipe` VALUES (21, 1, 2, 20, 20, 30, 36, 0, 1, 'https://chefincamicia.com/ricetta/panino-pollo-balsamico/', '2022-03-16 20:02:53');
INSERT INTO `recipe` VALUES (23, 1, 0, 0, 0, NULL, NULL, 0, 0, 'https://www.instagram.com/p/B1lyJ96jDVt/', '2022-03-16 20:06:47');
INSERT INTO `recipe` VALUES (24, 1, 6, 5, NULL, NULL, 38, 0, 1, NULL, '2022-03-16 20:09:16');
INSERT INTO `recipe` VALUES (25, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 'https://www.instagram.com/p/CAZ5oWmoVdx/', '2022-03-16 20:10:22');
INSERT INTO `recipe` VALUES (26, 1, 2, 10, NULL, NULL, 35, 1, 1, 'https://chefincamicia.com/ricetta/panino-morbido-con-mortadella/', '2022-03-16 20:12:02');
INSERT INTO `recipe` VALUES (27, 1, 0, 0, 0, NULL, NULL, 0, 0, 'https://www.directoalpaladar.com/recetas-de-carnes-y-aves/receta-de-pollo-a-la-crema-con-tomates-secos', '2022-03-16 20:13:56');
INSERT INTO `recipe` VALUES (28, 1, 2, 10, 30, 60, NULL, 0, 1, NULL, '2022-03-16 20:14:46');
INSERT INTO `recipe` VALUES (29, 1, 4, 5, 20, NULL, NULL, 0, 1, 'https://www.tasteofhome.com/recipes/french-market-sandwiches/', '2022-03-16 20:17:40');
INSERT INTO `recipe` VALUES (30, 1, 0, 0, 0, NULL, NULL, 0, 0, 'https://www.directoalpaladar.com/cultura-gastronomica/que-raclette-suiza-como-se-prepara', '2022-03-16 20:21:02');
INSERT INTO `recipe` VALUES (31, 1, 4, NULL, NULL, NULL, NULL, 0, 1, 'https://www.recetasderechupete.com/tartar-de-salmon-al-estilo-clasico-receta-paso-a-paso/10154/', '2022-03-16 20:22:08');
INSERT INTO `recipe` VALUES (32, 1, 2, 5, 10, NULL, NULL, 0, 1, 'https://www.shanazrafiq.com/2016/01/street-style-masala-egg-bun-bun-omelet/', '2022-03-16 20:23:49');
INSERT INTO `recipe` VALUES (33, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 'https://www.chinasichuanfood.com/biang-biang-mian-biang-biang-noodles/', '2022-03-16 20:25:46');
INSERT INTO `recipe` VALUES (34, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 'https://www.instagram.com/p/CFFIOq1AFnd/', '2022-03-16 20:27:49');
INSERT INTO `recipe` VALUES (35, 1, 0, 0, 0, NULL, NULL, 0, 0, 'https://www.instagram.com/p/CBK3OaugsSl/', '2022-03-16 20:29:19');
INSERT INTO `recipe` VALUES (36, 1, 0, 0, 0, NULL, NULL, 0, 0, 'https://www.instagram.com/p/CNR9UKyhxOS/', '2022-03-16 20:31:25');
INSERT INTO `recipe` VALUES (38, 1, 0, 0, 0, NULL, NULL, 0, 0, 'https://www.instagram.com/p/CFFUnuoFhQf/', '2022-03-16 20:35:56');
INSERT INTO `recipe` VALUES (39, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 'https://www.instagram.com/p/CPIso5gq8g9/', '2022-03-16 20:37:22');
INSERT INTO `recipe` VALUES (40, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 'https://www.instagram.com/p/Bx7GHJrnwj-/', '2022-03-16 20:38:19');
INSERT INTO `recipe` VALUES (41, 1, NULL, 15, 60, NULL, NULL, 0, 1, 'https://www.instagram.com/p/CJgNZwBAOTN/', '2022-03-16 20:40:03');
INSERT INTO `recipe` VALUES (43, 1, 4, 45, 60, NULL, 37, 0, 1, NULL, '2022-09-05 12:45:32');
INSERT INTO `recipe` VALUES (44, 1, NULL, 5, NULL, NULL, NULL, 0, 1, NULL, '2022-09-05 13:26:38');
INSERT INTO `recipe` VALUES (45, 2, 4, 10, 20, 30, 25, 0, 1, NULL, '2022-09-05 15:22:25');
INSERT INTO `recipe` VALUES (46, 1, NULL, 10, NULL, NULL, 27, 0, 1, 'https://www.justonecookbook.com/japanese-mayonnaise/', '2022-09-05 15:57:35');
INSERT INTO `recipe` VALUES (47, 1, 4, 20, 10, NULL, NULL, 0, 1, 'https://www.instagram.com/p/CYQ92SFlRn2/', '2022-09-07 13:09:35');
INSERT INTO `recipe` VALUES (49, 1, 4, 15, NULL, 120, 31, 0, 1, NULL, '2022-09-13 12:50:39');
INSERT INTO `recipe` VALUES (50, 1, 2, 10, 20, NULL, NULL, 0, 0, 'https://www.instagram.com/p/CeqCpGRoxW8/', '2022-09-13 16:27:55');
INSERT INTO `recipe` VALUES (51, 1, 4, 20, 25, NULL, 55, 0, 1, NULL, '2022-09-14 10:33:09');
INSERT INTO `recipe` VALUES (52, 1, 1, 10, NULL, NULL, 34, 0, 1, NULL, '2022-10-02 19:46:41');
INSERT INTO `recipe` VALUES (53, 1, NULL, 5, NULL, 60, NULL, 0, 1, NULL, '2022-11-09 19:16:22');
INSERT INTO `recipe` VALUES (54, 1, 4, 20, 20, NULL, NULL, 0, 1, NULL, '2022-11-25 18:07:52');
INSERT INTO `recipe` VALUES (55, 2, 6, 45, 15, NULL, NULL, 0, 1, NULL, '2022-11-26 15:24:17');
INSERT INTO `recipe` VALUES (56, 2, 6, 60, NULL, 30, NULL, 0, 1, 'https://www.justonecookbook.com/gyoza-wrappers/', '2022-11-26 15:29:36');
INSERT INTO `recipe` VALUES (57, 2, 2, 10, 150, NULL, 45, 0, 1, 'https://canalcocina.es/receta/alitas-infierno', '2022-11-26 15:49:22');
INSERT INTO `recipe` VALUES (58, 1, 5, 5, 80, NULL, 44, 0, 1, NULL, '2022-11-26 16:55:23');
INSERT INTO `recipe` VALUES (59, 1, 2, 5, 15, NULL, 46, 0, 1, NULL, '2022-12-17 13:40:46');
INSERT INTO `recipe` VALUES (60, 2, 6, 30, 60, 15, 47, 0, 1, 'https://www.instagram.com/p/CZmSoI6lO8Q/', '2023-01-04 17:47:49');
INSERT INTO `recipe` VALUES (61, 1, 1, 10, 5, NULL, 50, 0, 1, 'https://www.instagram.com/p/B5a2KGKqZuN/', '2023-01-16 12:59:10');
INSERT INTO `recipe` VALUES (62, 2, 8, 15, 90, NULL, NULL, 1, 1, 'https://www.justonecookbook.com/instant-pot-asian-pulled-pork/', '2023-01-16 13:15:00');
INSERT INTO `recipe` VALUES (63, 1, 8, 45, 60, NULL, 51, 0, 1, 'https://elcomidista.elpais.com/elcomidista/2011/11/10/articulo/1320904800_132090.html', '2023-01-16 16:03:12');
INSERT INTO `recipe` VALUES (64, 1, NULL, 10, NULL, 120, 52, 0, 1, NULL, '2022-12-08 16:37:07');
INSERT INTO `recipe` VALUES (65, 2, 2, 5, 15, NULL, 54, 0, 1, NULL, '2023-01-16 16:55:07');
INSERT INTO `recipe` VALUES (66, 1, 3, 15, 45, NULL, 56, 0, 1, NULL, '2023-03-02 16:02:13');
INSERT INTO `recipe` VALUES (67, 3, 8, 30, 80, 120, 57, 1, 1, NULL, '2023-03-10 13:28:37');
INSERT INTO `recipe` VALUES (68, 1, 4, 15, 12, 240, 58, 0, 1, NULL, '2023-03-28 16:05:50');
INSERT INTO `recipe` VALUES (69, 1, 2, 5, 45, NULL, NULL, 0, 1, NULL, '2023-04-24 17:30:45');
INSERT INTO `recipe` VALUES (70, 1, 2, 10, 60, NULL, 62, 0, 1, NULL, '2023-05-04 10:50:56');
INSERT INTO `recipe` VALUES (71, 1, 4, 10, NULL, 60, NULL, 0, 1, 'https://www.lauralopezmon.es/recetario/salsa-de-yogur-griega-tzatziki-sabes-el-truco-12084', '2023-05-19 10:22:54');
INSERT INTO `recipe` VALUES (72, 1, 6, 30, 20, NULL, 63, 0, 1, 'https://www.instagram.com/p/CpkpqzNA9VA/', '2023-05-20 10:43:41');
INSERT INTO `recipe` VALUES (73, 1, 4, 20, 40, 90, 64, 0, 1, 'https://www.penguinlibros.com/es/cocina/310289-ebook-nopi-9788418681547', '2023-05-23 13:17:56');
INSERT INTO `recipe` VALUES (74, 1, 4, 1, 4, NULL, 65, 0, 1, 'https://www.instagram.com/p/Cpk533LIBv_/', '2023-05-23 20:20:05');
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
  `order_ingredient` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_recipe_ingredient`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `recipe_ingredient` VALUES (9, 1, NULL, 8, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (10, 1, NULL, 9, 8, 0, 0, 9);
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
INSERT INTO `recipe_ingredient` VALUES (73, 10, NULL, 22, 8, 0, 0, 10);
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
INSERT INTO `recipe_ingredient` VALUES (104, 14, '2', 74, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (105, 14, NULL, 73, 13, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (106, 14, '4', 75, 1, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (107, 14, '4', 66, 1, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (108, 14, '12', 76, 12, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (109, 14, '8', 77, 12, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (110, 14, NULL, 9, 8, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (111, 14, '1', 144, 2, 0, 1, 11);
INSERT INTO `recipe_ingredient` VALUES (112, 14, '1', 79, 2, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (113, 14, '1', 20, 10, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (114, 14, '1', 32, NULL, 0, 0, 14);
INSERT INTO `recipe_ingredient` VALUES (115, 14, '250', 59, 4, 0, 0, 15);
INSERT INTO `recipe_ingredient` VALUES (116, 14, NULL, 22, 8, 0, 0, 16);
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
INSERT INTO `recipe_ingredient` VALUES (150, 26, '1', 89, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (151, 26, '3', 98, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (152, 26, '60', 57, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (153, 26, '100', 99, 3, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (154, 26, NULL, 75, 8, 0, 0, 8);
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
INSERT INTO `recipe_ingredient` VALUES (182, 43, NULL, 112, NULL, 0, 1, 12);
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
INSERT INTO `recipe_ingredient` VALUES (227, 52, '2', 132, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (228, 52, '2', 33, 1, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (229, 52, '2', 26, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (230, 52, NULL, 15, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (231, 52, '2', 133, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (232, 52, NULL, 64, 8, 0, 1, 6);
INSERT INTO `recipe_ingredient` VALUES (233, 20, '1', 88, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (234, 20, '1', 84, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (235, 20, NULL, 44, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (236, 20, NULL, 17, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (237, 20, '1', 89, NULL, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (238, 20, NULL, 134, 8, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (239, 20, NULL, 66, 8, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (240, 19, '1', 88, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (241, 19, '1', 13, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (242, 19, '250', 135, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (243, 19, '150', 42, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (244, 19, NULL, 136, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (245, 19, NULL, 138, 8, 1, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (246, 19, '0.5', 19, NULL, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (247, 19, '60', 12, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (248, 19, NULL, 137, 8, 0, 1, 10);
INSERT INTO `recipe_ingredient` VALUES (249, 19, NULL, 92, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (250, 19, NULL, 22, 8, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (251, 19, NULL, 9, 8, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (252, 19, NULL, 73, 8, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (253, 53, '0.5', 139, 5, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (254, 53, '4', 33, 1, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (255, 53, '4', 140, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (256, 53, '4', 125, 1, 1, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (257, 32, '3', 141, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (258, 32, '3', 32, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (259, 32, '0.5', 19, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (260, 32, '1', 142, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (261, 32, '1', 144, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (262, 32, '0.5', 143, 2, 0, 1, 6);
INSERT INTO `recipe_ingredient` VALUES (263, 32, NULL, 73, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (264, 32, NULL, 22, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (265, 28, '3', 28, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (266, 28, '1', 74, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (267, 28, '25', 47, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (268, 28, '500', 145, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (269, 28, '500', 146, 4, 1, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (270, 28, NULL, 9, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (271, 56, '280', 46, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (272, 56, '0.5', 22, 2, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (273, 57, '500', 155, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (274, 57, '2', 20, 10, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (275, 57, '1', 79, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (276, 57, '1', 156, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (277, 57, '1', 157, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (278, 57, '1', 158, 2, 1, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (279, 57, '1', 54, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (280, 57, '1', 159, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (281, 57, '500', 145, 4, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (282, 57, NULL, 22, 8, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (283, 57, NULL, 9, 8, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (284, 57, NULL, 73, 8, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (285, 54, '3', 160, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (286, 54, '250', 130, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (287, 54, NULL, 47, 8, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (288, 54, NULL, 9, 8, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (289, 54, NULL, 22, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (290, 58, '1000', 161, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (291, 58, '300', 162, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (292, 58, '1000', 66, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (293, 58, '4', 20, 10, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (294, 58, '360', 4, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (295, 58, NULL, 73, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (296, 55, '30', 147, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (297, 55, '30', 148, NULL, 1, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (298, 55, '200', 149, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (299, 55, '1', 19, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (300, 55, '200', 150, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (301, 55, '200', 117, 3, 1, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (302, 55, '15', 151, 3, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (303, 55, '1', 20, 10, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (304, 55, '1', 152, 1, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (305, 55, '1.5', 111, 1, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (306, 55, '1', 153, 1, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (307, 55, '5', 34, 1, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (308, 55, NULL, 9, 8, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (309, 55, '2', 22, 2, 0, 0, 14);
INSERT INTO `recipe_ingredient` VALUES (310, 55, '4', 104, 1, 0, 0, 15);
INSERT INTO `recipe_ingredient` VALUES (312, 56, '120', 26, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (313, 56, NULL, 163, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (314, 56, NULL, 164, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (315, 56, '1', 165, NULL, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (316, 56, '1', 166, NULL, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (317, 55, NULL, 59, 9, 0, 0, 16);
INSERT INTO `recipe_ingredient` VALUES (318, 55, '100', 26, 4, 0, 0, 17);
INSERT INTO `recipe_ingredient` VALUES (319, 31, '500', 106, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (320, 31, '0.5', 119, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (321, 31, '30', 167, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (322, 31, '30', 168, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (323, 31, '1', 169, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (324, 31, '2', 170, 1, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (325, 31, '2', 171, 1, 1, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (326, 31, '2', 34, 1, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (327, 31, '5', 2, 1, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (328, 31, '1', 172, 2, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (329, 31, NULL, 9, 8, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (330, 31, '1', 107, NULL, 0, 1, 12);
INSERT INTO `recipe_ingredient` VALUES (331, 59, '160', 173, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (332, 59, '160', 26, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (333, 59, NULL, 144, 8, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (334, 59, NULL, 73, 9, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (335, 59, '100', 174, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (336, 59, '100', 175, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (337, 60, '2', 176, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (338, 60, '650', 177, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (339, 60, '2', 28, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (340, 60, '25', 178, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (341, 60, '2', 20, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (342, 60, '2', 179, 14, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (343, 60, '1000', 180, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (344, 60, '400', 138, 3, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (345, 60, NULL, 73, 8, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (346, 60, NULL, 22, 8, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (347, 60, NULL, 9, 8, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (348, 14, NULL, 206, 8, 0, 1, 3);
INSERT INTO `recipe_ingredient` VALUES (351, 14, NULL, 124, NULL, 0, 0, 17);
INSERT INTO `recipe_ingredient` VALUES (352, 61, '2', 181, 15, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (353, 61, '3', 98, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (354, 61, '50', 18, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (355, 61, '15', 182, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (356, 61, '3', 183, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (357, 61, '5', 184, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (358, 61, NULL, 22, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (359, 61, NULL, 9, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (360, 61, NULL, 47, 8, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (361, 62, '1', 19, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (362, 62, '30', 185, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (363, 62, '6', 20, 10, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (364, 62, '1250', 186, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (365, 62, NULL, 22, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (366, 62, NULL, 9, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (367, 62, '400', 145, 4, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (368, 62, '5', 34, 1, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (369, 62, '2', 152, 1, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (370, 62, '4', 187, 1, 0, 1, 11);
INSERT INTO `recipe_ingredient` VALUES (371, 62, NULL, 188, NULL, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (372, 62, NULL, 73, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (373, 63, '400', 14, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (374, 63, '200', 174, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (375, 63, '10', 189, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (376, 63, '2', 119, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (377, 63, '1', 32, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (378, 63, '2', 15, 1, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (379, 63, '1', 47, 1, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (380, 63, NULL, 73, NULL, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (381, 63, NULL, 22, 8, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (382, 63, NULL, 9, 8, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (383, 64, '1', 190, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (384, 64, '250', 125, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (385, 64, '250', 26, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (386, 64, '1', 22, 2, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (387, 64, '1', 33, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (388, 64, '1', 192, 2, 0, 1, 6);
INSERT INTO `recipe_ingredient` VALUES (389, 64, NULL, 193, NULL, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (390, 65, '200', 194, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (391, 65, '4', 195, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (392, 65, NULL, 112, 8, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (393, 65, NULL, 191, 8, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (394, 65, NULL, 168, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (395, 65, NULL, 73, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (396, 41, '1', 19, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (397, 41, '250', 196, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (398, 41, '400', 197, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (399, 41, NULL, 73, 8, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (400, 41, NULL, 22, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (401, 14, '500', 161, 3, 1, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (402, 66, '220', 198, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (403, 66, '50', 199, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (404, 66, '1', 19, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (406, 66, '350', 26, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (407, 66, '600', 145, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (408, 66, '50', 47, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (409, 66, '50', 54, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (410, 66, '75', 18, 3, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (411, 66, NULL, 22, 8, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (412, 67, '1000', 200, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (413, 67, '1000', 201, 3, 1, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (414, 67, '2', 19, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (415, 67, '600', 202, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (416, 67, '150', 54, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (417, 67, '15', 15, 4, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (418, 67, '15', 170, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (419, 67, '8', 204, 16, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (420, 67, '50', 203, 3, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (421, 67, NULL, 114, 8, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (422, 67, '1', 81, NULL, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (423, 67, '1', 189, 16, 0, 1, 12);
INSERT INTO `recipe_ingredient` VALUES (424, 67, '1', 32, NULL, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (425, 67, NULL, 22, 8, 0, 0, 14);
INSERT INTO `recipe_ingredient` VALUES (426, 67, NULL, 73, 8, 0, 0, 15);
INSERT INTO `recipe_ingredient` VALUES (427, 67, NULL, 164, NULL, 0, 0, 16);
INSERT INTO `recipe_ingredient` VALUES (428, 68, '250', 46, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (429, 68, '7', 205, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (430, 68, '6', 22, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (431, 68, '6', 33, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (432, 68, '125', 26, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (433, 68, '30', 73, 4, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (434, 68, '20', 15, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (435, 68, NULL, 83, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (436, 26, '2', 141, NULL, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (437, 69, '1', 19, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (438, 69, NULL, 73, 8, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (439, 69, NULL, 22, 7, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (440, 69, NULL, 125, 9, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (441, 69, '1', 26, 5, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (442, 70, '2', 207, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (443, 70, '2', 74, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (444, 70, '1', 19, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (445, 70, NULL, 73, 8, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (446, 70, NULL, 22, 8, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (447, 70, NULL, 9, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (448, 71, '250', 208, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (449, 71, '1', 108, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (450, 71, '0.5', 20, 10, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (451, 71, '3', 209, 6, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (452, 71, '2', 11, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (453, 71, '1', 2, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (454, 71, NULL, 22, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (455, 72, '500', 106, 3, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (456, 72, '2', 20, 10, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (457, 72, '1', 38, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (458, 72, '1', 39, 2, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (459, 72, '1', 22, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (460, 72, NULL, 9, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (461, 72, '70', 210, 3, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (462, 72, '70', 211, 3, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (463, 72, '6', 211, 15, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (464, 72, '6', 141, NULL, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (465, 72, '400', 212, 3, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (466, 72, '0.5', 80, NULL, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (467, 72, '1', 213, 1, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (468, 73, '2', 214, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (469, 73, '25', 216, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (470, 73, '25', 20, 3, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (471, 73, '1', 48, 2, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (472, 73, '1', 34, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (473, 73, '2', 11, 1, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (474, 73, '0.25', 68, 2, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (475, 73, '0.25', 64, 2, 0, 1, 8);
INSERT INTO `recipe_ingredient` VALUES (476, 73, '25', 73, 4, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (477, 73, '150', 215, 3, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (478, 73, '5', 7, 3, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (479, 73, '10', 24, 3, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (480, 73, NULL, 22, 8, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (481, 73, NULL, 9, 8, 0, 0, 14);
INSERT INTO `recipe_ingredient` VALUES (482, 74, '2', 217, NULL, 0, 0, 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `recipe_lang` VALUES (61, 31, 1, 'Tàrtar de salmó', 'tartar-de-salmo', NULL);
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
INSERT INTO `recipe_lang` VALUES (75, 38, 1, 'Rotllet de carbassó', 'rotllet-de-carbasso', NULL);
INSERT INTO `recipe_lang` VALUES (76, 38, 2, 'Rollito de calabacín', 'rollito-de-calabacin', NULL);
INSERT INTO `recipe_lang` VALUES (77, 39, 1, 'Hummus de pèsols i wasabi', 'hummus-de-pesols-i-wasabi', NULL);
INSERT INTO `recipe_lang` VALUES (78, 39, 2, 'Hummus de guisantes y wasabi', 'hummus-de-guisantes-y-wasabi', NULL);
INSERT INTO `recipe_lang` VALUES (79, 40, 1, 'Hummus de mongeta blanca i pèsols', 'hummus-de-mongeta-blanca-i-pesols', NULL);
INSERT INTO `recipe_lang` VALUES (80, 40, 2, 'Hummus de alubias y guisantes', 'hummus-de-alubias-y-guisantes', NULL);
INSERT INTO `recipe_lang` VALUES (81, 41, 1, 'Crema de carbassa', 'crema-de-carbassa', NULL);
INSERT INTO `recipe_lang` VALUES (82, 41, 2, 'Crema de calabaza', 'crema-de-calabaza', NULL);
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
INSERT INTO `recipe_lang` VALUES (103, 52, 1, 'Cafè dalgona', 'cafe-dalgona', NULL);
INSERT INTO `recipe_lang` VALUES (104, 52, 2, 'Café dalgona', 'cafe-dalgona', NULL);
INSERT INTO `recipe_lang` VALUES (105, 53, 1, 'Salsa barbacoa', 'salsa-barbacoa', NULL);
INSERT INTO `recipe_lang` VALUES (106, 53, 2, 'Salsa barbacoa', 'salsa-barbacoa', NULL);
INSERT INTO `recipe_lang` VALUES (107, 54, 1, 'Salsa de crema i porros', 'salsa-de-crema-i-porros', '<p>Per aprofitar la part verda del porro.</p>');
INSERT INTO `recipe_lang` VALUES (108, 54, 2, 'Salsa de crema y puerros', 'salsa-de-crema-y-puerros', '<p>Para aprovechar la parte verde del puerro.</p>');
INSERT INTO `recipe_lang` VALUES (109, 55, 1, 'Gyozas de porc', 'gyozas-de-porc', '<p>Pots preparar-ne moltes i congelar-les. Molt més bones que les que puguis comprar a qualsevol supermercat asiàtic!</p>');
INSERT INTO `recipe_lang` VALUES (110, 55, 2, 'Gyozas de cerdo', 'gyozas-de-cerdo', '<p>Puedes preparar muchas y congelarlas. ¡Mucho mejores que las que puedas comprar en cualquier supermercado asiático!</p>');
INSERT INTO `recipe_lang` VALUES (111, 56, 1, 'Pasta per gyozas', 'pasta-per-gyozas', NULL);
INSERT INTO `recipe_lang` VALUES (112, 56, 2, 'Pasta para gyozas', 'pasta-para-gyozas', NULL);
INSERT INTO `recipe_lang` VALUES (113, 57, 1, 'Aletes inferno', 'aletes-inferno', NULL);
INSERT INTO `recipe_lang` VALUES (114, 57, 2, 'Alitas inferno', 'alitas-inferno', NULL);
INSERT INTO `recipe_lang` VALUES (115, 58, 1, 'Nyoquis a la Gavaldà', 'nyoquis-a-la-gavalda', NULL);
INSERT INTO `recipe_lang` VALUES (116, 58, 2, 'Ñoquis a la Gavaldà', 'noquis-a-la-gavalda', NULL);
INSERT INTO `recipe_lang` VALUES (117, 59, 1, 'Arròs ras el hanout', 'arros-ras-el-hanout', NULL);
INSERT INTO `recipe_lang` VALUES (118, 59, 2, 'Arroz ras el hanout', 'arroz-ras-el-hanout', NULL);
INSERT INTO `recipe_lang` VALUES (119, 60, 1, 'Fideuà de Coma-ruga', 'fideua-de-coma-ruga', NULL);
INSERT INTO `recipe_lang` VALUES (120, 60, 2, 'Fideuá de Coma-ruga', 'fideua-de-coma-ruga', NULL);
INSERT INTO `recipe_lang` VALUES (121, 61, 1, 'Bikini de pesto de julivert i anxoves', 'bikini-de-pesto-de-julivert-i-anxoves', NULL);
INSERT INTO `recipe_lang` VALUES (122, 61, 2, 'Bikini de pesto de perejil y anchoas', 'bikini-de-pesto-de-perejil-y-anchoas', NULL);
INSERT INTO `recipe_lang` VALUES (123, 62, 1, 'Pulled pork a l\'estil japonès', 'pulled-pork-a-lestil-japones', NULL);
INSERT INTO `recipe_lang` VALUES (124, 62, 2, 'Pulled pork al estilo japonés', 'pulled-pork-al-estilo-japones', NULL);
INSERT INTO `recipe_lang` VALUES (125, 63, 1, 'Spanakopita', 'spanakopita', NULL);
INSERT INTO `recipe_lang` VALUES (126, 63, 2, 'Spanakopita', 'spanakopita', NULL);
INSERT INTO `recipe_lang` VALUES (127, 64, 1, 'Ceba vermella encurtida', 'ceba-vermella-encurtida', NULL);
INSERT INTO `recipe_lang` VALUES (128, 64, 2, 'Cebolla morada encurtida', 'cebolla-morada-encurtida', NULL);
INSERT INTO `recipe_lang` VALUES (129, 65, 1, 'Bao de pulled pork', 'bao-de-pulled-pork', NULL);
INSERT INTO `recipe_lang` VALUES (130, 65, 2, 'Bao de pulled pork', 'bao-de-pulled-pork', NULL);
INSERT INTO `recipe_lang` VALUES (131, 66, 1, 'Risotto de ceps', 'risotto-de-ceps', NULL);
INSERT INTO `recipe_lang` VALUES (132, 66, 2, 'Risotto de boletus', 'risotto-de-boletus', NULL);
INSERT INTO `recipe_lang` VALUES (133, 67, 1, 'Filet a la Wellington', 'filet-a-la-wellington', NULL);
INSERT INTO `recipe_lang` VALUES (134, 67, 2, 'Solomillo Wellington', 'solomillo-wellington', NULL);
INSERT INTO `recipe_lang` VALUES (135, 68, 1, 'Pa d\'hamburguesa', 'pa-dhamburguesa', '<p>Una recepta que hem de pensar a fer amb antelació, però que val la pena. Podeu fer-ne més i congelar-lo.</p>');
INSERT INTO `recipe_lang` VALUES (136, 68, 2, 'Pan de hamburguesa', 'pan-de-hamburguesa', '<p>Una receta que debemos planificar con antelación, pero que vale la pena. Puede hacer más y congelarlo.</p>');
INSERT INTO `recipe_lang` VALUES (137, 69, 1, 'Ceba caramel·litzada', 'ceba-caramellitzada', NULL);
INSERT INTO `recipe_lang` VALUES (138, 69, 2, 'Cebolla caramelizada', 'cebolla-caramelizada', NULL);
INSERT INTO `recipe_lang` VALUES (139, 70, 1, 'Orada al forn', 'orada-al-forn', '<p>Un plat saludable que pràcticament es cuina sol.</p>');
INSERT INTO `recipe_lang` VALUES (140, 70, 2, 'Dorada al horno', 'dorada-al-horno', '<p>Un plato saludable que prácticamente se cocina solo.</p>');
INSERT INTO `recipe_lang` VALUES (141, 71, 1, 'Tzatziki', 'tzatziki', NULL);
INSERT INTO `recipe_lang` VALUES (142, 71, 2, 'Tzatziki', 'tzatziki', NULL);
INSERT INTO `recipe_lang` VALUES (143, 72, 1, 'Hamburguesa de salmó', 'hamburguesa-de-salmo', NULL);
INSERT INTO `recipe_lang` VALUES (144, 72, 2, 'Hamburguesa de salmón', 'hamburguesa-de-salmon', NULL);
INSERT INTO `recipe_lang` VALUES (145, 73, 1, 'Albergínia rostida amb all', 'alberginia-rostida-amb-all', NULL);
INSERT INTO `recipe_lang` VALUES (146, 73, 2, 'Berenjena asada con ajo', 'berenjena-asada-con-ajo', NULL);
INSERT INTO `recipe_lang` VALUES (147, 74, 1, 'Crispetes de parmesà', 'crispetes-de-parmesa', '<p>Recepta de profit per excel·lència.</p>');
INSERT INTO `recipe_lang` VALUES (148, 74, 2, 'Palomitas de parmesano', 'palomitas-de-parmesano', '<p>Receta de provecho por excelencia.</p>');
COMMIT;

-- ----------------------------
-- Table structure for recipe_step
-- ----------------------------
DROP TABLE IF EXISTS `recipe_step`;
CREATE TABLE `recipe_step` (
  `id_recipe_step` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_recipe` smallint(5) unsigned NOT NULL,
  `image_step` mediumint(8) unsigned DEFAULT NULL,
  `order` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_recipe_step`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `recipe_step` VALUES (121, 52, NULL, 1);
INSERT INTO `recipe_step` VALUES (122, 52, NULL, 2);
INSERT INTO `recipe_step` VALUES (123, 20, NULL, 1);
INSERT INTO `recipe_step` VALUES (124, 20, NULL, 2);
INSERT INTO `recipe_step` VALUES (125, 20, NULL, 3);
INSERT INTO `recipe_step` VALUES (126, 20, NULL, 4);
INSERT INTO `recipe_step` VALUES (127, 19, NULL, 1);
INSERT INTO `recipe_step` VALUES (128, 19, NULL, 2);
INSERT INTO `recipe_step` VALUES (129, 19, NULL, 3);
INSERT INTO `recipe_step` VALUES (130, 19, NULL, 4);
INSERT INTO `recipe_step` VALUES (131, 19, NULL, 5);
INSERT INTO `recipe_step` VALUES (132, 19, NULL, 6);
INSERT INTO `recipe_step` VALUES (133, 19, NULL, 7);
INSERT INTO `recipe_step` VALUES (134, 19, NULL, 8);
INSERT INTO `recipe_step` VALUES (135, 53, NULL, 1);
INSERT INTO `recipe_step` VALUES (136, 32, NULL, 1);
INSERT INTO `recipe_step` VALUES (137, 32, NULL, 2);
INSERT INTO `recipe_step` VALUES (138, 32, NULL, 3);
INSERT INTO `recipe_step` VALUES (139, 32, NULL, 4);
INSERT INTO `recipe_step` VALUES (140, 28, NULL, 1);
INSERT INTO `recipe_step` VALUES (141, 28, NULL, 2);
INSERT INTO `recipe_step` VALUES (142, 28, NULL, 3);
INSERT INTO `recipe_step` VALUES (143, 28, NULL, 4);
INSERT INTO `recipe_step` VALUES (144, 28, NULL, 5);
INSERT INTO `recipe_step` VALUES (145, 57, NULL, 1);
INSERT INTO `recipe_step` VALUES (146, 57, NULL, 2);
INSERT INTO `recipe_step` VALUES (147, 57, NULL, 3);
INSERT INTO `recipe_step` VALUES (148, 57, NULL, 4);
INSERT INTO `recipe_step` VALUES (149, 57, NULL, 5);
INSERT INTO `recipe_step` VALUES (150, 57, NULL, 6);
INSERT INTO `recipe_step` VALUES (151, 54, NULL, 1);
INSERT INTO `recipe_step` VALUES (152, 54, NULL, 2);
INSERT INTO `recipe_step` VALUES (153, 54, NULL, 3);
INSERT INTO `recipe_step` VALUES (154, 54, NULL, 3);
INSERT INTO `recipe_step` VALUES (155, 58, NULL, 1);
INSERT INTO `recipe_step` VALUES (156, 58, NULL, 2);
INSERT INTO `recipe_step` VALUES (157, 58, NULL, 3);
INSERT INTO `recipe_step` VALUES (158, 58, NULL, 4);
INSERT INTO `recipe_step` VALUES (159, 58, NULL, 5);
INSERT INTO `recipe_step` VALUES (160, 58, NULL, 6);
INSERT INTO `recipe_step` VALUES (161, 58, NULL, 7);
INSERT INTO `recipe_step` VALUES (162, 55, NULL, 1);
INSERT INTO `recipe_step` VALUES (163, 55, NULL, 2);
INSERT INTO `recipe_step` VALUES (164, 55, NULL, 2);
INSERT INTO `recipe_step` VALUES (165, 56, NULL, 1);
INSERT INTO `recipe_step` VALUES (166, 56, NULL, 2);
INSERT INTO `recipe_step` VALUES (167, 56, NULL, 3);
INSERT INTO `recipe_step` VALUES (168, 56, NULL, 4);
INSERT INTO `recipe_step` VALUES (169, 56, NULL, 5);
INSERT INTO `recipe_step` VALUES (170, 55, 42, 3);
INSERT INTO `recipe_step` VALUES (171, 55, NULL, 4);
INSERT INTO `recipe_step` VALUES (172, 55, NULL, 5);
INSERT INTO `recipe_step` VALUES (173, 55, NULL, 6);
INSERT INTO `recipe_step` VALUES (174, 31, NULL, 1);
INSERT INTO `recipe_step` VALUES (175, 31, NULL, 2);
INSERT INTO `recipe_step` VALUES (176, 31, NULL, 3);
INSERT INTO `recipe_step` VALUES (177, 59, NULL, 1);
INSERT INTO `recipe_step` VALUES (178, 59, NULL, 2);
INSERT INTO `recipe_step` VALUES (179, 59, NULL, 3);
INSERT INTO `recipe_step` VALUES (180, 59, NULL, 4);
INSERT INTO `recipe_step` VALUES (181, 60, NULL, 1);
INSERT INTO `recipe_step` VALUES (182, 60, NULL, 2);
INSERT INTO `recipe_step` VALUES (183, 60, NULL, 3);
INSERT INTO `recipe_step` VALUES (184, 60, NULL, 4);
INSERT INTO `recipe_step` VALUES (185, 60, NULL, 5);
INSERT INTO `recipe_step` VALUES (186, 60, NULL, 6);
INSERT INTO `recipe_step` VALUES (187, 14, NULL, 7);
INSERT INTO `recipe_step` VALUES (188, 61, NULL, 1);
INSERT INTO `recipe_step` VALUES (189, 61, NULL, 2);
INSERT INTO `recipe_step` VALUES (190, 62, NULL, 1);
INSERT INTO `recipe_step` VALUES (191, 62, NULL, 2);
INSERT INTO `recipe_step` VALUES (192, 62, NULL, 3);
INSERT INTO `recipe_step` VALUES (193, 62, NULL, 4);
INSERT INTO `recipe_step` VALUES (194, 62, NULL, 5);
INSERT INTO `recipe_step` VALUES (195, 62, NULL, 6);
INSERT INTO `recipe_step` VALUES (196, 63, NULL, 1);
INSERT INTO `recipe_step` VALUES (197, 63, NULL, 2);
INSERT INTO `recipe_step` VALUES (198, 63, NULL, 3);
INSERT INTO `recipe_step` VALUES (199, 63, NULL, 4);
INSERT INTO `recipe_step` VALUES (200, 63, NULL, 5);
INSERT INTO `recipe_step` VALUES (201, 63, NULL, 6);
INSERT INTO `recipe_step` VALUES (202, 63, NULL, 7);
INSERT INTO `recipe_step` VALUES (203, 64, NULL, 1);
INSERT INTO `recipe_step` VALUES (204, 64, NULL, 2);
INSERT INTO `recipe_step` VALUES (205, 64, NULL, 3);
INSERT INTO `recipe_step` VALUES (206, 64, NULL, 4);
INSERT INTO `recipe_step` VALUES (207, 64, NULL, 5);
INSERT INTO `recipe_step` VALUES (208, 65, NULL, 1);
INSERT INTO `recipe_step` VALUES (209, 65, NULL, 2);
INSERT INTO `recipe_step` VALUES (210, 65, NULL, 3);
INSERT INTO `recipe_step` VALUES (211, 41, NULL, 1);
INSERT INTO `recipe_step` VALUES (212, 41, NULL, 2);
INSERT INTO `recipe_step` VALUES (213, 41, NULL, 3);
INSERT INTO `recipe_step` VALUES (214, 41, NULL, 4);
INSERT INTO `recipe_step` VALUES (215, 66, NULL, 1);
INSERT INTO `recipe_step` VALUES (216, 66, NULL, 2);
INSERT INTO `recipe_step` VALUES (217, 66, NULL, 3);
INSERT INTO `recipe_step` VALUES (218, 66, NULL, 4);
INSERT INTO `recipe_step` VALUES (219, 66, NULL, 5);
INSERT INTO `recipe_step` VALUES (220, 66, NULL, 6);
INSERT INTO `recipe_step` VALUES (221, 66, NULL, 7);
INSERT INTO `recipe_step` VALUES (222, 67, NULL, 1);
INSERT INTO `recipe_step` VALUES (223, 67, NULL, 2);
INSERT INTO `recipe_step` VALUES (224, 67, NULL, 3);
INSERT INTO `recipe_step` VALUES (225, 67, NULL, 4);
INSERT INTO `recipe_step` VALUES (226, 67, NULL, 5);
INSERT INTO `recipe_step` VALUES (227, 67, NULL, 6);
INSERT INTO `recipe_step` VALUES (228, 67, NULL, 7);
INSERT INTO `recipe_step` VALUES (229, 67, NULL, 8);
INSERT INTO `recipe_step` VALUES (230, 68, NULL, 1);
INSERT INTO `recipe_step` VALUES (231, 68, NULL, 2);
INSERT INTO `recipe_step` VALUES (232, 68, 59, 3);
INSERT INTO `recipe_step` VALUES (233, 68, 60, 4);
INSERT INTO `recipe_step` VALUES (234, 68, 61, 5);
INSERT INTO `recipe_step` VALUES (235, 68, NULL, 6);
INSERT INTO `recipe_step` VALUES (236, 69, NULL, 1);
INSERT INTO `recipe_step` VALUES (237, 69, NULL, 2);
INSERT INTO `recipe_step` VALUES (238, 70, NULL, 1);
INSERT INTO `recipe_step` VALUES (239, 70, NULL, 2);
INSERT INTO `recipe_step` VALUES (240, 70, NULL, 3);
INSERT INTO `recipe_step` VALUES (241, 70, NULL, 4);
INSERT INTO `recipe_step` VALUES (242, 70, NULL, 5);
INSERT INTO `recipe_step` VALUES (243, 71, NULL, 1);
INSERT INTO `recipe_step` VALUES (244, 71, NULL, 2);
INSERT INTO `recipe_step` VALUES (245, 71, NULL, 3);
INSERT INTO `recipe_step` VALUES (246, 72, NULL, 1);
INSERT INTO `recipe_step` VALUES (247, 72, NULL, 2);
INSERT INTO `recipe_step` VALUES (248, 72, NULL, 3);
INSERT INTO `recipe_step` VALUES (249, 72, NULL, 4);
INSERT INTO `recipe_step` VALUES (250, 72, NULL, 5);
INSERT INTO `recipe_step` VALUES (251, 73, NULL, 1);
INSERT INTO `recipe_step` VALUES (252, 73, NULL, 2);
INSERT INTO `recipe_step` VALUES (253, 73, NULL, 3);
INSERT INTO `recipe_step` VALUES (254, 73, NULL, 4);
INSERT INTO `recipe_step` VALUES (255, 73, NULL, 5);
INSERT INTO `recipe_step` VALUES (256, 73, NULL, 6);
INSERT INTO `recipe_step` VALUES (257, 74, 66, 1);
COMMIT;

-- ----------------------------
-- Table structure for recipe_step_lang
-- ----------------------------
DROP TABLE IF EXISTS `recipe_step_lang`;
CREATE TABLE `recipe_step_lang` (
  `id_recipe_step_lang` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_recipe_step` mediumint(8) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `description_step` text NOT NULL,
  PRIMARY KEY (`id_recipe_step_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `recipe_step_lang` VALUES (39, 20, 1, '<p>Preparem [5].</p><p>Tallem:</p><ul><li>el $chickenBreasts en daus d\'aproximadament 2 cm</li><li>el $leek en diagonal en trossos de 1 cm de gruix</li><li>l\'alga $nori en quadrats.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (40, 20, 2, '<p>Preparamos [5].</p><p>Cortamos:</p><ul><li>el $chickenBreasts en dados de aproximadamente 2 cm</li><li>el $leek en diagonal en trozos de 1 cm de espesor</li><li>la alga $nori en cuadrados.</li></ul>');
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
INSERT INTO `recipe_step_lang` VALUES (113, 57, 1, '<p>Preparem la ceba caramel·litzada.</p>');
INSERT INTO `recipe_step_lang` VALUES (114, 57, 2, '<p>Preparamos la cebolla caramelizada.</p>');
INSERT INTO `recipe_step_lang` VALUES (115, 58, 1, '<p>Si ho cuinem amb nyoquis: no cal fer aquest pas.</p><p>Preparem les $potato, les tallem a daus no gaire petits i salpebrem. Deixem reposar 15 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (116, 58, 2, '<p>Si lo cocinamos con ñoquis: no es necesario dar este paso.</p><p>Preparamos las $potato, las cortamos en dados no muy pequeños y salpimentamos. Dejar reposar 15 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (117, 59, 1, '<p>Mentrestant, podem preparar l\'allioli ràpid: al túrmix afegim l\'$sunflowerOil, $garlic, $egg i la $salt i ho batem a velocitat baixa mantenint el braç a l\'inferior del vas. Quan hagi començat a emulsionar, podem fer petits moviments a dalt i a baix per acabar d\'integrar-ho tot i triturar l\'all per complet.</p>');
INSERT INTO `recipe_step_lang` VALUES (118, 59, 2, '<p>Mientras tanto, podemos preparar el alioli rápido: al túrmix añadimos el $sunflowerOil, $garlic, $egg y la $salt y lo batimos a velocidad baja manteniendo el brazo en el inferior del vaso. Cuando haya empezado a emulsionar, podemos realizar pequeños movimientos arriba y abajo para acabar de integrarlo todo y triturar el ajo por completo.</p>');
INSERT INTO `recipe_step_lang` VALUES (119, 60, 1, '<p>També podem anar preparant la salsa vermella.</p><p>En un bol afegim tots els ingredients ($spicyOil, $tomatoSauce, $espinalerSauce, $vermut, $pepper, $rasElHanout, $spicyPaprika i la ceba caramel·litzada) els barregem bé i ho deixem reposar un mínim de 10 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (120, 60, 2, '<p>También podemos ir preparando la salsa roja.</p><p>En un cuenco añadimos todos los ingredientes ($spicyOil, $tomatoSauce, $espinalerSauce, $vermut, $pepper, $rasElHanout, $spicyPaprika i la cebolla caramelizada) los mezclamos bien y lo dejamos reposar un mínimo de 10 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (121, 61, 1, '<p>Si ho cuinem amb nyoquis: no cal fer aquest pas.</p><p>Passats els minuts, eliminem l\'excés d\'aigua de les patates i les fregim durant 5 minuts <b>a 150ºC</b>.<br></p><p>Les colem, les escorrem i les col·loquem en un bol que taparem amb paper d\'alumini 15 minuts més perquè s\'acabin d\'estovar per dins.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (122, 61, 2, '<p>Si lo cocinamos con ñoquis: no es necesario dar este paso.</p><p>Pasados los minutos, eliminamos el exceso de agua de las patatas y freímos durante 5 minutos <b>a 150ºC</b>.</p><p>Las colamos, las escurrimos y las colocamos en un cuenco que taparemos con papel de aluminio 15 minutos más para que se acaben de ablandar por dentro.</p>');
INSERT INTO `recipe_step_lang` VALUES (123, 62, 1, '<p>Tornem a eliminar l\'excés de líquid i fem la segona fregida de les patates <b>a 190ºC</b> durant uns 4 minuts o fins que les patates quedin daurades al nostre gust.</p>');
INSERT INTO `recipe_step_lang` VALUES (124, 62, 2, '<p>Volvemos a eliminar el exceso de líquido y hacemos la segunda fritura de las patatas <b>a 190ºC</b> durante unos 4 minutos o hasta que las patatas queden doradas a nuestro gusto.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (191, 96, 1, '<p>Piquem el $chive.</p><p>Tallem les $carrot en tires, el $cucumber en daus i l\'$avocado en làmines.</p>');
INSERT INTO `recipe_step_lang` VALUES (192, 96, 2, '<p>Picamos el $chive.</p><p>Cortamos las $carrot en tiras, el $cucumber  en dados y el $avocado en láminas.</p>');
INSERT INTO `recipe_step_lang` VALUES (193, 97, 1, '<p>Emplatem: fem un fons d\'arròs i repartim per dalt els ingredients de manera ordenada.</p><p>Opcionalment, podem afegir una mica de $cayennePowder per donar-li un toc picant.</p><p>També podem preparar una mica de $japaneseMayonnaise perquè cadascú n\'hi afegeixi al gust.</p>');
INSERT INTO `recipe_step_lang` VALUES (194, 97, 2, '<p>Emplatamos: hacemos un fondo de arroz y repartimos por arriba los ingredientes de forma ordenada.</p><p>Opcionalmente, podemos añadir algo de $cayennePowder para darle un toque picante.</p><p>También podemos preparar un poco de $japaneseMayonnaise para que cada uno la añada al gusto.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (209, 105, 1, '<p>Mentrestant, tallem la $cabbage, les $carrot i els $shittake en tires i ho incorporem a la ceba perquè s\'estovin una mica tots els ingredients.</p><p>Afegim una mica de $soySauce si volem.</p>');
INSERT INTO `recipe_step_lang` VALUES (210, 105, 2, '<p>Mientras tanto, cortamos la $cabbage, las $carrot y los $shittake en tiras y lo incorporamos a la cebolla para que se ablanden un poco todos los ingredientes.</p><p>Añadimos un poco de $soySauce si queremos.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (241, 121, 1, '<p>En un bol gran afegim el $instantCoffee, el $sugar i l\'$water i el batem amb les varilles del minipimer fins que quedi amb textura de punt de neu.</p>');
INSERT INTO `recipe_step_lang` VALUES (242, 121, 2, '<p>En un cuenco grande añadimos el $instantCoffee, el $sugar y el $water y lo batimos con las varillas del minipimer hasta que quede con textura de punto de nieve.</p>');
INSERT INTO `recipe_step_lang` VALUES (243, 122, 1, '<p>En un got afegim els $ice i la $milk. Afegim la crema de café i tamisem $pureCocoaPowder per sobre.</p><p>Ho servim imediatament per evitar que es baixi la crema.</p>');
INSERT INTO `recipe_step_lang` VALUES (244, 122, 2, '<p>En un vaso añadimos los $ice y la $milk. Añadimos la crema de café y tamizamos $pureCocoaPowder por encima.</p><p>Lo servimos inmediatamente para evitar que se baje la crema.</p>');
INSERT INTO `recipe_step_lang` VALUES (245, 123, 1, '<p>Preescalfem el forn a 220ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (246, 123, 2, '<p>Precalentamos el horno a 220ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (247, 124, 1, '<p>Escampem la $passata sobre la $pizzaDough.</p><p>Tallem els $cherryTomatoes per la meitat i els repartim.</p><p>Amanim la pizza amb $pesto.</p>');
INSERT INTO `recipe_step_lang` VALUES (248, 124, 2, '<p>Esparcimos la $pasata sobre la $pizza Dough.</p><p>Cortamos las $cherryTomatoes por la mitad y los repartimos.</p><p>Aliñamos la pizza con $pesto.</p>');
INSERT INTO `recipe_step_lang` VALUES (249, 125, 1, '<p>Enfornem la pizza durant 10min, o fins que la massa estigui torradeta i la mozzarella desfeta.</p>');
INSERT INTO `recipe_step_lang` VALUES (250, 125, 2, '<p>Horneamos la pizza durante 10min, o hasta que la masa esté tostadita y la mozzarella deshecha.</p>');
INSERT INTO `recipe_step_lang` VALUES (251, 126, 1, '<p>Retirem la pizza del forn i col·loquem la $burrata al mig: llesta per gaudir!</p>');
INSERT INTO `recipe_step_lang` VALUES (252, 126, 2, '<p>Retiramos la pizza del horno y colocamos la $burrata en medio: ¡lista para disfrutar!</p>');
INSERT INTO `recipe_step_lang` VALUES (253, 127, 1, '<p>Tallem els $chickenBreasts en daus i els salpebrem. Els saltegem en una paella amb una mica d\'oli i ho retirem del foc quan la carn estigui feta.</p>');
INSERT INTO `recipe_step_lang` VALUES (254, 127, 2, '<p>Cortamos los $chickenBreasts en dados y los salpimentamos. Los salteamos en una sartén con un poco de aceite y retiramos del fuego cuando la carne esté hecha.</p>');
INSERT INTO `recipe_step_lang` VALUES (255, 128, 1, '<p>Salpebrem la $mincedBeef. En una altra paella la saltegem amb una mica d\'oli i ho retirem del foc quan la carn estigui feta.</p>');
INSERT INTO `recipe_step_lang` VALUES (256, 128, 2, '<p>Salpimentamos la $mincedBeef. En otra sartén la salteamos con un poco de aceite y retiramos del fuego cuando la carne esté hecha.</p>');
INSERT INTO `recipe_step_lang` VALUES (257, 129, 1, '<p>Preescalfem el forn a 200ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (258, 129, 2, '<p>Precalentamos el horno a 200ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (259, 130, 1, '<p>Farcim les vores de la pizza amb les $mozzarellaBalls i fem uns plecs per segellar bé.</p>');
INSERT INTO `recipe_step_lang` VALUES (260, 130, 2, '<p>Rellenamos las bordes de la pizza con las $mozzarellaBalls y hacemos unos pligues para sellar bien.</p>');
INSERT INTO `recipe_step_lang` VALUES (261, 131, 1, '<p>Escampem la $bbqSauce o la $crushedTomato per la resta de la massa.</p><p>Repartim també la $gratedMozzarella.</p>');
INSERT INTO `recipe_step_lang` VALUES (262, 131, 2, '<p>Esparcimos la $bbqSauce o la $crushedTomato por el resto de la masa.</p><p>Repartimos también la $gratedMozzarella.</p>');
INSERT INTO `recipe_step_lang` VALUES (263, 132, 1, '<p>Tallem la $onion i la repartim també per tota la pizza.</p><p>Escampem també el pollastre, la carn i el $baconStrips tallat en trossets.</p>');
INSERT INTO `recipe_step_lang` VALUES (264, 132, 2, '<p>Cortamos la $onion y la repartimos también por toda la pizza.</p><p>Esparcimos también el pollo, la carne y el $baconStrips cortado en trocitos.</p>');
INSERT INTO `recipe_step_lang` VALUES (265, 133, 1, '<p>Per donar-li el toc final a \"Pecado carnal\", escampem la $wheatSemolina per la vora de la pizza.</p>');
INSERT INTO `recipe_step_lang` VALUES (266, 133, 2, '<p>Para darle el toque final a Pecado carnal, esparcimos la $wheatSemolina por el borde de la pizza.</p>');
INSERT INTO `recipe_step_lang` VALUES (267, 134, 1, '<p>Quan el forn estigui calent, enfornem la pizza durant uns 10-15 minuts, fins que la massa estigui cruixent i el formatge desfet.</p>');
INSERT INTO `recipe_step_lang` VALUES (268, 134, 2, '<p>Cuando el horno esté caliente, horneamos la pizza durante unos 10-15 minutos, hasta que la masa esté crujiente y el queso deshecho.</p>');
INSERT INTO `recipe_step_lang` VALUES (269, 135, 1, '<p>Mesclar bé tots els ingredients ($ketchup, $sugar, $whiteWineVinegar) i deixar-ho reposar durant una hora com a mínim.</p>');
INSERT INTO `recipe_step_lang` VALUES (270, 135, 2, '<p>Mezclar bien todos los ingredientes ($ketchup, $sugar, $white Wine Vinegar) y dejar reposar durante una hora como mínimo.</p>');
INSERT INTO `recipe_step_lang` VALUES (271, 136, 1, '<p>Piquem la ceba i el tomàquet i ho sofregim a la paella a foc mitjà amb l\'$oliveOil i la $salt.</p>');
INSERT INTO `recipe_step_lang` VALUES (272, 136, 2, '<p>Picamos la cebolla y el tomate y lo sofreímos en la sartén a fuego medio con el $oliveOil y la $salt.</p>');
INSERT INTO `recipe_step_lang` VALUES (273, 137, 1, '<p>Mentrestant, en un bol batem els $egg amb el $rasElHanout i el $chiliPowder.</p><p>Obrim els $hamburgerBun en dos.</p>');
INSERT INTO `recipe_step_lang` VALUES (274, 137, 2, '<p>Mientras tanto, en un cuenco batimos los $egg con $rasElHanout y $chiliPowder.</p><p>Abrimos los $hamburgerBun en dos.</p>');
INSERT INTO `recipe_step_lang` VALUES (275, 138, 1, '<p>Quan el sofregit estigui al nostre gust, l\'incorporem al bol amb la resta d\'ingredients.</p>');
INSERT INTO `recipe_step_lang` VALUES (276, 138, 2, '<p>Cuando el sofrito esté a nuestro gusto, lo incorporamos al cuenco con el resto de ingredientes.</p>');
INSERT INTO `recipe_step_lang` VALUES (277, 139, 1, '<p>A la mateixa paella, afegim un raig d\'$oliveOil i la mescla dels ous. </p><p>Seguidament, ho tapem amb totes les parts del pa d\'hamburguesa amb la cara interior tocant la truita. Quan comenci a quallar, donem la volta als pans perquè es torrin una mica per fora i finalment tanquem l\'entrepà.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (278, 139, 2, '<p>En la misma sartén, añadimos un chorro de $oliveOil y la mezcla de los huevos.</p><p>Seguidamente, lo tapamos con todas las partes del pan de hamburguesa con la cara interior tocando la tortilla. Cuando empiece a cuajar, damos la vuelta a los panes para que se tuestren un poco por fuera y finalmente cerramos el bocadillo.</p>');
INSERT INTO `recipe_step_lang` VALUES (279, 140, 1, '<p>A mi m\'agrada la vichyssoise amb molt poca patata. És per això que trio els porros més grans que trobo o afegeixo algun més si són petits, i escullo les patates petites.</p><p>Pelem les $potato i la tallem en dos trossos.</p><p>Traiem la primera capa dels $leek i els netegem per treure la sorra. Tallem la part verda en 4-5 trossos.</p><p>La part verda no la llanceu!!! La podeu aprofitar per fer una salsa per pasta. Us explico com aquí: [54].</p>');
INSERT INTO `recipe_step_lang` VALUES (280, 140, 2, '<p>A mí me gusta la vichyssoise con poca patata. Es por eso que elijo los puerros más grandes que encuentro o añado alguno más si son pequeños, y elijo las patatas pequeñas.</p><p>Pelamos las $potato y la cortamos en dos trozos.</p><p>Sacamos la primera capa de los $leek y los limpiamos para sacar la arena. Cortamos la parte verde en 4-5 trozos.</p><p>La parte verde no la arroje!!! Se puede aprovechar para hacer una salsa por pasta. Os cuento como aquí: [54].</p>');
INSERT INTO `recipe_step_lang` VALUES (281, 141, 1, '<p>En una cassola, desfem la $butter i, a foc mitjà, daurem el porro i les patates durant 5 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (282, 141, 2, '<p>En una cazuela, deshacemos la $butter y, a fuego medio, doramos el puerro y las patatas durante 5 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (283, 142, 1, '<p>Afegim el $chickenBroth i ho bullim durant uns 15-20 minuts o fins que el porro i la patata estiguin tous.</p>');
INSERT INTO `recipe_step_lang` VALUES (284, 142, 2, '<p>Añadimos el $chickenBroth y lo hervimos durante unos 15-20 minutos o hasta que el puerro y la patata estén blandos.</p>');
INSERT INTO `recipe_step_lang` VALUES (285, 143, 1, '<p>A l\'hora de triturar les cremes, sempre m\'agrada separar el caldo sobrant de les verdures, i després afegir més caldo si vull una consistència més liquida.</p><p>Així que colem les verdures i les posem a un recipient per triturar-les amb la batedora. Afegim caldo de la cassola si volem que quedi més líquid.</p><p>Incorporem $pepper recent molta.</p>');
INSERT INTO `recipe_step_lang` VALUES (286, 143, 2, '<p>A la hora de triturar las cremas, siempre me gusta separar el caldo sobrante de las verduras, y después añadir más caldo si quiero una consistencia más liquida.</p><p>Así que colamos las verduras y las ponemos en un recipiente para triturarlas con la batidora. Añadimos caldo de la cazuela si queremos que quede más líquido.</p><p>Incorporamos $pepper recién molida.</p>');
INSERT INTO `recipe_step_lang` VALUES (287, 144, 1, '<p>Tot i que es pot prendre calenta, si la volem freda cal posar-la a la nevera durant, almenys, 1 hora.</p>');
INSERT INTO `recipe_step_lang` VALUES (288, 144, 2, '<p>Aunque se puede tomar caliente, si la queremos fría hay que ponerla en la nevera durante al menos 1 hora.</p>');
INSERT INTO `recipe_step_lang` VALUES (289, 145, 1, '<p>Cada aleta ha d\'estar tallada en dues meitats.</p><p>Eliminem les plomes que els hi puguin quedar a les $chickenWings i  les salpebrem.</p>');
INSERT INTO `recipe_step_lang` VALUES (290, 145, 2, '<p>Cada alita debe estar cortada en dos mitades.</p><p>Eliminamos las plumas que puedan quedar en las $chickenWings y las salpimentamos.</p>');
INSERT INTO `recipe_step_lang` VALUES (291, 146, 1, '<p>En una cassola amb un raig d\'$oliveOil, cuinem les $chickenWings a foc mitjà. Primer per la banda de la pell fins que aquesta estigui torradeta, llavors li donarem la volta i les cuinem per l\'altra banda fins que estiguin daurades del tot.</p><p>Les reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (292, 146, 2, '<p>En una cazuela con un chorro de $oliveOil, cocinamos las $chickenWings a fuego medio. Primero por el lado de la piel hasta que ésta esté tostadita, entonces le daremos la vuelta y las cocinamos por el otro lado hasta que estén doradas por completo.</p><p>Las reservamos.</p>');
INSERT INTO `recipe_step_lang` VALUES (293, 147, 1, '<p>Mentrestant, piquem els $garlic.</p>');
INSERT INTO `recipe_step_lang` VALUES (294, 147, 2, '<p>Mientras, picamos los $garlic.</p>');
INSERT INTO `recipe_step_lang` VALUES (295, 148, 1, '<p>A la mateixa cassola i <b>mantenint l\'oli</b> de les aletes: baixem el foc al mínim i fregim l\'$garlic i la $cayennePepper.</p><p>Quan l\'all es comenci a daurar, afegim el $spicyPaprika i ho incorporem tot durant uns segons.</p>');
INSERT INTO `recipe_step_lang` VALUES (296, 148, 2, '<p>En la misma cazuela y <b>manteniendo el aceite</b> de las aletas: bajamos el fuego al mínimo y freímos el $garlic y la $cayennePepper.</p><p>Cuando el ajo se empiece a dorar, añadimos el $spicyPaprika y lo incorporamos todo durante unos segundos.</p>');
INSERT INTO `recipe_step_lang` VALUES (297, 149, 1, '<p>Seguidament, afegim el $whiteWine, el $brandy i la $nyora i ho deixem reduir fins que quedi una pasta vermella, que no hi hagi res de líquid.</p>');
INSERT INTO `recipe_step_lang` VALUES (298, 149, 2, '<p>Seguidamente, añadimos $whiteWine, $brandy y la $nyora y lo dejamos reducir hasta que quede una pasta roja, que no haya nada de líquido.</p>');
INSERT INTO `recipe_step_lang` VALUES (299, 150, 1, '<p>Incorporem el $chickenBroth a la cassola i, quan comenci a bullir, afegim les aletes que teníem reservades.</p><p>Continuem cuinant les aletes a foc lent fins que tot el caldo s\'evapori i vagi quedant un <i>caramelete</i> enganxat a les aletes.</p>');
INSERT INTO `recipe_step_lang` VALUES (300, 150, 2, '<p>Incorporamos $chickenBroth a la cazuela y, cuando empiece a hervir, añadimos las aletas que teníamos reservadas.</p><p>Continuamos cocinando las aletas a fuego lento hasta que todo el caldo se evapore y vaya quedando un <i>caramelete</i> pegado a las aletas.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (301, 151, 1, '<p>Separem totes les fulles del $leekGreenPart i les netegem bé amb aigua perquè caigui tota la sorra.</p><p>Piquem molt bé les fulles.</p>');
INSERT INTO `recipe_step_lang` VALUES (302, 151, 2, '<p>Separamos todas las hojas del $leekGreenPart y las limpiamos bien con agua para que caiga toda la arena.</p><p>Picamos muy bien las hojas.</p>');
INSERT INTO `recipe_step_lang` VALUES (303, 152, 1, '<p>A una paella a foc mitjà, desfem la $butter i afegim el porro picat fins que estigui tou i sofregit.</p>');
INSERT INTO `recipe_step_lang` VALUES (304, 152, 2, '<p>En una sartén a fuego medio, deshacemos la $butter y añadimos el puerro picado hasta que esté blando y sofrito.</p>');
INSERT INTO `recipe_step_lang` VALUES (305, 153, 1, '<p>Afegim la $cookingCream i la reduïm fins que ens agradi com és d\'espessa la salsa.</p>');
INSERT INTO `recipe_step_lang` VALUES (306, 153, 2, '<p>Añadimos la $cookingCream y la reducimos hasta que nos guste lo espesa que es la salsa.</p>');
INSERT INTO `recipe_step_lang` VALUES (307, 154, 1, '<p>Salpebrem al gust i ho servim com a salsa qualsevol pasta.</p>');
INSERT INTO `recipe_step_lang` VALUES (308, 154, 2, '<p>Salpimentamos al gusto y lo servimos como salsa para cualquier pasta.</p>');
INSERT INTO `recipe_step_lang` VALUES (309, 155, 1, '<p>Fem un o dos talls per persona de $goatRollCheese i els congelem en una safata ben separats.</p>');
INSERT INTO `recipe_step_lang` VALUES (310, 155, 2, '<p>Hacemos uno o dos cortes por persona de $goatRollCheese y los congelamos en una bandeja bien separados.</p>');
INSERT INTO `recipe_step_lang` VALUES (311, 156, 1, '<p>Piquem els $garlic.</p><p>El fregim en una cassola amb una mica d\'$oliveOil.</p>');
INSERT INTO `recipe_step_lang` VALUES (312, 156, 2, '<p>Picamos los $garlic.</p><p>Lo freímos en una cazuela con un poco de $oliveOil.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (313, 157, 1, '<p>Afegim el $bacon i el daurem amb l\'oli que anirà deixant a mesura que es cuina.</p>');
INSERT INTO `recipe_step_lang` VALUES (314, 157, 2, '<p>Añadimos el $bacon y lo doramos con el aceite que irá dejando a medida que se cocina.</p>');
INSERT INTO `recipe_step_lang` VALUES (315, 158, 1, '<p>Incorporem el $tomatoSauce i fem reduir la salsa a foc baix.</p>');
INSERT INTO `recipe_step_lang` VALUES (316, 158, 2, '<p>Incorporamos el $tomatoSauce y hacemos reducir la salsa a fuego bajo.</p>');
INSERT INTO `recipe_step_lang` VALUES (317, 159, 1, '<p>Passada una estona, afegim el formatge de cabra que ens ha sobrat anteriorment.</p>');
INSERT INTO `recipe_step_lang` VALUES (318, 159, 2, '<p>Pasado un rato, añadimos el queso de cabra que nos ha sobrado anteriormente.</p>');
INSERT INTO `recipe_step_lang` VALUES (319, 160, 1, '<p>Mentre la salsa segueix reduint, podem començar a cuinar els $gnocchi: posem aigua en una cassola i, quan bulli, els afegim. Quan aquests comencin a flotar els colem i els incorporem a la salsa.</p>');
INSERT INTO `recipe_step_lang` VALUES (320, 160, 2, '<p>Mientras la salsa sigue reduciendo, podemos empezar a cocinar los $gnocchi: ponemos agua en una cazuela y, cuando hierva, los añadimos. Cuando estos empiecen a flotar los colamos y los incorporamos a la salsa.</p>');
INSERT INTO `recipe_step_lang` VALUES (321, 161, 1, '<p>Escalfem en una paella (amb el foc molt fort) i fem els medallons de formatge de cabra per banda i banda. Els col·loquem sobre dels nyoquis com a decoració en el moment de l\'emplatat.</p>');
INSERT INTO `recipe_step_lang` VALUES (322, 161, 2, '<p>Calentamos en una sartén (con el fuego muy fuerte) y hacemos los medallones de queso de cabra por ambos lados. Los colocamos encima de los ñoquis como decoración en el momento del emplatado.</p>');
INSERT INTO `recipe_step_lang` VALUES (323, 162, 1, '<p>Si les fem amb $chineseCabbage: </p><ol><li>la tallem en trossos grans </li><li>en un colador, li tirem sal </li><li>esperem 10 minuts</li><li>escórrer amb les mans per treure l\'excés d\'aigua.</li></ol><p>Si les fem amb $cabbage:</p><ol><li>la tallem en trossos grans</li><li>la bullim durant 2 minuts</li><li>escórrer amb les mans per treure l\'excés d\'aigua.</li></ol>');
INSERT INTO `recipe_step_lang` VALUES (324, 162, 2, '<p>Si las hacemos con $chineseCabbage:</p><ol><li>la cortamos en trozos grandes</li><li>en un colador, le echamos sal</li><li>esperamos 10 minutos</li><li>escurrir con las manos para quitar el exceso de agua.</li></ol><p>Si las hacemos con $cabbage:</p><ol><li>la cortamos en trozos grandes</li><li>la hervimos durante 2 minutos</li><li>escurrir con las manos para quitar el exceso de agua.</li></ol>');
INSERT INTO `recipe_step_lang` VALUES (325, 163, 1, '<p>En un bol gran afegim:</p><ul><li>la $onion picada molt fina</li><li>la $porkBelly picada</li><li>la $soySauce(0.2)</li><li>el $sake</li><li>l\'$sesameOil(0.66)</li><li>la $oysterSauce</li><li>i $pepper al gust</li></ul><p>Amassar-ho tot durant 3 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (326, 163, 2, '<p>En un cuenco grande añadimos:</p><ul><li>la $onion picada muy fina</li><li>la $porkBelly picada</li><li>la $soySauce(0.2)</li><li>el $sake</li><li>el $sesameOil(0.66)</li><li>la $oysterSauce</li><li>y $pepper al gusto</li></ul><p>Amasar todo durante 3 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (327, 164, 1, '<p>Afegim la resta d\'ingredients del farcit:</p><ul><li>la col ben picada</li><li>la $salt</li><li>el $ginger pelat i ben picat</li><li>l\'$garlic ben picat</li></ul><p>Amassem bé per incorporar tots els ingredients.</p>');
INSERT INTO `recipe_step_lang` VALUES (328, 164, 2, '<p>Añadimos el resto de ingredientes del relleno:</p><ul><li>la col bien picada</li><li>la $salt</li><li>el $ginger pelado y bien picado</li><li>el $garlic bien picado</li></ul><p>Amasamos bien para incorporar todos los ingredientes.</p>');
INSERT INTO `recipe_step_lang` VALUES (329, 165, 1, '<p>Tamisar la $flour en un bol gran.</p>');
INSERT INTO `recipe_step_lang` VALUES (330, 165, 2, '<p>Tamizar la $flour en un cuenco grande.</p>');
INSERT INTO `recipe_step_lang` VALUES (331, 166, 1, '<p>Bullir l\'$water.</p><p>Retirar-la del foc i disoldre la $salt.</p><p>Afegir l\'aigua a poc a poc al bol de farina, remenant amb una llengua de gat. Si la farina encara no està incorporada, afegiu-hi més aigua calenta fins que puguis formar una bola. En algun punt d\'aquest procés, pot ser que necessitis passar la massa al marbre i continuar mesclant amb la mà.</p>');
INSERT INTO `recipe_step_lang` VALUES (332, 166, 2, '<p>Hervir el $water.</p><p>Retirarla del fuego y disolver la $salt.</p><p>Agregar el agua poco a poco al cuenco de harina, removiendo con una lengua de gato. Si la harina todavía no está incorporada, añada más agua caliente hasta que puedas formar una bola. En algún punto de este proceso, puede que necesites pasar la masa al mármol y continuar mezclando con la mano.</p>');
INSERT INTO `recipe_step_lang` VALUES (333, 167, 1, '<p>Transfereix la massa a una superfície de treball i pasta durant 10 minuts.</p><p>A l\'acabar, la massa ha de quedar molt suau.</p><p>Divideix-la en dues meitats donant-los forma de pal d\'uns 3-4cm de gruix. Embolica la massa amb paper film i deixa-ho reposar 30 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (334, 167, 2, '<p>Transfiere la masa a una superficie de trabajo y pasta durante 10 minutos.</p><p>Al terminar, la masa debe quedar muy suave.</p><p>Dividela en dos mitades dándoles forma de palo de unos 3-4cm de espesor. Envuelve la masa con papel film y déjalo reposar 30 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (335, 168, 1, '<p>Desembolica la massa. Empolvora una mica de $potatoStarch a la superfície de treball i talla cada tronc en 2 trossos.</p><p>És molt important cobrir la massa amb un drap de cuina humit en tot moment per evitar que s\'assequi.</p><p>Amb un $rollingPin, estira la massa. Gira-la 90 graus i repeteix fins a tenir una massa fina d\'1mm de gruix.</p>');
INSERT INTO `recipe_step_lang` VALUES (336, 168, 2, '<p>Desenvuelve la masa. Espolvorea un poco de $potatoStarch en la superficie de trabajo y corta cada tronco en 2 trozos.</p><p>Es muy importante cubrir la masa con un paño de cocina húmedo en todo momento para evitar que se seque.</p><p>Con un $rollingPin, estira la masa. Gira 90 grados y repite hasta tener una masa fina de 1mm de espesor.</p>');
INSERT INTO `recipe_step_lang` VALUES (337, 169, 1, '<p>Amb el $8cmMold, talla la massa per formar les rodones.</p><p>Empolvora cada masa amb $potatoStarch i apila-les. Assegura\'t de cobrir la massa amb un drap de cuina humit fins que estiguis llest per utilitzar-les.</p>');
INSERT INTO `recipe_step_lang` VALUES (338, 169, 2, '<p>Con el $8cmMold, corta la masa para formar las redondas.</p><p>Espolvorea cada masa con $potatoStarch y apilalas. Asegúrate de cubrir la masa con un paño de cocina húmedo hasta que estés listo para utilizarlas.</p>');
INSERT INTO `recipe_step_lang` VALUES (339, 170, 1, '<p>És el moment de tancar les gyozas: recolza la massa sobre la teva mà de manera que quedi mig doblegada.</p><p>Afegeix una culleradeta de farcit i pinta amb aigua la part exterior de la massa.</p><p>Amb el dit polze i índex de la mà dreta, fes un plec aproximadament una vegada cada mig 1/2 cm a la part superior, des del centre fins al costat dret. Han de sortir 3 o 4 plecs.</p><p>Repeteix el procés a la banda esquerra.</p>');
INSERT INTO `recipe_step_lang` VALUES (340, 170, 2, '<p>Es el momento de cerrar las gyozas: apoya la masa sobre tu mano de forma que quede medio doblada.</p><p>Añade una cucharadita de relleno y pinta con agua la parte exterior de la masa.</p><p>Con el pulgar e índice de la mano derecha, haz un pliegue aproximadamente una vez cada medio 1/2 cm en la parte superior, desde el centro hasta el lado derecho. Tienen que salir 3 o 4 pliegues.</p><p>Repite el proceso en el lado izquierdo.</p>');
INSERT INTO `recipe_step_lang` VALUES (341, 171, 1, '<p>Podries cuinar-les al moment o congelar-les.</p><p>Per congelar-les i que no s\'enganxin entre elles, col·loque-les sobre una safata separades i, quan ja estiguin congelades: pots transferir-les a una bossa.</p>');
INSERT INTO `recipe_step_lang` VALUES (342, 171, 2, '<p>Podrías cocinarlas en el momento o congelarlas.</p><p>Para congelarlas y que no se peguen entre sí, colóquelas sobre una bandeja separadas y, cuando ya estén congeladas: puedes transferirlas a una bolsa.</p>');
INSERT INTO `recipe_step_lang` VALUES (343, 172, 1, '<p>En el moment de cuinar-les, primer preparem la salsa que ens servirà per acompanyar les gyozas:</p><ul><li>$soySauce(0.8)</li><li>$riceVinegar</li><li>$sesameOil(0.33)</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (344, 172, 2, '<p>En el momento de cocinarlas, primero preparamos la salsa que nos servirá para acompañar a las gyozas:</p><ul><li>$soySauce(0.8)</li><li>$riceVinegar</li><li>$sesameOil(0.33)</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (345, 173, 1, '<p>Calenta una paella a foc fort i afegeix un raig d\'$sunflowerOil. Col·loca les gyozas durant uns 5 minuts o fins que agafin un color torradet per la part inferior.</p><p>Llavors, afegeix a la paella l\'$water i cobreix amb una tapa perquè les gyozes es cuinin amb el vapor de l\'aigua durant uns 10 minuts. Sabràs que estan fetes perquè la pasta es tornarà més transparent i tova.</p>');
INSERT INTO `recipe_step_lang` VALUES (346, 173, 2, '<p>Calienta una sartén a fuego fuerte y añade un chorro de $sunflowerOil. Coloca las gyozas durante unos 5 minutos o hasta que cojan un color tostadito por la parte inferior.</p><p>Entonces, añade a la sartén el $water y cubre con una tapa para que las gyozes se cocinen con el vapor del agua durante unos 10 minutos. Sabrás que están hechas porque la pasta se volverá más transparente y blanda.</p>');
INSERT INTO `recipe_step_lang` VALUES (347, 174, 1, '<p>Piquem els ingredients i els anem afegint en un bol gran:</p><ul><li>la $greenOnion molt fina</li><li>les $pickledCapers</li><li>els $pickles</li><li>la $oldFashionedMustard</li><li>la $worcestershireSauce</li><li>la $soySauce</li><li>l\'$virginOliveOil</li><li>el $tabasco</li><li>la $pepper</li></ul><p>Integrem bé tots els ingredients i rectifiquem el punt de sal si cal.</p>');
INSERT INTO `recipe_step_lang` VALUES (348, 174, 2, '<p>Picamos los ingredientes y los vamos añadiendo en un cuenco grande:</p><ul><li>la $greenOnion muy fina</li><li>las $pickledCapers</li><li>los $pickles</li><li>la $oldFashionedMustard</li><li>la $worcestershireSauce</li><li>la $soySauce</li><li>el $virginOliveOil</li><li>el $tabasco</li><li>la $pepper</li></ul><p>Integramos bien todos los ingredientes y rectificamos el punto de sal si es necesario.</p>');
INSERT INTO `recipe_step_lang` VALUES (349, 175, 1, '<p>Eliminem la pell, les espines i les escates que li puguin quedar al $salmon.</p><p>El tallem en daus petits i els afegim a la mescla de la resta d\'ingredients.</p><p>Reservem a la nevera mínim durant una hora.</p>');
INSERT INTO `recipe_step_lang` VALUES (350, 175, 2, '<p>Eliminamos la piel, las espinas y las escamas que le puedan quedar en el $salmon.</p><p>Lo cortamos en dados pequeños y los añadimos a la mezcla del resto de ingredientes.</p><p>Reservamos en el frigorífico mínimo durante una hora.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (351, 176, 1, '<p>Podem servir-lo així i acompanyar-lo amb unes torradetes.</p><p>També podem pelar i tallar en daus un $avocado. El salpebrem i, en el moment d\'emplatat fem un llit d\'alvocat i a sobre col·loquem el tàrtar de salmó.</p>');
INSERT INTO `recipe_step_lang` VALUES (352, 176, 2, '<p>Podemos servirlo así y acompañarlo con unas tostaditas.</p><p>También podemos pelar y cortar en dados un abogado. Lo salpimentamos y, en el momento de emplatado hacemos una cama de aguacate y encima colocamos el tártaro de salmón.</p>');
INSERT INTO `recipe_step_lang` VALUES (353, 177, 1, '<p>En una paella, afegim l\'$oliveOil i el $basmatiRice per torrar-lo (anem remenant de tant en tant).</p>');
INSERT INTO `recipe_step_lang` VALUES (354, 177, 2, '<p>En una sartén, añadimos el olive Oil y el $basmati Rice para tostarlo (vamos removiendo de vez en cuando).</p>');
INSERT INTO `recipe_step_lang` VALUES (355, 178, 1, '<p>Mentrestant, escalfem l\'$water.</p>');
INSERT INTO `recipe_step_lang` VALUES (356, 178, 2, '<p>Mientras, calentamos el $water.</p>');
INSERT INTO `recipe_step_lang` VALUES (357, 179, 1, '<p>Quan l\'arròs està dauradet, afegim l\'aigua calenta i tapem la paella.</p><p>Deixem que es cuini a foc baix durant 10 minuts, vigilant que no es quedi sense aigua (si cal; n\'afegim més).</p>');
INSERT INTO `recipe_step_lang` VALUES (358, 179, 2, '<p>Cuando el arroz está doradito, añadimos el agua caliente y tapamos la sartén.</p><p>Dejamos que se cocine a fuego bajo durante 10 minutos, vigilando que no se quede sin agua (si es necesario; añadimos más).</p>');
INSERT INTO `recipe_step_lang` VALUES (359, 180, 1, '<p>Quan l\'arròs estigui llest, afegim el $rasElHanout i la $botifarra sense pell i esmicolada, i ho integrem tot una mica a foc mig fins que la botifarra estigui cuinada.</p><p>A l\'últim minut, afegim el $feta en daus i ja ho tenim llest per emplatar.</p>');
INSERT INTO `recipe_step_lang` VALUES (360, 180, 2, '<p>Cuando el arroz esté listo, añadimos el $rasElHanout y la butifarra sin piel y desmenuzada y lo integramos todo un poco a fuego medio hasta que la butifarra esté cocinada.</p><p>En el último minuto, añadimos el $hecha en dados y ya lo tenemos listo para emplatar.</p>');
INSERT INTO `recipe_step_lang` VALUES (361, 181, 1, '<p>Preparem els ingredients per la fideuà:</p><ul><li>Posem en remull les $driedHornOfPlenty en aigua calenta fins a cobrir-les durant 15 minuts aproximadament. (<b>Important</b> reservar l\'aigua sobrant per afegir-la a la fideuà més tard).</li><li>Fem uns talls a la part de la pell del $duckBreast i el salpebrem.</li><li>Tallem el $leek en rodanxes finetes.</li><li>Piquem l\'$garlic.</li><li>Aixafem cada rodanxa de $sobrassada amb el ganivet fins a obtenir-ne una llesca fina.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (362, 181, 2, '<p>Preparamos los ingredientes para la fideuá:</p><ul><li>Ponemos a remojo las $driedHornOfPlenty en agua caliente hasta cubrirlas durante 15 minutos aproximadamente. (<b>Importante</b> reservar el agua sobrante para añadirla a la fideuá más tarde).</li><li>Hacemos unos cortes en la parte de la piel del $duckBreast y lo salpimentamos.</li><li>Cortamos el $leek en rodajas finitas</li><li>Picamos el $garlic</li><li>Aplastamos cada rodaja de $sobrasada con el cuchillo hasta obtener una rebanada fina.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (363, 182, 1, '<p>A partir d\'ara tot ho cuinarem a la paella on farem la fideuá.</p><p>Encenem el foc i rossegem els $n4Fideus a la paella (sense oli). Anem removent perquè no es cremin i els reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (364, 182, 2, '<p>A partir de ahora todo lo cocinaremos en la paella donde haremos la fideuá.</p><p>Encendemos el fuego y doraremos los $n4Fideus en la sartén (sin aceite). Vamos removiendo para que no se quemen y los reservamos.</p>');
INSERT INTO `recipe_step_lang` VALUES (365, 183, 1, '<p>Afegim una mica d\'$oliveOil per marcar el magret per tots els costats (no fa falta afegir molt oli perquè el magret deixa anar molt greix).</p><p>Retirem el magret i el reservem. Quan es refredi una mica, el tallem en filets de mig centímetre.</p>');
INSERT INTO `recipe_step_lang` VALUES (366, 183, 2, '<p>Añadimos un poco de $oliveOil para marcar el magret por todos los lados (no hace falta añadir mucho aceite porque el magret suelta mucha grasa).</p><p>Retiramos el magret y lo reservamos. Cuando se enfríe un poco, lo cortamos en filetes de medio centímetro.</p>');
INSERT INTO `recipe_step_lang` VALUES (367, 184, 1, '<p>Amb l\'oli i greix del magret, cuinarem el porro fins que estigui ben potxat i el retirem als extrems de la paella.</p><p>A continuació, afegim les trompetes hidratades i les cuinem uns minuts i les retirem als extrems de la paella.</p>');
INSERT INTO `recipe_step_lang` VALUES (368, 184, 2, '<p>Con el aceite y grasa del magret, cocinaremos el puerro hasta que esté bien pochado y lo retiramos en los extremos de la paella.</p><p>A continuación, añadimos las trompetas hidratadas y las cocinamos unos minutos y las retiramos en los extremos de la paella.</p>');
INSERT INTO `recipe_step_lang` VALUES (369, 185, 1, '<p>Afegim més oli si cal per cuinar l\'all picat. Quan comenci a agafar color, hi afegim el $crushedTomato, la sobrassada, els ingredients que tenim a l\'extrem de la paella i fem un sofregit.</p><p>Quan tinguem el sofregit llest: el rectifiquem de sal, pebre i sobrassada. Finalment, afegim els fideus rossejats.</p><p>Arribats aquest punt podem deixar de cuinar i continuar quan faltin 15 minuts per servir el plat.</p>');
INSERT INTO `recipe_step_lang` VALUES (370, 185, 2, '<p>Añadimos más aceite si es necesario para cocinar el ajo picado. Cuando empiece a tomar color, le añadimos el $crushedTomato, la sobrassada, los ingredientes que tenemos en el extremo de la paella y hacemos un sofrito.</p><p>Cuando tengamos el sofrito listo: lo rectificamos de sal, pimienta y sobrasada. Por último, añadimos los fideos dorados.</p><p>Llegados a este punto podemos dejar de cocinar y continuar cuando falten 15 minutos para servir el plato.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (371, 186, 1, '<p>En el moment que ens disposem a fer la fideuá, hem de tenir el $escudellaBroth ben calent.</p><p>Encenem el foc a intensitat forta i afegim el caldo de mica en mica per evitar que ens quedi massa caldós al final. Recordeu afegir-li també l\'aigua de les trompetes per intensificar el seu sabor.</p><p>Cuinem durant uns 12 minuts (o fins que quedin cuits).</p><p>Quan quedi uns minuts, afegim els trossos de magret perquè agafin una mica de temperatura.</p>');
INSERT INTO `recipe_step_lang` VALUES (372, 186, 2, '<p>En el momento que nos disponemos a hacer la fideuá, debemos tener el $escudellaBroth bien caliente.</p><p>Encendemos el fuego a intensidad fuerte y añadimos el caldo poco a poco para evitar que nos quede demasiado caldoso al final. Recuerde añadirle también el agua de las trompetas para intensificar su sabor.</p><p>Cocinamos durante unos 12 minutos (o hasta que queden cocidos).</p><p>Cuando quede unos minutos, añadimos los trozos de magret para que cojan un poco de temperatura.</p>');
INSERT INTO `recipe_step_lang` VALUES (373, 187, 1, '<p>Emplatem! Col·loquem les patates a un bol, la salsa vermella i, per sobre de tot, l\'allioli.</p><p>Opcionalment, podem afegir un rajolí d\'oli (o oli picant) per decorar.</p>');
INSERT INTO `recipe_step_lang` VALUES (374, 187, 2, '<p>Emplatamos! Colocamos las patatas en un cuenco, la salsa roja y, por encima de todo, el alioli.</p><p>Opcionalmente, podemos añadir un chorrito de aceite (u aceite picante) para decorar.</p>');
INSERT INTO `recipe_step_lang` VALUES (375, 188, 1, '<p>Fem un pesto amb el $parsley, les $pickledChives, l\'$almond, $salt i $pepper.</p>');
INSERT INTO `recipe_step_lang` VALUES (376, 188, 2, '<p>Hagamos un pesto con el $parsley, las $pickledChives, la $almond, la $salt y $pepper.</p>');
INSERT INTO `recipe_step_lang` VALUES (377, 189, 1, '<p>Muntem el bikini: en una llesca posem el pesto, les $anchovy i el $parmesan en llesques.</p><p>Tapem amb l\'altra llesca de pa.</p><p>Posem $butter per fora a banda i banda del bikini i el passem per la planxa durant 3-5 minuts o fins que ens agradi el torrat que agafi.</p>');
INSERT INTO `recipe_step_lang` VALUES (378, 189, 2, '<p>Montamos el bikini: en una rebanada ponemos el pesto, las $anchovy y el $parmesan en rebanadas.</p><p>Tapamos con la otra rebanada de pan.</p><p>Ponemos $butter por fuera a ambos lados del bikini y lo pasamos por la plancha durante 3-5 minutos o hasta que nos guste el tostado que coja.</p>');
INSERT INTO `recipe_step_lang` VALUES (379, 190, 1, '<p>Preparem els ingredients:</p><ul><li>tallar la $onion en trossos grans</li><li>tallar el $ginger en làmines</li><li>aixafar el $garlic</li><li>condimentar el $porkLoin amb $salt i $pepper per tots els costats</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (380, 190, 2, '<p>Preparamos los ingredientes:</p><ul><li>cortar la $onion en trozos grandes</li><li>cortar el $ginger en láminas</li><li>aplastar al $garlic</li><li>condimentar $porkLoin con $salto y $pepper por todos los lados</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (381, 191, 1, '<p>A la $pressureCooker i afegim l\'$oliveOil i, quan estigui calenta, saltegem el porc 2 minuts per cada costat.</p><p>El transferim a un plat net i el reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (382, 191, 2, '<p>A la $pressureCooker y añadimos el $oliveOil y, cuando esté caliente, salteamos el cerdo 2 minutos por cada lado.</p><p>Lo transferimos a un plato limpio y lo reservamos.</p>');
INSERT INTO `recipe_step_lang` VALUES (383, 192, 1, '<p>Afegim el gingebre i l\'all a l\'olla i saltegem durant 2-3 minuts.</p><p>Després incorporem la ceba i afegim més oli d\'oliva per sofregir-ho tot durant 5-10 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (384, 192, 2, '<p>Añadimos el jengibre y el ajo a la olla y salteamos durante 2-3 minutos.</p><p>Después incorporamos la cebolla y añadimos más aceite de oliva para sofreír todo durante 5-10 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (385, 193, 1, '<p>Afegim: el $chickenBroth, la $soySauce, el $sake i el $brownSugar i ho barregem bé desglaçant els sucs enganxats al fons de l\'olla.</p><p>Afegim el porc de nou a l\'olla.</p>');
INSERT INTO `recipe_step_lang` VALUES (386, 193, 2, '<p>Añadimos: $chickenBroth, $soySauce, $sake y $brownSugar y lo mezclamos bien desglasando los jugos pegados al fondo de la olla.</p><p>Añadimos el cerdo de nuevo a la olla.</p>');
INSERT INTO `recipe_step_lang` VALUES (387, 194, 1, '<p>Tapem l\'olla de pressió i cuinem durant 1 hora (a l\'Instant Pot: pressure cook - high pressure) més els 15 minuts que trigarà a pressuritzar.</p><p>Quan hagi acabat de cuinar, alliberem el vapor fins que la vàlvula baixi i transferim el porc a una safata de forn amb vora.</p><p>Desfilem la carn de porc amb dues forquilles.</p>');
INSERT INTO `recipe_step_lang` VALUES (388, 194, 2, '<p>Tapamos la olla a presión y cocinamos durante 1 hora (en la Instant Pot: pressure cook - high pressure) más los 15 minutos que tardará en presurizar.</p><p>Cuando haya terminado de cocinar, liberamos el vapor hasta que la válvula baje y transferimos el cerdo a una bandeja de horno con dobladillo.</p><p>Desfilamos la carne de cerdo con dos tenedores.</p>');
INSERT INTO `recipe_step_lang` VALUES (389, 195, 1, '<p>Tornem a posar la carn de porc a l\'olla i anem remenant de tant en tant fins que s\'evapori tot el caldo que quedava.</p><p>Amb el pulled pork podeu fer [65].</p>');
INSERT INTO `recipe_step_lang` VALUES (390, 195, 2, '<p>Volvemos a poner la carne de cerdo en la olla y vamos removiendo de vez en cuando hasta que se evapore todo el caldo que quedaba.</p><p>Con el pulled pork podéis hacer [65].</p>');
INSERT INTO `recipe_step_lang` VALUES (391, 196, 1, '<p>Picar fina la $greenOnion i ofegar-la en $butter a foc suau uns 30 minuts fins que estigui ben potxadeta.</p><p>Ho deixem refredar.</p>');
INSERT INTO `recipe_step_lang` VALUES (392, 196, 2, '<p>Picar fina la $greenOnion y rehogarla en $butter a fuego suave unos 30 minutos hasta que esté bien pochadita.</p><p>Lo dejamos enfriar.</p>');
INSERT INTO `recipe_step_lang` VALUES (393, 197, 1, '<p>Mentrestant, escaldem un minut els $freshSpinach en abundant aigua bullent amb $salt.</p><p>Colem i els refredem en un bol amb aigua ben freda.</p><p>Els escorrem molt bé aixafant amb suavitat, perquè deixin anar la major quantitat de líquid possible.</p>');
INSERT INTO `recipe_step_lang` VALUES (394, 197, 2, '<p>Mientrastanto, escaldamos un minuto los $freshSpinach en abundante agua hirviendo con $salt.</p><p>Colamos y enfriamos en un cuenco con agua bien fría.</p><p>Los escurrimos muy bien aplastando con suavidad, para que suelten la mayor cantidad de líquido posible.</p>');
INSERT INTO `recipe_step_lang` VALUES (395, 198, 1, '<p>Barregem en un bol els espinacs picats, la ceba tendra, els $egg lleugerament batuts i la $milk.</p><p>Esmicolar el formatge feta per sobre i barrejar el que és just per incorporar-lo.</p><p>Salpebrem al gust.</p>');
INSERT INTO `recipe_step_lang` VALUES (396, 198, 2, '<p>Mezclamos en un cuenco las espinacas picadas, la cebolleta, los $egg ligeramente batidos y la $milk.</p><p>Desmenuzar el queso hecha por encima y mezclar lo que es justo para incorporarlo.</p><p>Salpimentamos al gusto.</p>');
INSERT INTO `recipe_step_lang` VALUES (397, 199, 1, '<p>Preescalfar el forn a 180ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (398, 199, 2, '<p>Precalentar el horno a 180ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (399, 200, 1, '<p>Pintem amb $oliveOil un motlle de forn.</p><p><b style=\"\"><u>Atenció</u></b> perquè la pasta fil·lo no es pot mantenir molt de temps a l\'aire: obrir el paquet just quan es faci servir.</p><p>Estenem la meitat de làmines de $filo(0.5) sobre el motlle, pintant amb una capa fina d\'oli cadascuna de les capes.</p><p>Col·loquem la barreja d\'espinacs i feta i estenem 5 làmines més de la mateixa manera que les capes inferiors.</p>');
INSERT INTO `recipe_step_lang` VALUES (400, 200, 2, '<p>Pintamos con $oliveOil un molde de horno.</p><p><b><u>Atención</u></b> porque la pasta filo no puede mantenerse mucho tiempo en el aire: abrir el paquete justo cuando se utilice.</p><p>Extendemos la mitad de las láminas de $filo(0.5) sobre el molde, pintando con una capa fina de aceite cada una de las capas.</p><p>Colocamos la mezcla de espinacas y hecha y extendemos 5 láminas más al igual que las capas inferiores.</p><p>Con las manos mojadas, enrollamos la pasta que sobresalga del molde para cerrar la spanakopita.</p>');
INSERT INTO `recipe_step_lang` VALUES (401, 201, 1, '<p>Amb les mans mullades:</p><ul><li>enrotllem la pasta que sobresurti del motlle per tancar la spanakopita</li><li>humitegem la capa superficial.<br></li></ul>');
INSERT INTO `recipe_step_lang` VALUES (402, 201, 2, '<p>Con las manos mojadas:</p><ul><li>enrollamos la pasta que sobresalga del molde para cerrar la spanakopita</li><li>humedecemos la capa superficial.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (403, 202, 1, '<p>Ho coem al forn 1 hora fins que estigui daurat i cruixent.</p><p>Servir temperat o a temperatura ambient.</p>');
INSERT INTO `recipe_step_lang` VALUES (404, 202, 2, '<p>Cocemos en el horno 1 hora hasta que esté dorado y crujiente.</p><p>Servir templado oa temperatura ambiente.</p>');
INSERT INTO `recipe_step_lang` VALUES (405, 203, 1, '<p>Posem l\'$water a bullir.</p>');
INSERT INTO `recipe_step_lang` VALUES (406, 203, 2, '<p>Ponemos el $water a hervir.</p>');
INSERT INTO `recipe_step_lang` VALUES (407, 204, 1, '<p>Mentrestant, tallem la ceba vermella en juliana a capes molt fines i la col·loquem dins del $glassJar.</p>');
INSERT INTO `recipe_step_lang` VALUES (408, 204, 2, '<p>Mientras, cortamos la cebolla roja en juliana en capas muy finas y la colocamos dentro del $glassJar.</p>');
INSERT INTO `recipe_step_lang` VALUES (409, 205, 1, '<p>Treiem l\'aigua del foc i afegim el $appleVinegar, la $salt, el $sugar i la $grainBlackPepper i ho barregen molt bé perquè es dissolgui tot.</p>');
INSERT INTO `recipe_step_lang` VALUES (410, 205, 2, '<p>Sacamos el agua del fuego y añadimos el $appleVinegar, la $salto, el $sugar y la $grainBlackPepper y lo mezclan muy bien para que se disuelva todo.</p>');
INSERT INTO `recipe_step_lang` VALUES (411, 206, 1, '<p>Afegim la barreja al pot fins que es cobreixi tota la ceba. Si cal, afegim més aigua i vinagre (sempre a parts iguals).</p><p>Tanquem el pot i ho sacsegem per barrejar-ho tot bé.</p>');
INSERT INTO `recipe_step_lang` VALUES (412, 206, 2, '<p>Añadimos la mezcla al bote hasta que se cubra toda la cebolla. Si es necesario, añadimos más agua y vinagre (siempre a partes iguales).</p><p>Cerramos el bote y lo sacudemos para mezclarlo todo bien.</p>');
INSERT INTO `recipe_step_lang` VALUES (413, 207, 1, '<p>Deixem que es refredi totalment i ho conservem a la nevera.</p><p>Espera un mínim de dues hores per poder-la provar.</p>');
INSERT INTO `recipe_step_lang` VALUES (414, 207, 2, '<p>Dejamos que se enfríe totalmente y lo conservemos en la nevera.</p><p><br></p><p>Espera un mínimo de dos horas para poder probarla.</p>');
INSERT INTO `recipe_step_lang` VALUES (415, 208, 1, '<p>Cuinem els $bao al vapor segons indiquin les instruccions del paquet, en el nostre cas: 6 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (416, 208, 2, '<p>Cocinamos los $bao al vapor según indiquen las instrucciones del paquete, en nuestro caso: 6 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (417, 209, 1, '<p>Mentrestant escalfem el $pulledPork en una paella amb una mica d\'$oliveOil.</p><p>També podem picar els $pickles.</p>');
INSERT INTO `recipe_step_lang` VALUES (418, 209, 2, '<p>Mientras calentamos el $pulledPork en una sartén con un poco de $oliveOil.</p><p>También podemos picar los $pickles.</p>');
INSERT INTO `recipe_step_lang` VALUES (419, 210, 1, '<p>Quan els baos estiguin fets els farcim amb pulled pork i ho decorem amb $pickles, $pickledRedOnion i $japaneseMayonnaise.</p>');
INSERT INTO `recipe_step_lang` VALUES (420, 210, 2, '<p>Cuando los baños estén hechos los rellenamos con pulled pork y lo decoramos con $pickles, $pickledRedOnion y $japaneseMayonnaise.</p>');
INSERT INTO `recipe_step_lang` VALUES (421, 211, 1, '<p>Tallem la $onion en juliana i la sofregim amb una mica d\'$oliveOil i $salt.</p>');
INSERT INTO `recipe_step_lang` VALUES (422, 211, 2, '<p>Cortamos la $onion en juliana y la sofreímos con un poco de $oliveOil y $salto.</p>');
INSERT INTO `recipe_step_lang` VALUES (423, 212, 1, '<p>Afegim la $pumpkin a trossets petits i saltegem durant 5 minuts més.⁠</p>');
INSERT INTO `recipe_step_lang` VALUES (424, 212, 2, '<p>Añadimos la $pumpkin a trocitos pequeños y salteamos durante 5 minutos más.⁠</p>');
INSERT INTO `recipe_step_lang` VALUES (425, 213, 1, '<p>Hi afegim la $cocoMilk i deixem cuinar tot a foc mitjà aproximadament uns 40 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (426, 213, 2, '<p>Añadimos la $cocoMilk y dejamos cocinar todo a fuego medio aproximadamente unos 40 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (427, 214, 1, '<p>Ho triturem tot amb la batedora.</p><p>Quan ho emplatem, ho podem decorar amb un fil d\'oli.</p>');
INSERT INTO `recipe_step_lang` VALUES (428, 214, 2, '<p>Trituramos todo con la batidora.</p><p>Cuando lo emplatamos, podemos decorarlo con un hilo de aceite.</p>');
INSERT INTO `recipe_step_lang` VALUES (429, 215, 1, '<p>Hidratem els $dehydratedCep en $water calenta.</p>');
INSERT INTO `recipe_step_lang` VALUES (430, 215, 2, '<p>Hidratamos los $dehydratedCep en $water caliente.</p>');
INSERT INTO `recipe_step_lang` VALUES (431, 216, 1, '<p>En una cassola baixa, sofregim la $onion picada amb una mica de $butter(0.33) i $salt durant uns 20 minuts: fins que estigui tova però sense agafar color.</p>');
INSERT INTO `recipe_step_lang` VALUES (432, 216, 2, '<p>En una cazuela baja, sofreímos la $onion picada con un poco de $butter(0.33) y $salt durante unos 20 minutos: hasta que esté blanda pero sin tomar color.</p>');
INSERT INTO `recipe_step_lang` VALUES (433, 217, 1, '<p>Escorrem els ceps (reservant l\'aigua) i els piquem una mica. Els afegim a la cassola i els saltegem uns minuts juntament amb la ceba.</p>');
INSERT INTO `recipe_step_lang` VALUES (434, 217, 2, '<p>Escurrimos los boletus (reservando el agua) y las picamos un poco. Los añadimos a la cazuela y los salteamos unos minutos junto con la cebolla.</p>');
INSERT INTO `recipe_step_lang` VALUES (435, 218, 1, '<p>En una cassola diferent, posem a bullir el $chickenBroth juntament amb l\'aigua d\'hidratar els ceps.</p>');
INSERT INTO `recipe_step_lang` VALUES (436, 218, 2, '<p>En una cazuela diferente, ponemos a hervir el $chickenBroth junto con el agua de hidratar las cepas.</p>');
INSERT INTO `recipe_step_lang` VALUES (437, 219, 1, '<p>Afegim a la cassola de la ceba l\'$rice i el $whiteWine i ho saltegem i removem fins que s\'evapori tot el líquid.</p>');
INSERT INTO `recipe_step_lang` VALUES (438, 219, 2, '<p>Añadimos a la cazuela de la cebolla el $rice y el $whiteWine y lo salteamos y removemos hasta que se evapore todo el líquido.</p>');
INSERT INTO `recipe_step_lang` VALUES (439, 220, 1, '<p>Quan el caldo estigui bullint, anem afegint-lo de mica en mica a l\'arròs i ho anem removent constantment amb el foc mitjà-alt. Mai ha d\'haver-hi massa caldo ni massa poc: a mesura que s\'evapori, n\'afegim més.</p><p>Passats uns 18 minuts, l\'arròs hauria d\'estar cuit.</p>');
INSERT INTO `recipe_step_lang` VALUES (440, 220, 2, '<p>Cuando el caldo esté hirviendo, lo vamos añadiendo paulatinamente al arroz y lo vamos removiendo constantemente con el fuego medio-alto. Nunca debe haber demasiado caldo ni demasiado poco: a medida que se evapore, añadimos más.</p><p>Pasados unos 18 minutos, el arroz debería estar cocido.</p>');
INSERT INTO `recipe_step_lang` VALUES (441, 221, 1, '<p>Afegim el $parmesan i la resta de la $butter(0.66) i ho continuem removent fins que es desfaci tot i s\'integrin tots els ingredients.</p><p>Ho podem servir amb una mica més de parmesà ratllat perquè cadascú s\'afegeixi al gust.</p>');
INSERT INTO `recipe_step_lang` VALUES (442, 221, 2, '<p>Añadimos el $parmesan y el resto de la $butter(0.66) y lo continuamos removiendo hasta que se deshaga todo y se integren todos los ingredientes.</p><p>Lo podemos servir con un poco más de parmesano rallado para que cada uno se añada al gusto.</p>');
INSERT INTO `recipe_step_lang` VALUES (443, 222, 1, '<p>En una paella amb un raig d\'$oliveOil, marquem el filet ($beefTenderloin o $oxTenderloin) i ho reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (444, 222, 2, '<p>En una sartén con un chorro de $oliveOil, marcamos el solomillo ($beefTenderloin o $oxTenderloin) y lo reservamos.</p>');
INSERT INTO `recipe_step_lang` VALUES (445, 223, 1, '<p>En una altra paella: piquem la $onion ben petita i la potxem amb un raig d\'$oliveOil i una mica de $salt.</p>');
INSERT INTO `recipe_step_lang` VALUES (446, 223, 2, '<p>En otra paella: picamos la $onion muy pequeña y la pochamos con un chorro de $oliveOil y un poco de $salto.</p>');
INSERT INTO `recipe_step_lang` VALUES (447, 224, 1, '<p>Mentrestant, netegem i piquem els $mushrooms i els afegim a la paella quan la ceba ja tingui un color daurat.</p>');
INSERT INTO `recipe_step_lang` VALUES (448, 224, 2, '<p>Mientras, limpiamos y picamos los $mushrooms y los añadimos a la sartén cuando la cebolla ya tenga un color dorado.</p>');
INSERT INTO `recipe_step_lang` VALUES (449, 225, 1, '<p>Afegim el $whiteWine, la $milk i esperem que s\'evaporin bé tots els líquids.</p><p>Afegim la $worcestershireSauce i cuinem durant 2 minuts més.</p><p>Ho reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (450, 225, 2, '<p>Añadimos $whiteWine, $milk y esperamos que se evaporen bien todos los líquidos.</p><p>Añadimos la $worcestershireSauce y cocinamos durante 2 minutos más.</p><p>Reservamos.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (451, 226, 1, '<p>Estenem un bon tros de $plasticWrap i hi repartim horitzontalment (però superposant-les) les làmines de $serranoHam. Sobre hi estendrem la salsa de ceba i xampinyons i, finalment, el $foie tallat en daus.</p><p>Salem una mica el filet i el pintem amb $dijonMustard.</p><p>Col·loquem el filet sobre el llit que hem preparat anteriorment, i l\'emboliquem com si fos un caramel amb l\'ajuda del film transparent, de manera que quedi ben pressionant i tancat.</p><p>Ho deixem reposar un mínim de <b>2 hores</b> a la nevera. Si ho pots deixar tota la nit: millor.</p>');
INSERT INTO `recipe_step_lang` VALUES (452, 226, 2, '<p>Extendemos un trozo de $plasticWrap y repartimos horizontalmente (pero superponiéndolas) las láminas de $serranoHam. Extenderemos sobre ella la salsa de cebolla y champiñones y, finalmente, el $foie cortado en dados.</p><p>Salemos un poco el solomillo y lo pintamos con $dijonMustard.</p><p>Colocamos el solomillo encima de la cama que hemos preparado anteriormente, y lo envolvemos como si fuera un caramelo con la ayuda del film transparente, de forma que quede bien presionante y cerrado.</p><p>Dejar reposar un mínimo de <b>2 horas</b> en la nevera. Si puedes dejarlo toda la noche: mejor.</p>');
INSERT INTO `recipe_step_lang` VALUES (453, 227, 1, '<p>Passades les hores de repòs, preescalfem el forn a 200ºC amb calor a dalt i a baix.</p>');
INSERT INTO `recipe_step_lang` VALUES (454, 227, 2, '<p>Pasadas las horas de reposo, precalentamos el horno a 200ºC con calor arriba y abajo.</p>');
INSERT INTO `recipe_step_lang` VALUES (455, 228, 1, '<p>Estenem la $puffPastry i a sobre li afegim la $filo (amb les làmines sobrants podeu fer una [63]).</p><p>Agafem la preparació guardada a la nevera i li traiem el film transparent. Ho col·loquem en un extrem de la pasta del full i ho emboliquem com si fos un regal.</p><p>Col·loquem el filet Wellington a la safata de forn, amb la part més lletja a l\'inferior i pintem la part exterior amb l\'$egg batut.</p>');
INSERT INTO `recipe_step_lang` VALUES (456, 228, 2, '<p>Extendemos la $puffPastry y encima le añadimos la $filo (con las láminas sobrantes puede hacer una [63]).</p><p>Cogemos la preparación guardada en la nevera y le sacamos el film transparente. Lo colocamos en un extremo de la hojaldre y lo envolvemos como si fuera un regalo.<br></p><p>Colocamos el solomillo Wellington en la bandeja de horno, con la parte más fea en el inferior y pintamos la parte exterior con el $egg batido.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (457, 229, 1, '<p>Ho cuinen al forn durant uns 30-40 minuts, comprovant que la pasta de full quedi ben daurada.</p>');
INSERT INTO `recipe_step_lang` VALUES (458, 229, 2, '<p>Lo cocinan en el horno durante unos 30-40 minutos, comprobando que el hojaldre quede bien dorado.</p>');
INSERT INTO `recipe_step_lang` VALUES (459, 230, 1, '<p>En un vas o recipient barregem l\'$water calenta amb el $freshYeast, l\'$oliveOil i la $milk fins que el llevat es dissolgui.</p><p>En un bol integrem bé la $flour, la $salt i el $sugar.</p>');
INSERT INTO `recipe_step_lang` VALUES (460, 230, 2, '<p>En un vaso o recipiente mezclamos el $water caliente con el $freshYeast, el $oliveOil y la $milk hasta que la levadura se disuelva.</p><p>En un bol integramos bien la $flour, la $salt y el $sugar.</p>');
INSERT INTO `recipe_step_lang` VALUES (461, 231, 1, '<p>Incorporem els elements lí­quids al bol de la farina i ho remenem amb una cullera fins que es pugui amassar amb les mans.</p><p>Una vegada que estigui tot ben integrat, ho deixiem reposar 10 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (462, 231, 2, '<p>Incorporamos los elementos líquidos en el cuenco de la harina y removemos con una cuchara hasta que se pueda amasar con las manos.</p><p>Una vez que está todo bien integrado, lo dejamos reposar 10 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (463, 232, 1, '<p>En una superfí­cie enfarinada, amassem uns 10 minuts fins a obtenir una textura llisa, homogènia i no enganxosa. Si és massa enganxosa: afegim farina, si és massa densa: aigua.</p><p>Formem una bola, ho posem al bol de nou, ho tapem amb un drap i ho deixem reposar fins que <b>dobli la seva mida</b> (aproximadament 2 hores).</p>');
INSERT INTO `recipe_step_lang` VALUES (464, 232, 2, '<p>En una superficie enharinada, amasamos unos 10 minutos hasta obtener una textura lisa, homogénea y no pegajosa. Si es demasiado pegajosa: añadimos harina, si es demasiado densa: agua.</p><p>Formamos una bola, lo ponemos en el bol de nuevo, lo tapamos con un paño y lo dejamos reposar hasta que <b>doble su tamaño</b> (aproximadamente 2 horas).<br></p>');
INSERT INTO `recipe_step_lang` VALUES (465, 233, 1, '<p>Dividim la massa en $diners i formarem els panets procurant no aixafar del tot el volum que hem guanyat: pessigant dels extrems cap al centre, i aquesta serà  la part inferior del nostre panet.</p>');
INSERT INTO `recipe_step_lang` VALUES (466, 233, 2, '<p>Dividimos la masa en $diners y formaremos los panecillos procurando no aplastar del todo el volumen que hemos ganado: pellizcando los extremos hacia el centro, y ésta será la parte inferior de nuestro panecillo.</p>');
INSERT INTO `recipe_step_lang` VALUES (467, 234, 1, '<p>En una safata de forn amb paper vegetal, col·loquem les $diners boles de massa, les pintem amb aigua i escampem les llavors de $whiteSesameSeeds. Ho tapem amb un drap i ho deixem reposar fins que <b>doblin la seva mida</b> (aproximadament 2 hores).</p>');
INSERT INTO `recipe_step_lang` VALUES (468, 234, 2, '<p>En una bandeja de horno con papel vegetal, colocamos las $diners bolas de masa, las pintamos con agua y esparcimos las semillas de $whiteSesameSeeds. Lo tapamos con un paño y lo dejamos reposar hasta que <b>doblen su tamaño</b> (aproximadamente 2 horas).</p>');
INSERT INTO `recipe_step_lang` VALUES (469, 235, 1, '<p>Preescalfem el forn a 210ºC (escalfor a dalt i a baix).</p><p>Col·loquem una font amb dos dits d\'aigua a la part inferior del forn.</p><p>Introduïm la safata dels panets a mitja alçada i els deixem coure durant 12 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (470, 235, 2, '<p>Precalentamos el horno a 210ºC (calor arriba y abajo).</p><p>Colocamos una fuente con dos dedos de agua en la parte inferior del horno.</p><p>Introducimos la bandeja de los panecillos a media altura y los dejamos cocer durante 12 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (471, 236, 1, '<p>En una paella a foc mitjà afegim:</p><ul><li>la $onion tallada en juliana</li><li>$oliveOil</li><li>$salt</li><li>$appleVinegar</li></ul><p>Ho barregem tot i ho tapem perquè els líquids vagin cuinant la ceba.</p>');
INSERT INTO `recipe_step_lang` VALUES (472, 236, 2, '<p>En una sartén a fuego medio añadimos:</p><ul><li>la $onion cortada en juliana</li><li>$oliveOil</li><li>$salt</li><li>$appleVinegar</li></ul><p>Mezclamos todo y tapamos para que los líquidos vayan cocinando la cebolla. Debemos conseguir que reduzca mucho y que quede de un color marrón dorado. Si es necesario, podemos añadir agua para poder cocinar más rato sin que se queme.</p>');
INSERT INTO `recipe_step_lang` VALUES (473, 237, 1, '<p>Quan la ceba comenci a estar transparent: baixem el foc, afegim $water i ho tapem perquè la ceba es segueixi caramel·litzant.</p><p>Hem d\'aconseguir que redueixi molt i que quedi d\'un color marró daurat (mínim 30 minuts, si cal: afegim més aigua). Com més estona la deixeu: més bona quedarà).</p><p>Quan creiem que ja està en el seu punt, podem pujar de nou el foc i acabar de reduir tots els líquids.</p>');
INSERT INTO `recipe_step_lang` VALUES (474, 237, 2, '<p>Cuando la cebolla empiece a estar transparente: bajamos el fuego, añadimos $water y lo tapamos para que la cebolla se siga caramelizando.</p><p>Debemos conseguir que reduzca mucho y que quede de un color marrón dorado (mínimo 30 minutos, si es necesario: añadimos más agua). Cuanto más rato la dejéis: mejor quedará).</p><p>Cuando creemos que ya está en su punto, podemos subir de nuevo el fuego y terminar de reducir todos los líquidos.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (475, 238, 1, '<p>Preescalfem el forn a 200ºC. Si el vostre forn té ventilador: activeu-lo.</p>');
INSERT INTO `recipe_step_lang` VALUES (476, 238, 2, '<p>Precalentamos el horno a 200ºC. Si vuestro horno tiene ventilador: activadlo.</p>');
INSERT INTO `recipe_step_lang` VALUES (477, 239, 1, '<p>Primer prepararem les patates i la ceba, ja que trigaran més a cuinar-se.</p><p>Tallem les $potato a la fornera (panadera) de mig centímetre de gruix aproximadament i les $onion en juliana.</p><p>En una safata de forn col·loquem totes les verdures i ho condimentem amb $oliveOil, $salt i $pepper. Ho repartim tot bé per la safata intercalant la ceba i la patata.</p>');
INSERT INTO `recipe_step_lang` VALUES (478, 239, 2, '<p>Primero prepararemos las patatas y la cebolla, ya que tardarán más en cocinarse.</p><p>Cortamos las $potato a la panadera de medio centímetro de grosor aproximadamente y las $onion en juliana.</p><p>En una bandeja de horno colocamos todas las verduras y lo condimentamos con $oliveOil, $salt y $pepper. Lo repartimos bien por la bandeja intercalando la cebolla y la patata.</p>');
INSERT INTO `recipe_step_lang` VALUES (479, 240, 1, '<p>Quan el forn estigui calent, introduïm la safata i cuinem les patates durant 40 minuts, remenant cada 10 minuts.</p><p>Si veiem que les patates s\'estan enganxant, podem afegir una mica més d\'oli.</p>');
INSERT INTO `recipe_step_lang` VALUES (480, 240, 2, '<p>Cuando el horno esté caliente, introducimos la bandeja y cocinamos las patatas durante 40 minutos, removiendo cada 10 minutos.</p><p>Si vemos que las patatas se están enganchando, podemos añadir un poco más de aceite.</p>');
INSERT INTO `recipe_step_lang` VALUES (481, 241, 1, '<p>Passats els primers 40 minuts, col·loquem les orades sobre de les patates. No cal salar-les ni res, simplement treure la tripa (podeu demanar que us la netegin a la peixateria).</p>');
INSERT INTO `recipe_step_lang` VALUES (482, 241, 2, '<p>Pasados los primeros 40 minutos, colocamos las doradas encima de las patatas. No hace falta salarlas ni nada, simplemente quitar la tripa (puede pedir que se la limpien en la pescadería).</p>');
INSERT INTO `recipe_step_lang` VALUES (483, 242, 1, '<p>Passats 20 minuts les orades han d\'estar llestes, però depèn una mica de la mida. Comproveu amb un ganivet que la carn se separa fàcilment de les espines. Si no és el cas: cuineu uns minuts més.</p>');
INSERT INTO `recipe_step_lang` VALUES (484, 242, 2, '<p>Pasados 20 minutos las doradas deben estar listas, pero depende un poco del tamaño. Compruebe con un cuchillo que la carne se separa fácilmente de las espinas. Si no es el caso: cocine unos minutos más.</p>');
INSERT INTO `recipe_step_lang` VALUES (485, 243, 1, '<p>Primer cal eliminar el líquid dels ingredients:</p><ul><li>Col·loca el $greekYogurt sobre un drap fi en un colador durant una hora perquè deixi anar els líquids.</li><li>Talla el $cucumber transversalment i, amb l\'ajuda d\'una cullera, elimina les llavors. Ratlla el cogombre i condimenta\'l amb una mica de $salt. Deixa\'l reposar en un colador durant una hora perquè perdi líquid.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (486, 243, 2, '<p>Primero es necesario eliminar el líquido de los ingredientes:</p><ul><li>Coloca el $greekYogurt sobre un paño fino en un colador durante una hora para que suelte los líquidos.</li><li>Corta el $cucumber transversalmente y, con la ayuda de una cuchara, elimina las semillas. Ralla el pepino y condimentalo con un poco de $salt. Déjalo reposar en un colador durante una hora para que pierda líquido.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (487, 244, 1, '<p>Mentrestant prepara la resta d\'ingredients:</p><ul><li>pica l\'$garlic molt fi o ratlla\'l</li><li>exprimeix la llimona per aconseguir el $lemonJuice</li><li>pica les fulles de $freshMint.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (488, 244, 2, '<p>Mientras prepara el resto de ingredientes:</p><ul><li>pica el $garlic muy fino o rallalo</li><li>exprime el limón para conseguir el $lemonJuice</li><li>pica las hojas de $freshMint.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (489, 245, 1, '<p>Passada l\'hora, en un bol mescla bé tots els ingredients: iogurt, cogombre ratllat, l\'all, el suc de llimona, la menta i la sal.</p><p>Per servir, hi pots tirar un raig d\'$virginOliveOil per sobre.</p>');
INSERT INTO `recipe_step_lang` VALUES (490, 245, 2, '<p>Pasada la hora, en un bol mezcla bien todos los ingredientes: yogur, pepino rallado, el ajo, el zumo de limón, la menta y la sal.</p><p>Para servir, puedes echar un chorrito de $virginOliveOil por encima.</p>');
INSERT INTO `recipe_step_lang` VALUES (491, 246, 1, '<p>En un processador d\'aliments afegeix els ingredients que formaran la nostra hamburguesa:</p><ul><li>el $salmon tallat a daus (sense pell ni espines)</li><li>l\'$garlic pelat</li><li>$onionPowder o $friedOnion</li><li>$sweetPaprika</li><li>$salt</li><li>$pepper</li><li>$semicuredCheese tallat a daus</li><li>$panko</li></ul><p>Ho triturem tot fins a obtenir una massa homogènia.</p>');
INSERT INTO `recipe_step_lang` VALUES (492, 246, 2, '<p>En un procesador de alimentos añade los ingredientes que formarán nuestra hamburguesa:</p><ul><li>el $salmon cortado en dados (sin piel ni espinas)</li><li>el $garlic pelado</li><li>$onionPowder o $friedOnion</li><li>$sweetPaprika</li><li>$salt</li><li>$pepper</li><li>$semicuredCheese cortado en dados</li><li>$panko</li></ul><p>Ho triturem tot fins a obtenir una massa homogènia.</p>');
INSERT INTO `recipe_step_lang` VALUES (493, 247, 1, '<p>Formem $diners hamburgueses amb l\'ajuda d\'un motlle o amb la mà.</p>');
INSERT INTO `recipe_step_lang` VALUES (494, 247, 2, '<p>Formamos $dinero hamburguesas con la ayuda de un molde o con la mano.</p>');
INSERT INTO `recipe_step_lang` VALUES (495, 248, 1, '<p>Tallem el $zucchini en làmines transversals fines.</p><p>El podem utilitzar així, però a mi m\'agrada passar-lo per la paella salpebrat i amb un raig d\'oli.</p>');
INSERT INTO `recipe_step_lang` VALUES (496, 248, 2, '<p>Cortamos el $zucchini en finas láminas transversales.</p><p>Podemos utilizarlo así, pero a mí me gusta pasarlo por la sartén salpimentado y con un chorrito de aceite.</p>');
INSERT INTO `recipe_step_lang` VALUES (497, 249, 1, '<p>Obrim els $hamburgerBun i els torrem una mica a la paella.</p><p>Mentrestant, encenem una paella a foc mitjà-alt i cuinem les hamburgueses per una banda durant 2-3 minuts. Al donar la volta: col·loquem una llesca de formatge i tapem la paella amb una tapa perquè el formatge es desfaci correctament i ho cuinem durant 2-3 minuts més.</p>');
INSERT INTO `recipe_step_lang` VALUES (498, 249, 2, '<p>Abrimos los $hamburgerBun y los tostamos un poco en la sartén.</p><p>Mientras, encendemos una sartén a fuego medio-alto y cocinamos las hamburguesas por un lado durante 2-3 minutos. Al dar la vuelta: colocamos una rebanada de queso y tapamos la sartén con una tapa para que el queso se deshaga correctamente y lo cocinamos durante 2-3 minutos más.</p>');
INSERT INTO `recipe_step_lang` VALUES (499, 250, 1, '<p>Emplatem: a la base del pa d\'hamburguesa hi untem una mica de $tzatziki, a sobre l\'hamburguesa de salmó i a sobre les làmines de carabassó.</p><p>Cobrim amb la tapa del pa, si voleu, aquesta també la podem untar de tzatziki.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (500, 250, 2, '<p>Emplatamos: en la base del pan de hamburguesa untamos un poco de $tzatziki, encima la hamburguesa de salmón y sobre las láminas de calabacín.</p><p>Cubrimos con la tapa del pan, si lo desea, ésta también la podemos untar de tzatziki.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (501, 251, 1, '<p>Preescalfem el forn a 200ºC, amb ventilador si en forn ho permet.</p>');
INSERT INTO `recipe_step_lang` VALUES (502, 251, 2, '<p>Precalentamos el horno a 200ºC, con ventilador si en horno lo permite.</p>');
INSERT INTO `recipe_step_lang` VALUES (503, 252, 1, '<p>Tallem l\'$eggplant per la meitat, i aquestes meitats les tallem en 6-8 grills, en forma de falca.</p><p>Condimentem els grills amb $salt, $pepper i un bon raig d\'oli d\'oliva i ho integrem tot molt bé.</p>');
INSERT INTO `recipe_step_lang` VALUES (504, 252, 2, '<p>Cortamos el $eggplant por la mitad, y estas mitades las cortamos en 6-8 gajos, en forma de cuña.</p><p>Condimentamos los gajos con $salto, $pepper y un buen chorro de aceite de oliva y lo integramos todo muy bien.</p>');
INSERT INTO `recipe_step_lang` VALUES (505, 253, 1, '<p>Col·loquem l\'albergínia en una safata de forn amb la pell cap per avall i deixant espai entre cada tros.</p><p>Les escalivem al forn durant 40 minuts. En acabar: ho deixem refredar durant al menys 30 minuts.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (506, 253, 2, '<p>Colocamos la berenjena en una bandeja de horno con la piel boca abajo y dejando espacio entre cada trozo.</p><p>Las escalivamos en el horno durante 40 minutos. Al terminar: lo dejamos enfriar durante al menos 30 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (507, 254, 1, '<p>Mentrestant, preparem l\'amanit. En un processador petit:</p><ul><li>$blackGarlic o $garlic</li><li>$thyme</li><li>$soySauce</li><li>$lemonJuice</li><li>$cayennePowder</li><li>$pureCocoaPowder</li><li>$oliveOil</li></ul><p>Ho triturem tot fins a integrar tots els ingredients en una salsa una mica densa.</p>');
INSERT INTO `recipe_step_lang` VALUES (508, 254, 2, '<p>Mientras, preparamos el aliño. En un procesador pequeño:</p><ul><li>$blackGarlic o $garlic</li><li>$thyme</li><li>$soySauce</li><li>$lemonJuice</li><li>$cayennePowder</li><li>$pureCocoaPowder</li><li>$oliveOil</li></ul><p>Trituramos todo hasta integrar todos los ingredientes en una salsa algo densa.</p>');
INSERT INTO `recipe_step_lang` VALUES (509, 255, 1, '<p>Quan l\'albergínia s\'hagi refredat, la col·loquem en un bol gran i ho mesclem bé amb la salsa amb compte de no trencar l\'albergínia.</p><p>Si pots, deixa-ho reposar durant una hora.</p>');
INSERT INTO `recipe_step_lang` VALUES (510, 255, 2, '<p>Cuando la berenjena se haya enfriado, la colocamos en un cuenco grande y lo mezclamos bien con la salsa con cuidado de no romper la berenjena.</p><p>Si puedes, déjalo reposar durante una hora.</p>');
INSERT INTO `recipe_step_lang` VALUES (511, 256, 1, '<p>Per emplatar: en un plat fem un llit de $yogurt i posem les albergínies a sobre. Decorem amb l\'$basil tallada en trossos, els $pineNut i un raig d\'oli d\'oliva.</p>');
INSERT INTO `recipe_step_lang` VALUES (512, 256, 2, '<p>Para emplatar: en un plato hacemos una cama de yogur y ponemos las berenjenas encima. Decoramos con el $basil cortada en trozos, los $pineNut y un chorro de aceite de oliva.</p>');
INSERT INTO `recipe_step_lang` VALUES (513, 257, 1, '<p>No llencis l\'$parmesanCrust de parmesà que sempre costa més de ratllar!</p><p>Talla-la en petits daus i col·loca\'ls en un plat sobre paper vegetal, procura que quedin ben repartits i espaiats.<br></p><p>Escalfa-ho al microones a màxima potència durant 4-5 minuts: et quedaran unes paletes de parmesà ben cruixents.</p>');
INSERT INTO `recipe_step_lang` VALUES (514, 257, 2, '<p>¡No tires el $parmesanCrust de parmesano que siempre cuesta más de rayar!</p><p>Córtala en pequeños dados y colócalos en un plato sobre papel vegetal, procura que queden bien repartidos y espaciados.</p><p>Caliéntalo en el microondas a máxima potencia durante 4-5 minutos: te quedarán unas paletas de parmesano bien crujientes.</p>');
COMMIT;

-- ----------------------------
-- Table structure for recipe_tag
-- ----------------------------
DROP TABLE IF EXISTS `recipe_tag`;
CREATE TABLE `recipe_tag` (
  `id_recipe` smallint(5) unsigned NOT NULL,
  `id_tag` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id_recipe`,`id_tag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of recipe_tag
-- ----------------------------
BEGIN;
INSERT INTO `recipe_tag` VALUES (1, 4);
INSERT INTO `recipe_tag` VALUES (1, 11);
INSERT INTO `recipe_tag` VALUES (1, 13);
INSERT INTO `recipe_tag` VALUES (1, 18);
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
INSERT INTO `recipe_tag` VALUES (47, 18);
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
INSERT INTO `recipe_tag` VALUES (52, 5);
INSERT INTO `recipe_tag` VALUES (52, 12);
INSERT INTO `recipe_tag` VALUES (53, 2);
INSERT INTO `recipe_tag` VALUES (53, 13);
INSERT INTO `recipe_tag` VALUES (54, 1);
INSERT INTO `recipe_tag` VALUES (54, 2);
INSERT INTO `recipe_tag` VALUES (54, 14);
INSERT INTO `recipe_tag` VALUES (54, 18);
INSERT INTO `recipe_tag` VALUES (55, 3);
INSERT INTO `recipe_tag` VALUES (55, 4);
INSERT INTO `recipe_tag` VALUES (55, 7);
INSERT INTO `recipe_tag` VALUES (55, 13);
INSERT INTO `recipe_tag` VALUES (57, 1);
INSERT INTO `recipe_tag` VALUES (57, 13);
INSERT INTO `recipe_tag` VALUES (58, 1);
INSERT INTO `recipe_tag` VALUES (58, 8);
INSERT INTO `recipe_tag` VALUES (58, 13);
INSERT INTO `recipe_tag` VALUES (59, 1);
INSERT INTO `recipe_tag` VALUES (59, 13);
INSERT INTO `recipe_tag` VALUES (60, 1);
INSERT INTO `recipe_tag` VALUES (60, 11);
INSERT INTO `recipe_tag` VALUES (60, 13);
INSERT INTO `recipe_tag` VALUES (60, 14);
INSERT INTO `recipe_tag` VALUES (61, 4);
INSERT INTO `recipe_tag` VALUES (61, 13);
INSERT INTO `recipe_tag` VALUES (61, 15);
INSERT INTO `recipe_tag` VALUES (61, 16);
INSERT INTO `recipe_tag` VALUES (62, 1);
INSERT INTO `recipe_tag` VALUES (62, 7);
INSERT INTO `recipe_tag` VALUES (62, 13);
INSERT INTO `recipe_tag` VALUES (63, 4);
INSERT INTO `recipe_tag` VALUES (63, 11);
INSERT INTO `recipe_tag` VALUES (63, 13);
INSERT INTO `recipe_tag` VALUES (63, 16);
INSERT INTO `recipe_tag` VALUES (63, 18);
INSERT INTO `recipe_tag` VALUES (64, 3);
INSERT INTO `recipe_tag` VALUES (64, 13);
INSERT INTO `recipe_tag` VALUES (64, 18);
INSERT INTO `recipe_tag` VALUES (65, 4);
INSERT INTO `recipe_tag` VALUES (65, 13);
INSERT INTO `recipe_tag` VALUES (66, 1);
INSERT INTO `recipe_tag` VALUES (66, 8);
INSERT INTO `recipe_tag` VALUES (66, 13);
INSERT INTO `recipe_tag` VALUES (66, 18);
INSERT INTO `recipe_tag` VALUES (67, 1);
INSERT INTO `recipe_tag` VALUES (67, 11);
INSERT INTO `recipe_tag` VALUES (67, 13);
INSERT INTO `recipe_tag` VALUES (68, 13);
INSERT INTO `recipe_tag` VALUES (68, 15);
INSERT INTO `recipe_tag` VALUES (69, 3);
INSERT INTO `recipe_tag` VALUES (69, 13);
INSERT INTO `recipe_tag` VALUES (69, 18);
INSERT INTO `recipe_tag` VALUES (70, 1);
INSERT INTO `recipe_tag` VALUES (70, 11);
INSERT INTO `recipe_tag` VALUES (70, 13);
INSERT INTO `recipe_tag` VALUES (71, 2);
INSERT INTO `recipe_tag` VALUES (71, 13);
INSERT INTO `recipe_tag` VALUES (71, 18);
INSERT INTO `recipe_tag` VALUES (72, 1);
INSERT INTO `recipe_tag` VALUES (72, 9);
INSERT INTO `recipe_tag` VALUES (72, 11);
INSERT INTO `recipe_tag` VALUES (72, 13);
INSERT INTO `recipe_tag` VALUES (73, 3);
INSERT INTO `recipe_tag` VALUES (73, 11);
INSERT INTO `recipe_tag` VALUES (73, 13);
INSERT INTO `recipe_tag` VALUES (73, 18);
INSERT INTO `recipe_tag` VALUES (74, 4);
INSERT INTO `recipe_tag` VALUES (74, 13);
INSERT INTO `recipe_tag` VALUES (74, 18);
COMMIT;

-- ----------------------------
-- Table structure for restaurant
-- ----------------------------
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant` (
  `id_restaurant` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` mediumint(8) unsigned DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `latitude` double(9,6) NOT NULL,
  `longitude` double(9,6) NOT NULL,
  `last_visit` date DEFAULT NULL,
  PRIMARY KEY (`id_restaurant`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of restaurant
-- ----------------------------
BEGIN;
INSERT INTO `restaurant` VALUES (1, 'Chamako', 67, 'C/ de Margarit 18, 08004 Barcelona', 41.373810, 2.163590, '2023-05-23');
INSERT INTO `restaurant` VALUES (2, 'Chez Planes', 68, 'Pl/ de Cerdagne 6, 66800 Saillagouse, França', 42.459430, 2.039250, '2023-04-01');
INSERT INTO `restaurant` VALUES (3, 'BelleBuòn', 70, 'Travessera de Gràcia 441, 08025 Barcelona', 41.411370, 2.173410, '2023-04-25');
INSERT INTO `restaurant` VALUES (4, 'Dr. Beer & Mr. Fried', 69, 'C/ de la Riera Alta 33, 08001 Barcelona', 41.380390, 2.165730, '2023-02-24');
INSERT INTO `restaurant` VALUES (5, 'Gringa All Day', NULL, 'C/ de Trafalgar 39, 08010 Barcelona', 41.390520, 2.178630, '2022-09-22');
INSERT INTO `restaurant` VALUES (6, 'Obrador DelaCrem', NULL, 'Pg/ de St. Joan 59, 08009 Barcelona', 41.396830, 2.172540, '2023-02-11');
INSERT INTO `restaurant` VALUES (7, 'Restaurante El Puerto', 77, 'R/ da República Arxentina 15, 36201 Vigo, Pontevedra', 42.119840, -8.854170, '2022-01-05');
INSERT INTO `restaurant` VALUES (8, 'Gastro Burger', 72, 'C/ d\'Enric Prat de la Riba 150, 08901 L\'Hospitalet de Llobregat', 41.363220, 2.110770, '2022-10-23');
INSERT INTO `restaurant` VALUES (9, 'Grado Sushi', 71, 'C/ de Vilamarí, 29, 08015 Barcelona', 41.375370, 2.154340, '2023-04-21');
INSERT INTO `restaurant` VALUES (10, 'Tasca Japonesa WAKASA 3.0', 73, 'C/ de Nàpols 287, 08025 Barcelona', 41.402830, 2.169370, '2021-10-14');
INSERT INTO `restaurant` VALUES (11, 'La Sala de l\'Isaac', NULL, 'C/ Barceloneta 44, 17124 Llofriu, Girona', 41.938200, 3.131020, '2022-08-13');
INSERT INTO `restaurant` VALUES (12, 'Indian Restaurant Shanti', NULL, 'C/ d\'Agustina Saragossa 3, 5, 08017 Barcelona', 41.391230, 2.134230, '2018-02-07');
INSERT INTO `restaurant` VALUES (13, 'Yoi Yoi Gion', NULL, 'Av/ Diagonal 383, 08008 Barcelona', 41.396550, 2.160620, '2019-03-19');
INSERT INTO `restaurant` VALUES (14, 'Pulpeira de Lola ~ La Antigua de Melide', NULL, 'Rda de Outeiro 135, 15007 A Coruña', 43.355000, -8.411860, '2022-01-09');
INSERT INTO `restaurant` VALUES (15, 'Carlota Akaneya', NULL, 'C/ del Pintor Fortuny 32, 08001 Barcelona', 41.382320, 2.168610, '2017-09-17');
INSERT INTO `restaurant` VALUES (16, 'La Bella Napoli', 76, 'C/ de Villarroel 101, 08011 Barcelona', 41.385060, 2.156800, '2019-03-17');
INSERT INTO `restaurant` VALUES (17, 'Soul Coffee Beer', 75, 'C/ Sant Pasqual 12, 46200 Paiporta, Valencia', 39.491800, -0.458260, '2020-10-25');
INSERT INTO `restaurant` VALUES (18, 'Can Roca', NULL, 'Ctra. de Taialà, 42, 17007 Girona', 41.994290, 2.806300, '2021-08-16');
INSERT INTO `restaurant` VALUES (19, 'Parking Pizza', 74, 'Pg/ de St. Joan 56, 08009 Barcelona', 41.396380, 2.174020, '2019-07-27');
INSERT INTO `restaurant` VALUES (20, 'Restaurant Can Dolç', NULL, 'Plaça Esglèsia s/n, 17256 Sant Feliu de Boada, Girona', 41.973750, 3.125150, '2022-08-10');
INSERT INTO `restaurant` VALUES (21, 'Sintonia', 78, 'C/ del Rosselló 249, 08008 Barcelona', 41.395090, 2.159260, '2023-03-23');
COMMIT;

-- ----------------------------
-- Table structure for restaurant_lang
-- ----------------------------
DROP TABLE IF EXISTS `restaurant_lang`;
CREATE TABLE `restaurant_lang` (
  `id_restaurant_lang` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_restaurant` smallint(5) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`id_restaurant_lang`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of restaurant_lang
-- ----------------------------
BEGIN;
INSERT INTO `restaurant_lang` VALUES (1, 1, 1, '<p>Mexicà fusió japonès. No deixeu de provar els Nachos chino chido.</p>');
INSERT INTO `restaurant_lang` VALUES (2, 1, 2, '<p>Mexicano fusión japonés. No dejéis de probar los Nachos chino chido.</p>');
INSERT INTO `restaurant_lang` VALUES (3, 2, 1, '<p>Foundues i raclette. També fan menú de migdia de cuina francesa.</p>');
INSERT INTO `restaurant_lang` VALUES (4, 2, 2, '<p>Foundues y raclette. También hacen menú de mediodía de cocina francesa.</p>');
INSERT INTO `restaurant_lang` VALUES (5, 3, 1, '<p>Italià. No deixeu de provar les seves lassanyes. Reserveu!</p>');
INSERT INTO `restaurant_lang` VALUES (6, 3, 2, '<p>Italiano. No dejéis de probar sus lasañas. ¡Reserve!</p>');
INSERT INTO `restaurant_lang` VALUES (7, 4, 1, '<p>Tots els plats amb pollastre fregit.</p>');
INSERT INTO `restaurant_lang` VALUES (8, 4, 2, '<p>Todos los platos con pollo frito.</p>');
INSERT INTO `restaurant_lang` VALUES (9, 5, 1, '<p>Un <i>diner</i> americà fusió amb plats mexicans.</p>');
INSERT INTO `restaurant_lang` VALUES (10, 5, 2, '<p>Un <i>diner</i> americano fusión con platos mexicanos.</p>');
INSERT INTO `restaurant_lang` VALUES (11, 6, 1, '<p>Gelateria</p>');
INSERT INTO `restaurant_lang` VALUES (12, 6, 2, '<p>Heladería</p>');
INSERT INTO `restaurant_lang` VALUES (13, 7, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (14, 7, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (15, 8, 1, '<p>Hamburgueses.</p>');
INSERT INTO `restaurant_lang` VALUES (16, 8, 2, '<p>Hamburguesas.</p>');
INSERT INTO `restaurant_lang` VALUES (17, 9, 1, '<p>El millor sushi de la ciutat.</p>');
INSERT INTO `restaurant_lang` VALUES (18, 9, 2, '<p>El mejor sushi de la ciudad.</p>');
INSERT INTO `restaurant_lang` VALUES (19, 10, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (20, 10, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (21, 11, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (22, 11, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (23, 12, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (24, 12, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (25, 13, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (26, 13, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (27, 14, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (28, 14, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (29, 15, 1, '<p>Japonès per una ocasió especial. Opció de menú de 55€ o 90€.</p>');
INSERT INTO `restaurant_lang` VALUES (30, 15, 2, '<p>Japonés por una ocasión especial. Opción de menú de 55€ o 90€.</p>');
INSERT INTO `restaurant_lang` VALUES (31, 16, 1, '<p>Trattoría Napolitana</p>');
INSERT INTO `restaurant_lang` VALUES (32, 16, 2, '<p>Trattoría Napolitana</p>');
INSERT INTO `restaurant_lang` VALUES (33, 17, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (34, 17, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (35, 18, 1, '<p>Cuina tradicional catalana. Menú del migdia increïble a molt bon preu. Reserveu!</p>');
INSERT INTO `restaurant_lang` VALUES (36, 18, 2, '<p>Cocina tradicional catalana. Menú del mediodía increíble a muy buen precio. ¡Reservad!</p>');
INSERT INTO `restaurant_lang` VALUES (37, 19, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (38, 19, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (39, 20, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (40, 20, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (41, 21, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (42, 21, 2, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `unit` VALUES (14);
INSERT INTO `unit` VALUES (15);
INSERT INTO `unit` VALUES (16);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
INSERT INTO `unit_lang` VALUES (27, 14, 1, 'rodanxa', 'rodanxes');
INSERT INTO `unit_lang` VALUES (28, 14, 2, 'rodaja', 'rodajas');
INSERT INTO `unit_lang` VALUES (29, 15, 1, 'llesca', 'llesques');
INSERT INTO `unit_lang` VALUES (30, 15, 2, 'rebanada', 'rebanadas');
INSERT INTO `unit_lang` VALUES (31, 16, 1, 'làmina', 'làmines');
INSERT INTO `unit_lang` VALUES (32, 16, 2, 'lámina', 'laminas');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
