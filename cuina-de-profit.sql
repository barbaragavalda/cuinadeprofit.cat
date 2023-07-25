/*
 Navicat Premium Data Transfer

 Source Server         : optisistem.com
 Source Server Type    : MySQL
 Source Server Version : 100517
 Source Host           : optisistem.com:3306
 Source Schema         : cuina-de-profit

 Target Server Type    : MySQL
 Target Server Version : 100517
 File Encoding         : 65001

 Date: 25/07/2023 16:56:05
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_content
-- ----------------------------
BEGIN;
INSERT INTO `appacman_content` VALUES (1, 'appacman_user', 'fa-user', 1, 1, NULL, 1);
INSERT INTO `appacman_content` VALUES (2, 'appacman_legal', 'fa-legal', 3, 1, '`order` ASC', 3);
INSERT INTO `appacman_content` VALUES (3, 'recipe', 'fa-cutlery', 2, 1, '`created` DESC', 1);
INSERT INTO `appacman_content` VALUES (4, 'recipe_ingredient', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `appacman_content` VALUES (5, 'recipe_step', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `appacman_content` VALUES (6, 'ingredient', 'fa-shopping-cart', 2, 1, '`name` ASC', 2);
INSERT INTO `appacman_content` VALUES (7, 'unit', 'fa-flask', 2, 1, '`name` ASC', 4);
INSERT INTO `appacman_content` VALUES (8, 'tag', 'fa-tag', 2, 1, '`order` ASC', 5);
INSERT INTO `appacman_content` VALUES (9, 'ingredient_category', 'fa-tag', 2, 1, '`name` ASC', 3);
INSERT INTO `appacman_content` VALUES (10, 'restaurant', 'fa-map-marker', 3, 1, '`name` ASC', 1);
INSERT INTO `appacman_content` VALUES (11, 'brava', 'fa-map', 3, 1, '`name` ASC', 2);
INSERT INTO `appacman_content` VALUES (12, 'brava_review', NULL, NULL, NULL, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
INSERT INTO `appacman_content_lang` VALUES (11, 11, 1, 'Braves');
INSERT INTO `appacman_content_lang` VALUES (12, 12, 1, 'Braves: ressenya');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

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
INSERT INTO `appacman_field` VALUES (13, 3, 'id_difficulty', 2, 6, 1, NULL);
INSERT INTO `appacman_field` VALUES (14, 3, 'diners', 13, 7, NULL, NULL);
INSERT INTO `appacman_field` VALUES (15, 3, 'image', 1, 11, 1, NULL);
INSERT INTO `appacman_field` VALUES (16, 3, 'description', NULL, 12, NULL, NULL);
INSERT INTO `appacman_field` VALUES (17, 3, 'recipe_tag', 6, 13, NULL, NULL);
INSERT INTO `appacman_field` VALUES (18, 3, 'recipe_ingredient', 21, 14, NULL, NULL);
INSERT INTO `appacman_field` VALUES (19, 3, 'recipe_step', 21, 15, NULL, NULL);
INSERT INTO `appacman_field` VALUES (20, 3, 'created', NULL, 17, 1, NULL);
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
INSERT INTO `appacman_field` VALUES (38, 3, 'prep_time', 13, 8, NULL, NULL);
INSERT INTO `appacman_field` VALUES (39, 3, 'cook_time', 13, 9, NULL, NULL);
INSERT INTO `appacman_field` VALUES (40, 3, 'link', 12, 16, NULL, NULL);
INSERT INTO `appacman_field` VALUES (41, 4, 'order_ingredient', 13, 6, NULL, NULL);
INSERT INTO `appacman_field` VALUES (42, 4, 'is_alternative', 3, 4, NULL, NULL);
INSERT INTO `appacman_field` VALUES (43, 7, 'plural', NULL, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (44, 6, 'id_recipe', 2, 4, 1, NULL);
INSERT INTO `appacman_field` VALUES (45, 8, 'order', 13, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (46, 4, 'is_optional', 3, 5, NULL, NULL);
INSERT INTO `appacman_field` VALUES (47, 3, 'is_highlighted', 3, 3, NULL, NULL);
INSERT INTO `appacman_field` VALUES (48, 8, 'is_highlighted', 3, 3, 1, NULL);
INSERT INTO `appacman_field` VALUES (49, 3, 'rest_time', 13, 10, NULL, NULL);
INSERT INTO `appacman_field` VALUES (50, 3, 'is_visible', 3, 4, 1, NULL);
INSERT INTO `appacman_field` VALUES (51, 10, 'name', NULL, 1, 1, 1);
INSERT INTO `appacman_field` VALUES (52, 10, 'text', 7, 3, 1, NULL);
INSERT INTO `appacman_field` VALUES (53, 10, 'latitude', 13, 5, NULL, NULL);
INSERT INTO `appacman_field` VALUES (54, 10, 'longitude', 13, 6, NULL, NULL);
INSERT INTO `appacman_field` VALUES (55, 10, 'last_visit', 26, 7, NULL, NULL);
INSERT INTO `appacman_field` VALUES (56, 10, 'address', NULL, 4, NULL, NULL);
INSERT INTO `appacman_field` VALUES (57, 10, 'image', 1, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (59, 11, 'id_brava_type', 2, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (60, 11, 'name', NULL, 1, 1, 1);
INSERT INTO `appacman_field` VALUES (61, 11, 'address', NULL, 6, 1, NULL);
INSERT INTO `appacman_field` VALUES (62, 11, 'latitude', 13, 7, NULL, NULL);
INSERT INTO `appacman_field` VALUES (63, 11, 'longitude', 13, 8, NULL, NULL);
INSERT INTO `appacman_field` VALUES (64, 11, 'text', NULL, 9, NULL, NULL);
INSERT INTO `appacman_field` VALUES (65, 11, 'created', NULL, 11, NULL, NULL);
INSERT INTO `appacman_field` VALUES (66, 11, 'brava_review', 27, 10, 1, NULL);
INSERT INTO `appacman_field` VALUES (67, 12, 'id_brava', 22, NULL, NULL, NULL);
INSERT INTO `appacman_field` VALUES (68, 12, 'image', 1, 1, NULL, NULL);
INSERT INTO `appacman_field` VALUES (69, 12, 'amount', 13, 3, NULL, NULL);
INSERT INTO `appacman_field` VALUES (70, 12, 'potatoes', 13, 4, NULL, NULL);
INSERT INTO `appacman_field` VALUES (71, 12, 'sauce', 13, 5, NULL, NULL);
INSERT INTO `appacman_field` VALUES (72, 12, 'score', 13, 6, NULL, NULL);
INSERT INTO `appacman_field` VALUES (73, 12, 'review', 7, 7, NULL, NULL);
INSERT INTO `appacman_field` VALUES (74, 12, 'last_visit', NULL, 8, NULL, NULL);
INSERT INTO `appacman_field` VALUES (75, 11, 'is_highlighted', 3, 5, NULL, NULL);
INSERT INTO `appacman_field` VALUES (76, 12, 'price', 13, 2, NULL, NULL);
INSERT INTO `appacman_field` VALUES (77, 11, 'is_closed', 3, 4, 1, NULL);
INSERT INTO `appacman_field` VALUES (78, 11, 'is_restaurant', 3, 3, NULL, NULL);
INSERT INTO `appacman_field` VALUES (79, 3, 'recipe_appacman_user', 28, 2, 1, NULL);
INSERT INTO `appacman_field` VALUES (80, 3, 'is_reviewed', 3, 5, 1, NULL);
INSERT INTO `appacman_field` VALUES (81, 7, 'is_unitary', 3, 3, 1, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

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
INSERT INTO `appacman_field_lang` VALUES (59, 59, 1, 'Tipus', NULL);
INSERT INTO `appacman_field_lang` VALUES (60, 60, 1, 'Nom', NULL);
INSERT INTO `appacman_field_lang` VALUES (61, 61, 1, 'Adreça', NULL);
INSERT INTO `appacman_field_lang` VALUES (62, 62, 1, 'Latitud', NULL);
INSERT INTO `appacman_field_lang` VALUES (63, 63, 1, 'Longitud', NULL);
INSERT INTO `appacman_field_lang` VALUES (64, 64, 1, 'Text', NULL);
INSERT INTO `appacman_field_lang` VALUES (65, 65, 1, 'Data creació', NULL);
INSERT INTO `appacman_field_lang` VALUES (66, 66, 1, 'Ressenyes', NULL);
INSERT INTO `appacman_field_lang` VALUES (67, 67, 1, 'ID Brava', NULL);
INSERT INTO `appacman_field_lang` VALUES (68, 68, 1, 'Imatge', NULL);
INSERT INTO `appacman_field_lang` VALUES (69, 69, 1, 'Quantitat', NULL);
INSERT INTO `appacman_field_lang` VALUES (70, 70, 1, 'Patates', NULL);
INSERT INTO `appacman_field_lang` VALUES (71, 71, 1, 'Salsa', NULL);
INSERT INTO `appacman_field_lang` VALUES (72, 72, 1, 'Nota final', NULL);
INSERT INTO `appacman_field_lang` VALUES (73, 73, 1, 'Ressenya', NULL);
INSERT INTO `appacman_field_lang` VALUES (74, 74, 1, 'Data', NULL);
INSERT INTO `appacman_field_lang` VALUES (75, 75, 1, 'Destacades?', NULL);
INSERT INTO `appacman_field_lang` VALUES (76, 76, 1, 'Preu', NULL);
INSERT INTO `appacman_field_lang` VALUES (77, 77, 1, 'Tancat?', NULL);
INSERT INTO `appacman_field_lang` VALUES (78, 78, 1, 'Restaurant?', NULL);
INSERT INTO `appacman_field_lang` VALUES (79, 79, 1, 'Autors', NULL);
INSERT INTO `appacman_field_lang` VALUES (80, 80, 1, 'Revisat?', NULL);
INSERT INTO `appacman_field_lang` VALUES (81, 81, 1, 'Unitari?', NULL);
COMMIT;

-- ----------------------------
-- Table structure for appacman_field_type
-- ----------------------------
DROP TABLE IF EXISTS `appacman_field_type`;
CREATE TABLE `appacman_field_type` (
  `id_appacman_field_type` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_field_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

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
INSERT INTO `appacman_field_type` VALUES (27, 'bravaImage');
INSERT INTO `appacman_field_type` VALUES (28, 'selectMultiEncryptedTwoWay');
COMMIT;

-- ----------------------------
-- Table structure for appacman_file
-- ----------------------------
DROP TABLE IF EXISTS `appacman_file`;
CREATE TABLE `appacman_file` (
  `id_appacman_file` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_appacman_file`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8;

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
INSERT INTO `appacman_file` VALUES (79, '79_img_5989.webp');
INSERT INTO `appacman_file` VALUES (80, '80_img_1099.webp');
INSERT INTO `appacman_file` VALUES (81, '81_img_1208.webp');
INSERT INTO `appacman_file` VALUES (82, '82_img_2013.webp');
INSERT INTO `appacman_file` VALUES (83, '83_img_1098.webp');
INSERT INTO `appacman_file` VALUES (84, '84_img_3478.webp');
INSERT INTO `appacman_file` VALUES (85, '85_img_4700.webp');
INSERT INTO `appacman_file` VALUES (86, '86_img_0686.webp');
INSERT INTO `appacman_file` VALUES (87, '87_img_1720.webp');
INSERT INTO `appacman_file` VALUES (88, '88_5actvi-fm0wv4d1gg9yo1fk7hg1esvmuchntodlk6pzfc0wrcg4xl6vxi1liljixdhs5sp7igep6pl8onaivyihqwc-malffih4gjm0dcuiaejdxu-bkrqs4htxmk0blhnp4moaz7vjz9akstufatpzbhcs90ltckckn85qrs6xvcpe32fcn4bgemhsucbwu_hq.webp');
INSERT INTO `appacman_file` VALUES (89, '89_img_7450.webp');
INSERT INTO `appacman_file` VALUES (90, '90_img_5371.webp');
INSERT INTO `appacman_file` VALUES (91, '91_img_1451.webp');
INSERT INTO `appacman_file` VALUES (92, '92_img_3351.webp');
INSERT INTO `appacman_file` VALUES (93, '93_img_6309.webp');
INSERT INTO `appacman_file` VALUES (94, '94_img_6074.webp');
INSERT INTO `appacman_file` VALUES (95, '95_img_4125.webp');
INSERT INTO `appacman_file` VALUES (96, '96_img_3331.webp');
INSERT INTO `appacman_file` VALUES (97, '97_img_5690.webp');
INSERT INTO `appacman_file` VALUES (98, '98_img_3131.webp');
INSERT INTO `appacman_file` VALUES (99, '99_img_2039.webp');
INSERT INTO `appacman_file` VALUES (100, '100_img_9510.webp');
INSERT INTO `appacman_file` VALUES (101, '101_img_9510.webp');
INSERT INTO `appacman_file` VALUES (102, '102_img_5927.webp');
INSERT INTO `appacman_file` VALUES (103, '103_img_4253.webp');
INSERT INTO `appacman_file` VALUES (104, '104_img_3568.webp');
INSERT INTO `appacman_file` VALUES (105, '105_img_0297.webp');
INSERT INTO `appacman_file` VALUES (106, '106_img_2672.webp');
INSERT INTO `appacman_file` VALUES (107, '107_img_0845.webp');
INSERT INTO `appacman_file` VALUES (108, '108_img_7371.webp');
INSERT INTO `appacman_file` VALUES (109, '109_img_7122.webp');
INSERT INTO `appacman_file` VALUES (110, '110_img_7122.webp');
INSERT INTO `appacman_file` VALUES (111, '111_img_5534.webp');
INSERT INTO `appacman_file` VALUES (112, '112_img_2966.webp');
INSERT INTO `appacman_file` VALUES (113, '113_img_4010.webp');
INSERT INTO `appacman_file` VALUES (114, '114_img_4278.webp');
INSERT INTO `appacman_file` VALUES (115, '115_img_4352.webp');
INSERT INTO `appacman_file` VALUES (116, '116_cafe__co.webp');
INSERT INTO `appacman_file` VALUES (117, '117_278368538_701219657891574_1399965099999004140_n.webp');
INSERT INTO `appacman_file` VALUES (118, '118_286935493_330506339090944_5500488206277472559_n-list.webp');
INSERT INTO `appacman_file` VALUES (119, '119_317366470_1340111170074067_7690156743771653001_n.webp');
INSERT INTO `appacman_file` VALUES (120, '120_340304750_220090150702557_2057031313925988584_n.webp');
INSERT INTO `appacman_file` VALUES (121, '121_img_7323.webp');
INSERT INTO `appacman_file` VALUES (122, '122_img_7324.webp');
INSERT INTO `appacman_file` VALUES (123, '123_img_2026.webp');
INSERT INTO `appacman_file` VALUES (124, '124_img_0735.webp');
INSERT INTO `appacman_file` VALUES (125, '125_img_1671.webp');
INSERT INTO `appacman_file` VALUES (126, '126_img_2991.webp');
INSERT INTO `appacman_file` VALUES (127, '127_img_5568.webp');
INSERT INTO `appacman_file` VALUES (128, '128_5actvi-gnjkxwep2ofepwgi7cxvqflo53o68csv6cgi8vpxnsjb2uqui3vujiedjhn5vsmvnci_rbl6ixa7wbt_rywdkguobzxuxfg442lcj7s3jgdbploekcevhs5u7oi6bwcj4upi29xvjydnicqgnibuhg-nkkmfxvwjidcshfp6kcegz8eswgn_qnxnv5.webp');
INSERT INTO `appacman_file` VALUES (129, '129_5actvi-hxjhatvqseaferutd2aeexb1775e5lrxkpdpjisnsiyes5arhxet8uon6mljcpslcoolioxu8ffvxmtesztgyywg4gdxek89x6oi7tw8cll3b3xe-jae9_fl5qj-upoksyg6ysm6ne7k7y8h3yznttzgdcfdohchdlre5jje_znsvb6nsqhemzakyw.webp');
INSERT INTO `appacman_file` VALUES (130, '130_img_2608.webp');
INSERT INTO `appacman_file` VALUES (131, '131_img_0063.webp');
INSERT INTO `appacman_file` VALUES (132, '132_5actvi-f5gh7kozufojj76zfhbzelccz8p220qlnemvtyc81ggrozre_dzpt98epcjccvtftv0gpy44f4fkuxplfpgsu77zsl7vkh32kh59pt4kjlesctbxllemsfgndsmbetnvvpysscg326onchvwa1dzl7ptiy-8pigeemcif2kn2ea24z-mkwwr7q_otk.webp');
INSERT INTO `appacman_file` VALUES (133, '133_img_2786.webp');
INSERT INTO `appacman_file` VALUES (134, '134_img_6737.webp');
INSERT INTO `appacman_file` VALUES (135, '135_img_8128.webp');
INSERT INTO `appacman_file` VALUES (136, '136_img_1383.webp');
INSERT INTO `appacman_file` VALUES (137, '137_img_7864.webp');
INSERT INTO `appacman_file` VALUES (138, '138_img_6321.webp');
INSERT INTO `appacman_file` VALUES (139, '139_5actvi-f1xvp--qx2kayqo7pgh2jfilvhlkbcoebk7xa9zflfaxc5gle9lvbfa6dfsu5r4mq0li_8s0vofiyjbirpqadsh6piatfiwhwics7kz4finoqjmexocfipzbvga2oug6wwxyasl3zziy3a211uq0eeqabdxxeiq4zqnfxzlph0hetnuo8ugyps-unx.webp');
INSERT INTO `appacman_file` VALUES (140, '140_img_1380.webp');
INSERT INTO `appacman_file` VALUES (141, '141_img_6555.webp');
INSERT INTO `appacman_file` VALUES (142, '142_img_1724.webp');
INSERT INTO `appacman_file` VALUES (143, '143_img_2572.webp');
INSERT INTO `appacman_file` VALUES (144, '144_5actvi-hyx9verqrbt1nrekr632d8yv9hoj4ncxuxi7ysp7_dprrku1bts4ovyhxq7xdydu9ojv4xig7onjr9ofg7h0isfgchobsf4jcnerxywhsyj-ra_jxuwssiy0hish8uhnf9ys7x6tgaykrondvgfxkhbtysapeqaosh3_7e7gy0qbesmogukcpvwnbt.webp');
INSERT INTO `appacman_file` VALUES (145, '145_img_7432.webp');
INSERT INTO `appacman_file` VALUES (146, '146_img_7431.webp');
INSERT INTO `appacman_file` VALUES (147, '147_img_2773.webp');
INSERT INTO `appacman_file` VALUES (148, '148_img_4941.webp');
INSERT INTO `appacman_file` VALUES (149, '149_img_e2804.webp');
INSERT INTO `appacman_file` VALUES (150, '150_img_4487.webp');
INSERT INTO `appacman_file` VALUES (151, '151_img_4488.webp');
INSERT INTO `appacman_file` VALUES (152, '152_img_5291.webp');
INSERT INTO `appacman_file` VALUES (153, '153_img_4654.webp');
INSERT INTO `appacman_file` VALUES (154, '154_img_0047.webp');
INSERT INTO `appacman_file` VALUES (155, '155_5actvi-fgeu6oigzw_zspbwbo9xtqqcy_y3rnteavnrl5t5tq4si1wi8qhsspcl5tvnnfyydppzwdwyuy8rw1j_yntrtqpezj6h0yju2fnlx1pjvawocm8kn5naw4bqotw3n6zjzm92n_p3c8kngelfvapjcnjiklhngu3map1yoopc2t5c0c_x-dwltg9xga.webp');
INSERT INTO `appacman_file` VALUES (156, '156_img_6385.webp');
INSERT INTO `appacman_file` VALUES (157, '157_img_1456.webp');
INSERT INTO `appacman_file` VALUES (158, '158_img_7976.webp');
INSERT INTO `appacman_file` VALUES (159, '159_img_1324.webp');
INSERT INTO `appacman_file` VALUES (160, '160_img_5708.webp');
INSERT INTO `appacman_file` VALUES (161, '161_img_4676.webp');
INSERT INTO `appacman_file` VALUES (162, '162_img_3151.webp');
INSERT INTO `appacman_file` VALUES (163, '163_img_6244.webp');
INSERT INTO `appacman_file` VALUES (164, '164_img_6325.webp');
INSERT INTO `appacman_file` VALUES (165, '165_photo-31-03-2018-19-10-29.webp');
INSERT INTO `appacman_file` VALUES (166, '166_img_0420.webp');
INSERT INTO `appacman_file` VALUES (167, '167_img_7259.webp');
INSERT INTO `appacman_file` VALUES (168, '168_img_4383.webp');
INSERT INTO `appacman_file` VALUES (169, '169_img_6103.webp');
INSERT INTO `appacman_file` VALUES (170, '170_img_7224.webp');
INSERT INTO `appacman_file` VALUES (172, '172_img_6503.webp');
INSERT INTO `appacman_file` VALUES (173, '173_img_2898.webp');
INSERT INTO `appacman_file` VALUES (174, '174_img_5995.webp');
INSERT INTO `appacman_file` VALUES (175, '175_img_6089.webp');
INSERT INTO `appacman_file` VALUES (176, '176_img_1221.webp');
INSERT INTO `appacman_file` VALUES (177, '177_drrje8617.webp');
INSERT INTO `appacman_file` VALUES (178, '178_img_5292.webp');
INSERT INTO `appacman_file` VALUES (179, '179_img_7397.webp');
INSERT INTO `appacman_file` VALUES (180, '180_img_2227.webp');
INSERT INTO `appacman_file` VALUES (181, '181_img_1794.webp');
INSERT INTO `appacman_file` VALUES (182, '182_img_6684.webp');
INSERT INTO `appacman_file` VALUES (183, '183_img_4582.webp');
INSERT INTO `appacman_file` VALUES (184, '184_5actvi-f8tugry41t-pxhn-xgt7vgqe_eihgjnwbpqbc-pse3plmx2ztw4wc1umonii6hj566ar518wde4ndxsmsjofbbnfs8z22pktlndave59ig4w7y00rpmmk3enekyzka9mz40-nmcb--m974ij5zrdnf0b-achpneeaogadmkzjooozlkszuvbyqbpry.webp');
INSERT INTO `appacman_file` VALUES (185, '185_img_7327.webp');
INSERT INTO `appacman_file` VALUES (186, '186_img_7408.webp');
INSERT INTO `appacman_file` VALUES (188, '188_img_8625.webp');
INSERT INTO `appacman_file` VALUES (190, '190_img_1779.webp');
INSERT INTO `appacman_file` VALUES (191, '191_img_8095.webp');
INSERT INTO `appacman_file` VALUES (192, '192_img_5220.webp');
INSERT INTO `appacman_file` VALUES (193, '193_img_0483.webp');
INSERT INTO `appacman_file` VALUES (194, '194_5actvi-hryyo8fjxlu_xjhvy7nyb1ogmdkslq4yqs5jot3fyxxvfsc4bf4-ysc49xmttaydkvi-n9qpwrolekz4gjhad2zfpy-vytmyhdxqy3jjw3zx5tmpp5et8n_k8vythn1yg_pmvkemmdgyf4yeosdgcmapcskur_n_awqt3y83h6fdxdrpssoafzrddy.webp');
INSERT INTO `appacman_file` VALUES (195, '195_img_2462.webp');
INSERT INTO `appacman_file` VALUES (196, '196_5actvi-f_d7ehrvsub9s0-dfaor0uopl_stjzr0rfngngmneemf-nrmxti525ti4howol89gpbghwdy7fifgkliytlcnmxmqgxjjrc2lsuej0h9pqzzlnldtelxwunvs9loiaiixrqzmnrwwlagevuhde5zgkmvqnbvotsea_nibc4v4eeo2mohdly22m8thq.webp');
INSERT INTO `appacman_file` VALUES (197, '197_img_1250.webp');
INSERT INTO `appacman_file` VALUES (198, '198_img_1509.webp');
INSERT INTO `appacman_file` VALUES (199, '199_img_4085.webp');
INSERT INTO `appacman_file` VALUES (200, '200_img_6241.webp');
INSERT INTO `appacman_file` VALUES (201, '201_img_2657.webp');
INSERT INTO `appacman_file` VALUES (202, '202_img_6924.webp');
INSERT INTO `appacman_file` VALUES (203, '203_img_0952.webp');
INSERT INTO `appacman_file` VALUES (204, '204_img_1479.webp');
INSERT INTO `appacman_file` VALUES (205, '205_img_3333.webp');
INSERT INTO `appacman_file` VALUES (206, '206_img_6721.webp');
INSERT INTO `appacman_file` VALUES (207, '207_img_2012.webp');
INSERT INTO `appacman_file` VALUES (208, '208_img_5286.webp');
INSERT INTO `appacman_file` VALUES (209, '209_img_4851.webp');
INSERT INTO `appacman_file` VALUES (210, '210_5actvi-h8empoyj0wj_md5nbdtyw_t1r-x3al7mol_qj5dbrjpcksnrw1_rqp6u8pe72pczoxrycrsl6o4wzry3eur3rg1b-2l2dfqpox7zvonhe1lys3xpwylq-2baesfyos4rsfhzzo5ua664z7o8u4z1n10xn1cwqhcy_d30xtjacyunzrwqchz-y4cs8g.webp');
INSERT INTO `appacman_file` VALUES (211, '211_5actvi-f5sm2ldnd9si-8gv0pezukngszuqlrkijrxk1z5z_u6qfc1vq40oe6ucb1hmnmnfmbpjuaknwiduykmeqcmlsmmadluopxgjkrb0jbndsi2tp4odep3b01di_qxsrorts_rd30knfbrai37k4jecvxqoohxl7n00xc-9bndladj-mnzumpfw-y4ffw.webp');
INSERT INTO `appacman_file` VALUES (212, '212_img_7532.webp');
INSERT INTO `appacman_file` VALUES (213, '213_img_7529.webp');
INSERT INTO `appacman_file` VALUES (214, '214_img_7531.webp');
INSERT INTO `appacman_file` VALUES (215, '215_img_4417.webp');
INSERT INTO `appacman_file` VALUES (216, '216_img_1129.webp');
INSERT INTO `appacman_file` VALUES (217, '217_img_5277.webp');
INSERT INTO `appacman_file` VALUES (218, '218_5actvi-gles65u8zxzrep__valua_bzfz76o6gykpqpnlgssjvehj3176l5k9vjray6cnaxmzrcyy5-irtplblqcc1tp03-c4zcoqc2epbifnpacbooz2omfhzpq2yo8v1ozie7ktzk-ysxjnu1kbor0c7ovb-2ruwsuvh3jkcdufbm5u7alkclgqm3gsldip.webp');
INSERT INTO `appacman_file` VALUES (219, '219_img_2907.webp');
INSERT INTO `appacman_file` VALUES (220, '220_img_5454.webp');
INSERT INTO `appacman_file` VALUES (221, '221_img_2873.webp');
INSERT INTO `appacman_file` VALUES (222, '222_5actvi-eu3sogqsgthrg-3mkxnfjnrtr8y5sedvqflweejajvwjhk3w2mwdqz_jch4qkzjvz2ppkwbeyd9d-wcgtqt6wgbpxqggct0yhzqjfozbyueh9psulippvqtix9dgkzxt7v3vz0dujhjh2ezgeoglzsinnzstoql5nmaz02_2f9oeagnphbwnitr3cz.webp');
INSERT INTO `appacman_file` VALUES (223, '223_img_1928.webp');
INSERT INTO `appacman_file` VALUES (224, '224_img_6721.webp');
INSERT INTO `appacman_file` VALUES (225, '225_img_8893.webp');
INSERT INTO `appacman_file` VALUES (226, '226_img_1473.webp');
INSERT INTO `appacman_file` VALUES (227, '227_img_1545.webp');
INSERT INTO `appacman_file` VALUES (228, '228_5actvi-ef9z7z5t_62nn0dkeamn2_emk13zpeyd1gakwg5y-doenxh4ecmcyqzddvtsnckl3ury23tkijkza_frtyerutyqqnzcprfx3w_x5barkadglz2fmy6ae0wgxc0dwvo8p8axprxfmjqptcjblsqhlh2y1ohjdaz7he1ugebmqpwdrjtoks5eusi40e.webp');
INSERT INTO `appacman_file` VALUES (229, '229_img_5311.webp');
INSERT INTO `appacman_file` VALUES (230, '230_img_1560.webp');
INSERT INTO `appacman_file` VALUES (231, '231_img_1039.webp');
INSERT INTO `appacman_file` VALUES (232, '232_5actvi-efixqoqtgkp5nazjg2ezqcwcdsiktnb8tghq_kngvbsnutundmoz31ehw2y-i5gfbuq3uymiqzy5v-w8itqn0iqcg2acyjgarccp1hoyahzw8copgtzye1iygawwemudylhncpgq1b8kefutf2freglv5uswjz4yjwtvjjzlsjvxuyzsdwll4drr8w.webp');
INSERT INTO `appacman_file` VALUES (233, '233_img_1198.webp');
INSERT INTO `appacman_file` VALUES (234, '234_img_3381.webp');
INSERT INTO `appacman_file` VALUES (235, '235_img_3193.webp');
INSERT INTO `appacman_file` VALUES (236, '236_5actvi-e863merlvpoz8j2w42l0aouo3t5xynbtnlgbpyswxzdy6dz7lcner6rullirf5fz4caavxp7cvhfnqblgvluz-zuyqxz7yfno1nl0qfmldq9cwi_vzfei770n4emnymvu_pugb5xyxslvtqhsrzk14zhotbvq1qbgr6qhqs8phrpyypha_8pehfmcp.webp');
INSERT INTO `appacman_file` VALUES (237, '237_img_2622.webp');
INSERT INTO `appacman_file` VALUES (238, '238_img_3695.webp');
INSERT INTO `appacman_file` VALUES (239, '239_img_1524.webp');
INSERT INTO `appacman_file` VALUES (240, '240_img_2514.webp');
INSERT INTO `appacman_file` VALUES (241, '241_img_7955.webp');
INSERT INTO `appacman_file` VALUES (242, '242_img_6065.webp');
INSERT INTO `appacman_file` VALUES (243, '243_img_7966.webp');
INSERT INTO `appacman_file` VALUES (244, '244_5actvi-gwoxlz-fkgqgnuu7zohs-_uyg5idgogiq67wtr4m-ckqs6p9z7_iksc5kdiqgml4oiyxjq3q6eqnhuymczw24mw1qlrz5lzgfai10pjra8uyv_pnxdgfvsksegla7b9a7uvjcwyo-ydkdzwb_e_yug-tvvwisywospzan6h8tq_zh_ksajewvfs8gp.webp');
INSERT INTO `appacman_file` VALUES (245, '245_img_6180.webp');
INSERT INTO `appacman_file` VALUES (246, '246_img_4381.webp');
INSERT INTO `appacman_file` VALUES (247, '247_5actvi-ekosh_qgsxoookkdr4vqbs1k7abqjgmdajncrzfyvl4oplr-wwamzq1prrf8k7etc6jowtejvfvhnmhhco9zjmunho1h1ocflmtfmjf90os6oqaxjwd1_xzxae0pbptsfwyftvv5ktwaq73rfrqijroy6xfmzrvb5ufqf4cese-vtxgyuszieassqr-eniftrv6fvf2ymp_iaqmdgkk06hoibtohlvpdzx.webp');
INSERT INTO `appacman_file` VALUES (248, '248_img_e2202.webp');
INSERT INTO `appacman_file` VALUES (249, '249_5actvi-gfaxi6ntc6btan0pmwpanx13b_wh_oxmrjtzx0fwkf0qlxkq03tj_1hzs81tmvp761on987a8ke8sm035p2cnuq5ychqiialcta0edru-r3gisanur_1ofwd3x2drt9jvetwtg7w_syq9umma9stltx7upp4dtuxssdukpzu0_tcsq_0yzuyeqsrnf.webp');
INSERT INTO `appacman_file` VALUES (250, '250_img_5669.webp');
INSERT INTO `appacman_file` VALUES (251, '251_img_1016.webp');
INSERT INTO `appacman_file` VALUES (252, '252_img_6126.webp');
INSERT INTO `appacman_file` VALUES (254, '254_img_2261.webp');
INSERT INTO `appacman_file` VALUES (255, '255_img_1554.webp');
INSERT INTO `appacman_file` VALUES (256, '256_img_0023.webp');
INSERT INTO `appacman_file` VALUES (257, '257_img_1854.webp');
INSERT INTO `appacman_file` VALUES (258, '258_img_3547.webp');
INSERT INTO `appacman_file` VALUES (259, '259_img_3406.webp');
INSERT INTO `appacman_file` VALUES (260, '260_img_1240.webp');
INSERT INTO `appacman_file` VALUES (261, '261_img_2074.webp');
INSERT INTO `appacman_file` VALUES (262, '262_img_6515.webp');
INSERT INTO `appacman_file` VALUES (263, '263_5actvi-gcc9etq68ojfc39i5mpgkbpeov0qs5livjibopo5-k3_tanv022u9uy3q00com9g85zs2rtrr5rrg84ozvl5hszofvpzzjijckv_bwxko73pf4jhshwdpp7kenwnkpmmyzawazhw1ms1hmysjh0ktqr2r2agujver4ssmlw8af67zkzfg-p0uevyki.webp');
INSERT INTO `appacman_file` VALUES (264, '264_img_5561.webp');
INSERT INTO `appacman_file` VALUES (265, '265_img_4487.webp');
INSERT INTO `appacman_file` VALUES (266, '266_img_2704.webp');
INSERT INTO `appacman_file` VALUES (267, '267_img_2673.webp');
INSERT INTO `appacman_file` VALUES (268, '268_img_6245.webp');
INSERT INTO `appacman_file` VALUES (269, '269_img_7712.webp');
INSERT INTO `appacman_file` VALUES (270, '270_5actvi-gosqaeo_dm4s_vncmb-gipkghvmqrceaqaorej_klzefmduy25gonimbpl0cxvzsmvgfmpwuwy99mduegzpe8kyrd63h5lfrh9ffdxoylp-zqeuho9nsfxhe8xcc2b0hwbqdcsda7uqyvsmox96dtol2prw3jfn0ig3d2lyov_sv8e99r63216aqna.webp');
INSERT INTO `appacman_file` VALUES (271, '271_img_2867.webp');
INSERT INTO `appacman_file` VALUES (272, '272_img_3529.webp');
INSERT INTO `appacman_file` VALUES (273, '273_5actvi-fqotfwu4dwaaq-ia7el7xynu_vggj7oxkse7_pis3cejzq9olvfzhllxrehjwcsrqcthwgx4hmn0sym3mujfjw11ybclifyc4iqnvloibjo3ifwhkvwukqyyacvkbq8u3jf4fvzgfroopr63s94ew5rjanwfulo_wzst5ezxrbv2glkfod6qlhv9js.webp');
INSERT INTO `appacman_file` VALUES (274, '274_img_2786-2.webp');
INSERT INTO `appacman_file` VALUES (275, '275_img_6896.webp');
INSERT INTO `appacman_file` VALUES (276, '276_img_5923.webp');
INSERT INTO `appacman_file` VALUES (277, '277_img_4728.webp');
INSERT INTO `appacman_file` VALUES (278, '278_img_7848.webp');
INSERT INTO `appacman_file` VALUES (279, '279_img_1578.webp');
INSERT INTO `appacman_file` VALUES (280, '280_img_1527.webp');
INSERT INTO `appacman_file` VALUES (281, '281_img_3318.webp');
INSERT INTO `appacman_file` VALUES (282, '282_img_0627.webp');
INSERT INTO `appacman_file` VALUES (283, '283_5actvi-h7kbba04_vx5jdg9eebfkgcul0q3wanv38vxs0bjusygnki8n2qxsmypxrw8druz6fo5gnwr-owkjn3zzydfhtuya4puu1tbar-yffs8bcwvrb8n6ksyakdh1054ooejb4xdw_5zhft_k0julpbcsedyee91v2ttglcy4fqd9pz81voyfg9vyus2nq.webp');
INSERT INTO `appacman_file` VALUES (284, '284_img_1806.webp');
INSERT INTO `appacman_file` VALUES (285, '285_img_1596.webp');
INSERT INTO `appacman_file` VALUES (286, '286_img_5650.webp');
INSERT INTO `appacman_file` VALUES (287, '287_img_7141.webp');
INSERT INTO `appacman_file` VALUES (288, '288_img_6439.webp');
INSERT INTO `appacman_file` VALUES (289, '289_img_6092.webp');
INSERT INTO `appacman_file` VALUES (290, '290_img_2729.webp');
INSERT INTO `appacman_file` VALUES (291, '291_img_5298.webp');
INSERT INTO `appacman_file` VALUES (292, '292_img_6465.webp');
INSERT INTO `appacman_file` VALUES (293, '293_img_e2201.webp');
INSERT INTO `appacman_file` VALUES (294, '294_5actvi-hd9q3msuyxb3xlxog8gfx0eqgtdqz2nauj9qyr0g7pmg6zbpps2ektrrci6jhvz5yc3ha34arub_lkmbmxuqoyak5htoilg-zlatcojpfz_0fixgluxgwnscef7vxm67ujh3usgstnxbgq3qctbhbbtrxmdnmpy7x6hqwvvgj5t1_frfig4wgi14ce.webp');
INSERT INTO `appacman_file` VALUES (295, '295_img_1457.webp');
INSERT INTO `appacman_file` VALUES (296, '296_img_3971.webp');
INSERT INTO `appacman_file` VALUES (297, '297_img_3361.webp');
INSERT INTO `appacman_file` VALUES (298, '298_img_3444.webp');
INSERT INTO `appacman_file` VALUES (299, '299_img_4499.webp');
INSERT INTO `appacman_file` VALUES (300, '300_img_5546.webp');
INSERT INTO `appacman_file` VALUES (301, '301_img_1251.webp');
INSERT INTO `appacman_file` VALUES (302, '302_img_0597.webp');
INSERT INTO `appacman_file` VALUES (303, '303_5actvi-ehcythhsaay8knxk2q7lvjlo7acgtqacx-gbojy-88q4xhlzsrgbl_fn86hnngk0id9qdj7iyghfh_p0uvk6cwhavzoh7kh2dg8zhldt0ofhcrmw3m70he6cdjba7tvv14zq9lg9ibynddawqsq8fqure501tqmb3pnd7qyprchholtpj9xzzy7y70.webp');
INSERT INTO `appacman_file` VALUES (304, '304_img_5396.webp');
INSERT INTO `appacman_file` VALUES (305, '305_5actvi-ftpbn4fhtvsf4nruzewi-72ufa4w9ajfvep1p7sstvctgkdqebx9gaenp0iktvptec2stgilsewwirqmaduttfiy_zwaqveymqtcawicjjnvcuhqdjqotydbzcnxphyh4ots0txqhige72e9bdsrb4nawystcetmousljb2bcqlirwdhwqk7x8_hll.webp');
INSERT INTO `appacman_file` VALUES (306, '306_5actvi-h2n1potg8uoqfrpvjo7nz0vygjlnnax7fpr4n-bgspfohiwbzcekfnn7nds3csapyuvea3bjzzpypeft-qxz3upqgpamovbvjusqhcuqi5hnbjga0t0pluogubqmtil6h3clqilj4hl1dmlhrdf_ncvfyggql2vovhxgl76lxbxfj5r7dme4yk4vrh.webp');
INSERT INTO `appacman_file` VALUES (307, '307_img_1550.webp');
INSERT INTO `appacman_file` VALUES (308, '308_5actvi-f57lww5shy-2rsdhuvfogtb7ppya2bpml3kipbwrcelnrxauda9tun2p4m8w6xtlijhul0jb1mf5pa8z0znanlxxn-uyuotdbyrdqubxfsrl0-0lgrt5tle0icfz7ltk-6fxc7m5iyv6yiozboqohfpvmnh7mcgemqgqom3h20ufdnkebjrja7vz7n.webp');
INSERT INTO `appacman_file` VALUES (309, '309_img_4694.webp');
INSERT INTO `appacman_file` VALUES (310, '310_img_4279.webp');
INSERT INTO `appacman_file` VALUES (311, '311_img_5894.webp');
INSERT INTO `appacman_file` VALUES (312, '312_img_3164.webp');
INSERT INTO `appacman_file` VALUES (313, '313_img_3373.webp');
INSERT INTO `appacman_file` VALUES (314, '314_img_3845.webp');
INSERT INTO `appacman_file` VALUES (315, '315_img_3164.webp');
INSERT INTO `appacman_file` VALUES (316, '316_5actvi-fuutzqhreqgzw6uyb6d8o5eec4mehhj8vp6ur-hxjwqk_yalwvaoyvtgcnzpyplod_klh07dzwa1odnmgy-igex0dxcqjsa9vispou2ljga3gdd-vdkln1porl9li9nng_02lxn7mbtw1lgir2auh7r1rtdr4tpzfno830mpsdkc7x_nnnexruvqcb.webp');
INSERT INTO `appacman_file` VALUES (317, '317_img_5927.webp');
INSERT INTO `appacman_file` VALUES (318, '318_img_2469.webp');
INSERT INTO `appacman_file` VALUES (319, '319_img_9641.webp');
INSERT INTO `appacman_file` VALUES (320, '320_img_5275.webp');
INSERT INTO `appacman_file` VALUES (321, '321_img_5210.webp');
INSERT INTO `appacman_file` VALUES (322, '322_img_5987.webp');
INSERT INTO `appacman_file` VALUES (323, '323_5actvi-gwrb9m5n1ysp_ivkewk_yovfm97fzkiwmq0jwxyenrml1vz7xwk0m6kkwglsz72shfpaaskfzezrhygplnzquf_ir60szrtkgepmnponcjufoitvrcmyqaothngr77m9qhhcmn2uz-ztwdvmcztbzihbfnpl_sycnyyu3uf6ifkpec2seqamklbrf5.webp');
INSERT INTO `appacman_file` VALUES (324, '324_img_1576.webp');
INSERT INTO `appacman_file` VALUES (325, '325_img_1876.webp');
INSERT INTO `appacman_file` VALUES (326, '326_img_5540.webp');
INSERT INTO `appacman_file` VALUES (327, '327_img_0143.webp');
INSERT INTO `appacman_file` VALUES (328, '328_img_5668.webp');
INSERT INTO `appacman_file` VALUES (329, '329_img_3614.webp');
INSERT INTO `appacman_file` VALUES (330, '330_img_4080.webp');
INSERT INTO `appacman_file` VALUES (331, '331_5actvi-fbqq7qbpefnzdljsnxynmgq0o1o8ieusixrcp6w817nracawzw-qeesgqpbqbbbtpszcdzmbzbqtyk1cptw4hmezhxlouq9fjqrw1q97xirw2mrlhiwj-r_lrwtayevmda2eeo0gbjgnvbk-8slxt2jhdlno8gcoxjauoon85y8msup-hmtu_xfjw3.webp');
INSERT INTO `appacman_file` VALUES (332, '332_7e65c5bf-5396-45ac-94ca-c9b0b7fa67c9_1_105_c.webp');
INSERT INTO `appacman_file` VALUES (333, '333_96f99332-4f01-4be1-a651-2914aa8821f5_1_105_c.webp');
INSERT INTO `appacman_file` VALUES (334, '334_496539c0-8abe-4f05-9316-e69eefa01837_1_105_c.webp');
INSERT INTO `appacman_file` VALUES (335, '335_img_8238.webp');
INSERT INTO `appacman_file` VALUES (336, '336_5actvi-gr18bxcykeaxvaxpvg8t4xi-8bhtmsxzlimhuthxtt-tn3vbzcbsezuzghm-fmdbgirkn28cmzpjbu6qal8lxwrogiguffk6pn9-k_2xnrh49wwvs3ageqkpbdstntmxf7rp7_mdt7ardxbdidyzuxegwxjgwbhkt2x8t5ritex5iykb70dgmcrxiu.webp');
INSERT INTO `appacman_file` VALUES (337, '337_img_6436.webp');
INSERT INTO `appacman_file` VALUES (339, '339_img_7887.webp');
INSERT INTO `appacman_file` VALUES (340, '340_img_3499.webp');
INSERT INTO `appacman_file` VALUES (341, '341_img_6143.webp');
INSERT INTO `appacman_file` VALUES (342, '342_img_5926.webp');
INSERT INTO `appacman_file` VALUES (343, '343_img_0013.webp');
INSERT INTO `appacman_file` VALUES (344, '344_5actvi-hmiew8cpx0adg-b_5fujh0iekt_xxqvgnvbmbla7vmrke4hr9kmjd577d0f9fjyqq19enwuovnp14taqqontl6wj24de6kzxvbboq0scqiiu8j23ppg-snxc5naxehorkcqc-eq6aw48y0fiawncsw41cfo0d6hezt6crmbpl9qadf8adt0nbtvnph.webp');
INSERT INTO `appacman_file` VALUES (345, '345_img_6516.webp');
INSERT INTO `appacman_file` VALUES (346, '346_img_5542.webp');
INSERT INTO `appacman_file` VALUES (347, '347_bar-del-pla.webp');
INSERT INTO `appacman_file` VALUES (348, '348_img_1628.webp');
INSERT INTO `appacman_file` VALUES (349, '349_photo-01-04-2019-21-25-45.webp');
INSERT INTO `appacman_file` VALUES (350, '350_5actvi-fccubf3sdra8urp89_t0ellrgatmooe56pjqzj5psxb2usqwwmjoxshrtbnh9mvg86grx0ywy5pekly9ksqplejiuv1353gmwayawsudwufeyrcs_cgqdf8efaodkv0tlrfephc99y3xgs3bs7ltvi3f_szpa8s0i2liawewcwxbgmsgh6s6aixovc.webp');
INSERT INTO `appacman_file` VALUES (351, '351_img_9641.webp');
INSERT INTO `appacman_file` VALUES (352, '352_inka.webp');
INSERT INTO `appacman_file` VALUES (353, '353_img_6702.webp');
INSERT INTO `appacman_file` VALUES (354, '354_img_7003.webp');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_file_resize
-- ----------------------------
BEGIN;
INSERT INTO `appacman_file_resize` VALUES (1, 15, 400, 400, 'thumb');
INSERT INTO `appacman_file_resize` VALUES (2, 15, 700, 700, 'list');
INSERT INTO `appacman_file_resize` VALUES (3, 26, 700, 700, 'step');
INSERT INTO `appacman_file_resize` VALUES (4, 57, 400, 400, 'thumb');
INSERT INTO `appacman_file_resize` VALUES (5, 57, 700, 700, 'list');
INSERT INTO `appacman_file_resize` VALUES (6, 68, 400, 400, 'thumb');
INSERT INTO `appacman_file_resize` VALUES (7, 68, 700, 700, 'list');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appacman_user
-- ----------------------------
BEGIN;
INSERT INTO `appacman_user` VALUES (1, '44b838da3ebc52a5addcb4f1d154b80fcd7RU3ynPJ3gD0gzciwBkA==', 'cdb10be1355fd3605eb7b38181e0e959c+P9lHy51g59wEGzKYISOYNd', '$6$rounds=5000$1bfe542fb14f15e0$95oCA3LX3.TSZwrhMqmc04GZdFofijh1/y9u8lO1KoaUT/ean1DUXKLEurSJg4NcXgN7YuoW4ZmS677w1Bmo6.', 1, NULL, '2017-11-17 12:44:18');
INSERT INTO `appacman_user` VALUES (2, 'fca321bab07418bf90dda3f1a83cc75aNlHV0A+52OmY3dE2A2s=', 'f9ccf6aa58d07be4030621c8cb51bcba8vuvpc5PyYmf05SK/xJLlPVBE7Q=', '$6$rounds=5000$92fbeb6e8980c0ee$huRZk3uu.phE/voCr5U10qr.QAThActYAACd4XVzOrjXYx/5j6eeNv6hjOFBJbxNu1Dye/RjBhcY4IG6lTaEY1', 1, NULL, '2023-05-24 19:09:09');
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
INSERT INTO `appacman_user_profile_permission` VALUES (1, 10, 1);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 10, 2);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 10, 3);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 11, 1);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 11, 2);
INSERT INTO `appacman_user_profile_permission` VALUES (1, 11, 3);
COMMIT;

-- ----------------------------
-- Table structure for brava
-- ----------------------------
DROP TABLE IF EXISTS `brava`;
CREATE TABLE `brava` (
  `id_brava` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_brava_type` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_restaurant` tinyint(1) unsigned DEFAULT 0,
  `is_closed` tinyint(1) unsigned DEFAULT 0,
  `is_highlighted` tinyint(1) unsigned DEFAULT 0,
  `address` varchar(255) NOT NULL,
  `latitude` double(9,6) NOT NULL,
  `longitude` double(9,6) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_brava`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=556 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brava
-- ----------------------------
BEGIN;
INSERT INTO `brava` VALUES (1, 2, 'Pan & Oli. T DL I DG TARDA', 0, 0, 0, '', 41.377197, 2.135499, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (2, 2, 'La Taverna del Clínic. T DG', 0, 0, 0, '', 41.388867, 2.151254, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (3, 2, 'La Mundana. T DL I DG TARDA', 0, 0, 0, '', 41.381126, 2.135820, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (4, 2, 'CAN ROS. T DX', 0, 0, 0, '', 41.377311, 2.189369, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (5, 2, 'el xiringo. T DL DM DX', 0, 0, 0, '', 41.379506, 2.190774, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (6, 2, 'La cholita. T DL I DM I DX MATI', 0, 0, 0, '', 41.422234, 2.184530, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (7, 2, 'Bardeni. TDL I DG', 0, 0, 0, '', 41.402927, 2.177208, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (8, 2, 'El Racó de l\'Agüir. T DG I DL,DM,DS TARDA', 0, 0, 0, '', 41.376529, 2.157950, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (9, 2, 'Teòric Taverna Gastronòmica. T DG I DL', 0, 0, 0, '', 41.397783, 2.169286, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (10, 2, 'Restaurant Semproniana', 0, 0, 0, '', 41.391056, 2.154528, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (11, 2, 'Santa Gula', 0, 0, 0, '', 41.397254, 2.155472, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (12, 2, 'Maians. T DLL I DM', 0, 0, 0, '', 41.379349, 2.190455, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (13, 2, 'La Platilleria. T DM I DV DINAR', 0, 0, 0, '', 41.371562, 2.165382, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (14, 2, 'Més De vi. T DG', 0, 0, 0, '', 41.400121, 2.205084, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (15, 2, 'Bambarol. T DLL I DG', 0, 0, 0, '', 41.395072, 2.146293, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (16, 2, 'Restaurant Setze. T DLL I DG', 0, 0, 0, '', 41.385514, 2.131544, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (17, 2, 'Restaurante Informal', 0, 0, 0, '', 41.380206, 2.180722, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (18, 2, 'Maria Parrilla', 0, 0, 0, '', 41.389502, 2.124360, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (19, 2, 'b Restaurant. T DG NIT', 0, 0, 0, '', 41.384448, 2.145906, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (20, 2, 'Blau BCN. T DG', 0, 0, 0, '', 41.393012, 2.149954, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (21, 2, 'Las delicias. T DL I DG TARDA', 0, 0, 0, '', 41.418248, 2.157572, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (22, 2, 'Acero Street Flavors. T DLL', 0, 0, 0, '', 41.383287, 2.182345, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (23, 2, 'Restaurant La Pepita', 0, 0, 0, '', 41.397985, 2.161068, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (24, 2, 'Abasolo Etxea. T DG SOPAR', 0, 0, 0, '', 41.394889, 2.143836, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (25, 2, 'Monvínic Store. T DG, DLL I DSS MIGDIA', 0, 0, 0, '', 41.389183, 2.165283, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (26, 2, 'Bar Omar. TDLL I DG TARDA', 0, 0, 0, '', 41.395104, 2.145005, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (27, 2, 'Parking Pizza - Parking Pita', 0, 0, 0, '', 41.396311, 2.174106, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (28, 2, 'Restaurant Sant Martí. T DM i ALGUNES NITS', 0, 0, 0, '', 41.421847, 2.197364, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (29, 2, 'Bodega Amposta. T DLL I DM I DG TARDA', 0, 0, 0, '', 41.371869, 2.147491, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (30, 2, 'La Pimpa. T DG', 0, 0, 0, '', 41.387069, 2.130307, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (31, 2, 'Restaurant Nectari. T DG', 0, 0, 0, '', 41.379961, 2.146589, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (32, 2, 'AGRESTE de FABIO & ROSER. T DLL I DM', 0, 0, 0, '', 41.419986, 2.148727, '2023-05-25 16:04:14');
INSERT INTO `brava` VALUES (33, 2, 'Jardinet d\'Aribau. T DG-SM', 0, 0, 0, '', 41.391903, 2.154541, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (34, 2, 'ORAC. T DG, DLL-DM NIT', 0, 0, 0, '', 41.389526, 2.158062, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (35, 2, 'Negronix Cocktails Bar. T Dll', 0, 0, 0, '', 41.417603, 2.181368, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (36, 2, 'Cal Trapella. T DLL I DG NIT', 0, 0, 0, '', 41.399096, 2.159235, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (38, 2, 'La Porca v2 (DIMARTS OFERTA)', 0, 0, 0, '', 41.373009, 2.170651, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (39, 2, 'AÜRT Restaurant. T DLL I DG I DM DINAR', 0, 0, 0, '', 41.408452, 2.217902, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (40, 2, 'La Real Hamburguesería (repe)', 0, 0, 0, '', 41.398565, 2.203615, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (41, 2, '216 Grammi Barcelona', 0, 0, 0, '', 41.391051, 2.194310, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (42, 2, 'BOCCONI. T DLL I DG NIT', 0, 0, 0, '', 41.399436, 2.121744, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (43, 2, 'Lúcuma y Camote', 0, 0, 0, '', 41.389472, 2.195313, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (44, 2, 'Ajoblanco T DG', 0, 0, 0, '', 41.395995, 2.152072, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (45, 2, 'Verne. T DM', 0, 0, 0, '', 41.392073, 2.154645, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (46, 2, 'THE YARD - Gallito a la brasa. T DLL', 0, 0, 0, '', 41.391961, 2.172839, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (47, 2, 'Sants Es Crema. T DLL I DG', 0, 0, 0, '', 41.381437, 2.136814, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (48, 2, 'Bonica Bruncherie. T DLL I DG', 0, 0, 0, '', 41.398140, 2.173087, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (49, 2, 'Cal Màrius. T DG NIT', 0, 0, 0, '', 41.405885, 2.178370, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (50, 2, 'Foodlona by Miquel Antoja', 0, 0, 0, '', 41.455536, 2.257550, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (51, 1, 'Casa maians. T DLL I DM', 0, 0, 0, '', 41.379351, 2.190433, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (52, 1, 'Vermut i a la Gàbia', 0, 0, 0, '', 41.375883, 2.138582, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (53, 1, 'Vinus Brindis. T DG I DLL MIGDIA', 0, 0, 0, '', 41.396400, 2.142613, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (54, 1, 'Fàbrica Moritz', 0, 0, 0, '', 41.382483, 2.163591, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (55, 1, 'MonDoré. T DLL I DG', 0, 0, 0, '', 41.375569, 2.154456, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (56, 1, 'D9', 0, 0, 0, 'C/ Pallars 122, 08016 Barcelona', 41.396785, 2.192138, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (57, 1, 'medina BAR & RESTAURANT', 0, 0, 0, '', 41.448772, 2.190114, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (59, 1, 'Pebre Negre Restaurant. ANAR EL FINDE COM A BAR?', 0, 0, 0, '', 41.387100, 2.130566, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (60, 1, 'MANA75', 0, 0, 0, '', 41.368828, 2.188036, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (61, 1, 'Louise Se Va', 0, 0, 0, '', 41.430829, 2.160657, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (62, 1, 'Casa de Tapes Cañota. T DL I DG TARDA', 0, 0, 0, '', 41.374302, 2.154541, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (63, 1, 'Bar Marín', 0, 0, 0, '', 41.437107, 2.191174, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (64, 1, 'Cervecería la Tasca. T DLL', 0, 0, 0, '', 41.425901, 2.157497, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (65, 1, 'Bar la Gamba. T DM', 0, 0, 0, '', 41.420735, 2.180819, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (67, 1, 'Bodega Montferry. T DL I DG TARDA', 0, 0, 0, '', 41.379418, 2.131888, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (68, 1, 'Bar Kasparo. T DL I DG', 0, 0, 0, '', 41.384469, 2.168990, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (69, 1, 'Fragments Café. T DL', 0, 0, 0, '', 41.386587, 2.132516, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (71, 1, 'El quimet d\'horta. T DX', 0, 0, 0, '', 41.430709, 2.160733, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (72, 1, 'Central Park', 0, 0, 0, '', 41.390009, 2.122310, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (73, 1, 'Mitjagalta. T DL I DG', 0, 0, 0, '', 41.368317, 2.131854, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (74, 1, 'Wow', 0, 0, 0, '', 41.391273, 2.157597, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (75, 1, 'Vaso de oro', 0, 0, 0, '', 41.381889, 2.187254, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (76, 1, 'La mestressa. T MATINS', 0, 0, 0, '', 41.375883, 2.138582, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (77, 1, 'Bar Joanet. T DJ', 0, 0, 0, '', 41.387982, 2.180449, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (78, 1, 'Tast Gastro Bar \n', 0, 0, 0, '', 41.374793, 2.159657, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (79, 1, 'Restaurante Sagàs', 0, 0, 0, '', 41.383345, 2.183366, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (80, 1, 'PURA BRASA Arenas de Barcelona', 0, 0, 0, '', 41.376275, 2.150125, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (81, 1, 'Tío Carlos', 0, 0, 0, '', 41.376787, 2.174875, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (82, 1, 'Moix Wine & Gastrobar. T DG', 0, 0, 0, '', 41.377763, 2.173094, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (84, 1, 'Bar Mendizábal', 0, 0, 0, '', 41.380492, 2.170802, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (85, 1, 'Cerveseria El Tap. T DLL', 0, 0, 0, '', 41.388037, 2.136123, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (86, 1, 'Gatsby Barcelona. T DL-DM-DG', 0, 0, 0, '', 41.396196, 2.151404, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (87, 1, 'The Bagel Hood. T DL-DX TARDA', 0, 0, 0, '', 41.381655, 2.164606, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (88, 1, 'Bar La Garchetta. T DLL I DG TARDA', 0, 0, 0, '', 41.413129, 2.215756, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (89, 1, 'Dora tapas bar. T DG', 0, 0, 0, '', 41.395830, 2.162655, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (90, 1, 'Yours. T DL I DG', 0, 0, 0, '', 41.392084, 2.148449, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (91, 1, 'L\'Anxoveta de Sants. T DLL', 0, 0, 0, '', 41.377629, 2.135154, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (92, 1, 'Casa Tejada', 0, 0, 0, '', 41.395083, 2.142133, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (93, 1, 'Bormuth', 0, 0, 0, '', 41.385810, 2.182485, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (94, 1, 'Bar Nino', 0, 0, 0, '', 41.413502, 2.215864, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (95, 1, 'Pla De La Garsa. T MATINS I DLL', 0, 0, 0, '', 41.386007, 2.180555, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (96, 1, 'Bar Lafuente. T DLL', 0, 0, 0, '', 41.422083, 2.210685, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (97, 1, 'Bar Nostalgic BCN', 0, 0, 0, '', 41.376734, 2.161376, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (98, 1, 'Telefèric Restaurant. T DG MATI', 0, 0, 0, '', 41.389531, 2.160825, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (100, 1, 'Toca teca. T DL I DG TARDA', 0, 0, 0, '', 41.423583, 2.180945, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (101, 1, 'Pastís i sucre. NOMES FINDE', 0, 0, 0, '', 41.406277, 2.137528, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (102, 1, 'Time\'s Café & Co. T DLL', 0, 0, 0, '', 41.362374, 2.121996, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (103, 1, 'L\'Ow Boqueria. T DM TARDA I DG', 0, 0, 0, '', 41.381902, 2.170744, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (104, 1, 'El Manolo T DG', 0, 0, 0, '', 41.414861, 2.194730, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (105, 1, 'El Pacífico', 0, 0, 0, '', 41.378138, 2.191168, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (106, 1, 'Restaurant CentOnze', 0, 0, 0, '', 41.383556, 2.170526, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (107, 1, 'Caramba Tapas. T DLL', 0, 0, 0, '', 41.377677, 2.164884, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (108, 1, 'Bar El Velódromo', 0, 0, 0, '', 41.393490, 2.150155, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (109, 1, 'El Celler del Nou Priorat. T MATINS ENTRE SET, I DG TARDA', 0, 0, 0, '', 41.378445, 2.137625, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (110, 1, 'Barraca', 0, 0, 0, '', 41.379072, 2.191950, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (111, 1, 'Orvay. T DLL', 0, 0, 0, '', 41.384065, 2.182576, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (112, 1, 'Bodega Bartolí. T DG I DSS TARDA', 0, 0, 0, '', 41.379325, 2.137032, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (113, 1, 'TONI BIGOTI. T DG', 0, 0, 0, '', 41.389818, 2.138698, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (114, 1, 'Inblue', 0, 0, 0, '', 41.387693, 2.136832, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (115, 1, 'Bodega Pujós. T DG TARDA', 0, 0, 0, '', 41.373684, 2.119123, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (116, 1, 'Ten\'s Tapas Restaurant Barcelona', 0, 0, 0, '', 41.384322, 2.184163, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (117, 1, 'Bodega del Cabo', 0, 0, 0, '', 41.399613, 2.179970, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (118, 1, 'BOCALOCA. T DLL I DG TARDA', 0, 0, 0, '', 41.418935, 2.203733, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (119, 1, 'Antunez v2. T DG BRENAR', 0, 0, 0, '', 41.397891, 2.154693, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (120, 1, 'Santagustina', 0, 0, 0, '', 41.388218, 2.180559, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (121, 1, 'La Bodegueta Provença', 0, 0, 0, '', 41.393318, 2.159417, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (122, 1, 'Arroz Hofmann. T DLL I DG TARDA', 0, 0, 0, '', 41.393500, 2.177822, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (123, 1, 'Cal Robert', 0, 0, 0, '', 41.379697, 2.163807, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (124, 1, 'Las Fritas del Born - Bar', 0, 0, 0, '', 41.383522, 2.181216, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (125, 1, 'Els Sortidors del Parlament', 0, 0, 0, '', 41.377581, 2.163831, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (126, 1, 'Restaurante Bivio', 0, 0, 0, '', 41.376584, 2.188978, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (127, 1, 'La terrasa del DO', 0, 0, 0, '', 41.379993, 2.174932, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (128, 1, 'O\'Chispa Taberna galega. T DG TARDA I DLL', 0, 0, 0, '', 41.368161, 2.112205, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (129, 1, 'Almalibre Açaí Bar. T DLL I DG TARDA', 0, 0, 0, '', 41.397104, 2.168287, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (130, 1, 'La Esquinita de Blai', 0, 0, 0, '', 41.373392, 2.165232, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (131, 1, 'Casa de Comidas Nogal', 0, 0, 0, '', 41.399005, 2.178707, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (132, 1, 'Jonny Aldana Bar. T DLL', 0, 0, 0, '', 41.375823, 2.166101, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (133, 1, 'RAO Restaurant & Bar. T DG', 0, 0, 0, '', 41.384290, 2.169572, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (134, 1, 'Restaurant CentOnze', 0, 0, 0, '', 41.383556, 2.170526, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (135, 1, 'LUTE Bar & Bowls. T DX', 0, 0, 0, '', 41.374348, 2.133232, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (136, 1, 'L\'Olivera. T DLL', 0, 0, 0, '', 41.405899, 2.189411, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (137, 1, 'Reñé', 0, 0, 0, '', 41.394400, 2.170243, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (138, 1, 'RENOI Tapes i Vins. T DLL i DG TARDA', 0, 0, 0, '', 41.405611, 2.180347, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (140, 1, 'La Tiza BCN', 0, 0, 0, '', 41.373692, 2.164360, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (141, 1, 'Tapeo Gracia (= tapeo born). T DLL', 0, 0, 0, '', 41.404562, 2.155454, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (144, 1, 'Bambú Beach Bar', 0, 0, 0, '', 41.405040, 2.218824, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (145, 1, 'El Bitxo', 0, 0, 0, '', 41.387235, 2.175698, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (146, 1, 'Pisamorena', 0, 0, 0, '', 41.382554, 2.182283, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (147, 1, 'La terraza Miró', 0, 0, 0, '', 41.377440, 2.146075, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (148, 1, 'La Ramona. T DG I \"TARDES\"', 0, 0, 0, '', 41.402474, 2.168007, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (149, 1, 'Ocho Patas. T DG TARDA', 0, 0, 0, '', 41.381847, 2.142089, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (150, 1, 'Meraklís. T MATING I DG', 0, 0, 0, '', 41.407678, 2.184411, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (151, 1, 'El Quim de la Boquería. T TARDES I DG', 0, 0, 0, '', 41.381648, 2.171950, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (152, 1, 'Bar Makinavaja. T DG', 0, 0, 0, '', 41.377102, 2.168042, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (153, 1, 'Colmado Barcelona', 0, 0, 0, '', 41.391704, 2.157666, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (154, 1, 'TRIKI-TRAC. T DG', 0, 0, 0, '', 41.381266, 2.141563, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (155, 1, 'Abirradero', 0, 0, 0, '', 41.374167, 2.168578, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (156, 1, 'Tres Torres Atiram', 0, 0, 0, '', 41.399919, 2.130009, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (157, 1, 'Hotel El Palace - Winter Garden', 0, 0, 0, '', 41.391396, 2.171474, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (158, 1, 'a restaurant', 0, 0, 0, '', 41.383307, 2.175193, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (159, 1, 'Grill Room Bar Thonet', 0, 0, 0, '', 41.379278, 2.176096, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (160, 1, 'La Rubia', 0, 0, 0, '', 41.382425, 2.166411, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (161, 1, 'Casa Rafols', 0, 0, 0, '', 41.391230, 2.179247, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (163, 1, 'CASA DORITA. T DLL', 0, 0, 0, '', 41.377898, 2.160166, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (164, 1, 'Entre Catas. T DLL I DG TARDA', 0, 0, 0, '', 41.416869, 2.195318, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (165, 1, 'La Comparsita. T DLL', 0, 0, 0, '', 41.410519, 2.179941, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (166, 1, 'PIMIENTO BAR. T DSS I DG', 0, 0, 0, '', 41.377147, 2.175130, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (167, 1, 'Sucursal Aceitera. T DG TARDA', 0, 0, 0, '', 41.377138, 2.163178, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (168, 1, 'Vermuteria La Guapa', 0, 0, 0, '', 41.385604, 2.154253, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (169, 1, 'Restaurant Amaya', 0, 0, 0, '', 41.378024, 2.176261, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (170, 1, 'PORK boig per tu!', 0, 0, 0, '', 41.382128, 2.181900, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (171, 1, 'Restaurant Dispensa', 0, 0, 0, '', 41.421636, 2.181117, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (172, 1, 'Bar Bodega Carol. T DLL', 0, 0, 0, '', 41.406962, 2.184842, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (173, 1, 'Catacroquet. T DG I DLL TARDA', 0, 0, 0, '', 41.401818, 2.196100, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (174, 1, 'Plaça d\'Osca, 6', 0, 0, 0, '', 41.376198, 2.138751, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (175, 1, 'Marcelino 1968', 0, 0, 0, '', 41.401403, 2.156800, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (176, 1, 'La Bodegueta De Sants', 0, 0, 0, '', 41.371062, 2.134448, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (178, 1, 'El Canalla', 0, 0, 0, '', 41.399590, 2.121668, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (180, 1, 'Grupo Abrassame', 0, 0, 0, '', 41.376391, 2.148920, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (181, 1, 'Mirablau', 0, 0, 0, '', 41.416043, 2.131883, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (182, 1, 'OBE restaurant. T DLL I DG TARDA', 0, 0, 0, '', 41.385413, 2.178781, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (183, 1, 'Purobeach Barcelona', 0, 0, 0, '', 41.408535, 2.217434, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (185, 1, 'Calabrasa', 0, 0, 0, '', 41.385379, 2.183005, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (186, 1, 'Bar Torrente. T DLL I DG TARDA', 0, 0, 0, '', 41.432998, 2.193468, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (187, 1, 'Ale&Hop', 0, 0, 0, '', 41.388637, 2.180060, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (188, 1, 'Espai Mireia', 0, 0, 0, '', 41.393237, 2.093776, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (189, 1, 'Taberna Volapie', 0, 0, 0, '', 41.391346, 2.157501, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (190, 1, 'Xampu Barcelona', 0, 0, 0, '', 41.393726, 2.174447, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (191, 1, 'Equilibribcn, T DM', 0, 0, 0, '', 41.407216, 2.168466, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (192, 1, 'Bubó', 0, 0, 0, '', 41.383140, 2.181833, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (193, 1, 'Atabalats Gastrobar v2. T DLL I DG TARDA', 0, 0, 0, '', 41.408768, 2.160520, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (194, 1, 'Bar Bero', 0, 0, 0, '', 41.403395, 2.133436, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (195, 1, 'Bar Restaurant Jordi. T DG TARDA', 0, 0, 0, '', 41.424973, 2.176822, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (196, 1, 'Restaurant Centric Raval', 0, 0, 0, '', 41.384768, 2.168091, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (197, 1, 'El Disbarat', 0, 0, 0, '', 41.401721, 2.154579, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (198, 1, 'Zarautz. T DG TARDA', 0, 0, 0, '', 41.378065, 2.143281, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (199, 1, 'Superclàssic', 0, 0, 0, '', 41.381935, 2.169829, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (200, 1, 'Jumilla. T DG', 0, 0, 0, '', 41.403194, 2.134816, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (201, 1, 'Mirch Barcelona. T DLL', 0, 0, 0, '', 41.382345, 2.168298, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (202, 1, 'Tipo Tapa. T DLL', 0, 0, 0, '', 41.409097, 2.184872, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (203, 1, 'Fat Cat. T DLL-DX I DG TARDA', 0, 0, 0, '', 41.379070, 2.170716, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (204, 1, 'Bar Ri Sarrià', 0, 0, 0, '', 41.396578, 2.128056, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (205, 1, 'Tapazia. T DLL', 0, 0, 0, '', 41.404892, 2.155033, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (206, 1, 'Gent Del Barri', 0, 0, 0, '', 41.409172, 2.184632, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (207, 1, 'Red Fish Barcelona. T DLL I DM', 0, 0, 0, '', 41.384934, 2.199312, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (208, 1, 'Bar El Raconet Charrua. T DLL I DM', 0, 0, 0, '', 41.419322, 2.172355, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (209, 1, 'Café Turó', 0, 0, 0, '', 41.394891, 2.141966, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (210, 1, 'Paella Bar Boqueria. T DG I ENTRESETMANA TARDA', 0, 0, 0, '', 41.381416, 2.171966, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (211, 1, 'La Lolita Barcelona', 0, 0, 0, '', 41.389105, 2.165929, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (212, 1, 'Le Bouchon (nova versió)', 0, 0, 0, '', 41.382588, 2.178943, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (213, 1, 'My Fucking Restaurant. T DM I DX', 0, 0, 0, '', 41.377784, 2.173146, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (214, 1, 'Bar Fidel. T DG TARDA', 0, 0, 0, '', 41.381929, 2.165431, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (215, 1, 'bohl. T TARDA', 0, 0, 0, '', 41.390597, 2.178239, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (216, 1, 'Bar jai-ca', 0, 0, 0, '', 41.381622, 2.188111, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (217, 1, 'La Esquina. T TARDA', 0, 0, 0, '', 41.385898, 2.168038, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (218, 1, 'Kook', 0, 0, 0, '', 41.397984, 2.171015, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (219, 1, 'Gandul', 0, 0, 0, '', 41.392384, 2.149062, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (221, 1, 'Pintxito. T DG', 0, 0, 0, '', 41.411451, 2.176052, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (222, 1, 'Hotel Calasanz', 0, 0, 0, '', 41.409127, 2.020292, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (223, 1, 'Las Bravas', 0, 0, 0, '', 40.416179, -3.701906, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (224, 1, 'La Fina', 0, 0, 0, '', 41.482350, 2.318543, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (225, 1, 'Follia', 0, 0, 0, '', 41.371669, 2.055602, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (226, 1, 'El Clandestí. T DLL i DM MIGDIA', 0, 0, 0, '', 41.381562, 2.044173, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (227, 1, 'Debut. T DG', 0, 0, 0, '', 41.362586, 2.101877, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (228, 1, 'Restaurant La Pubilla. T DLL I DG TARDA', 0, 0, 0, '', 41.372048, 2.098463, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (229, 1, 'Mug. T DG I DL', 0, 0, 0, '', 41.358967, 2.100339, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (230, 1, 'Restaurante Peperonata. T DLL I DG', 0, 0, 0, '', 41.323093, 2.100734, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (231, 1, 'El Parlament de sant feliu. T DL', 0, 0, 0, '', 41.381519, 2.045166, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (232, 1, 'La Santa Burger', 0, 0, 0, '', 41.327482, 2.094985, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (233, 1, 'Restaurant El Regust. T DLL I DM', 0, 0, 0, '', 41.325111, 2.095438, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (234, 1, 'Bocca Restaurant & Club. T DG', 0, 0, 0, '', 41.475914, 2.097442, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (235, 1, 'Plats. T DL I DG', 0, 0, 0, '', 41.359387, 2.073356, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (236, 1, 'La Bonaigua', 0, 0, 0, '', 41.378695, 2.077365, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (237, 1, 'La Cantineta de l\'Alba. T DLL', 0, 0, 0, '', 41.278577, 1.972865, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (238, 1, 'Sucapa. T DLL', 0, 0, 0, '', 41.360190, 2.101273, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (239, 1, 'Bar Verat. T DLL I DG', 0, 0, 0, '', 41.455395, 2.206415, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (240, 1, 'Giraldillo', 0, 0, 0, '', 41.221550, 1.720820, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (241, 1, 'Albayzin. T DL I DG', 0, 0, 0, '', 41.353680, 2.087570, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (242, 1, 'Restaurante Casa Narváez. T DG', 0, 0, 0, '', 41.350067, 2.072921, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (243, 1, 'Bar La Patata', 0, 0, 0, '', 41.361368, 2.077606, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (244, 1, 'Vins i Tapes Galileu', 0, 0, 0, '', 41.559320, 2.005303, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (245, 1, 'La Taberna del Terra Gourmet', 0, 0, 0, '', 41.353599, 2.087061, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (246, 1, 'El Cortijo', 0, 0, 0, '', 41.321737, 2.090663, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (247, 1, '2 de Vins. T DL', 0, 0, 0, '', 41.322379, 2.098003, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (248, 1, 'Casa Meli. T TARDES ENTRE SETMANA', 0, 0, 0, '', 41.325950, 2.097327, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (249, 1, 'La Castellana. T TARDES I DG', 0, 0, 0, '', 41.328589, 2.097673, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (250, 1, 'Traska Truska', 0, 0, 0, '', 41.416482, 2.012283, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (251, 1, 'L\'Escopinya. T DJ I DSS-DG TARDA', 0, 0, 0, '', 41.547381, 2.106047, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (252, 1, 'CÈNTRIC Gastrobar', 0, 0, 0, '', 41.321810, 2.093769, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (253, 1, 'El teleferic', 0, 0, 0, '', 41.472057, 2.089873, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (254, 1, 'La Calèche', 0, 0, 0, '', 42.464710, 1.982360, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (255, 1, 'L\'Horta de Can Patxei. T DLL', 0, 0, 0, '', 42.034096, 3.099818, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (256, 1, 'Ca la Pilar Dumingu', 0, 0, 0, '', 41.959566, 3.038497, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (257, 1, 'Can Carlitos', 0, 0, 0, '', 38.733012, 1.414133, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (258, 1, 'La Marineta. T DLL I DG', 0, 0, 0, '', 41.536611, 2.441283, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (259, 1, 'Restaurante Gamberro. T DLL I DM', 0, 0, 0, '', 41.653614, -0.880939, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (260, 1, 'Meli Del Tubo', 0, 0, 0, '', 41.653368, -0.880254, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (261, 1, 'Rausell. T DLL, DM I DG TARDA', 0, 0, 0, '', 39.469289, -0.389797, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (262, 1, 'Restaurant La Plaça d\'Alella. T DLL', 0, 0, 0, '', 41.493878, 2.294574, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (263, 1, 'Espinaler. T DG TARDA', 0, 0, 0, '', 41.513669, 2.384685, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (264, 1, 'Restaurant Sibaris. T DLL', 0, 0, 0, '', 41.675864, 2.800398, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (265, 1, 'Toc al Mar', 0, 0, 0, '', 41.933723, 3.216322, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (266, 1, 'Gargonich', 0, 0, 0, '', 42.465532, -2.448534, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (267, 1, 'Sunset Burger. T DLL DINAR I DG DINAR', 0, 0, 0, '', 41.305570, 2.007620, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (268, 1, 'La Abadía Cervecería Artesana', 0, 0, 0, '', 39.859971, -4.022830, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (269, 1, 'La Sucursal', 0, 0, 0, '', 40.430109, -3.703368, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (270, 1, 'El Cable. T MATINS ENTRE SETMANA', 0, 0, 0, '', 41.236186, 1.811942, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (271, 1, 'Restaurant La Santa. T DM', 0, 0, 0, '', 41.476482, 2.310084, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (272, 1, 'El Cortijo. T DLL', 0, 0, 0, '', 41.321737, 2.090663, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (273, 1, 'Can Llaunes', 0, 0, 0, '', 41.447892, 2.251001, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (274, 1, 'La tapeta del prat', 0, 0, 0, '', 41.323513, 2.091568, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (275, 1, 'Vori Bistro Burguer', 0, 0, 0, '', 41.324046, 2.091412, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (276, 1, 'Can Camp', 0, 0, 0, '', 41.661817, 2.256826, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (277, 1, 'El Jardí de Can Marc', 0, 0, 0, '', 41.952858, 3.207153, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (278, 1, 'Oasis Beach Bar | Chiringuito Badalona', 0, 0, 0, '', 41.459817, 2.267377, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (279, 1, 'Restaurant Vintage Cafè Arenys', 0, 0, 0, '', 41.588297, 2.543869, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (280, 1, 'Panoramic bar', 0, 0, 0, '', 41.466782, 2.271629, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (282, 1, 'La Capella de Can Gambús', 0, 0, 0, '', 41.545966, 2.081870, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (283, 1, 'El Llit Bar', 0, 0, 0, '', 41.547610, 2.108475, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (284, 1, 'Amics de les Arts i Joventuts Musicals. T DSS I DG', 0, 0, 0, '', 41.564609, 2.012396, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (285, 1, 'La Rampa. T DLL', 0, 0, 0, '', 41.446661, 2.049653, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (286, 1, 'Ca l\'Enric', 0, 0, 0, '', 41.491641, 2.140816, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (287, 1, 'Emporium Loung. T ENTRE SETMANA', 0, 0, 0, '', 41.466470, 2.281220, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (288, 1, 'El Racó d\'en Josep. T DG', 0, 0, 0, '', 41.353222, 2.087822, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (289, 1, 'Restaurante Caracé. T DLL', 0, 0, 0, '', 41.352455, 2.073793, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (290, 1, 'El Mesón. T DM I DLL TARDA', 0, 0, 0, '', 41.473653, 2.084017, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (291, 1, 'Unlugar Restaurante', 0, 0, 0, '', 41.265426, 1.989066, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (292, 1, 'Tragamar', 0, 0, 0, '', 41.888813, 3.188467, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (293, 1, 'Restaurante La Buixeda', 0, 0, 0, '', 42.374881, 1.892292, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (294, 1, 'Afrika. T DLL', 0, 0, 0, '', 41.321296, 2.086055, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (295, 1, 'Ristol Viladecavalls. T DM I DG TARDA', 0, 0, 0, '', 41.555280, 1.954289, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (296, 1, 'El Racó d\'Ullastrell. T DG', 0, 0, 0, '', 41.527678, 1.957128, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (297, 1, 'El Doll - Cerveseria Moderna & Restaurant', 0, 0, 0, '', 41.987354, 2.824318, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (298, 1, 'Casal Independentista El Forn', 0, 0, 0, '', 41.989599, 2.825263, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (299, 1, 'Studio66', 0, 0, 0, '', 41.703859, 2.853640, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (300, 1, 'Can Gallina Gastrobar. T DG TARDA', 0, 0, 0, '', 41.606904, 2.288994, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (301, 1, 'Mio Mio Restaurant. T DLL-DJ', 0, 0, 0, '', 42.171011, 2.470163, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (302, 1, 'Febrer. T DLL I DG TARDA', 0, 0, 0, '', 41.469790, 2.081740, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (303, 1, 'CheChe Restaurant. T DLL', 0, 0, 0, '', 41.265980, 1.964429, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (304, 1, 'Hotel Montarto', 0, 0, 0, '', 42.699332, 0.930327, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (305, 1, 'VIU By Tapiñas', 0, 0, 0, '', 41.562868, 2.015625, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (306, 1, 'Fooco. T DG', 0, 0, 0, '', 41.537577, 2.439853, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (307, 3, 'La Trini', 0, 0, 1, 'C/ Verdi 30, 08012 Barcelona', 41.403913, 2.156903, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (308, 3, 'Els Pinxus Barra de Tapes', 1, 0, 1, 'C/ Marià Cubí 81, 08006 Barcelona', 41.397520, 2.148461, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (309, 3, 'Vivanda', 1, 0, 1, 'C/ Major de Sarrià 134, 08017 Barcelona', 41.400486, 2.120973, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (310, 3, 'El Tiet Taver Teca', 1, 0, 1, 'C/ Còrsega 382, 08037 Barcelona', 41.399420, 2.163370, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (311, 3, 'Bodega La Palma', 1, 0, 1, 'C/ de la Palma de Sant Just 7, 08002 Barcelona', 41.382280, 2.178752, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (312, 3, 'Hidalgo', 1, 0, 1, 'C/ Balmes 396, 08022 Barcelona', 41.405922, 2.139243, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (313, 3, 'Dalt de Tot', 1, 0, 1, 'C/ Saragossa 66, 08006 Barcelona', 41.403768, 2.146726, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (314, 3, 'Sa Tuna Begur', 0, 0, 0, 'Pg/ de l\'Àncora 14, 17255 Sa Tuna, Girona', 41.959969, 3.229844, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (315, 3, 'Cal Bandarra', 1, 0, 0, 'C/ Forgas i Elias, 4, 17255 Begur, Girona', 41.954609, 3.206615, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (316, 3, 'Casa Angela', 0, 0, 1, 'Pl/ Sagrada Família 13, 15, 08025 Barcelona', 41.403438, 2.172785, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (317, 3, 'El Born', 1, 0, 1, '651 Manhattan Ave, Brooklyn, NY 11222, USA', 40.724320, -73.951400, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (318, 3, 'Restaurante Tapas Bula', 1, 0, 0, 'C/ José María Lacarra de Miguel 23, 50008 Zaragoza', 41.645250, -0.882108, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (319, 3, 'Sant Antoni Gloriós', 0, 1, 0, 'C/ Manso 42, 08015 Barcelona', 41.376697, 2.160805, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (320, 3, 'La Bicicleta', 1, 0, 1, 'C/ Verdi 65, 08012 Barcelona', 41.404708, 2.155870, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (321, 3, 'Sucursal Aceitera', 0, 0, 0, 'C/ Comte Borrell 36, 08015 Barcelona', 41.377162, 2.163103, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (322, 3, 'Jabato Taperia', 1, 0, 1, 'C/ Ramón y Cajal 122, 08024 Barcelona', 41.404553, 2.161922, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (323, 3, 'La Taverna Catalana del Mercantic', 1, 0, 0, 'C/ Ermita, 08173 Sant Cugat del Vallès, Barcelona', 41.477849, 2.072050, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (324, 3, 'Ten\'s', 1, 0, 0, 'C/ Rec 79, 08003 Barcelona', 41.384140, 2.184577, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (325, 3, 'Olé Mallorca', 1, 0, 0, 'C/ Mallorca 436 bis, 08013 Barcelona', 41.404516, 2.177007, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (326, 3, 'El Casal Café Bar', 0, 0, 1, 'Pl/ de Víctor Balaguer 5, 08003 Barcelona', 41.382709, 2.181059, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (327, 3, 'Xanc i Meli', 1, 0, 0, 'C/ Francolí 53, 08006 Barcelona', 41.403455, 2.146046, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (328, 3, 'Candela', 0, 0, 0, 'Pl/ de Sant Per 12, 08003 Barcelona', 41.389304, 2.178877, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (329, 3, 'Vilallonga Masia Restaurant en Sant Cugat del Vallès', 1, 0, 0, 'C/ Oceà Atlàntic 80, 08173 Sant Cugat del Vallès, Barcelona', 41.454208, 2.085761, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (330, 3, 'L\'Oficina Gastrobar Barcelona', 0, 0, 0, 'C/ Lepant 416, 08025 Barcelona', 41.410774, 2.168616, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (331, 3, 'Restaurant La Divina', 0, 0, 0, 'C/ Sòcrates 62, 08030 Barcelona', 41.431947, 2.186412, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (332, 3, 'Morryssom', 0, 0, 0, 'C/ Girona 162, 08037 Barcelona', 41.399487, 2.165184, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (333, 3, 'Rustic BCN', 0, 0, 0, 'C/ Consell de Cent 94, 08015 Barcelona', 41.380043, 2.151343, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (334, 3, 'Debutis', 0, 1, 0, 'C/ Balmes 79, 08007 Barcelona', 41.390752, 2.160458, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (335, 3, 'Estraperlo Barceloneta', 0, 0, 0, 'C/ de l\'Atlàntida 65, 08003 Barcelona', 41.379194, 2.190185, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (336, 3, 'L’empanat', 1, 0, 0, 'C/ Monlau, 60, 08027 Barcelona', 41.424902, 2.190490, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (337, 3, 'Segons Mercat Aribau', 0, 1, 0, 'C/ Aribau 3, 08011 Barcelona', 41.384733, 2.160988, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (338, 3, 'Senyor vermut', 0, 0, 0, 'C/ Provença 85, 08029 Barcelona', 41.385866, 2.149586, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (339, 3, 'Beer\'linale', 0, 1, 0, 'C/ Carme 7, 08001 Barcelona', 41.382666, 2.171084, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (340, 3, 'Terraza Martinez', 1, 0, 0, 'Ctra. de Miramar 38, 08038 Barcelona', 41.368306, 2.171190, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (341, 3, 'El filete ruso', 1, 0, 0, 'C/ Enric Granados 95, 08008 Barcelona', 41.392441, 2.155924, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (342, 3, 'La porca', 1, 0, 0, 'C/ Mata 16, 08004 Barcelona', 41.372987, 2.170796, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (343, 3, 'Café Adonis 1940', 0, 0, 0, 'C/ Bailèn 188, 08037 Barcelona', 41.401216, 2.165136, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (344, 3, 'Casa Diaz Bcn', 0, 0, 0, 'C/ Castillejos 285, 08025 Barcelona', 41.407257, 2.176937, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (345, 3, 'Restaurant Casa Blava', 1, 0, 0, 'Av/ Verge de Montserrat 1, 08750 Molins de Rei, Barcelona', 41.444865, 2.061629, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (346, 3, 'Polleria fontana', 0, 0, 0, 'C/ Sant Lluís 9, 08012 Barcelona', 41.404407, 2.158534, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (347, 3, 'Barberetxu', 1, 0, 0, 'C/ del Molí 3, 08750 Molins de Rei, Barcelona', 41.412791, 2.015447, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (348, 3, 'Santa Anita', 0, 0, 0, 'C/ Consell de Cent 102, 08015 Barcelona', 41.380279, 2.151524, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (349, 3, 'Fonda Europa', 1, 0, 0, 'C/ Agustí Viñamata 2, 08402 Granollers, Barcelona', 41.608292, 2.289050, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (350, 3, 'Bodega La Puntual', 0, 0, 0, 'C/ Montcada 22, 08003 Barcelona', 41.384462, 2.181732, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (351, 3, 'NOW - Not Only Wine', 0, 0, 0, 'C/ Hercegovina 28, 08006 Barcelona', 41.403216, 2.140200, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (352, 3, 'Bar del Pla (Re-Pla)', 0, 0, 0, 'C/ Montcada 2, 08003 Barcelona', 41.385573, 2.180128, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (353, 3, 'Makes Taperia', 1, 0, 0, 'Av/ Madrid 160, 08028 Barcelona', 41.380233, 2.131241, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (354, 3, 'L\'Olivera', 0, 0, 0, 'C/ dels Escultors Claperós 39, 08018 Barcelona', 41.405896, 2.189333, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (355, 3, 'Bar Copèrnic', 1, 0, 0, 'C/ Consell de Cent 93, 08015 Barcelona', 41.380005, 2.150828, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (356, 3, 'BORO Bar', 0, 0, 0, 'C/ Diputació 286, 08009 Barcelona', 41.392511, 2.170044, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (357, 3, 'La Cachapera', 0, 0, 0, 'C/ Marina 241, 08013 Barcelona', 41.402946, 2.176066, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (358, 3, 'El Mercat', 0, 0, 0, 'C/ Casp 35, 08010 Barcelona', 41.391369, 2.172949, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (359, 3, 'Casa Lolea', 0, 0, 0, 'C/ Sant Pere Més Alt 49, 08003 Barcelona', 41.388809, 2.177129, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (360, 3, 'Celler de Tapes Edar', 0, 0, 0, 'C/ Sardenya 211, 08013 Barcelona', 41.399446, 2.178340, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (361, 3, 'Winchester BCN', 0, 1, 0, 'Pg/ de St. Joan 62, 08009 Barcelona', 41.396680, 2.173712, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (362, 3, 'Muten town', 1, 0, 0, 'C/ de Lleó 55, 08911 Badalona, Barcelona', 41.448668, 2.247632, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (363, 3, 'Monopol', 0, 0, 0, 'Rambla del Poblenou 74, 08005 Barcelona', 41.401249, 2.201229, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (364, 3, 'Rekons', 0, 0, 0, 'C/ Comte d\'Urgell 32, 08011 Barcelona', 41.380616, 2.160950, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (365, 3, 'Extra Bar', 0, 0, 0, 'C/ Torrent de l\'Olla 79, 08012 Barcelona', 41.401338, 2.158106, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (366, 3, 'Quillo bar', 0, 0, 0, 'C/ Rec Comtal 2, 08003 Barcelona', 41.389102, 2.179633, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (367, 3, 'Cafè Salambó', 0, 0, 0, 'C/ Torrijos 51, 08012 Barcelona', 41.404443, 2.157762, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (368, 3, 'Bar Centric Raval', 0, 0, 0, 'C/ Ramelleres 27, 08001 Barcelona', 41.384784, 2.168090, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (369, 3, 'Els 4Gats', 0, 0, 0, 'C/ Montsió 3, 08002 Barcelona', 41.385810, 2.173574, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (370, 3, 'Bar Granja Leo', 0, 0, 0, 'Via Júlia 25, 08042 Barcelona', 41.439807, 2.175589, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (371, 3, 'Show Plate & Tapa', 1, 0, 0, 'C/ Reus 22, 08022 Barcelona', 41.405078, 2.134468, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (372, 3, 'Melosa', 0, 0, 0, 'C/ del Clot 163, 08026 Barcelona', 41.412438, 2.189907, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (373, 3, 'Blu Bar', 0, 0, 0, 'Rambla del Poblenou 11, 08005 Barcelona', 41.398225, 2.204757, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (374, 3, 'König Barcelona Centre', 0, 0, 0, 'Rambla de Catalunya 5, 08007 Barcelona', 41.387600, 2.167685, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (375, 3, 'Taquerías Tamarindo', 1, 0, 0, 'C/ Aragó 236, 08007 Barcelona', 41.390132, 2.162275, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (376, 3, 'El 58', 0, 0, 0, 'Rambla del Poblenou 58, 08005 Barcelona', 41.400456, 2.202194, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (377, 3, 'BarraVas', 0, 0, 0, 'C/ Mozart 16, 08012 Barcelona', 41.399362, 2.158274, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (378, 3, 'Casa Vall', 0, 0, 0, 'Pl/ Rovira i Trias 3, 08024 Barcelona', 41.407431, 2.158574, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (379, 3, 'Varela', 0, 0, 0, 'Pl/ Molina 4, 08006 Barcelona', 41.400832, 2.147343, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (380, 3, 'Robadora', 0, 1, 0, 'C/ Robador 18, 08001 Barcelona', 41.379563, 2.170592, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (381, 3, 'Restaurante Tapas Navia', 0, 0, 0, 'Pl/ Joanic 5, 08024 Barcelona', 41.405356, 2.162186, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (382, 3, 'Malabar Bar Restaurant', 0, 0, 0, 'C/ Nàpols 356, 08013 Barcelona', 41.405989, 2.165639, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (383, 3, 'GILDA Tapes Bistro Urbà', 0, 0, 0, 'C/ Ample 34, 08002 Barcelona', 41.380699, 2.180260, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (384, 3, 'Picants Curtidillo', 0, 1, 0, 'Pl/ de la Concòrdia 11, 08014 Barcelona', 41.386587, 2.132516, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (385, 3, 'Bar Bitácora Barceloneta', 0, 0, 0, 'C/ Balboa 1, 08003 Barcelona', 41.382124, 2.187623, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (386, 3, 'La Frontera de Gràcia', 0, 0, 0, 'C/ Sardenya 532, 08024 Barcelona', 41.412010, 2.162810, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (387, 3, 'Bar cervecería Can Pepe', 1, 0, 0, 'Plaça interior, C/ Jaume I 10, 08840 Viladecans, Barcelona', 41.315440, 2.025041, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (388, 3, 'Taraxacum', 1, 0, 0, 'C/ Major 58, 17520 Puigcerdà, Girona', 42.434131, 1.925685, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (389, 3, 'Golf Sant Marc', 0, 0, 0, 'Camí de Sant Marc, 17520, Girona', 42.415070, 1.930496, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (390, 3, 'SOCO Gràcia', 0, 0, 0, 'C/ Pi i Margall 41, 08024 Barcelona', 41.408287, 2.163560, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (391, 3, 'Portal 22', 1, 0, 0, 'Pl/ Portal Nou 22, 43800 Valls, Tarragona', 41.282865, 1.246154, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (392, 3, 'Collonut', 0, 0, 0, 'C/ Olesa 7, 08027 Barcelona', 41.420460, 2.181988, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (393, 3, 'Casa Teresa Bar', 0, 0, 0, 'Paseo de los Rosales 26, 50008 Zaragoza', 41.640483, -0.877990, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (394, 3, 'Bar Yeti \"El albondigable\"', 0, 0, 0, 'Pl/ Bonanova 6, 08022 Barcelona', 41.406334, 2.134226, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (395, 3, 'UNA', 0, 0, 0, 'Pl/ dels Herois 1, 17520 Puigcerdà, Girona', 42.433096, 1.927154, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (396, 3, 'Atabalats Gastrobar', 1, 0, 0, 'C/ Providència 99, 08024 Barcelona', 41.408768, 2.160520, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (397, 3, 'La Mari Ollero', 0, 0, 0, 'C/ Calàbria 5, 08015 Barcelona', 41.375401, 2.160457, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (398, 3, 'Betlem - Miscelánea Gastronómica', 0, 0, 0, 'C/ Girona 70, 08009 Barcelona', 41.395397, 2.171371, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (399, 3, 'Antunez', 0, 0, 0, 'C/ Neptú 18, 08006 Barcelona', 41.397891, 2.154693, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (400, 3, 'L\'Òstia', 0, 0, 0, 'Pl/ de la Barceloneta 1, 08003 Barcelona', 41.379918, 2.188004, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (401, 3, 'Frankie Gallo Cha Cha Cha', 0, 0, 0, 'C/ Marquès de Barberà 15, 08001 Barcelona', 41.378548, 2.172456, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (402, 3, 'Estruch Bar', 0, 0, 0, 'C/ Sant Isidre 140, 08208 Sabadell, Barcelona', 41.553428, 2.100025, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (403, 3, 'Segons Mercat', 1, 1, 0, 'Gran Via de les Corts Catalanes, 552, 08011 Barcelona', 41.383234, 2.160537, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (404, 3, 'Paco Meralgo', 0, 0, 0, 'C/ Muntaner 171, 08036 Barcelona', 41.391717, 2.152510, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (405, 3, 'LATA-Bern@', 1, 0, 0, 'C/ Torrent de les Flors 53, 08024 Barcelona', 41.406181, 2.160173, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (406, 3, 'Tapeo', 0, 0, 0, 'C/ Montcada 29, 08003 Barcelona', 41.384580, 2.181738, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (407, 3, 'Malkoa charcuteria degustacion', 1, 0, 0, 'C/ Major 42, 08901 L\'Hospitalet de Llobregat, Barcelona', 41.359554, 2.098326, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (408, 3, 'La Foga', 0, 0, 0, 'Pg/ de St. Joan 32, 08010 Barcelona', 41.393137, 2.178502, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (409, 3, 'Chivuo\'s', 0, 0, 0, 'C/ Torrent de l\'Olla 175, 08012 Barcelona', 41.405009, 2.153935, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (410, 3, 'Xiroi', 0, 0, 0, 'Pg/ Marítim de la Nova Icària 38, 08005 Barcelona', 41.391620, 2.203440, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (411, 3, 'La fàbrica', 1, 0, 0, 'C/ Major 25, 17520 Puigcerdà, Girona', 42.431739, 1.927451, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (412, 3, 'Bar But', 0, 0, 0, 'C/ Bonavista,8, 08012 Barcelona', 41.397982, 2.159360, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (413, 3, 'Nonna Delia', 0, 0, 0, 'C/ Padilla 307, 08025 Barcelona', 41.408091, 2.173674, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (414, 3, 'Maitea', 0, 0, 0, 'C/ Casanova 155, 08036 Barcelona', 41.391030, 2.151175, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (415, 3, 'Sa Barra', 0, 0, 0, 'C/ Sant Pere 5, 17255 Begur, Girona', 41.954619, 3.206950, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (416, 3, 'La Rovira', 0, 0, 0, 'C/ Rabassa 23, 08024 Barcelona', 41.407499, 2.158091, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (417, 3, 'Terra d\'Escudella', 0, 0, 0, 'C/ Premià 20, 08014 Barcelona', 41.376267, 2.139086, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (418, 3, 'Molina Restaurant', 0, 1, 0, 'Pg/  St. Gervasi 65, 08022 Barcelona', 41.411632, 2.138113, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (419, 3, 'BAR Riera Begur', 0, 0, 0, 'Pl/ Sa Riera 4, 17255 Sa Riera, Girona', 41.971840, 3.210980, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (420, 3, 'Ølgod', 0, 0, 0, 'C/ Hospital 74, 08001 Barcelona', 41.380145, 2.169180, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (421, 3, 'Lexi\'s', 0, 0, 0, 'C/ Aribau 38, 08011 Barcelona', 41.387566, 2.160698, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (422, 3, 'Bodega Pàdua', 0, 0, 0, 'C/ Pàdua 92, 08006 Barcelona', 41.404414, 2.143912, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (423, 3, 'Bar Bogatell', 0, 0, 0, 'C/ Carmen Amaya 4, 08005 Barcelona', 41.394745, 2.203476, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (424, 3, 'Croq & Roll Croqueteria', 0, 0, 0, 'Travessera de Gràcia 233, 08012 Barcelona', 41.403830, 2.161609, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (425, 3, 'Akelarre', 0, 0, 0, 'Carretera de Rubí, 28, 08174 Sant Cugat del Vallès, Barcelona', 41.478816, 2.067628, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (426, 3, 'Bar centro', 1, 0, 0, 'C/ Casp 55, 08010 Barcelona', 41.392941, 2.175230, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (427, 3, 'La bodegueta de Gràcia', 0, 0, 0, 'C/ Sant Lluís,103, 08024 Barcelona', 41.407336, 2.163077, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (428, 3, 'Mirando al Mar', 0, 0, 0, 'Maremàgnum , Moll d\'Espanya, N5, 08039 Barcelona', 41.375135, 2.182850, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (429, 3, 'La Xula Taperia', 0, 0, 0, 'C/ Mare de Déu dels Desemparats 18, 08012 Barcelona', 41.402365, 2.158590, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (430, 3, 'La Real Hamburguesería', 1, 0, 0, 'C/ València 285, Tienda 03, 08009 Barcelona', 41.395267, 2.166544, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (431, 3, 'Elsa & Fred', 0, 0, 0, 'C/ Rec Comtal 11, 08003 Barcelona', 41.389846, 2.179866, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (432, 3, 'Pepa Tomate', 0, 0, 0, 'Pl/ Revolució de Setembre 1868 17, 08012 Barcelona', 41.402788, 2.158007, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (433, 3, 'Banna', 1, 0, 0, 'Pl/ Revolució de Setembre 1868 15, 08012 Barcelona', 41.402520, 2.158071, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (434, 3, 'Entrepanes díaz', 0, 0, 0, 'C/ Pau Claris 189, 08037 Barcelona', 41.397266, 2.160940, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (435, 3, 'La Cigale', 0, 0, 0, 'C/ Tordera 50, 08012 Barcelona', 41.401885, 2.162038, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (436, 3, 'Cafè Pagès', 0, 0, 0, 'C/ Torrent de l\'Olla 27, 08012 Barcelona', 41.399542, 2.160098, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (437, 3, 'La Llimona', 0, 0, 0, 'C/ Constança 6, 08014 Barcelona', 41.387995, 2.136234, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (438, 3, 'Sanbermut', 0, 0, 0, 'C/ Mandri 34, 08022 Barcelona', 41.403355, 2.134119, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (439, 3, 'Babia', 0, 0, 0, 'C/ Sagristans 9, 08002 Barcelona', 41.385177, 2.175296, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (440, 3, 'La esquinica', 0, 0, 0, 'Pg/ Fabra i Puig 296, 08031 Barcelona', 41.430625, 2.171251, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (441, 3, 'Bar Snack 55', 0, 0, 0, 'Pg/ St. Joan 55, 08009 Barcelona', 41.396894, 2.172477, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (442, 3, 'Biercab', 0, 0, 0, 'C/ Muntaner 55, 08011 Barcelona', 41.386199, 2.159793, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (443, 3, 'Cafè Flanders', 0, 0, 0, 'Pl/ Rovira i Trias 1, 08024 Barcelona', 41.407340, 2.158445, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (444, 3, 'Bodega Manolo', 0, 0, 0, 'C/ Torrent de les Flors 101, 08024 Barcelona', 41.408115, 2.158297, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (445, 3, 'Terra Bar', 0, 0, 0, 'Pl/ Virreina 5, 08024 Barcelona', 41.404931, 2.156943, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (446, 3, 'El mirador de Can Cases', 0, 0, 0, 'Camí de Can Cases 15, 08196 Barcelona', 41.434460, 2.098490, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (447, 3, 'Le Bouchon', 1, 0, 0, 'C/ Lledó, 7 08002 Barcelona', 41.382588, 2.178943, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (448, 3, 'Cabo Bar', 0, 0, 0, 'C/ Marina,124 Esquina, 08013 Barcelona', 41.396357, 2.185205, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (449, 3, 'El Timonel', 0, 0, 0, 'Pg/ Port Esportiu 30, 08320 El Masnou, Barcelona', 41.477360, 2.313877, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (450, 3, 'El Farolillo', 0, 0, 0, 'Pl/ de l\'Església 6, 17255 Begur, Girona', 41.917567, 3.163774, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (451, 3, 'Tastet Ibèric', 0, 0, 0, 'Pl/ dels Herois 6, 17520 Puigcerdà, Girona', 42.433219, 1.926821, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (452, 3, 'Casa Mariol', 0, 0, 0, 'C/ Rosselló 442, 08025 Barcelona', 41.407149, 2.175909, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (453, 3, 'Taberna San Pascual', 0, 0, 0, 'C/ San Pascual 3, 03002 Alicante', 38.345952, -0.482909, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (454, 3, 'El Jardí', 0, 0, 0, 'C/ Hospital 56, 08001 Barcelona', 41.380520, 2.170319, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (455, 3, 'Restaurant la marina', 0, 0, 0, 'Pg/ del Callao 100, 08301 Mataró, Barcelona', 41.537063, 2.451359, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (456, 3, 'Chez Marius', 0, 0, 0, '3 Pl. Lamourguier, 11100 Narbonne, França', 43.181095, 3.003683, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (457, 3, 'Beerivins', 0, 0, 0, 'C/ Còrsega 589, 08025 Barcelona', 41.407654, 2.173915, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (458, 3, 'ChichaLimoná', 0, 1, 0, 'Pg/ de St. Joan 80, 08009 Barcelona', 41.397433, 2.172616, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (459, 3, 'El Tomàs de Sarrià', 0, 0, 0, 'C/ Major de Sarrià 49, 08017 Barcelona', 41.397566, 2.123058, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (460, 3, 'Palosanto', 0, 0, 0, 'Rambla del Raval 26, 08001 Barcelona', 41.377912, 2.169808, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (461, 3, 'Bar Mandri', 0, 0, 0, 'C/ Mandr, 60, 08022 Barcelona', 41.403768, 2.133024, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (462, 3, 'Guingueta Aigua', 0, 0, 0, 'C/ Marina 372, 08025 Barcelona', 41.409696, 2.168299, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (463, 3, 'Platerets', 1, 0, 0, 'C/ Milà i Fontanals 29, 08012 Barcelona', 41.401320, 2.162111, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (464, 3, 'Chico Bar | Vermut, tapas y platillos', 0, 0, 0, 'C/ Mandri 29, 08022 Barcelona', 41.403100, 2.133836, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (465, 3, 'Bar La Campana', 0, 0, 0, 'C/ Botoneras 6, 28012 Madrid', 40.414860, -3.706819, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (466, 3, 'Bar Oviso', 0, 0, 0, 'C/ de n\'Arai 5, 08002 Barcelona', 41.380701, 2.177124, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (467, 3, 'El Santet', 0, 0, 0, 'Av/ Icària 215, 08005 Barcelona', 41.394800, 2.200795, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (468, 3, 'Bar Can Rafa', 0, 0, 0, 'C/ Camèlies 62, 08024 Barcelona', 41.413189, 2.163191, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (469, 3, 'O\'Retorno', 0, 0, 0, 'C/ Comte d\'Urgell 168, 08036 Barcelona', 41.386873, 2.152742, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (470, 3, 'INNSBRUCK RESTAURANTE', 0, 0, 0, 'Pl/ Cabrinetty 9, 17520 Puigcerdà, Girona', 42.430747, 1.928065, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (471, 3, 'Ovante', 0, 0, 0, 'Pg/ Fabra i Puig 95, 08016 Barcelona', 41.430051, 2.182707, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (472, 3, 'The Juice House', 0, 0, 0, 'C/ Parlament 12, 08015 Barcelona', 41.375657, 2.161724, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (473, 3, 'Celler de Tapas', 0, 0, 0, 'Pl/ Universitat 5, 08001 Barcelona', 41.385392, 2.164423, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (474, 3, 'Santuari de Paller', 0, 0, 0, 'C/ Santuari de Paller, 08695 Bagà, Barcelona', 42.266807, 1.875930, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (475, 3, 'La Gurmeteria', 1, 0, 0, 'Pg/ Vapor Gran 24, 08221 Terrassa, Barcelona', 41.560084, 2.013196, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (476, 3, 'INKA BURG', 1, 0, 0, 'Av/ República Argentina 17, 08023 Barcelona', 41.407747, 2.147841, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (477, 3, 'Granja Petitbo', 0, 0, 0, 'Pg/ St. Joan 82, 08009 Barcelona', 41.397597, 2.172559, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (478, 3, 'Bar Marcel', 0, 0, 0, 'C/ Santaló 42, 08021 Barcelona', 41.395998, 2.145494, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (479, 3, 'Bar Es Castell', 0, 0, 0, 'Pl/ de la Vila,1, 17255 Begur, Girona', 41.954514, 3.207627, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (480, 3, 'O\'Candil', 0, 1, 0, 'C/ Madrazo 78, 08021 Barcelona', 41.398423, 2.146367, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (481, 3, 'L\'autèntic', 0, 0, 0, 'C/ Campuig 1, 17255 Begur, Girona', 41.954896, 3.205837, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (482, 3, 'Steam & Coal', 0, 0, 0, 'Pl/ Julio González 4, 08005 Barcelona', 41.401348, 2.206907, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (483, 3, 'KAT MAY', 0, 0, 0, 'C/ St. Antoni Maria Claret 132, 08025 Barcelona', 41.408073, 2.170413, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (484, 3, 'Civico 46', 1, 0, 0, 'C/ Manso 46, 08015 Barcelona', 41.377046, 2.161361, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (485, 3, 'La Colosal', 0, 0, 0, 'Rambla Catalunya 23, 08007 Barcelona', 41.388829, 2.166271, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (486, 3, 'La Informal', 1, 0, 0, 'Rambla del Raval 32, 08001 Barcelona', 41.377721, 2.170006, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (487, 3, 'Bitacora', 0, 0, 0, 'Pl/ de la Unió 24, 08005 Barcelona', 41.401015, 2.204621, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (488, 3, 'Cafe Belgrado', 0, 0, 0, 'Av/ Rius i Taulet 120, 08172 Sant Cugat del Vallès, Barcelona', 41.478291, 2.069930, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (489, 3, 'Vivant', 0, 0, 0, 'C/ Consell de Cent 394, 08009 Barcelona', 41.396159, 2.172482, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (490, 3, 'Casa Delfin', 0, 0, 0, 'Pg/ del Born 36, 08003 Barcelona', 41.385242, 2.183379, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (491, 3, 'Insòlita Gea', 0, 0, 0, 'C/ St. Antoni Maria Claret 216, 08025 Barcelona', 41.411314, 2.174671, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (492, 3, 'Bar Restuarant Balouta-4', 0, 0, 0, 'C/ Alcalde de Móstoles 49, 08025 Barcelona', 41.411291, 2.165359, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (493, 3, 'Porcus Girona', 0, 0, 0, 'Pl/ Catalunya 25, 17002 Girona', 41.981898, 2.822844, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (494, 3, 'Tap de Suro', 0, 0, 0, 'C/ Querol 21, 17520 Puigcerdà, Girona', 42.432136, 1.926356, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (495, 3, 'Bar Lepanto', 0, 0, 0, 'C/ Lepant 440, 08025 Barcelona', 41.411930, 2.167170, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (496, 3, 'San Pankracio', 0, 0, 0, 'Splau, Av/ del Baix Llobregat, 08940 Cornellà de Llobregat, Barcelona', 41.347323, 2.078481, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (497, 3, 'Chéri', 0, 0, 0, 'C/ Enric Granados 122, 08008 Barcelona', 41.394507, 2.153686, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (498, 3, 'El picoteo', 0, 0, 0, 'C/ Gran de Gràcia 162, 08012 Barcelona', 41.402309, 2.152896, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (499, 3, 'Lia d\'en vicius', 0, 1, 0, 'C/ Blai 28, 08004 Barcelona', 41.373816, 2.164338, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (500, 3, 'Hotel Casa Fuster', 0, 0, 0, 'Pg/ de Gràcia 132, 08008 Barcelona', 41.397976, 2.158061, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (501, 3, 'Bar La Cabaña', 0, 0, 0, 'C/ Provença 501, 08025 Barcelona', 41.407174, 2.177827, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (502, 3, 'Almirall', 0, 0, 0, 'C/ Aragó 625, 08026 Barcelona', 41.410000, 2.188333, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (503, 3, 'Vermutería Lorenz', 0, 0, 0, 'C/ Pi i Margall 95, 08024 Barcelona', 41.411177, 2.164352, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (504, 3, 'Montesquiu', 0, 0, 0, 'C/ Mandri 56, 08022 Barcelona', 41.404671, 2.132507, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (505, 3, 'YaYa', 0, 0, 0, 'C/ París 132, 08036 Barcelona', 41.390807, 2.149688, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (506, 3, 'La Montiel37', 0, 0, 0, 'C/ Viladomat 37, 08015 Barcelona', 41.376667, 2.161111, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (507, 3, 'MUKCAFE', 0, 0, 0, 'C/ Lepant 398, 08025 Barcelona', 41.409962, 2.169727, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (508, 3, 'La Bombeta', 0, 0, 0, 'C/ Maquinista 3, 08003 Barcelona', 41.380535, 2.187725, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (509, 3, 'Déjà Burg', 1, 0, 0, 'C/ Còrsega 216, 08036 Barcelona', 41.391767, 2.153216, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (510, 4, 'El Chigre 1769', 0, 0, 0, 'C/ dels Sombrerers 7, 08003 Barcelona', 41.383764, 2.181679, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (511, 4, 'La Porca', 1, 0, 0, 'C/ Mata 16, 08004 Barcelona', 41.373009, 2.170651, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (512, 4, 'Les Truites', 1, 0, 1, 'C/ d\'Arimon 22, 08022 Barcelona', 41.404378, 2.136910, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (513, 4, 'Rooster', 1, 1, 0, 'C/ Casanova 262, 08021 Barcelona', 41.394101, 2.147616, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (514, 4, 'Pasta Market', 1, 0, 0, 'La Rambla 77, 08002 Barcelona', 41.381365, 2.172835, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (515, 4, 'Caramba Tapas', 0, 1, 0, 'C/ de la Cera 57, 08001 Barcelona', 41.377677, 2.164884, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (516, 3, 'Rufus', 0, 1, 0, 'C/ Rosselló,172, 08036 Barcelona', 41.391965, 2.156018, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (517, 3, 'ClassRoom', 0, 1, 0, 'C/ Entença 303-305, 08029 Barcelona', 41.389114, 2.138688, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (518, 3, 'Frankie\'s', 0, 1, 0, 'C/ Muntaner 233, 08021 Barcelona', 41.394619, 2.148644, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (519, 3, 'Colorete', 0, 1, 0, 'C/ Gran Via de les Corts Catalanes 692, 08010 Barcelona', 41.393266, 2.174055, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (520, 3, 'El Chaflan de Barcelona ', 0, 1, 0, 'C/ Comte d\'Urgell 280, 08036 Barcelona', 41.391627, 2.146364, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (521, 3, 'Restaurant Meating', 0, 1, 0, 'C/ Amigó 68, 08021 Barcelona', 41.396916, 2.142575, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (522, 3, 'El Santa del Born', 0, 1, 0, 'C/ de la Pescateria 6, 08003 Barcelona', 41.384071, 2.183922, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (523, 3, 'Harry\'s Burning', 0, 1, 0, 'Av/ Diagonal 353, 08037 Barcelona', 41.397539, 2.164830, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (524, 3, 'Bohèmic', 0, 1, 0, 'C/ Manso 42, 08015 Barcelona', 41.376718, 2.160958, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (525, 3, 'El Bar', 0, 1, 0, 'C/ Calàbria 118, 08015 Barcelona', 41.380743, 2.153907, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (526, 3, 'Drink & eat', 0, 1, 0, 'Centre Comercial Les Glòries, Planta -1', 41.405570, 2.191528, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (527, 3, 'Carmelitas', 0, 1, 0, 'C/ Doctor Dou 1, 08001 Barcelona', 41.381910, 2.169395, '2023-05-25 16:04:15');
INSERT INTO `brava` VALUES (528, 3, 'Dani', 1, 0, 0, 'Av/ dels Pirineus 29, 17520 Puigcerdà, Girona', 42.428580, 1.926920, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (529, 3, 'La Pròrroga Bar', 0, 1, 0, 'C/ Guilleries 10, 08012 Barcelona', 41.403371, 2.156862, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (530, 3, 'La Volatil', 0, 1, 0, 'C/ Muntaner 6, 08011 Barcelona', 41.384266, 2.162945, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (531, 3, 'GARBO Restaurant', 0, 1, 0, 'Pl/ de les Olles, 08003 Barcelona', 41.383687, 2.183103, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (532, 3, 'Ganàpia', 0, 1, 0, 'C/ Sant Hermenegild 2, 08006 Barcelona', 41.404326, 2.145641, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (533, 3, 'Artesans restaurant', 0, 1, 0, 'C/ de l\'Esparteria 10, 08003 Barcelona', 41.384193, 2.183110, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (534, 3, 'Rosal 34', 0, 1, 0, 'C/ Roser 34, 08004 Barcelona', 41.373482, 2.166566, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (535, 3, 'Vintage life & food', 0, 1, 0, 'C/ Aribau 179, 08036 Barcelona', 41.394011, 2.151734, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (536, 3, 'El Terrer', 0, 1, 0, 'C/ Gran de Sant Andreu 180, 08030 Barcelona', 41.432804, 2.189590, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (537, 3, 'Ignició', 0, 1, 0, 'C/ Còrsega 244, 08036 Barcelona', 41.393087, 2.155057, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (538, 3, 'The Hideout Bar', 0, 1, 0, 'C/ Alzina 2, 08024 Barcelona', 41.406058, 2.161954, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (539, 3, 'Mika Milan', 0, 1, 0, 'Rambla del Poblenou 127-129, 08018 Barcelona', 41.404337, 2.196739, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (540, 3, 'El Rincón Criollo', 0, 1, 0, 'Pg/ de St. Joan 72, 08009 Barcelona', 41.397095, 2.173057, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (541, 3, 'Apats Puigcerda', 0, 1, 0, 'Pl/ dels Herois 1, 17520 Puigcerdà, Girona', 42.433089, 1.927208, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (542, 3, 'El Zorrito', 0, 1, 0, 'Av/ Josep Tarradellas 133, 08029 Barcelona', 41.390206, 2.143217, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (543, 3, 'Districte Born', 0, 1, 0, 'C/ Princesa 53, 08003 Barcelona', 41.385992, 2.181079, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (545, 3, 'Bretón', 0, 1, 0, 'C/ Bretón de los Herreros 6, 08012 Barcelona', 41.402541, 2.152090, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (546, 3, 'Telefèric Born', 0, 1, 0, 'Pl/ Jacint Reventós, 08003 Barcelona', 41.383468, 2.180823, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (547, 3, 'Cafe & Co', 0, 1, 0, 'C/ Santaló 39, 08021 Barcelona', 41.395843, 2.145402, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (548, 3, 'Frankfurt Innsbrug', 0, 1, 0, 'C/ Capità Canal 7, 17520 Puigcerdà, Girona', 42.432090, 1.928784, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (549, 3, 'Piscolabis', 0, 1, 0, 'Rambla de Catalunya 27, 08007 Barcelona', 41.389154, 2.165842, '2023-05-25 16:04:16');
INSERT INTO `brava` VALUES (550, 3, 'Eldiset', 0, 0, 0, 'C/ Antic de Sant Joan 3, 08003 Barcelona', 41.384990, 2.183390, '2023-05-29 09:10:01');
INSERT INTO `brava` VALUES (551, 3, 'SAGÀS Pagesos i Cuiners', 0, 0, 0, 'Pla de Palau 13, 08003 Barcelona', 41.383330, 2.183430, '2023-05-29 09:14:24');
INSERT INTO `brava` VALUES (552, 3, 'La Chula Cerveseria Mexicana', 1, 0, 0, 'C/ Rosselló 483, 08025 Barcelona', 41.409080, 2.178220, '2023-06-07 12:41:09');
INSERT INTO `brava` VALUES (553, 3, 'D9', 0, 0, 0, 'C/ Pallars 122, 08016 Barcelona', 41.396785, 2.192138, '2023-06-07 12:45:31');
INSERT INTO `brava` VALUES (554, 3, 'La Tere Gastrobar', 0, 0, 0, 'C/ Riego 25, 08014 Barcelona', 41.376520, 2.138170, '2023-07-10 16:34:51');
INSERT INTO `brava` VALUES (555, 3, 'Bar Tapitas', 0, 0, 0, 'Av/ Àngel Sallent 169, 08224 Terrassa, Barcelona', 41.561170, 1.998490, '2023-07-10 16:40:28');
COMMIT;

-- ----------------------------
-- Table structure for brava_lang
-- ----------------------------
DROP TABLE IF EXISTS `brava_lang`;
CREATE TABLE `brava_lang` (
  `id_brava_lang` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_brava` smallint(5) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`id_brava_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brava_lang
-- ----------------------------
BEGIN;
INSERT INTO `brava_lang` VALUES (1, 1, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ0d9K8jmWGkQYHUbNiPZkNUro4b1CRr3YUZScIGHeZ4QLrQerX_L9nYFohBHdMp90d4fl_MMO3sUmvlujn-olkGS5Gj4cmTDzGFitOvP03GCKXHAS1LgC7mmjm9EqD2eZTRqLEmIJNT1A\" height=\"200\" width=\"auto\" /><br><br>Carrer de Galileu, 30.<br><br>Dt-Ds:	13:00-16:00, 20:30-00:00<br>Dg:	13:00-16:00');
INSERT INTO `brava_lang` VALUES (2, 1, 2, NULL);
INSERT INTO `brava_lang` VALUES (3, 2, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ3CAXxh67GrvLKuE2Ve9S5Z_yRgQAj5WX60E_BwJlOqTm7yPdaHTjkHm7LwpQtpFO9IeCjGUczZhTq_w4XGXiycPzoBQysEJvkN8Rcvmn6_6q2HB0g6n_PMXxhM6llTXXtQvf7CG_tX-zP10RNR2Gu_rP1qZMRGuckF\" height=\"200\" width=\"auto\" /><br><br>Carrer del Rosselló, 155<br><br>Dl-ds: 10:00 – 17:00, 20:00 – 23:30');
INSERT INTO `brava_lang` VALUES (4, 2, 2, NULL);
INSERT INTO `brava_lang` VALUES (5, 3, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ltc9ogntgok482thh823pf4lq4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FHZ_F5BTne-5jcjAdmtlSkaMZbhfcX4Bg0McLDVvjp882AvA29oOXCP-jDKg5ASuWgqgWKAVUxuXyhkI138q_0xjM5BTDykgt3isd7k2Ed6OEURdMEOMtLY7jJfkOrPsL1hPcqa3_awOiyTZT3YKrMS1pU9glKJG_lCx0QpPvL8YVNBrWWVXnipji2?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Carrer del Vallespir, 93.<br><br>Dt-Ds:	13:00 - 16:00, 20:00 - 00:00<br>Dg:	13:00 - 16:00');
INSERT INTO `brava_lang` VALUES (6, 3, 2, NULL);
INSERT INTO `brava_lang` VALUES (7, 4, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/gue3f6qri3mg54dd10cjv71g2o/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F9XGR2tejqZirInzb2G6sUqVQMA6KWM15GuLjvMxz7YjFb8GSB1eW4eT8uHDe7tGGpyD_NcZohW0J_datcroZj3k3yybb2ZM2bnzEVAYoeom2jMM-QbY_S0eABsObxHjdu4CLAYV45Qtpv7fVzxKg5zXRT4V9XMvcih8lMwLdoXw6S1wee09rnia-q?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Almirall Aixada, 7<br><br>Dj-dm: de 13-16:30 h i de 20-23:30 h. <br>Dv i dis fins les 24 h.');
INSERT INTO `brava_lang` VALUES (8, 4, 2, NULL);
INSERT INTO `brava_lang` VALUES (9, 5, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ11DuPiw6ddPS9oVc-_MSnF2SNfqxZ2zoDsGtlyzFoQoYLCs3QotKELou3vyb3BQscbpFsxw0-67FeWcxACB69DX45YWXT4FNGFgR_gPmeJKh6LuENsmrU93XS71eZgBGlR674YR3a8kBiXjMP4YXShr8uDtbLRisVde7BrNEz39kt_br_T6oGjJ7blXO6qodbLVlgJoNzcJgfA9VPd-yrdgzw87auEJa-HpmfzZnQ_GDm50NCSaw\" height=\"200\" width=\"auto\" /><br><br>Carrer de Sant Carles, 23<br>BY: PATATAS BRAVAS<br>dl-dx: Tancat<br>dj-dg 13:00–16:00, 20:30–23:30');
INSERT INTO `brava_lang` VALUES (10, 5, 2, NULL);
INSERT INTO `brava_lang` VALUES (11, 6, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/dfh47o5vln56169d14776vqklc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HIIK_AjxmJ-5462OU5lftASWlKeqykp2Q0S9z9D1fHoCPcaCfznmIyJ2t4JlqDc8RBH-Muk25ElytZdt_qiFSHjHFb95axP481M6h0JzhT5NyhIQuNC3eE5DrUf3Zehuj9f9XgcZJ5vpgJGf0AZ_LIDIsr4G6301sbt0wiWr4O_5GXk0opaxLdkqw5?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Carrer de Felip II<br><br>Dx: 20:00–0:00<br>Dj 13:00–16:00, 20:00–0:00<br>Dv: 13:00–16:00, 20:00–0:00<br>Dss: 12:30–16:00, 20:00–0:00<br>Dg: 12:30–16:00, 20:00–22:00');
INSERT INTO `brava_lang` VALUES (12, 6, 2, NULL);
INSERT INTO `brava_lang` VALUES (13, 7, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ35r_cj1yzY3Tq0gbRTdQ8tej30oxtjDnH4otLGNpTbQXxeFV9N6utwsS4wythcGfQmemDlI089A5Wj2mYB42cyQW2qQVm2X05e6PA_-gxVLV8izhzIGujayVQV3rl8bDUCrrjEaA\" height=\"200\" width=\"auto\" /><br><br>Carrer de València, 454<br><br>dl i dg Tancat<br>dm-ds 13:30–15:15, 20:30–22:30');
INSERT INTO `brava_lang` VALUES (14, 7, 2, NULL);
INSERT INTO `brava_lang` VALUES (15, 8, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/e4765qobg2qa8d59msune1gcc8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ECklnSXqF0OqQDmEe6uWiyLEA9Ebk9tEw2cvg7o3VI0TTt_l0vt-jYuFfR3gDy4jLgB2BGuiJheyzgz8A_g_MCG3wwmtG7HD87w-CrsM0SzBlbcuKJgO22UmsAtxJUfiklJKUz-B7iFvwl6rtD5JUn40NMooWOBbRdmalqYxAlWKGyC0zAhvxqRO0m?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Carrer de Tamarit, 117<br><br>dl, dm, ds: 9:30 – 16:00<br>dx, dj, dv 9:30 – 16:00, 20:30 – 23:00<br>dissabte	13:30 – 16:00');
INSERT INTO `brava_lang` VALUES (16, 8, 2, NULL);
INSERT INTO `brava_lang` VALUES (17, 9, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/3ttn3i2976cp54fvneaepf4klg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H-mgwD10HkVJwnNXf1sK8iUU59McxQO8-tf_jyeRx1Na3lAxjlGSXKh8Q4rp264FTEcJTJRwJlJkAyxt_Nhkraz6xV-NR109NcAx7ufwmgO9LZyHOcMPO44I8J2oSkcnm5z3q0FF9_5K5VpNDNPv_2IiTjNoYD2qyxL6-A04sl9G8Y0BzuXTevFNRG?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-ds: 13:30–15:30, 20:30–23:00<br><br>BravesBCN');
INSERT INTO `brava_lang` VALUES (18, 9, 2, NULL);
INSERT INTO `brava_lang` VALUES (19, 10, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/69jg5lmpq10e1mhkpoeclkjr8s/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hb3lzlT58GS5FfSbl11tHDWscOKirNJgzLWcu4a9wl2wT2O12_K43H-Hlz3jUcVqvJzLTK1Lo51ZR2Zv1fKmcKA0q2RPZgFS5l58ep7T2Y0B8yrlesgA3AgV2U5bQNKrYNLlFMU5MIeV3n_Fu3QdcHO-y6MCMhTTpaelIPPIa_mHRPY8BnHIp6_hR6?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DLL 13:15–16:00<br>DM-DV 13:15–16:00, 20:30–23:30<br>DSS 13:15–16:00, 21:00–23:30');
INSERT INTO `brava_lang` VALUES (20, 10, 2, NULL);
INSERT INTO `brava_lang` VALUES (21, 11, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/3c9rth0s9e6gph9ghdn5uu6i08/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GKLejbWUV6NDWeI4lQpTe-ro1AUw08jxxLMlS6e-MCXbpuCHMUdYQKPuNwSQvKAZ5PGnHWqJlvvMNp9u9M5ZoTAawbtJ0shi9T1VoDoAu0QRcJC6tQQ2Cnebc9W-xTugZ8e6CkaQERps7FE_DFdC4ib3nT5vkYNwa5ggYX4AX4QtMkwA29HpiaT3oZ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DG: 13:00–16:00, 20:00–23:00');
INSERT INTO `brava_lang` VALUES (22, 11, 2, NULL);
INSERT INTO `brava_lang` VALUES (23, 12, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/fuqesj0gtl7lbdqmdtgqkcepf4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EfFdj13E7kJzD_0kbTn_fqXuDj03MsnOqbhqfUjUPSJqhI1eyA4xnBhSoURx4QKeLIk91aTHj76DyjEj_10-qcacham1mWM7P2_YpQeeqUwsDmM_1MZts8gYzSdkiasqiSA9Zyn8W2SDDmjFMsI9yr4PyIljGVRNtz7EDNMpsp3hyRCFyFVgRZQ92Z?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DX-DG 13:00–16:00, 20:30–23:00');
INSERT INTO `brava_lang` VALUES (24, 12, 2, NULL);
INSERT INTO `brava_lang` VALUES (25, 13, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/jkk9sejbgcfqmep6op9c2lfdbs/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FmNgxJEg0c0Z9V7JKssRNMNFpDSgbfYyA-In22yhSjXNFfUbeQL53rAG0wT0uDMLk-7Nhldn2v1FrWCfmeI2iYP8LfRav5AkKV4UcxWEwde2to-v30XLV1jQZiSlofQ-5Z37VPDbL8L_SUZIUYL-wGiQNgT1tFEpYXIUxBrbq-EDQB0dSpjwulilld?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL, DX-DJ 19:30–23:30<br>DV 19:30–0:00<br>DSS 12:30–16:00, 19:30–0:00<br>DG 12:30–16:00, 19:30–23:30<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (26, 13, 2, NULL);
INSERT INTO `brava_lang` VALUES (27, 14, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/rm9skkch1c15aubedeuc2ff16c/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FCoSeG06KneT5tXUpxQ0hxKpsjx06ThMqqvk3FSEmgkP-t2deK3ABOeSB_4oSwEAatc2wUPZ6GV0ExymSDQlGnmKcm0SPqwafmcewP6aR5hAgzYV-GQXgBRKrqDymgKnQlwztnP64HSN7ouJnpL6keIWqZyvpal43vd1XjdhJ658lBv1i3RbMBrV3d?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DSS: 13:00–16:00, 19:00–23:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (28, 14, 2, NULL);
INSERT INTO `brava_lang` VALUES (29, 15, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/rrk7kitckffi9vm888g2rugc68/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EzAGkiwVnn_UU0Yas4Yi_rphmAdsz0TnMq5c8WYC05echM-ZW5I3VmW2iK8ah18xShLU5803wHr7Tu0m5GjJGebA5v9MqLV3UTQTxH13cCVLU9_hZEssftOunNkg545-nKpp1Z3RUzc-zx0Rk_RL40foYgDcYsURyyhcr9UZovLmSFOlOG_3QImM5S?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS: 13:30–15:30, 20:00–23:00');
INSERT INTO `brava_lang` VALUES (30, 15, 2, NULL);
INSERT INTO `brava_lang` VALUES (31, 16, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/uk74ktfk1i2e0lqg6bkl2grlcs/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hxr5haZEzmfjHoFY_QNh5jN50b0W8zpEiK5JQO0xAE0X_fcw48Pr0yz5cJin8W6c5oIafs62SrmY03G3Xzw_XJkc130c497xTuMZI8sbTkqlgYN3G3B06PaWeBfma3_a3hY97x0dVTAbRaBHSkc1bZk4ckBNakH3MOSCKjnWV7s7wQltRdgFzpcW2M?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Bravas BCN<br>DLL-TG: TANCAT<br>DM-DSS 13:30–15:30, 20:30–23:00');
INSERT INTO `brava_lang` VALUES (32, 16, 2, NULL);
INSERT INTO `brava_lang` VALUES (33, 17, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/63063lfgjmtifnhhu8oami7lko/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EZBO2cVAUWFtVYaCs0ObrLfcjO9Amau8pY1Qpy5gatABZXPbNr1WH2ZBsKngpWH2vGJJGWAyqiBS0NR657q3qgSlPdmiO1RHoHthTPvssus2QC5d2Cz98yMMxgdWPGVGOdqLNDWDemJbFzksyWccppLhaepW9vARZA9uzToXG5xnYs4stFZgHDXVUG?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>BravasBCN<br><br>DG-DJ 13:00–16:00, 19:30–22:30<br>DV-DSS 13:00–16:00, 19:30–23:30');
INSERT INTO `brava_lang` VALUES (34, 17, 2, NULL);
INSERT INTO `brava_lang` VALUES (35, 18, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/quu3cjhopai15ctm9p5dje1gu8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HmoEQG4xYy9DDVxddgNfVprI322kWKXTSl8-jNEgPcshy7xtUCpW19zioPH696tdx6SywlYZcTTJs1uH_n4kIsxiwGS9RfZ9oPKmcxDfdG6Ekrfdd5PfV0OYb39N1kgm3-nNHNGvdVgMbNS5_Q-ECRS6rdWr78K4zREWPIpGuo5pC66HaiLdSSMAtd?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DLL 12:30–16:30<br>DM-DSS 12:30–16:30, 20:00–2:00<br><br>Maria Boines');
INSERT INTO `brava_lang` VALUES (36, 18, 2, NULL);
INSERT INTO `brava_lang` VALUES (37, 19, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/42angrh57n1qr6gel666e3adqs/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EsSX9_WSDjCXNg_vIgmwTQL-VYhN6dOyIKDqwcVVpsTVkLsz3cvOw2wnvZXqkhgAmdHGS4FbnaiZMB5NIESkclv2BSMbnPbGSXztfTq9kMZx3ImaaGHzQPwCS7dsAF-SutRVKpP62Exke-IX8MGlWFKXZ6ospV5eyJonmTUdmFtB-yNKzvwgxIf9Zr?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dss 13:00–15:30, 20:00–23:30<br>dg 13:00–16:00<br><br>dos braves:unes amb chili<br><br>food_vader<br>suirnodor<br><br><img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/094spcs5trjaa8ro2cvq1fa270/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H8z9VuQwe6v-FPDXRmoMF_o29wgDHb6gLSd8qqU_4SPExWXP33dw5MJxheMxS5H2KektKgL5knkV7Q7SmYroWHwM9jbISveJcv_CBp1r5LzR48dwOXxE6Aa3QZmT13neAhw3TuPi5oHP-FGmO5PyHNZiv-3REoMRUMgX_2jnj5p6LPw0SpLivau4qs?session=0&fife\" height=\"200\" width=\"auto\" />');
INSERT INTO `brava_lang` VALUES (38, 19, 2, NULL);
INSERT INTO `brava_lang` VALUES (39, 20, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/29fvu81vdhnmoukabkk0s8g9a0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EANVxq9CfPHpXzdg-9IyT9iwrOize6axgORQKrYMQbL8eSs_2ZzdB2lcx3O2JljKV9UOFbRvhJUHG5GmroWoWhQ4bIGNf9Dj-el0-68ipNXc3vJyK_1S_nv_u-frYqxbn6yeFb1RiZ8lPOMM-gXckDfFWLsD6-fMaC6uugdbI-Vn5L-RwPTOknvsHI?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dss 13:00–16:00, 20:00–23:30<br><br>mariaboines, bravasBCN');
INSERT INTO `brava_lang` VALUES (40, 20, 2, NULL);
INSERT INTO `brava_lang` VALUES (41, 21, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/kfr0hsn87qug8vlo1k8hmnv2d8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ErxMZWIXdflDWt9_X2ZQ36dHRWkBzAR_XG6R_3Vkp-kYSvDHGiz3pVwviLQJMT22ctYU6SouovLNVwZgBMgWe1UHlMsMhwdlwopWLCiOthe7bd0RpniuUOBEPXERCuK61cc6hg2jxCY9EMgqivyrr29Fg8diDlFi-lAyFxdgBbuD4oYg8l3QKtF1Bd?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>C/ Mühlberg, 1. Dilluns tancat<br><br>MATINS: dt-dg: 10:00 - 16.00<br>TARDES: dr-dj: 19:00 - 22:30, dv-ds: 20:00-23:30');
INSERT INTO `brava_lang` VALUES (42, 21, 2, NULL);
INSERT INTO `brava_lang` VALUES (43, 22, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/251v2s7p119rds8bf01rm8jtgk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ETRHcux37_GDTsEaVyDbZ33V_bVZskPZSXRjhMmXG3cfi4MYId279BSPtS8DD1ce7CfcuRDQkVD-YxndYWN7QJdp6-JWkkudHtvIVhzNU7E2wKNGDr2HVx7HjUXKGwF1FAZ7k6YUiVNVb_d05jCeKGGWQfPoxamuDtNFk7UgonVlG7zsG30J_Et-s5?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dv 13:00–17:00, 19:00–23:00<br>dss-dg 13:00–23:00<br><br>bravesBCN');
INSERT INTO `brava_lang` VALUES (44, 22, 2, NULL);
INSERT INTO `brava_lang` VALUES (45, 23, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/kmkc5ol1kbjc58ph80n9vr6ctc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FRXQL7WscjIKwAhvTj3bIoHEBHvjqNmvpzpxX_52xHUsAIKE9ZksQCuY1eQ4I21RdAhGbq8co7waMJ-aneZ2pkhPcLFtRPIEYgcsjYVKy2vDRO21ArzGGehhGV_S2er2-lD5wbhgsDAn6j_pW58GLDJNWsxT0QAzFezFgjk4xI3YmT-DzQzb4dGnsu?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>13:00–16:33, 19:30–0:00');
INSERT INTO `brava_lang` VALUES (46, 23, 2, NULL);
INSERT INTO `brava_lang` VALUES (47, 24, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/vkj9i9ajiei74b61qp7iv0l5po/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GBPfPDoOULsCdqngmlnx6eCmQgDYfY5z3P5h8e6UGuCjyYNHx4KxHvOXP_Z9tdejirK3RXWuOqwMI5rml3tv15IRZ1P82d5JUdODinqjl-aKSSOz3ywAQWFSiLgxo0mbS-PMFWbVmsqaMfs4oDKjogt7kjVg7Qd_S95OZagR3JX8wAPtwBJ8KYdkvn?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dss 13:00–16:00, 20:00–0:00<br>dg 13:00–16:00<br><br>oidococinabcn');
INSERT INTO `brava_lang` VALUES (48, 24, 2, NULL);
INSERT INTO `brava_lang` VALUES (49, 25, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/hm3h6np7buhs89bltti8fpv8ok/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Fv3G_uFSJI9lQkpPF28Y-nOMoCLrIc-A466Z9dG92lh3tyWmk5Z9GXqiL5aGihAIUbqV9Z59Pz7DaxJ9pnO9sFTPiiXS8a0ncU7OGKJ_jSdZ5bXy5T7sjNP5bnhgjorbMoXpjzgkMBp80qpYTND6hnw-r8zBYw8nsG8bodPfVFDV22YbhbDo5_L-Sg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL, DSS 19:00–22:30<br>DM-DV 13:30–15:30, 20:00–22:30<br><br>bravablogbcn<br><br><img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/hdgi0s1h2g1kctd5nc31lcoat8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EFZC9KyyRGIFYoLTgHdTbbKiD8Xp6F-mpPBJ3d1KGWHGfBi-ss2ZAveTBVf0Jm-LHJg5W6GCotjQbs3GWDMavqfF9j0Bg6a_IP5czG0dPK3YTGFeIfTIyTN_mGxuIVYLEyjtYaq9fTIjw-ISr9mkjaj4g8EXhOezGMem_B2Ix2WqU6je2RBUq-8O39?session=0&fife\" height=\"200\" width=\"auto\" />');
INSERT INTO `brava_lang` VALUES (50, 25, 2, NULL);
INSERT INTO `brava_lang` VALUES (51, 26, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/um39sdis0hbobqddja1f1bpbgg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EIzcxYobQEajveqr3QrkIfPhtKPy3AbxQFOciJNt03qh44ukRfY3ZcNQhdYzAgy6pQuOjk46xTzQaQP6gbZf0i8rWb7naFp8PlonssRb5p7rVa_rtmWeXDbAMGBQNUx09SngfRqUNb6dbHdwG5Z9MdmCBfzTdYIuc-gnKj-mY9pHYoSiCutPb6EE-A?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dilluns	Tancat<br>dm-dss 13:00–16:00 i 20:00 -23:00<br>dg 13:00–17:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (52, 26, 2, NULL);
INSERT INTO `brava_lang` VALUES (53, 27, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ce35d061tkfec5rd0vfsmclal8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EsjeXBQ8VjolEJwSdF-5w_LSLOFsVyT25dinOXXaypRwy8dQ_dW6mEeXDS21hIIp6Xdgu5a8a74exyjuQn0W0bgo9aS5OOa24ctZw1cie_rgET5n1QpAlcNuDGMkXcfEOES20tWyKEbnEWP_ymsXmjeIE_A0K7nNCXueysms9Ds8zE6g4-SXC_6moj?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>13:00–16:00, 20:00–23:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (54, 27, 2, NULL);
INSERT INTO `brava_lang` VALUES (55, 28, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/eq5f7928bitth6fg7kmv4mat6o/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EuecVA5JHnAGr3cW-O2nA74eWHhqETYCf9hhRoSnPaLycR1BsOehxIvVE4f8rcDyGudFvqFJfFNyVS1pJO-8e_txaN38R7CAIsEBwfOl28M74YCRSAfYmo3NuIqOrsjCaPU4-w7T7mGHZR68n4rBPvNXcim8wv174h6xzu8oUwbTFVGQUtFoIssF9B?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DLL: 13:00–16:00<br>DX 13:00–16:00<br>DJ-DG 13:00–16:00, 20:30–23:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (56, 28, 2, NULL);
INSERT INTO `brava_lang` VALUES (57, 29, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/kmr0qliefr0bmmdovsd9hmjf7o/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EYyPJeXhbIIPZAcdIBhETM1ZZjrp7cCQ9hcYBEPpEnQ6DRRK_VJsVAPp57cZSOdGvrCcbJm2cOFbE4Mkdnn4F5QNGW7nAvPAZBDfppEf0SwNuKH_Q4BXU15XG2ixnihbXVWdz67UJiKRe5R9qW2_GzqfjtAPk26bJrTKM_cmdmhpORQefMgtSHbKe2?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DX-DSS: 12:00–16:00, 19:30–23:00<br>DG: 12:30–16:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (58, 29, 2, NULL);
INSERT INTO `brava_lang` VALUES (59, 30, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/v1pas9prv4kra47057r28shg3s/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H74F1sp0trwBjP8WliHSUf18v3wCJ721-XiPw4cLT_3otcM-8P14Y_mK0IVCU8NjM_SUGU7LsrhJjFrpIBvzZzKFZaMuP8wDFOmeh00CpBDmwA3hehQxHatCE1ZI_4Fvp4D2ymYQxya1Raj4TQIBQXOCWWYbThSUhqbwwThZszgGQ4h9ESfHxdNjft?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DSS: 12:30–16:00, 19:30–23:30<br><br>bcnfoodies8');
INSERT INTO `brava_lang` VALUES (60, 30, 2, NULL);
INSERT INTO `brava_lang` VALUES (61, 31, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/jcod54kkafljqo82hnskt04s98/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EAmMwHS2t8i1mXcO4b9K0IN6AS9EM95IrZZsPwtiewc1krh6KKKpVDd6GU5qZRzz3H0G_przA2GO6S8otaIq9ie5_b3Bgv9FqZjk78jVMFMQPB2u0Xn-9dx_4-hzbaT8-y-VavRjjJrb6T0XNtGXBIvELwTAOfDoBjN5QxPAOfSejDsabZMKH9nnJs?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DSS: 13:30–15:30, 20:30–23:30<br><br>Bravas BCN');
INSERT INTO `brava_lang` VALUES (62, 31, 2, NULL);
INSERT INTO `brava_lang` VALUES (63, 32, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/qlt2cf42bgm46hauea6iuipe74/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GXgJUS0EAdowICQ1l3Es3BYV-bfU31Rs_npfniVrHSD8QiykILeDOddLpVsiGSDkYx1SaZc5Sr5NW7q3GQ2ueS-dKLGlifVkfSPYuFBXQzuhkVL42p5LcpxKv5YD8GYavp6Qho-GeIwl2QazpJ4IV-jnE36yC0Q2zwR2b_gpuyuC2n3cMexR-N6arm?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DX-DSS 13:00–15:30, 20:00–22:30<br>DG 13:00–15:30<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (64, 32, 2, NULL);
INSERT INTO `brava_lang` VALUES (65, 33, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/64a0pi4c8l19t31dn02icf00fo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EbAbRzAWhQZFZaAa4ahrUVf8JQAPHfbKmBrwjLLNDLJgkA0vtqfkhwCGhoPyJx_je_QBwPiRDtV7xZ4ypEb1fJFCqHrCXhlgDyIsoRUhlTFbKQfRpxmwrgbfcu-ki3zaJZNyZgNg46cw2jGCMjk5zjlETRD2w-C83cL70-ny59UrhZoCeG6rXKgd5S?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DX-DSS 20:00–2:30');
INSERT INTO `brava_lang` VALUES (66, 33, 2, NULL);
INSERT INTO `brava_lang` VALUES (67, 34, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/9lphijgfp5msn2n5mu6oj9jmc8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Fr4q9xZdLFWUukE61egmAumMKXVaUzzbitSGNP7xCVBH7h8JhfXPG-lEh13f7wHxK7k_7ZOvIGIyRVT_xLYdBi3q71JplKhUCGeI2GZ1b2oF4lRKaqbUQc4FA7BfvNnQ9POkXqo-F0NsZO2UOyCMdss0Fu0pm_pnaQVPlGzG6mgPi3EpDjQN5hZmBb?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DM 10:00–17:00<br>DJ-DSS 10:00–17:00, 19:00–0:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (68, 34, 2, NULL);
INSERT INTO `brava_lang` VALUES (69, 35, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ff5ffjb4gktrqdc9okmk8meito/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HFvWCLN5np3ALSH14oA39u_fCybTcvXnjK01BiEtykEwKgX3cq-2AWgokwLmq1Y5TPMD-NG81sDUSpExwXMbgNjhZo00dPsZKSCg-GphSY_kr63jxesh48rv1zW3gCSIhG_ifnglz7Fuwy3yH9hfH3l1irrkG2XFeUqAk6c5fTheu4WVUURpON6yhT?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dss 12:30–16:30, 19:00–2:30<br>dg 12:30–22:00');
INSERT INTO `brava_lang` VALUES (70, 35, 2, NULL);
INSERT INTO `brava_lang` VALUES (71, 36, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/8v4bf7gfrgsalopthc5msitfjc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FMqiThJHQKXvtcRpEzLP50xA4DKvhNblJAPKW_zd6iUASoOgujg_K2hrGffvSPuXIh4D6Kdm_3cjGeQ6tvG6SeXPuY8oeZiFj-I_l5pJGQ8tqjgQzU75-DsMTWrG52ZhjULdOB7ZB4nsYCH_e3Ff5RFoEKlsgTg9eZ78bfbrfAReWO_qWw8-MDkfM-?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS 13:00–16:00, 20:00–0:00<br>DG 13:00–16:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (72, 36, 2, NULL);
INSERT INTO `brava_lang` VALUES (75, 38, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/7p42jrj6a9kg76dgenenaamlb8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hb7FJEY6QATXi1NvMcCCRK9u4z9noRA8_WiEgPexX0-0dS8LUKXJRIrhKQQj_seEwzoOE-ddKKEF8ewaoiJ8st33hoCxcEkEO7fvHD7XgkbDhR4sw44QCF4O1fLYY37hNaIjVr9pn73GrDQvWsYDnZR0-WrQpMy18cokjoQZeErY4AjxIXUNtKwr0m?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Ma-J: 20h a 23.30h<br>V: 20h a 1h<br>S: 13h a 17h y 20h a 1h<br>D: 13h a 17h y 20h a 23.30h');
INSERT INTO `brava_lang` VALUES (76, 38, 2, NULL);
INSERT INTO `brava_lang` VALUES (77, 39, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/1sbjp5fn1pm27o525o0d3pn9s8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hik5kHySKMPMZw3WWDL4vYKzqgSQL5QPC4AJk6vwtZuzpyPSQoXxYLNEo8LePE_aIa3FsiS262_0cxlKippABK-tNgjhUG98HelgLO7NNqFS00esvqgryV_t55TVvbH-CGkj64n3EsWC8epn9lcnIfnLTFeSm7qVydd5UL9Po1YiOPwf9OkzhwC8N2?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM 20:30–22:30<br>DX-DSS 13:00–14:30, 20:30–22:30<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (78, 39, 2, NULL);
INSERT INTO `brava_lang` VALUES (79, 40, 1, '13:00–16:30, 20:00–23:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (80, 40, 2, NULL);
INSERT INTO `brava_lang` VALUES (81, 41, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/rq4qchvm3ord9kf6bgionef3d0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EPzNz4N6TEt_XxrK4k-uA24U7vvnfpJT1rqFRnXDmY0bh9ShOgaN_qmofiOtojDQ-rDXqyMgg6Czr_NIAmGahlVS6TyDQJ8oKbjNNKdWGnJWOFndSYiK-O17fgacTdGtYlh_sZ29PhjC5InDibegjoqXZkFN8BwiLfN6AyP0bvnEto2AQ9JutrGDp9?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DG 13:00–0:00<br><br>bravasBcn');
INSERT INTO `brava_lang` VALUES (82, 41, 2, NULL);
INSERT INTO `brava_lang` VALUES (83, 42, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/h6kpo42b4tjo0ngvma7v433534/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FP9RgM-D43nP54COOOpt-A6NRV2f09mJbdRynjbknNa_eZPLB4YLjTLBmi83d6tPH35dI-leommfqoKmPj5Ye58jGZeGV7AEGuYM8nAURSHcIgr4dC_q279fGaelB-byicO9pMeW5fcZ4320yJEtkC2HddVuMUSPSDhgwzjWlQg1JTxjwQFOsj04Rr?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS: 13:00–16:00, 20:30–23:00<br>DG: 13:00–16:00<br><br>patatesbcn');
INSERT INTO `brava_lang` VALUES (84, 42, 2, NULL);
INSERT INTO `brava_lang` VALUES (85, 43, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/cfrisn1odoiav1ppvpnod1coqc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EvKZZs-AdHlYVrswh8_vrboKmyvrC-ttcCy5EsP-P3lTS9r_8LBPIph0Wdln4LtGl8PrEh4-xD8vSF3f2DD73booT_R_EIPAHDojSZxHElABeRCP-X0yb_YoF1fkQ4djt2Anjp527kJXAM-6zHFh9eGNLFhJW8_ktw9NaCwzULI72F2ybDbosOO7n1?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>13:00–16:00, 20:00–23:00');
INSERT INTO `brava_lang` VALUES (86, 43, 2, NULL);
INSERT INTO `brava_lang` VALUES (87, 44, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/sfuabvccef072asb2qa3i15d5s/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FM8yQA4J9twSOn1c0erLNguGu9xSa3khlVOKxYec3q6VwpuE8KXPIGgh36AMVcGbQZTaP3Xfs2iCrJtz7-DcSOq8Rg4qoUi1CMeWdFl6B-52fsZZFIFw1s47k3yJABF3qfK5Un587RC5R6bJl3PuWE_Yng5iAEpV_Afe4rqHXAPISzhf58COeqgbma?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL: 13:00 - 16:00<br>DM-DV: 13:00 - 16:00 i 20:00 - 0:00<br>DSS: 20:00 - 3:00<br>DG: tancat');
INSERT INTO `brava_lang` VALUES (88, 44, 2, NULL);
INSERT INTO `brava_lang` VALUES (89, 45, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ3Al-HNExhvpco4EzK0X6glEBDUyI2-UJe30marSToZB9m0jhJR9qpxsRKN2e8P4czzBAlvAugR7IYVEg7fV51HSTjWkmD4VjjUwN0iwCm7h3zzEycEmPrwoKvIMtgwl4xG5UJp9es\" height=\"200\" width=\"auto\" /><br><br>Carrer d\'Aribau, 150<br>DL: 19:00 - 1:30<br>DX-DJ:	19:00 - 01:30<br>DV: 19:00 - 3:00<br>DS:	13:00 - 1:30');
INSERT INTO `brava_lang` VALUES (90, 45, 2, NULL);
INSERT INTO `brava_lang` VALUES (91, 46, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/pdtvlv2150k7486fu72gk08kt4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ELF7mnEcSkVKvZ02_UNB-h2lGYZGcVRoYn5BLq8A8gPeG3Otm1Kykon6PPSxTey7dxjcCKeb9VlvwBvjEpO_2kPxAhbnqN8DLy5B1H9_SFhjJlSb5YZ6bQozOpOY8faaJod1KDQJb5x75HJ3oMg4z2Bd5mqFwcQP0MIH0KjYfGaCE8654BLMyUi3aC?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL: Tancat<br>DM: 13:00–17:00<br>DX-DSS: 13:00–17:00 i 20:00–23:00<br>DG: 13:00–17:00<br><br>bravas BCN');
INSERT INTO `brava_lang` VALUES (92, 46, 2, NULL);
INSERT INTO `brava_lang` VALUES (93, 47, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/7pojj4ilh1nif5b13jtosm1h9g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EcHbPU8UW4ZPFMyKvFnQA_vPR9CfiHRQQfGHchzCkryzmMgGgj6ktDQyvVKmXr6-2yZ4gzfbT02ckoYpj4MJykTEIZVkO6R3MohgqrgnW9FJ_xD0XcK7sZxBW1wjpPLbl7CX3zOuhtYQne1QCwOQjLMVFVWXdsInSVvizJQG3kYTHascJqA3rZOuSb?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS: 13:15–15:30, 19:30–23:30<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (94, 47, 2, NULL);
INSERT INTO `brava_lang` VALUES (95, 48, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/586jk57b2ei326ac6ff277nb64/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FrEGdimfHlhRcTqUTqr2UNfg90wsBIisauZvFKobXNUed87-4Gs95mT28_xKMprYeg5m2yqCBrkHL4Wcvi3wuayp24kMy1P-z4zKZ2aj0FFBvAE8M8JVgR-QUyYvIk6vtoXVWZD10jo-eeFWyGa-encb_tkZ_f9z4ysGZPmVsYpzYWt4FJDT7xthc8yg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DV: 10:30–17:00<br>DSS: 11:30–15:30');
INSERT INTO `brava_lang` VALUES (96, 48, 2, NULL);
INSERT INTO `brava_lang` VALUES (97, 49, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/jcq6lj6rvb3apk5j3bc2bl4eds/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Ea6Q2s4F3yUhrIcDqIO2u4vsJRgILNNYjJm58odwNR74cR0yIgL9BohzLVZxbWBnrhZabQf4bd9QOwm9g49_8HYzkzoT6Qw5kWbzkYQndIdAFO_WWwpZ1hO6hweBfS8VDlul7nCLovH-wEJ8QbHDIO2e5qW3TNzHbv83IlaAkWOswSDNAy7GRzXMRJ9w?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DSS: 12:30–16:00, 19:30–23:00<br>DG 12:30–16:00<br><br>bravasBCN<br><br><img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ab3metn4jbbim1lsmcv8rgeo7o/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FNRFnF-40n-OS5ADp7N5GtUtL5dQ6QyRszeeGqpTdN93nR1WgiD3lyTwPWKWHDPLEjdHdkpqXIIx36cRIFHVQymimZkA0pKlpHxWEAqXXmtEgfLGyFntGvoknAw7BA8lu1uhyfhjxJfEdV9TdATi9ZOXEjnZZokCVchlXrBRyPz9z3QWtlaDMJKt2b?session=0&fife\" height=\"200\" width=\"auto\" />');
INSERT INTO `brava_lang` VALUES (98, 49, 2, NULL);
INSERT INTO `brava_lang` VALUES (99, 50, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/gk4gr8j671gq9n9psobhs63aco/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H693Cq6D7et3zWhSDnSqunRb--wI-m51n51vb0JvvwLz4jAiUnZg45k-ASJi8KVJzFji9IT6Ao7Z0RsQRHxe_sjqZ4iGn1MicJUeZYJx-DUwRGuUhDUUGF5inYMfdAOUIzPurtSxCWR63NGF-TjRXoykO8PDI8TZzfALUZL0nLQQ05MVAF-wi42hElkmtICq__sDIol5e-7fITUqvJG_7gNHYtLII0ZfZoJRU?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DV 11:00–16:00');
INSERT INTO `brava_lang` VALUES (100, 50, 2, NULL);
INSERT INTO `brava_lang` VALUES (101, 51, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/3mhkktnepq7rs2flvhj0lusdbg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FykAdCV-u2h8ta_P98-zfNVFTMIoWgPC6sGRaVJ1-ZwOlOaW9lJdaBvOFS2vxcJcFjKb9J5SG7_Kq7ppdXpP0j_AOyw2xKX5NZxZ8cTk35pp0lx-Nkzd3fMGnFF6r05Qd1QYPcOJQhvIjh4VQlAdAeomj-OmqM4maYEkzfMjcc2uouGXXKPev6Ns3QeA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DM: tancat<br>DX-DJ: 13:00–16:00<br>DV-DSS: 13:00–16:00, 19:30–22:30<br>DG: 13:00–16:00');
INSERT INTO `brava_lang` VALUES (102, 51, 2, NULL);
INSERT INTO `brava_lang` VALUES (103, 52, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/91mtap5dldpf29epamvhqaqcrc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GdxYlbfoLrWKl--yCwtnTguqVm64jTk0jevAjDLaxWL9TM2kUfymq3FBMrXAxLCnnIGZExX3UOfKAYMaSYz0iBUCrdBuUMlrYRpfSjm1gCNJOyRooU2LBNISDXvvq3Z0IcwosfLpj6m4MPd6uR-e4wTTJIGbwU3NpC9E0s69TYVWE6qWsQw1PfKKNp?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:00–1:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (104, 52, 2, NULL);
INSERT INTO `brava_lang` VALUES (105, 53, 1, 'DLL 17:00–22:00<br>DM-DSS: 10:30–14:30, 17:00–22:00');
INSERT INTO `brava_lang` VALUES (106, 53, 2, NULL);
INSERT INTO `brava_lang` VALUES (107, 54, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ3Y7X8j_jgA1fk22akEQHfD3sZx_glozWDryVuhcm_VPNT7G_GTc-_OFhRdRNo1VBQqegrNxfD-r24bmRfZqn5SJmUtMDxRLWa2eZv8j8-VPjmMHw3zd-DBrlXVmVFeWP_lriRT8LJTJEmeeg9d0633OL5YYrZVdtfhfkqVBd3p9ItDIc2Fbq1RYQ\" height=\"200\" width=\"auto\" /><br><br>Ronda de Sant Antoni, 39<br><br>7:30 – 3:00');
INSERT INTO `brava_lang` VALUES (108, 54, 2, NULL);
INSERT INTO `brava_lang` VALUES (109, 55, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/940qmgvfm72fjcb5hck643brq0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Ej0p9HYwQ9uSxGKfaV5mYiKzdqPFmlKj1oAxEJ46FBZNV8EZvuB06-nsNOP7lV0HhMocxbHupkz6IU9aeJb03watB3f_-YnF25wLq5Lp_z9ybFFvgbpSwbiWlVjYRbQBY6zaoYFalC8b6A6Y5Xs_1OD7v56YqzNWhS2n8wACigBuc0yzo9CSjDeDOZ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS: 13:00–16:00, 19:00–0:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (110, 55, 2, NULL);
INSERT INTO `brava_lang` VALUES (111, 56, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/oo4u7bfc5ortv8jlbbbu0daoa4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HAWidb_wBKWApyEVJmJ5kp7yrEFnu_Sl1QT5zUqORmZEVVopYwHn-yC1aBX_me6fsWVNiy4giIlGGD48zHYmoH28TC3-BKOjMmPmjLFdpUTNtCjqT93Cfk_vBarB4utIx7vT9A5zdnrSm6TUDFRow3sshSYps1LjLfbZ5e1shU07iSeRtUPEEul6MH?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>');
INSERT INTO `brava_lang` VALUES (112, 56, 2, NULL);
INSERT INTO `brava_lang` VALUES (113, 57, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/snutihjku1ns53fica1dchfiac/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EVTDZMHUCNhcODAdFKxh2tEn8tZad_mpIrpELNiGj2EyKmgJEfa6YBASv5Xnt_OKT4YnSNOzG-OPqYiUl7uCW4ilTDBvuJ0VWdO1Oszm-UMS8xNDHuoSEQ_WZCvmNapQIDSHpo4tkwwqZ_HCJxSJXmDn4jw323KRVmR4JIIZ4vb3dUsHQ_u_lWYSnH?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dg 6:00–0:00<br><br>gatrobirro');
INSERT INTO `brava_lang` VALUES (114, 57, 2, NULL);
INSERT INTO `brava_lang` VALUES (117, 59, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/or5rg2rvl2japt67b732qmuga8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FhoNJUxSKsNtRpO8SnHtLYu2H2P_Gl3flrkE5-MNCksfYOmytG-5uR4UxsJTBTLb0ctjVQYcuiaa33tpazGedOsNlq5zLyMzP_kSqBa_Jio2FATrUgwm9TbplYk-LYShDb29H9qWHlYKWetwNGG90gmKetl-uQkz02qYjSN6dAv01vEVvG04P1w0LQQQ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DJ: 13:00–17:00, 20:00–0:00<br>DV-DG: 12:00–1:00<br><br>bravadictos');
INSERT INTO `brava_lang` VALUES (118, 59, 2, NULL);
INSERT INTO `brava_lang` VALUES (119, 60, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/hvpk6997vde4pv4keop42g7jjc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GDttZc-Bg7EQ_PRTlW4KTbWl7_bXJguJuYcqdcg29rSIPVy9lQ3U4F8e_eykbi3MLbg71dh1Qz0ikXZ0K2Jjq7aMdQElIGhLZWGkMxYVKOjxMiFU67eEjwG9ygKsKdKyi67meinBodkFxaIGRvdcnyCeKIEfI2kVPc5pMP-0yBVGHzKpgabfoMcDWL?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>13:00h a 23:30h. <br>badalona forever');
INSERT INTO `brava_lang` VALUES (120, 60, 2, NULL);
INSERT INTO `brava_lang` VALUES (121, 61, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ0c_-QTVAHnRd0HHSL76SnhYaN4TucsAHHvWCpPKMtWXa9vVVU-u-1PwtuSX0f-MHP9_8N6mL8CpqV42VkQ-ZQ__0fYmYVyWGUaR-vRXTL8hkK84DXVbLs4UfODgIY6at-oLjukR2A\" height=\"200\" width=\"auto\" /><br><br>Plaça d\'Eivissa, 11<br><br>dg-dj: 17:00-02:00<br>Dv-Ds:	17:00-03:00');
INSERT INTO `brava_lang` VALUES (122, 61, 2, NULL);
INSERT INTO `brava_lang` VALUES (123, 62, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/i5sd0a7racjr4clog079svt5f8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HokIsbK0D8csNynbW2U5DeENkWN3KGikrg3BEelgaHKNeU4zNN6dDDKtg1qx_I7qB0t7748Bmhh_wKpNXBei1fF6H00WhJFhVu-0nX-1FMtAEI-lEqeDkuoPfIclcgvsUSchgGHfv-VLYQ1eoPZ6XYYvuMoGS1KfGolwLWfRVDcX60BO8q0WUjjqHI?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Carrer de Lleida, 7<br><br>Mediodía: 13:00 - 16:00<br>Noche: 19:30 - 24:00<br>Domingo noche y lunes cerrado');
INSERT INTO `brava_lang` VALUES (124, 62, 2, NULL);
INSERT INTO `brava_lang` VALUES (125, 63, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ1x1CrGHEc97z3-PbHZWnoRzWRbaGlJvB_lLKZrs2BKMskgPnCs3m0cHZ_Ff1ILoIcqnyNPmw2TRXM71m_oHVZ_Qm70NSWg7orlCYf9n-Q81isYdjcRguR902YZiNMMp7LFzQHNkT7-lumYxbPfSSP3JSZiqmS21ifvOp247-UEQNgfhvKsZpo\" height=\"200\" width=\"auto\" /><br><br>Passeig de Torras i Bages, 16');
INSERT INTO `brava_lang` VALUES (126, 63, 2, NULL);
INSERT INTO `brava_lang` VALUES (127, 64, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/st15b204r8bf70cd3gattthp2o/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EX1gMd2mf7iJHTHj8W926__0rHzBwhZgRD4xSsWX4gdMOu4sPKCRu30NO3bS8mjJ4e9Y3S54r9ivzOMPkC2fFRt72fp2vJcWsZ3MnrWwr1iF1JOR0TkcsriZJw1AzR9yatmmOqo9ZCfcWLQRK088K7WavI00oMkagarr9-kJoaB7ecaJYwS4JehuxW?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DJ: 8:30–0:00<br>DV-DSS: 8:30–1:00<br>DG: 8:30–0:00');
INSERT INTO `brava_lang` VALUES (128, 64, 2, NULL);
INSERT INTO `brava_lang` VALUES (129, 65, 1, 'Plaça de Maragall, 13<br><br>DLL: 9:00 - 0:00<br>DX-DV: 9:00 - 0:00<br>DS-DG: 9:00 - 16:00 - 18:30 - 0:00');
INSERT INTO `brava_lang` VALUES (130, 65, 2, NULL);
INSERT INTO `brava_lang` VALUES (133, 67, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ3QwwIh82J7r-O5HxNvwHNSz6e91s2ocBlMaGs4WoDoBNUpxh8G6Q6S50KFvfpuUh3FBv88kv0vTD2ImXJDUuZBCxD_pffvcAFlocvXJMVWD2aWQviQ0g-rSiD2lfGLNwPTiL2fIzZKupQi3MTfYrL-8OnD9kMWJCDAiJ0cZhE\" height=\"200\" width=\"auto\" /><br><br>carrer violant d\'hongria 105, barcelona<br><br>Dt-Dv:	08:00-15:30, 19:00-21:30<br>Ds: 09:00-17:00<br>Dg:	11:30-15:30');
INSERT INTO `brava_lang` VALUES (134, 67, 2, NULL);
INSERT INTO `brava_lang` VALUES (135, 68, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ2yeDC0zkWQbQA0ZiD5DGDkezVAMCSVdk0gYfSn2UQh5LykvsFffJgnfXynMsk4k5ZXOnUdLAB5P0SSSv9cPHFcjR5cEf360raFWQ8iVvVXXjncXMJb8DMTgpe2yFcmcjHVuDBjdzgNyLqWxZaoVg7ByfsH2wMO81cgaEcP6qg0X3k\" height=\"200\" width=\"auto\" /><br><br>Plaça de Vicenç Martorell, 4<br><br>DM- ds: 9:00 - 00:00');
INSERT INTO `brava_lang` VALUES (136, 68, 2, NULL);
INSERT INTO `brava_lang` VALUES (137, 69, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/v2kqv62o3dkugams48raulgpqc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Gw1FAaNtveVVGhTQRlFJjfZd5Smkc0xszSPBmHQcyN6-URkkD0Er_uZqBUwCRxEsWnnYvERej3ga6kmjFG2z1JtZvNwUU1uoyRpWy2a7Zuw7KdVRuYlcozgyPfiR_GfdavSFvWR1kr5nzslW7U5Ob7wXLtOjH7WivnxdCV2ofISESRnZqBV_KDnTlX?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Plaça de la Concòrdia, 12<br><br>dt-dx:  12:30 – 1:00<br>dj-dv: 12:30 – 2:30<br>ds 11:30 – 2:30<br>dg 11:30 – 1:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (138, 69, 2, NULL);
INSERT INTO `brava_lang` VALUES (141, 71, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ1E3ai_-HUfm_aYSj22coMzCNc3Pl_H7Y9NxyPjvlBwnMkctMoDOxvbi8W7CL7Es9UypLU9cc2IWIzZjTOwit4oNxkM0g075IDkwx9BpZ9THSQOlQC0d3CirbbcxH9EcCUHyAc-DvrvfgbM9sFSjWC1PMYoS5n3e0EH2xTsFXVkrSZwpq3DLw\" height=\"200\" width=\"auto\" /><br><br>Plaça d\'Eivissa, 10<br><br>Obert tots el dies de 9 a 24h, <br>cap de setmana - 00.30h.<br>Dimecres tancat (excepte festius).');
INSERT INTO `brava_lang` VALUES (142, 71, 2, NULL);
INSERT INTO `brava_lang` VALUES (143, 72, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/88cpukg96go8begjfc03ouanr4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Eiy-JoEGHCLjEq8cDT5bU5s01yZEsUqs_TlXcwqijJ19vxrVMG5Y4sfgCk99bt_nnAGaguWaC-K8KQvJe1Nbj0CMgZI82XVdd3SIl0AbK5b20M-QS9T44B9VHi5sDs55xB_IGTKvuHYPhF_69EK4sp0E93WrmzpM59mJ-mJLXwv6LUCippR7VzNvRf?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Carrer de Pedro i Pons, 9<br><br>Dj-ds i vísperas: 08.00h - 03.00h <br>El resto de días de 08.00h a 00.30h aprox.');
INSERT INTO `brava_lang` VALUES (144, 72, 2, NULL);
INSERT INTO `brava_lang` VALUES (145, 73, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ08gTX0g4AIqAoYUizboDefOYp1JyhZcqEK6FA6ZrlXarH9v_pLuHDQfiTRCyKyBTlALkk3rhs3su4P5M7QIb58DH-xt-vMGIO4sxZn7mDNRg-xYay9Cr4TQUIJqy2Px4PdpmRfUMRCA79hNENzJ2fJtkSIYXw1NI3cQUHX3K8KXUBKBMv2Paj_rZMWohxFSLDlhJMXOs-At_uXhUJ9NUrKa3fomrlxgjGqU-LxIyrKF2jWRDU\" height=\"200\" width=\"auto\" /><br><br>Carrer de la Constitució, 181<br><br>DM-DX: 13:00–16:00<br>DJ-DS 13:00–16:00, 20:00–23:00');
INSERT INTO `brava_lang` VALUES (146, 73, 2, NULL);
INSERT INTO `brava_lang` VALUES (147, 74, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ3xrB2-xEfgJbR6lYv2sd6TIMZegpqM3xXNTcMLfm53GCL6orz6RAKeW6JxCBlyEUPiqglmnguShd1CVSUhapreS6mgFTHOrXPC0TaNQjSHD9DXgjTdA5L6wNSjHOjNXgAgNfmXnt_soqEH_ZePLqM1VZQbsICHzu5NY8VZoz5-JniqUsV2oSpaGg\" height=\"200\" width=\"auto\" /><br><br>Carrer d\'Enric Granados, 73<br><br>DG-DJ 8:00–1:30<br>DV-DS 8:00–3:00');
INSERT INTO `brava_lang` VALUES (148, 74, 2, NULL);
INSERT INTO `brava_lang` VALUES (149, 75, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ28REdNemDBAcTHaVY2t-zAY0CJeKe1BY9ztL9AESpIsZp0JwbHy2XWPSCT-PfSH5NyBH43y0rJczL-kY2FTM5Udhio56x3UmjdY07xeCOmIv62GghmUz4QCGb4BfkhO3SnmXpKwecZTYVmbuuiZqBX\" height=\"200\" width=\"auto\" /><br><br>Carrer de Balboa, 6<br><br>de 12 a 00');
INSERT INTO `brava_lang` VALUES (150, 75, 2, NULL);
INSERT INTO `brava_lang` VALUES (151, 76, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/4emqtonfu3r7qg3rvb6nfk7plc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HiG-JEpc_l25tk7gZCwepITrLXGgTjWoourKuVPQ0Q7z9YAVggcFiGiCxIc59_covshenkFJJMc_lMqkSow4fD-7L-64_k1vsMcT3HmQIUq4xennO45caW5lQ6lbluekriNg3LY6ZAx7oXn8SBlHbvG_soXY2Av0IwMMDTVuKWoX6142zznmsoLbnN?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Plaça d\'Osca, 7<br><br>DLL-DJ 17:30–1:00<br>DV 17:30–3:00<br>DSS 12:30–3:00<br>DG 12:30–1:00<br><br>foodguideforstudents');
INSERT INTO `brava_lang` VALUES (152, 76, 2, NULL);
INSERT INTO `brava_lang` VALUES (153, 77, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/15nqpl5skoh8hg1vte24rqfdhs/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EPC4Pmlp-v51dwHntmAEfuGECN2ZiwMcKsJddTImu_4Vlu21klw1qjclsKkFvho2ABlq0O7J6KLcVn5nXnsvMLUMJdA5ikbVJqXm5yiumqCTv5XM-MDz8OzqvS4yW1ET_kzB-2otBYPPLyllCRGuAn-aqbWN1N-LkGCpfRH7nJ8zLkViEEzJU3BQi5QA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Plaça de Sant Agustí Vell, 6<br><br>Dg-dx  8:30–16:00<br>Dv i dss: 8:30–16:00, 19:30–23:30<br><br>suirnodor');
INSERT INTO `brava_lang` VALUES (154, 77, 2, NULL);
INSERT INTO `brava_lang` VALUES (155, 78, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ2WUhYeNwnKke0GcS0hRrYwNhuZGS4Yqy5D_F3obYzhs4QuZUC1azikQmU968ZWLBsYghFVTws9fUq3tUPp_uIplA8FqxTKpCj0m3kpzvVcT0Lz8DFqwyjUruLbaNs4Ln__CAjO8GJ_G_lQ_rKUGilmGelt70YQFLoht5dP-MLBm0IhodRslgS6aCyN3pWoctq6jgkMTZwemWsAxclPzpkgglIFmozGVhkhhNEvVmWEP1gp61I\" height=\"200\" width=\"auto\" /><br><br>Av. del Paraŀlel, 127<br><br>Dll-dx: 8:00–0:00<br>Dj-ds 8:00–2:30<br>Dg 9:00–0:00');
INSERT INTO `brava_lang` VALUES (156, 78, 2, NULL);
INSERT INTO `brava_lang` VALUES (157, 79, 1, 'Pla de Palau, 13 <br><br>DL-DJ: 12:30h a 0.30h (de divendres a diumenge de 12:00h a 01:00h)');
INSERT INTO `brava_lang` VALUES (158, 79, 2, NULL);
INSERT INTO `brava_lang` VALUES (159, 80, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ1-DWGLclppU4jzEogK_wEwQ-5l5cUKhaHS8xZH7r9QNexQpZiwJXqyJ4ukgQ87SpAe-7cWM1fWH7X1qlXkooWaUioYRmWO1R1Gqs9-C3LV8IEdSMoCWf4BZDI91CCXm5xQ4P8MGistLmg3Gy0ogtBUi3ZlqLczSoPDVdELYku5hCusF2kb4VJoYPWrTkeyAP105GqBtodSLneWerf0FSekZL_SevLvW7cY_WdSlsejkVj7fg\" height=\"200\" width=\"auto\" /><br><br>Gran Via de les Corts Catalanes, 379<br><br>12:00–0:00');
INSERT INTO `brava_lang` VALUES (160, 80, 2, NULL);
INSERT INTO `brava_lang` VALUES (161, 81, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/t19jjjg7a3h2c3c6msdr78sr0k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H2n8Ypbm1MwMGiP29ipRUxK7JBqzgTViCin3qGli2HBaT3TJpQvzV308zMBCFgE6JEnaYyJfqnL43TKJ9vIs2uguOR4CG9gwm38B-kIHvHRJAuu7Qx3dLh8ztiqQ6Jh86HdpXCMHIPeaofzQpf885W5BiZ15lCV_xICqvV3exYdI_E9z1BUP9Gq3c?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Passatge de Gutenberg, 7<br><br>Dl-dg.:	07:30 - 00:00');
INSERT INTO `brava_lang` VALUES (162, 81, 2, NULL);
INSERT INTO `brava_lang` VALUES (163, 82, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ql0v7k3373ulh0sr098fosum2o/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-G4J8p4ZEJV5CmDlAFnROIia9C49HiHqIj-6Sxyr_M4LLUJAPUUmvi7cI-s2YeuRjeitd2Op2rA82xEGGxdl8uafIqaVhpml6nFhVEVeI2JPYSpMgub5NGHcIv9kxVQWTHhEBWNHzEzLEkfJ4jW3Uf4BPytYO5QMeAD5J4fjRMRNq9QTQoVklLkV_7Z?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DL-DS 13:00–2:00');
INSERT INTO `brava_lang` VALUES (164, 82, 2, NULL);
INSERT INTO `brava_lang` VALUES (167, 84, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/t6tello4ulg3htm630mld0q7hs/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H46mZsyqTcwZmOuqKFdhE90zFGPnbtQn6oIhIxlgIDXduQCrp3H1qfbyb-IVwjU6CR0oCDqDJLxsjFBnC2cTS9tKliMifdSsMj3qbn3ltoFlI0iRswj8CzphVQL54jI-yI6QuV-Dx_pdnCAoXKteh8qTEZFVzTAO3FzPVxKPb27ZgQCEp_iTn2Qv4Y?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>');
INSERT INTO `brava_lang` VALUES (168, 84, 2, NULL);
INSERT INTO `brava_lang` VALUES (169, 85, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/so2pup39dl19ni3m6q4jaltnc4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HrY7n3Dme3rIJmo2SMrDKkmFlvt3BHdCPeAypcplVZbbN7YVlG2RbMHwSpxu16FC1WN3evG0ZGmyhdqL3Dfb5GyI6i4_zLuS3xwhlwl4lQIrwql7amM1kA6oOby8IDjDvertkyp8m2PP32B7hU8W_mLC1VR1a0R0yFVYGrPCmvnGEVYc_69lG4Lch8?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dss 12:00–0:00<br>dg 18:00–0:00<br><br>BravasBCN<br><br><img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/2914iso7j421obfln29pk9fni4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Gs2DWZxJkSLFIhzCM2LLEqX5OZJQxo8w_HjMguuwIJihkaXjN53xxGMc-bzPzWLQjE-xHoggPYgaoxjPPorMQ9fa2XWKfOtLG2sthvXZD4TAMZrtNuXPKzy_M-OP8MeP_MM6AB6UGMztD39QwqiISCwtk1Nh3P_AODt8XeeZdHHpUHBWAt86ftuooB?session=0&fife\" height=\"200\" width=\"auto\" />');
INSERT INTO `brava_lang` VALUES (170, 85, 2, NULL);
INSERT INTO `brava_lang` VALUES (171, 86, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/4l0iaboj5q7cfpk9i2umg3hm74/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Gd7WG_M1E0uCvlLA-iYvjMUkBTcVeYMguutVcyJsZR_eHQYx8YJQqYuGUdEcdW6BctOp9jVI1hu4JqwwnrXvwJg7PmWthyb6OguXP1nJhuqmayEewnK6JGoTP1XZnfDyYJeA3qUY1WtblaMnE7UVXv7YpbUYKpwfrJieSNfIyDT7MvYPcUADo6BJki?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DX-DS 20:30–3:00');
INSERT INTO `brava_lang` VALUES (172, 86, 2, NULL);
INSERT INTO `brava_lang` VALUES (173, 87, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/7dqdgadjgd4mddus6uqpnua13s/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HyhymKShxgUsmGDzyesM9tcslVC6GsjT_QVpXjab-KCRHH4KC1TlJ9dqMUY0KSZegVopC1dCkbE4sdko4qH3KluJ7mf7Pti4vlGGZ9HyDT8JDfmmmjrYrw8Npk0sqDfBHNUrZbtrIN-IrJli2vP3lOOPJvxzqKZJCf8l2Zqs85VC4Ho8d3zDooal_l?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DX 10:00–17:00<br>DJ-DV 10:00–17:00, 20:30–23:00<br>DSS-DG 10:00–23:00');
INSERT INTO `brava_lang` VALUES (174, 87, 2, NULL);
INSERT INTO `brava_lang` VALUES (175, 88, 1, 'DM-DJ 9:00–22:00<br>DV 9:00–0:00<br>DSS 10:00–0:00<br>DG 10:00–17:00');
INSERT INTO `brava_lang` VALUES (176, 88, 2, NULL);
INSERT INTO `brava_lang` VALUES (177, 89, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/6uq98hefo2k8leiq614ducouj0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-G7uT9_6YqvKuXMjaebRHezIRypfALpeslnD3Bh3qfEL861fAjevvLJ6GHEU6JP4f1McMnWnLVoTpBkQzWYDrZLIiy8APeuXwEwuIwJqZsPtygXEgxwr5RpRGbG2RN3gT-pVkRmCpJLP7Zoc2JBLygKwZ4lHQFWJ_JumKjid29hShbgkE7Z1ylKkyZ4?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DL-DJ: 7:00–0:30<br>DV 7:00–2:00<br>DS 8:00–2:00');
INSERT INTO `brava_lang` VALUES (178, 89, 2, NULL);
INSERT INTO `brava_lang` VALUES (179, 90, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/9fgsju8jpamev82c5q6mko3i78/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Fi8R17R8xsnWniPP6tBscRGpV6CxO1kCRKMEbpXwF2gOg2gCXG7sLzub01Hgnm2yKMYltAh2lgLCENN-ResHfTnYfesWooyIFfYTSLwMXlCinXINOKiauhIxVL_u0YYN4fyS2oKBX6FGjU1v8LhS4_KR7Li2qwgbn8i4ecpxa-0wMMnvRGTgH-w4he?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS 13:00–23:30');
INSERT INTO `brava_lang` VALUES (180, 90, 2, NULL);
INSERT INTO `brava_lang` VALUES (181, 91, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/78mk32ioamk8rb0vdqap82j6is/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F5lKQZ8T__-MXUd1OtfI7i-s7AkC6OYKLlZJ7rWZCujDE4SctmKjWs2VJtcTw5Te31erau9dHZejgReMDjghOKaDF6UkqjhVX0E2L4OtQ0o0zH98XJfIa663OHmM6_nPxlzGLyGalZ67BKt-LQ4ei5pxRFyRfIBYAO4uzdqVEsZr8xviuFqqNLQiZo?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DJ 8:00–23:00<br>DV 8:00–0:00<br>DSS-DG 9:00–16:00, 18:00–23:00');
INSERT INTO `brava_lang` VALUES (182, 91, 2, NULL);
INSERT INTO `brava_lang` VALUES (183, 92, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/eddrmiihoss7ftghqnvbtlnnd4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F-t2qyyQiD73qSyOW8iOJRZ8rz9PMA2H2JYec6w-NRZrE9BJjf36zpD1fT0h0PSxkajj_a5SHd55kMnrnotJBdtA8CusmlhEkosS1lOAMVSHH-zNxRCTBmpQ9E8R7xLyEd7-YCBIXM-LYBV8XbULdTfMfmb2Spnp8jCC3pce5H8jr4V0r898zuNHP5?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DG 9:00–1:30');
INSERT INTO `brava_lang` VALUES (184, 92, 2, NULL);
INSERT INTO `brava_lang` VALUES (185, 93, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/05784ktvgev0vb25teilra2dp4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F_5mcrlKxrsB_DfnhCu5Dx0ul9PKAw_R6zVTh-j9WZ3pt2nWanxJBpon5GBRAqJ2uMjwBcODYKTFofTNvFGInk-AVMbVFT67C7U5xzd8A8DSQvNsK30vgoqwfNdWNG1qq5sm_3Cx94D9dWrJwNqtBV9ZqbKta10hvq976U957iQ2sMyAlrGJ31M879?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DJ 12:30–1:30<br>DV-DSS 12:30–3:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (186, 93, 2, NULL);
INSERT INTO `brava_lang` VALUES (187, 94, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/76qb8ifcvsm6ul8q04cr9mribo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HCmkuQK4gkmiCLIYQeMeEKlJ4qrpIaicGMmsaxlr_8Kyo-0PkRVNgKOCUEtxflLduXhThDwMPeldMnGvNWNpd0f8JEXlnAP8G-8WeAKH_Q45IoeWCZYDAvAk1H1ZDVVmDED5NpNrLxqpZxt3pCVjzoVWv2Z4fcRSUbI0rb2nb4_pLnXgZ9tL-1r7V9?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dom - sáb<br>11:00 - 23:00');
INSERT INTO `brava_lang` VALUES (188, 94, 2, NULL);
INSERT INTO `brava_lang` VALUES (189, 95, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/oqk12lc3ovprunh2h3tfd7r958/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FFvQ5cm0MBjk0bU24tf8dE_nayoJ5CUSv7F1N-87cVjS-hxQ2aKTPXPDYy1G0eG7yl_onPUsIA-kUVv_3D5phd16r7OTGDtL4UhL71NAVrrrTz9wpAuEMWYOSOORTdSQk-ukqcffEPKXI8B4trfmT7hF-_pj42UU4Pjkb2zKJyl1JvmjsN196eIxyl?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS 19:00–1:00<br>DG 19:00–0:00');
INSERT INTO `brava_lang` VALUES (190, 95, 2, NULL);
INSERT INTO `brava_lang` VALUES (191, 96, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/g010akvl2r8lg1rgi8l3gkm328/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-E2FFa3PQnslTGgvpI0cYWzvd7QFFfBLEsoqEkJn2jA3AcvURqcaXoucswRGt-_SoblyTAcLCAfDOTI39eOFkI0oja5nk0S2h2c0GMj5pXZhgfGMXCskE6Jih-t4gYIzY-NhEHtQzx-YNBTdd-W4H-9Cp1CWgMtQ7rXWLL-7XrER-B7FJ0Ps2il8ZJ-?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DJ 10:00–23:30<br>DV 10:00–0:00<br>DSS-DG 10:30–16:00, 19:00–0:00');
INSERT INTO `brava_lang` VALUES (192, 96, 2, NULL);
INSERT INTO `brava_lang` VALUES (193, 97, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/mrf9avchvduke8l0dcglnk3otk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ENtlU7ydf7oAwc3tefR_yX0d6TFaN2zZ_b4n2GUCOt1mQ2xezailD_MLigER-uoRL1Ev9g-Ecf1jlQixpHjdIUmUWAYtNepdvewcjFoTd1JzXfngOPcP-Oj6p7vUJelBQhuMchQqnC-1AXaQ-bwy6Q-D9HbvDuFxHdW3lcxsZrgHOwLZEeA4BF95Zw?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DG 11:00–23:30');
INSERT INTO `brava_lang` VALUES (194, 97, 2, NULL);
INSERT INTO `brava_lang` VALUES (195, 98, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/uo9p9cirkqu3l7iv73h8dp6o7s/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GUKnR2t1mcjp0ysSEN0xXmm3OHK8Vn2H4Rr6P7VyIceZDiH82UZ5FWXe7e1AE9Yp5bSj3k3k4Y8uBOWag0CbgRBhgb_MKSnVMUOpyq8OyZ7m8nrdLnETQUVGxn4pVoJKlG8QZZMOI49zy3k0eqFzjbXbChHdu-xtu3n9IpG5ObBEituvaV_kLoAS8O?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DV 8:30–1:00<br>DSS 9:30–1:00<br>DG 17:00–1:00');
INSERT INTO `brava_lang` VALUES (196, 98, 2, NULL);
INSERT INTO `brava_lang` VALUES (199, 100, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ1P3zkkzCTyicY5DxhjggH9ju1u-VvJoYgHe3ZScBdsGwU5k5JVaHF_AfYXE6aI_EDjzOvxSVnuoM2CNqzrJI2Z29rmrivDBNzXavcZUEoo8KmsSXGHaO71NJwVwRtFfPX8ZaqlPg\" height=\"200\" width=\"auto\" /><br><br>Carrer de Garcilaso, 172<br><br>Dt a Dj: 12:00 - 23:00 <br>Dv: 12:00 - 23:15 <br>Ds: 12:00 - 16:00 i 20:00 - 23:00 <br>Dg: 12:00 - 16:00 <br>(Juny, Juliol i Agost, diumenge tancat)');
INSERT INTO `brava_lang` VALUES (200, 100, 2, NULL);
INSERT INTO `brava_lang` VALUES (201, 101, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/kh0r0dtjgmkjku6qgeevpgqo1g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EXUfDJCrb7A3JsVL1e2IeBd-K5cJh0ukVDoa1RULO20ub35J5WuJq5xqQn-1c_oy9JA5AxdeDWlem0AL5fOr86EWLiEMZypOu_-kBfGc2Aia8rqK9XjvJMhyZ4fGmbbmQ-P9fCDIMdkDrynMAQeBqLb6uNehsEZulrFmQcC3RlyB4YrK-o1C2F7UZA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DSS-DG 9:30–15:00');
INSERT INTO `brava_lang` VALUES (202, 101, 2, NULL);
INSERT INTO `brava_lang` VALUES (203, 102, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/rahifjmucfkbu52clib6e88rno/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HBxzJiND-eaDhIqmILyEscM1vS3qb0ZG1IrlO5pY1DFca-dPnbZ91wrR1olfTfgbp2gkbDIIfzIPqtvJS3ZzAdI4_jRgUEYrlQ9Ta73U7futZMxh-AOJ3jNsjfZL2djscXLx2bUGgLdrA1bOIRtDZdRRNj6hyDRJ8-YDUUPoxGTx74LBTiMsJMFTAG?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DG: 8:00–0:00<br><br>Boniato i iogurt, o no?<br><br><img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/cs744t4kee1gnh18jeus1snp70/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GBk1qX1NjGHhyTsWFZhDmjKn6dwQQO5DCysjSSI_Yhd9M60AgYbIL5MLt5LHvNuStKW_qC0Oqkrc73rycLTNXMNpI7mT539gyy_Um72XngtMN87TyjHzg2qKIfuf33HljvfHD3UbhR3dyUw-aNMEypMq4N68gNbTk84URv3H4CEpQXxJ9bq1gtkBom?session=0&fife\" height=\"200\" width=\"auto\" />');
INSERT INTO `brava_lang` VALUES (204, 102, 2, NULL);
INSERT INTO `brava_lang` VALUES (205, 103, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ujcg9ir5qn8skg5g34cm5igobg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hh7MzIPLriQfkACd-6t17VE0EIEghdO9HjYXI2h0XEQy61BSmeplkNK6smCAhitzNBB4NVYatpeHN7kznqP6zIC7snIZle8We3EByv48AmjGL_6HsbeeBpn7o-lKxY9J-YZ3RMNClmFihYUz5QcAElxgFenQ1b4evWnATYNGMy7wBJ7hUlGDTmhRCL?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL 9:00–23:00<br>DM 9:00–17:00<br>DX-DS 9:00–23:00');
INSERT INTO `brava_lang` VALUES (206, 103, 2, NULL);
INSERT INTO `brava_lang` VALUES (207, 104, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/862t8am8k9b5ms8ro19veno2t4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-E18U_7pV0rIekU8QHB-twY1B4mdLat_qrjOWLNmauwdDSrvUWOHUBcKoLJrIkS6ooIRpFLizvuwwDaUOR93JPQ6qcY7yW--WVCnX7f61rgGfIK-LM6Ls0lj2MBuxfziHvxhpv88k_a8p_85Ds6fa8WED7yuxRTg6FJmKGHRxX0SB1bxo9OM_RqPey6?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>BravasBCN: https://www.instagram.com/p/BZD2IbkA8tu<br><br>DLL-DV 7:00–0:00<br>DSS 8:00–0:00');
INSERT INTO `brava_lang` VALUES (208, 104, 2, NULL);
INSERT INTO `brava_lang` VALUES (209, 105, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/07gkbkpnc9e870laqgbqt3gitk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Fh7f4vp7FHsW24yg3_nvPaa6nhSwiNUi9bQOQ9dXWAUbntNjfemK__6Khytflico-gW6MyIVZuR5NTekF2vRBezhTfeS4kOcCzXVSgL2TcAlXrYkk7UMFKbkGfFdqzOTW5dx5BoJkjKC6p75x8G4WZhZIimGlT_lghsfDLYAaZK8wou7EWEJVFoHMv?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>BravasBCN: https://www.instagram.com/p/BXV0LSwA2oW/?taken-by=bravasbarcelona<br><br>DLL-DV 12:00–0:00<br>DSS-DG 12:00–1:00');
INSERT INTO `brava_lang` VALUES (210, 105, 2, NULL);
INSERT INTO `brava_lang` VALUES (211, 106, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/c9soddirmoj5lv9hsccjfa7u5g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GZQlCDML4SMuEoho4h0W4VyxSPZE6ZBJ_IimvkeAPikVN9IhpZ29aPgWOARCylVojvt7rapw3-ZzkNyAaOMIWG_7MgtDRcYdxS76ekW_xHy9RrRuYud8kEYiBC0jaFzecKRmNiFz5IvM_RIlhhVyKoDXstKiGbNRBeSt9ZwmSh3d6mmwnBp5DXiMDy?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DG: 7:00–11:00, 12:30–23:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (212, 106, 2, NULL);
INSERT INTO `brava_lang` VALUES (213, 107, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/kjsucogt20umvjerctquuum9fk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F24K3M07DWrlQUKv6Z_DqIAeUs8zKQ8CwmAbkrT3O87r_NlwHfchqutaVhuAUOdrh2J9qS4S3iJgJhLeqavQ-tqtQbDF2DquoXGh5JIo3zAIwGNT1MX1SNtOrQQc8Wdm1xFn8fAMsuR4yDHIxJY-xB6E8QOr1Me4anhBMnsW8JGhVJHuS_lcPv1m3ZQg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DV 19:30–0:00<br>DSS 19:30–1:00<br>DG 19:30–0:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (214, 107, 2, NULL);
INSERT INTO `brava_lang` VALUES (215, 108, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/jvu6p3m47t71i2c7ts8njmiuik/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Ff-4iJ63R_h_qavXrpollxj7O6dnm8Opg3pCAGF31RjE6oqHP7vpEduLiklk7ZjHgOMv1bOb-9xKRBWHkHKTnXAgs-mN8qsUBKAUVaCn95qAz9KLayv69TAyXnhWYAWOPmh4cLDoJJlRShHHq0bqOyGX5GoXly3hykjnElJYO2LKboZjVk8TCfZaR6?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DJ: 7:30–1:00<br>DV-DS: 7:30–2:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (216, 108, 2, NULL);
INSERT INTO `brava_lang` VALUES (217, 109, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/m20ishjtu2esgg3n8h4qo1ispo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FjlEd6Hkf3DDIejWJRrCElG7RswiLPdUWAZgWulwdaKaxNS444B4DzAlJNSMY47AvPQIciyafPmyXGXdHN-WEJDdwjZ_W4_I3AM35YxuoqkNWqC4zzGfGJOFhu37Bw5ztvZR2o25T-1FkMmR8RKhGaqkHxfOGLvCWF0reunH32HvJXYMsufjzqSMuc?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DV 19:00–0:00<br>DSS 12:00–16:30, 19:00–0:00<br>DG 12:00–16:30<br><br>Suirnodor<br><br><img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/mka29avm0akbb5beobvovje8ig/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EZj9aCQBVsC70NY7pc5vz5x7SwuHlKieKmbBU1AsRJ1DtwVK_g4WZdgeyjD8ZOS6CEdnOI4-_fMb_k2jQNIbLRg4OKQJV3TLPlIAE_sXqipniS-YQZMQsYhPQz0iOMpDnS3fb73MNfmuruxcKZByxTHN_pv3mdCSlNLFj1YabAHi2BS1A_O4lGTGi1?session=0&fife\" height=\"200\" width=\"auto\" />');
INSERT INTO `brava_lang` VALUES (218, 109, 2, NULL);
INSERT INTO `brava_lang` VALUES (219, 110, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ka5n4hsbstft3gnq5vaivh7ei4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F5NXj9EYe74hjw4lQYMN2sY9CJSv_PHciAkGxkVHYO0wDnMkDp2OuqCsV2NoQ2Mr4XYQCvBh50RsSNCzazL44HHiSOq2aIBbD3hAuIIb_0tZnV2-Zvvggk3324EGJp776LlAfY4UhXkeOVvvang-EP-eIDatIBVI1On9KmsbonOddqxGzDbFze7WFM?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>13:00–23:30<br>BravasBCN');
INSERT INTO `brava_lang` VALUES (220, 110, 2, NULL);
INSERT INTO `brava_lang` VALUES (221, 111, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/k107vtg5dpoiekfoo3uj9gniu4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F0B9ej_x2psBA4ZyBYuXQrkfDAgBbqSujmklkirHB1CB-2tx7XrtQN_5H-Xmc2VDrN9mTM5Mq5aV1Y9Ba8BQ2o8_1lkC_Nv6mYwSosrR77mYHH7ISpAKIWgQAQ4W-M6B8UarKahSejILtedQayiahSI9nG4G_pdEMZq_iJN7T19fgtWaNKil5v-F0m?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:00 - 2:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (222, 111, 2, NULL);
INSERT INTO `brava_lang` VALUES (223, 112, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/23u03p5qemt83ooe1psp29k3qo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Et75-dtGG4nBS5qucewQBMAyjphkDFFQ3biI07CkneSzWKzeooLjtiZd6lw5oaGCUqLjHSaqgDnYQ5ahYn7xFZQg8NNSdcWzMyGKf43q3fZo905ZRwMoV44jCD7x1kbvRamVUouDdg7L7t6fMAHpkMBnxuuYg-0nlPi1qszuM-aIkGvVnDs77rEgVC?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DV 7:00–21:00<br>DSS 8:00–17:00');
INSERT INTO `brava_lang` VALUES (224, 112, 2, NULL);
INSERT INTO `brava_lang` VALUES (225, 113, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/u3hau2acvpnf4qu9lv34vm89v0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H52peeHx9eqx8wmC1Zq105aNZgRkOZpQa9h4KRxuQPaQazSfiO9U3THyCeZ6pOZlY835SVoaCBH5L7hX0odB4MYg4WEV3xy8bjETDZ2kvudf4FWb1WiHJcBAPWBCLIeTt5KDhRpw3cF-6z0r1nJba-E8RBVHVKgRFzPmOq91pa_-qUO-g-UgbXd2YT?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DILL: 8:30–16:00<br>DM-DJ 8:30–0:00<br>DV 8:30–2:0<br>DSS 9:30–2:00<br>DG: Tancat<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (226, 113, 2, NULL);
INSERT INTO `brava_lang` VALUES (227, 114, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/an3mnldmvgiu3sllr4u8kog5cg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EEF06l2G1qJCawqzWexPNj_nlAeUMPIUof9o59cCfMN-ig20_OvlDMbI7Z23Kns7JumB7MHV0FZmwUIVzc9fhRlWeCpPrITAVnW8IeU33AqZtHlMgMSNy5ZxD9nfaQZQM4Bv4wxUnH75xy8A1yJsujl5yhji7-9SvNS8Yra7xsObuVpwQwTWP1Ksta?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Horari: ?<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (228, 114, 2, NULL);
INSERT INTO `brava_lang` VALUES (229, 115, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/lvosfsvkfrkh6dc0okji37b5io/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hp3-nL-tDOIJI1VytSy2bZL2sW_aSj0pQs6lN1afsS9MO3cnZ-QyAaN8yxQ9V4WpWZUcUO82upJSjFYGedCTrPTXi5au9nZSyl2igsOrFdFUF2TM9fQfhodv_SVDZZj4Ia92crUbaRTTVaa-a53J2OYOFfC48fJmU3mxGtXGN0jUrrGf_f1dQpL-gA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dv	8:00–23:30<br>dss 9:00–0:00<br>dg 10:00–17:30<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (230, 115, 2, NULL);
INSERT INTO `brava_lang` VALUES (231, 116, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/beab7a6eu006dofi8dme5vb18k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FQhSAA-6nQ3oc-o2Uy-tJpE2ludqIUE99aYXqOkIXfDIp40oNU1VllAERpvDzEAjtJxbA_a96B_RDdNtlLNY14PY39WzNDJ6R_U01uE3iIKpeUfA-myB1dE7VVB6D7QRgo5ZG0MfOpeOPD-nONlY7VFESpRh22QZNhBMO1CmvEeS6i4WSxHeRgxYUx?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dv 13:30–15:30, 20:00–23:30<br>dss-dg 13:00–16:00, 20:00–0:00<br><br>Gastro barna');
INSERT INTO `brava_lang` VALUES (232, 116, 2, NULL);
INSERT INTO `brava_lang` VALUES (233, 117, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/scdh7ph20potv4p3noh7u6104c/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ED69a-AktiCS4nMAYUJXUAfPlz-EXIMpkk0dwUpAVKZsWZWcJzzgSlCypjwNPDpe557Uls8BCKN7P_oyzlWOL6_XNT5iOrW1qST5BNS6aW44igkP9RMYPAkamsAkyzix0xnxMp5T4kog1UT46zPU8suUJG8U39Rh424LcWEACEKIHEqRFsOHoATrsF?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dg 13:00–0:00');
INSERT INTO `brava_lang` VALUES (234, 117, 2, NULL);
INSERT INTO `brava_lang` VALUES (235, 118, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/u084n3beppqepon754e73t9pco/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FTF_8vVfpKNEZrWS7j6WAwU5OdMIiAnLBEbQ87oaFMzbIAHZKklpLmnnWUazsJnkETCFNxwlqLTOjFtUBfuC0tTlip-SMxQjcHhtmFV06p9TZCMeXE8wf4QBL3epnrkEw2IVxYNuu1HBTg1Eg_H3W9-vtCpIrO-DjTJJIqmfEdl9p8nkSDtLXKcNWF?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dv 9:00–0:00<br>dss 10:00–0:00<br>dg 10:00–16:00<br><br>viajeros glotones');
INSERT INTO `brava_lang` VALUES (236, 118, 2, NULL);
INSERT INTO `brava_lang` VALUES (237, 119, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/i22k0crmupstqq3dott37cjrvk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FXqXRmvCODbZoAwmTSutdRynsknHCi-7fHY9pEPSmi4Yx-CwDJH5fXerG5tY-FosLwiuIBXA6TNPOE4lkwNpadIjnk_nLxhpXTh0dm4fgVcdsJlaj1yo2pC1SGJunFegXrRUGA69q8h_XXThgK4ae_NaZXD5CA1IcKe_BUE57AyV2_Eia83c9ECILW?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dx 13:00–1:00<br>dj-dss 13:00–3:00<br>dg 13:00–16:00, 20:00–1:00<br>BravasBCN');
INSERT INTO `brava_lang` VALUES (238, 119, 2, NULL);
INSERT INTO `brava_lang` VALUES (239, 120, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/9ilbmbcqggg7aanf0q3oq4cuo8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Gh7SdDd5GTSTotP77P7tkb6dKUMes02etwItM9hyj6wol9TdAFM9cVVjt7zrzUPF5BvAChtP__FIa3yu_GQBYhiPJd_gUH7CkKhrdbDIIV2Atwm4O5YyVKPwWjbKXOGdBvRJvYz4uIceyfGE_yGTxg6vDvJcX3XYaO3nxiNbMA9vbpZ1X4R9VDL9f1?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DJ 10:00–0:00<br>DV-DSS 10:00–1:00<br><br>Suirnodor');
INSERT INTO `brava_lang` VALUES (240, 120, 2, NULL);
INSERT INTO `brava_lang` VALUES (241, 121, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/nonqp82gshv0cpik4r6plbl98k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HXK-yn9Kp3OqELz3OUekZAwcMd6vBwndvEfV0dHmuSJ3XgLyiSRdsr0w95gVD6wvyCDMq4kVCuvA2S8mZefay8Kak-n-sZZ77mpYwi9oAjhuGPDrKEbRlF5dMDRy6zjFLHRFGujDFUMGXdIidmJJGHOok8ICBY1i4zjmMOGTTSF7_4velZ01nKoqRL?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll.dv 7:00–1:00<br>dss 8:00–1:00<br>dg 13:00–0:00<br><br>donde si bcn');
INSERT INTO `brava_lang` VALUES (242, 121, 2, NULL);
INSERT INTO `brava_lang` VALUES (243, 122, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/5722v7vaoh6so7jfka0obih7j0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FM5dAGGTunDE3ThpFaEplBv-svxI29G3e8L3kcrf_woFS1b3nWgv5QdA1XP-5Zutca3CpbtOxqEHycS4fE5lZ47C6QctEx8fmFM5eZhq8vwUVqJRmJ7xUTY_O9WBb1-80zxfyt_xqn1LNUJw3KBSYWAHajHGs0J5oScJ7ikjyVs9omig0CQaKA561X?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS 9:00–23:00<br>DG 10:00–18:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (244, 122, 2, NULL);
INSERT INTO `brava_lang` VALUES (245, 123, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/c419ki8139qf1do6759fll777g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HZ3UUbebk4RpJcKyJXuryPk-zHRtX_18YQ0lvYrL_qxZJgMs0IndP5X_d1q9mmuVadcyT_kq7L_MeZN5ZMVLqkxxJ3Zu_wLmcQRM372wSkvM14r_rom5FaZXMgwxClUvNnZneeUL2GMCmBXp3NXGncY_48lRh1ANv2dQmAFIQIz8ZRlrWsATShuNPg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Horari?<br><br>Suirnodor');
INSERT INTO `brava_lang` VALUES (246, 123, 2, NULL);
INSERT INTO `brava_lang` VALUES (247, 124, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ubchsmif3nn79bu4un6qhcf4jg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-E0gL4iWcS6Q4GSDQ8jY1ak6Di6gjkYxSdtZdTDkzahlBrA7vqGrHUHY17qd8cK8fT3-aydlJap0iDlIh2Ya68AKLtrGvBLv1SkQWsj6wAeAwnHxmvVJrlHjFIf7ERprYkY4EIMx8RMzHPs-aq2ytcOm8BOrXkCLJYS0-i2ezOah78Q13Fk4qhiI8l-?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dg-dj 11:30–22:00<br>dv-dss 11:30–23:00<br><br>maria boines');
INSERT INTO `brava_lang` VALUES (248, 124, 2, NULL);
INSERT INTO `brava_lang` VALUES (249, 125, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/4mpp6ceuml6jqku2oppmu22vok/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FKa6GKTIAu9CLMFUyGfpjyzMcOTzd4LhSXUauCitvZl3yYlXIR-jtSoqZZGuida0b2MfZ1qwLUMpn3vPAuXLm7B1PYvao5F2VdWM-AP9-pjf5gKgj6TDjPXCVlymM6EciVlPkmSi91soRhOTqQ5Ha_CjjUOi359DowpCdc3rj7TihsrCi3anpWL8t8?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll.dj 17:00–23:00<br>dv-dg 12:00–23:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (250, 125, 2, NULL);
INSERT INTO `brava_lang` VALUES (251, 126, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/4qjhtqci4amoklf29nn1dslj5g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HH1Gfw0Bmqer7CvgFgco-JXkkQkfRHn6hFiLawbC1hjfYMoNYBsE8q0T5gd_ZY45qNLXqxI9LKChZsivzskqGSrrlyjET3r7hXtnVEOgjX5NsskeLop_ZSCFcjgjSevJBZlEcnukl_wyOt536FhaCeDNejM_u90OKBH0RbHBc1B_0q_D6Ll7E9I6h4?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:00–2:00<br><br>marc boines');
INSERT INTO `brava_lang` VALUES (252, 126, 2, NULL);
INSERT INTO `brava_lang` VALUES (253, 127, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/bk2hpa1he96pp94jd6feq1oej0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FUER3_Coo5a9I-hBfwHUBCcJ9q0dS8hUE_gJ7fyyyRo2KGWMqG_xjAtgjt2hSSVIotQvaNelMHdS3kgbCffOR29TJdLYXSmwk96wcl1suPB0Gnpnz3JIS4H6HW8tfL6yl4KqRDUBsGIEKzGxxo0zLpeHU1c9ITpblHYm1hskmD936EZTci5dEPfgL5?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Servei de cuina: de 12.30 a 23.00 h, *juliol, agost i setembre fins les 23.30 h<br><br>bravas bcn');
INSERT INTO `brava_lang` VALUES (254, 127, 2, NULL);
INSERT INTO `brava_lang` VALUES (255, 128, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/u0bnpg18dsivrhhbn0uneja2ok/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H6WHR98etUEvEJYNR84HR_uTj45F4VjTV3VZcXbyjPQN9vR2u2DnX1z9Xn04pHNTaQeteEtFgFolSwodVX4bwuFghQi4vp-If8eBldLFlisIFnXWNVk_MXJFZe6-I7PoDSG8HM-2Oco4fEXrpf2-Cna5XjULJ6Lqo_IzOKZaAeCN2VxSN5Yr32EUdf?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DV 8:00–0:00<br>DSS 10:15–0:00<br>DG 10:15–17:00');
INSERT INTO `brava_lang` VALUES (256, 128, 2, NULL);
INSERT INTO `brava_lang` VALUES (257, 129, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/netpp3jj62b71vn2o30c8atmhk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GbiD811rLVBic9o7FFcEUKLXRRnhGZwLgaEazBM1_2pvwfVChOLNBJ3vbO14aEl_rxcLttKMNeDQljA8zSwL5REvl_2fArCBmRxfZweqUqF7isEKPXPJWlB9YX0jGoR_3mpC8gpLR8boBslR5uMoEbQm3bm_1XtxW_UuAcNfp_QaOGdheeOKt4NQ5Z?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dj 10:00–22:00<br>dv-dss 10:00–23:00<br>dg 11:00–15:00<br><br>Viajeros glotones');
INSERT INTO `brava_lang` VALUES (258, 129, 2, NULL);
INSERT INTO `brava_lang` VALUES (259, 130, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/7bmlqncmud7qb12d2t6afub6qo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FrT8fieVt_55j3Hlf5ENqwIsUTockBup2spstJVd75yiTEsH-wjIFllfXf7PwjsARfRXoW7jqp_vItKovE6I7nDC_EfTN8OGgcaxlETWvRCkufyjf83hB5elZ7UJ6OSCjITidz-pQD-kwrnBIA6wHYBWFLtCgAZ3hRZ8erGsGmtIQHSFE2QLhxv4sR?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dg-dj 9:00–1:30<br>dv-dss 9:00–2:30<br><br>bravasbcn');
INSERT INTO `brava_lang` VALUES (260, 130, 2, NULL);
INSERT INTO `brava_lang` VALUES (261, 131, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/dhet7thmdd3ueo1c4eao50m3cg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EgdhVamSIsxZTDoneojWEnLjSIu0otogCYNpk2Sf4XrAZ2tfxOOcPEyu5xh8cnkwKFV17Qu5McB1S1vabvEWcpXXjBWqk0_lASNOe4IQMRZAF0rRNcMjWzN18O_enNm8b0IoTg5MPUVrBtK4HsLUxMQLL1POpEoBTBUfaYuLeHThf5HNOZYVXjGlDv?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:00–0:00<br><br>BCNgroumet');
INSERT INTO `brava_lang` VALUES (262, 131, 2, NULL);
INSERT INTO `brava_lang` VALUES (263, 132, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/m41s8s83ij1i0tkgfpgotapmf4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FaAvZTP-62z6Xi7Pfq6Ir2jBC3ZZhD38PzHHJMpKygLOlfQkUwYiy6rRzLFonbCdCIFuQJsSfQwih4ZY1Ge2YAhPNMGV47ZUcroCMAZC_gFIBrQ9IkZWTr32dU19dJWPe1DOTL_9gZ_F30IiOW2SneaNLUgxOCSjafG7e7WqgVeoHYn93FcaL9ggov?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dj 17:00–0:00<br>dv-dg 13:00–2:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (264, 132, 2, NULL);
INSERT INTO `brava_lang` VALUES (265, 133, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/vjbh6jt9b9p5bv6geo5cragq4g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FHckSlrWlsDgEAYnjAS1gU4hiATlm_iEcRwrgLu-M_cV3oLhJvU5PK92fuyLgbAeIsyvf4Tz9uH6qu-XQNKbb9900NY0ZP-Mc5901-28Z3_fKgBPh15m--g4j2nr4e69tJ9YzGN8DLUzDpRRGQVfgfXB8PoTl2Sc4iY4NemM5Gwc34Dv0sm5E8cL5R?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dss 19:00–0:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (266, 133, 2, NULL);
INSERT INTO `brava_lang` VALUES (267, 134, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/hf734vs2k5q6ain8n4k7l3shn0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ErrgjhuhSUanvhvMi0hL9sA7D3BTjLgDMsvJiGW2Fv1d96Tpp6ypIW_gbQdqBXXyREWjz5c8ToHZHWDPMdsQ4QMKOYKb5v6i0rvBWAMlGE0y87OXMi8wCqLmx4GigIGWo-YjDARFmDp7Yre9C6kTkVgtinOOXiGNPiy3SsuAIVPx6UWKkCbMyKSz8P?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:30–23:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (268, 134, 2, NULL);
INSERT INTO `brava_lang` VALUES (269, 135, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/e398mei7fb2fl3lh5lut7mks48/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GAhiBtsf-N7m_y7G3ggEX87uUG28UjRw1JIu7OQSdtOtT-hyk-NQ9VEWeVrRdtxNKD_XRtLSt7KKArhA5oL9atlQMg4qztUSmNGeOG-AV8UZLgVgmRW-4j16vnw-j3V8AbHZxyndEaKtzvPXg_h1lxC4dfDRgdED-Lts6d1IH2xtVn1CPpzo7lXsEz?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dm-dj-dv 18:00–0:00<br>dss-dg 12:00–0:00');
INSERT INTO `brava_lang` VALUES (270, 135, 2, NULL);
INSERT INTO `brava_lang` VALUES (271, 136, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/fe8gvkai3edosq3odntluqc5ck/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Ecjfv7UhMdVv2hJa0058J5Unt6gp9rFn2-kztcCs-h8zqBaAVaL0bS599pVepY-AfSC7G3_V2wnoZ0DRYzY5LKEeQKISsmEbmC6Kql4QT_VVtUUXk0qZI98kD7EoVyrab9X0hDWDtoW3QBBprcc8uj9Hz4gIOYkksOadS5PGtjznJRxTQRntVK8ULj?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dv 10:00–23:00<br>dss-dg 11:00–1:00<br><br>bravasbcn');
INSERT INTO `brava_lang` VALUES (272, 136, 2, NULL);
INSERT INTO `brava_lang` VALUES (273, 137, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/cah84jdoktbbid0k2libldakr0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H2z1f9t498TyxDeZQe9WbcNcxoZITO2ikSBnvdK_0fGUUO2fkSbKqephPdtkUK1QjDtzVSJrAnW0Ho2OyEfcOsugd7fAUSfjob6ZKYNxnk9b0PKSysbkg_bVctB-cyjUkot3QP5NBpX2d7jfgH0VlxKzBAqu3Q1mPyg7PlM19GYFSHEsxYM1bRt0ZZ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dv 8:00–0:00<br>dss-dg 10:00–0:00');
INSERT INTO `brava_lang` VALUES (274, 137, 2, NULL);
INSERT INTO `brava_lang` VALUES (275, 138, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/fgtt7smka8v98h3qv8b0q5qf1k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Fn-g-zhj3_h-_JQ7xwGF2niu7o_AzpYp3Vsu3_0Yy1O2TouIm-LKLvsyXaMMp-PWeEuVLDkQaIvePLJ7SKN6HBlXY7zPpjSNuWSYQddxVuvASHgzLJa4rG3_BeawK0g54iBk2hFS3_uTM5W0K8lTdlWHC8CDTT2DKMB02VE9cGq67wrx2vPmxwJQbY?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dx: 12:00–16:00, 19:00–23:00<br>dj-dss 12:00–23:00<br>dg 12:00–17:00<br><br>losabesrestaurantes');
INSERT INTO `brava_lang` VALUES (276, 138, 2, NULL);
INSERT INTO `brava_lang` VALUES (279, 140, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/abil5m56d8s4fpl92tcg3aia4g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EJmrRw9msrY_Yp8rRFqeRj0NtowiT1IL7Dtubn7nZBY18_QQRbMNBecuc8YGN4ndijuLFBpCq7rIeGPR-K5U7lv-fmm5vXBYjFU8goD5LV6MLHlO5plVlxjtvE9EVAXccbRVjB4RvUY0RA3NoPfHCrP4GePSmgYEtbLkknrlzURiHt5n1HUn7O1Yx1?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dg: 19:00–1:30<br><br>patatitasbrava');
INSERT INTO `brava_lang` VALUES (280, 140, 2, NULL);
INSERT INTO `brava_lang` VALUES (281, 141, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/q27s49a07bh7ptuvs1n9lj4l70/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FMEAzFxDqXlAcLz0rn_RJZwNnau3i9j1sd_3LamhimI67-mB6uexorP6a4TkYx3Cbpe7BsF9CL3xQZ7TYI8FLot-5kEzZ3RZDX6JPezhEAJgUuHExmAvBk-x4jH6BIJNZ2ngv_dmhONsUgJbFqRgBzz3aRE-Ebk_-JjqwHIUbr_3mDd3srcs7bX4sr?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DG: 12:00–0:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (282, 141, 2, NULL);
INSERT INTO `brava_lang` VALUES (287, 144, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/2i31ja53lo0j5fc7u31le5btss/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FXO4yIyasQmMJKa3-Wa-_ZnpmtCREg9oLJSeDRO66esRWfAT1rglJS6s2pNsg7aJSW7mC0BtxHpueGFFSCSw2EkWgOowy5hnOPRaeKh6b9hLcrK35A6iYPosZgFB-bOJm916Y36zG9lGKATMrWhTFdXOFtAGkDRZrLFwloaqmmM3f4f9oL5RAQXHrQ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>10:00–2:00<br><br>bravablogbcn');
INSERT INTO `brava_lang` VALUES (288, 144, 2, NULL);
INSERT INTO `brava_lang` VALUES (289, 145, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/s2eqn59f4sf8558gcl3tet5muo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HQ6QSOtvXU_HbTLg2pwu4mjllUkCEmU-HpmT_td54Ef_cqDM23ND_VjoEpctqXuqXdX7k_p6Ws0vJxqFSBDqz-CGESw2ihUkFyRMgu21oSowkx8vfIKjtjp72VPm46knQfbYR5m10ZWJLQ-3Z3SWtEi0rvIzV_Zv1uG7nIt_I2Fa5pI_x1fATTG_yY?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>13:00–1:00<br><br>bravablogbcn');
INSERT INTO `brava_lang` VALUES (290, 145, 2, NULL);
INSERT INTO `brava_lang` VALUES (291, 146, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/v6ut4ps5b2gtfcv6t9lqg3om6k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HskWQ51tkLEDJ2TDKnVuNSltzysOXd4wlRqlpvl7kEpwriOsuYoFUZtHEmTjJ4J8sKA6DUbxGONoF2Ov0x0XnGbZyxcM35NjK9PyKO8ta_Rj2eKg-bcdeWJnnORsvaItVHzewO3OpH5drxCOnLq_T5YB9y2OxEmUa4jqOHG6AztDd827wFo3pptkzd?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DJ 9:00–0:00<br>DV-DSS 9:00–2:00<br><br>bravablogbcn');
INSERT INTO `brava_lang` VALUES (292, 146, 2, NULL);
INSERT INTO `brava_lang` VALUES (293, 147, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ku0q08qno32u94u97a3478jjkc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FXEYJ6yrWi8SBHuRumDzXOPTlEFUKT3RkyHBdH-MvlPXyef0JwwO6ACY1lIrEOU67yW3zlXoE4vW-pWeB1SRQUjJMrNKnCfwYpwpcX9joT_qECDV4aUWh1qrcBB3RHQGCXuXlYnnVRjh2bJtExl-qGOa886ojcz1R2-O7iLXv7OXHiYqeDWYwaiUVZ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:00–23:30<br><br>bravasbcn');
INSERT INTO `brava_lang` VALUES (294, 147, 2, NULL);
INSERT INTO `brava_lang` VALUES (295, 148, 1, 'DLL:  13:00–17:00<br>DM-DJ 13:00–17:00, 19:00–0:00<br>DV-DSS 13:00–17:00, 19:00–1:00<br><br>LO SABES RESTAURANTES');
INSERT INTO `brava_lang` VALUES (296, 148, 2, NULL);
INSERT INTO `brava_lang` VALUES (297, 149, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/6dlmjm3jhmdf963okt394nj8ms/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GB12CFz7PWjqe_MhnRntGzR3SQYRnEWsK4E0_zJs8ZPlQmJK9Oz5kpjHP5WZ5wxqwoRzk0BDNwsQ3yEijLS7EJ-ztf8TXRWebvw9UVG0VaTCEDVC1-W1Ver2yv-3lT6tRV-z9-xon5NQJJDd6dVJtsQvSG7YcK4LnzPy4en0rkvaF_z98sG3KJrxLY?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dv 7:00–0:00<br>dss 10:00–17:00, 20:00–0:00<br>dg 11:00–17:00<br><br>bravasbcn');
INSERT INTO `brava_lang` VALUES (298, 149, 2, NULL);
INSERT INTO `brava_lang` VALUES (299, 150, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/c678km7iq6svnjlvnqe88uqcg8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ER6W-XevzEPIwRZGcoGHJHCcuTp8PLyNRI4HWsl8WD8us63engrGzUMFiwvyJ_xWBJ2KUa3426UeYbA0KDJhwR7Ot2CgRLxifGQvuFmHzE-xLv6QwMOv5PiA5itL26tmBikI4EJ0Rw2VUgnfNmEwPypEolEV51sKCKkASbVD40qzz7RFy2xcIyzPni?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dj 19:00–0:00<br>dv-dss 19:00–1:30<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (300, 150, 2, NULL);
INSERT INTO `brava_lang` VALUES (301, 151, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/np0c1k0gpkdj1arctf61gso7b4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HG5cbyVMoawjpPN7xqIpLFlUSWex9QLkCZuOvLa3_yboWO52v1bTFXxvgeondJEP95bNCRLH796jBbqDRFP7ZxvXfeL-jAvoqFkYUsXhbbouOEpEGX69rAHmqDfCn70og5nscH4fEIQnZ81ZfXw2oNFF-0Dg2cJqsIiYOlvrij4Q-cmhgdMvVo4AKu?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL 12:00–16:00<br>DM 7:00–16:00<br>DX 12:00–16:00<br>DJ 7:00–16:00<br>DV-DSS 7:00–17:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (302, 151, 2, NULL);
INSERT INTO `brava_lang` VALUES (303, 152, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/cosli3a13pu5up3mkkupvbhp1c/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HhSikrsdgBvFhjsjVZU9yXKuR2jo_1D09FwlwTyMG39HQY-lWICSYspv9mPicuLfxHaVTi2YbGGyykmmSM36CZFg3Jb6tbbnHTL3EklJnoPTRTPZoUOK1SpzFzBOtV_LxRK_Vx4xbfsMbqidzyJ8RldPaiqQ2UC4SbEB_2uv8nWfqCd4I6MsSMbknA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DSS 13:00–3:00<br><br>istefaniazinthejungle');
INSERT INTO `brava_lang` VALUES (304, 152, 2, NULL);
INSERT INTO `brava_lang` VALUES (305, 153, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/dq03aj722h8v3biiq0bhqpt1i4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HF3SKZR3JBo8yjm69Pr0mrMfpCBkU-CAIAiTqRxPFKOeClnR8pQJlQaB_yCAmPRRnGOSeU3VQO0yEkO5hLoPWdbiaz0B9X5zCSaZWfdmPYy4iLu0bqby_Zh6XGC_lV10Dfr9ODlGwrlcxrSsPkL7yEOuDU_WgTj-IJ7GkNYgET-_Xm_W-VVWmu9mGN?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>9:00–2:00<br><br>parataula');
INSERT INTO `brava_lang` VALUES (306, 153, 2, NULL);
INSERT INTO `brava_lang` VALUES (307, 154, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/usju1quhelvh6ulunktt2lah98/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HZtD1wGgL6n90bAiz5vrEJhHTjYcudtGH5-v8ap3-RAvSlUBRY9eFcocpJhpBLER6q70z6ojm8FCKw_gsmx97M4iw6k1NDCnzBdgoTBP3z-OlmpNtlKE7rGMFY5NlEQmB4djqJ0THIz6P8QA99cR2_Q88r685V1_X98dk-PEAacHWx8DPL1ZH0fuAU?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-VJ: 7:30–0:00<br>DSS: 9:00–0:55<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (308, 154, 2, NULL);
INSERT INTO `brava_lang` VALUES (309, 155, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/tcj05snd1421p92sl04usra5jo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FivK5xN2TkggQ4480aBT8q2PrV7bWz9YaBzTSCLSR-EE9dzJAZ0c-IVg3TZ6qY_STO12BrP0FRNazowCz2NNAulPFlVH82i0p3MP4OGhO82D_wCyGeY4qnXyLGoPNfJeiccE98KAasVlY9AeAZJ847G9q9X8HVxp7yVAn5NzprVsFvYzsKt4eb8_-G?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DJ: 12:00–0:00<br>DV-DSS 12:00–2:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (310, 155, 2, NULL);
INSERT INTO `brava_lang` VALUES (311, 156, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/0epcr03pi9avu92hdh4nhd4jhk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-G2w4Mg9PbGCXd2dyzF2VeQ_dNc3q7E4BUdQ07yKdmpzlufrQoe3oOYuHQzOzFRJUXeKR9EXiPQO8cYbkgPyI6Ou0yeyaZXrevtKcuj_oEqK_FaKEPNPZO1oL-c8qUO0Je4d1DEhI0S2OS7pL_MJhsvC5T1owzkM1TTG4vLteGOuqKKa9u0ZILdhmvj?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>brava Patata');
INSERT INTO `brava_lang` VALUES (312, 156, 2, NULL);
INSERT INTO `brava_lang` VALUES (313, 157, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/sjh23assigvclu2f462nikqr5k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GPNs1qYguS14xVynV-MESN7DBNe-cG-k7-VkIh4nVJRahwlyPmCiUrS_5LNUI6nG8810qBIlctTAYQNXWsEqlglOaTliT1Q1_L5QyXHdJdowCTY6uAOttJBY-zjtVCMWdR9EJwypxdIH2Ltkon9rER07HoJ-CzMJp_jPozW0guWvYjuFp27zQAklPQ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:30h a 00h<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (314, 157, 2, NULL);
INSERT INTO `brava_lang` VALUES (315, 158, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/t4g3hiplgc23hfl35e0gj1kqeg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GS414tM1PvFHxCsqi_NeazFlb36tIjJ3KvUIQN76wSO7q8o3kGnSf53X6QLFTAFS5BkZeIwA9zwEpbegAZYFXg60FtXlRk_L29x1ByNyPU8_74ESLyqcMKBryTNa4lEFXRN0zPYD255St3sJjd1JF-lH0Fq0f2qGBdRvh1Mc6QxcquoUZN_HIcTUyl?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>7:30–23:00<br><br>a_restaurant');
INSERT INTO `brava_lang` VALUES (316, 158, 2, NULL);
INSERT INTO `brava_lang` VALUES (317, 159, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/p2494f8h6skc6898iva67hjd3k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-G5j-_CcJy_d9dorh3lZMZ20C9YmEAnHkEzj8mWW3BmpAYYDB02O1pCyyNHlekM1DFJR0v8K1Mw5nnmYZhkzO_KArfWKpqFnnir-Zdq7A5otHR_PmsGlgYla3XhOdb26IOCXzzZRvZFbjxNYJ0e2HRpynKzCPItaTS-ymDgcmoUfBZsu4pz4pKxxD00?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:00–2:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (318, 159, 2, NULL);
INSERT INTO `brava_lang` VALUES (319, 160, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/n11a7n0dg5aalqa5bg9d3ao3cc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EoJAbGLkgcbdF0DcXkyPQH1WuoGZIhp5cmBlonKUBnhshLUhl8tFmb-K66rruprUoqcrlKAr7z4SWJPA1dktqtP_JZFAuHmz_cANDmQvfBunNUHxR99ukp7nDJyURDzmL9s1XEfHdqjznhpSTj5sGQ23O70EjuQihsPVb1vOVpA5eYlF7loXcC4lOm?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:00–1:00<br><br>bravaBlogBCN');
INSERT INTO `brava_lang` VALUES (320, 160, 2, NULL);
INSERT INTO `brava_lang` VALUES (321, 161, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/f309t98d9ih6blutlnlj7i7oh0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FuI2SOMSA7o3MMiDNOcO-8S9v6cwOamxRuIyHNKdrThYnqkV958aDQPslZGj-LdNTJRZ_CE3RZ96JpavInlBec_lkYS0QXNYw6YPFhHEaYu7_N1aYjtXB9ZIa_8oGds8I6EDl-NAAu2OGunMhokAwmOINUyfOoBxHs7u4PWol9SI5MqZO2IL4bhOQh?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>9:00–1:00');
INSERT INTO `brava_lang` VALUES (322, 161, 2, NULL);
INSERT INTO `brava_lang` VALUES (325, 163, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/eu94v9a9df21tf7880e0qdfia8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HKRAAFwn-TLo_puORqFMBoTu0BhxUSjNhMdpjILbTmNrMgG_s15-VlgbHVq2RK8cOIUr080TcCeGxmb3soSqpGY-ORh1U0p01cbhSt92hdpTDklTRbp0zQT2YWLX_qAu6L9tjdLaUKy_YOnO_ZjDyDKl5vT-nj7kUE3y0t3f_du9BnyR4pMvHulZ_2?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DG:  9:00–17:00, 20:00–0:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (326, 163, 2, NULL);
INSERT INTO `brava_lang` VALUES (327, 164, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/o2fba275a0cjvpplq7hhheev4k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HZxEAIj7RtLpSpOlSkuspw2R8a8zNCQnQrIoIQO99KJu2uMojKjObJS_gM_nPefWBdJaFamRcKhxroR0oak0Uz-6kjRxyPeHiqatFsu4d49hzUOU34tKz2nl2bNmVDCFXKFDEXEz_pLmWG1fFB_ZmbcmoqquvNXvqPlaLNsB0vPSDNaiTyWPqqXeGA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM: 12:00–23:00<br>DG: 12:00–16:00');
INSERT INTO `brava_lang` VALUES (328, 164, 2, NULL);
INSERT INTO `brava_lang` VALUES (329, 165, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/8jl20b8s9dkrh4teju20jpvot8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EO1cQHfReVcL48RYJGYKnP7A1dbOVOldymY2rsjlmLppOfpo7rjN262gHuXBVWATFRLSzrrQSYl2zhiI7ZFwQrn7NtNXZfP_Gh36GADy-MakE7TY7e5YBWo45EfarOJV_V66aIX9S9G-oBdHhxCDU-3kVy_sJF2joautBg_AMqRR7XO0MMP-61whOi?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DG: 8:30–0:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (330, 165, 2, NULL);
INSERT INTO `brava_lang` VALUES (331, 166, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/u62rj6k457ku6pcrftd9a9olm8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ERJvKS9xKGI1QhbnpgtwlI4e8kk7CdDJrU5Q3UAEGUfkEh_sydkqOKobafE0AqcQB6hufZsZ6V93uxIjkTZ4VfddUoJNtsKJuRWsWr33b_wCxgJ1-__gPnlC5SOkCH8RyQXS1TjUy-cv07pAMXl4QDuVaqS3thlsspiqGU5Yiekg4z8shnei_Zt_W0?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DJ 12:00–1:30<br>DV 12:00–0:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (332, 166, 2, NULL);
INSERT INTO `brava_lang` VALUES (333, 167, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/o0rbh8gugh3a9osgilhoatptgk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GuKT2NW6wSrkHt3WZl0qqr57YbDTckVjmK2Xe0QkQsey50ZWxR4bXOTM_G1BRs7jNqagqjhfLeo5PRSdh_Ojx4NulWL2jPWRU9as7d8SMdn6OdTkKy2TMVvobOD8ZyEv1Y57vExFG04PS646lhZ3gmIzMo2bR-tn9dttm68qrXvVoonecjtGGhaw6G?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DJ 12:00–23:00<br>DV-SS 12:00–0:00<br>DG 12:00–17:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (334, 167, 2, NULL);
INSERT INTO `brava_lang` VALUES (335, 168, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/prakaokecr0b71l1q78o8990c8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GmF2c2lpoziRAEOcPxnNvhMhIYhoYYNwdLOYNdQMge5_MVaKjRT2iun5kYTSCDNaTzP-8wDwI4OmuWk9URkssuRnVUOBV3DTppo8sMOq2ZWvoi9vgg7Q0XleqQ3N-MKwQuujkaD1Reb2YlOiPRKIUpRBAV3UV-DlHX7ntTmuqvHlbnpmwPj3AkTSdu?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:00–1:30<br><br>foodie in a bowl');
INSERT INTO `brava_lang` VALUES (336, 168, 2, NULL);
INSERT INTO `brava_lang` VALUES (337, 169, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/fbjhcqpvh35m6rbnqo9i6t5k5o/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EjS9bWCnM7uKv_PfUBWG_lFq2LnCYFoCfLLS85INE4slbvBhh7bNFam0h93Gf-TCqoHdS1KhcfWU9Hhrpd053rOPoQuGwQva77O-QIA9-XmOn6cSXkQyKlbo2rHJxIgCswwIiEayw6z_YK_NiCLCH_9oBUAT-6or2_NA8vhxyoT6k7sDSXEZRFCAdC?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>9:00–23:30<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (338, 169, 2, NULL);
INSERT INTO `brava_lang` VALUES (339, 170, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/tui0s40q93csi9sdrnhkjtp4vo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GXg-P2gSmXrbU6JsqAF9ZqTiuQ7Xb3BpcaOZl-W9DYzYPW_AiwNTgbxUx59R_Z7cOJYdbQnAs6jrXM2_3vZV75Jocn5zwSk1WFfyk2qIFOPgyAJE4OzT-W-KufO_UVVQcl98o-H78NNQQWiwl59qQffuJlmM1BkgRfnrSgrqTxQ8lwwJtB3wqj4ZEg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:30–0:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (340, 170, 2, NULL);
INSERT INTO `brava_lang` VALUES (341, 171, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/81g5oiippg86s38nr7lp0q934g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hj8Q4ubnaHZh9hLIDHHoMTUwZ0y-CAVIjv7UXmRjCLNSGv8BTDm2j92PON2AEXZs16RIpcylSaVHrU9p7setIjCFLIAxSpRFcbfiqRdHaBkIRm2Mg0FaFp117bhd620YhwxgUEGFfQtsxXLbXABCn95e3kRsFBQvreEHt9-WslGWfqNVxxZON-NItB?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DX 12:00–18:00<br>DJ-DSS 12:00–0:00<br>DG 12:00–19:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (342, 171, 2, NULL);
INSERT INTO `brava_lang` VALUES (343, 172, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/2hm4e17tt11u98fe3ccl7jkhpc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FJ7JEJQMKPGaFWmMgJHPmKa5qmZkQxnLch18x8lwmm3C3zD1kh7JLpH6R6DVw2O1nwC9_ePADiBuCpQup2M3aDA6CIUFWhq1zzqGNd_ikTxV7PS7144ypmyI_uKm9YKPFeyFzP7gK6_w4Y6JOFOW_FDv-2XyobUH_xIioRC5QVIU71y7AP0u8sNrLQ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DV 13:00–23:00<br>DSS-DG 12:00–17:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (344, 172, 2, NULL);
INSERT INTO `brava_lang` VALUES (345, 173, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ohadnke53udvrbrd92rolrhfa4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GlGWzzu6Ij8P_R4y1GSWg09FzGPGTMN4ZVfbfXYpxUh36hTbw4Lk8sv6ThJ1QPhPQ4G-2zcHWW_wQqinJc5ynG5_l19RalLiJf3VLuxOUtCnJ9qcaJpDyjpG6P-Exdm4h2vbgpgAulbw9w0Y7tmB-euKs7uq13BHpalStTYeRDhCCcoA5gcj8yWgx-?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dg-dll 12:00–17:00<br>dm-dss 12:00–0:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (346, 173, 2, NULL);
INSERT INTO `brava_lang` VALUES (347, 174, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/7m256at5i4ntd8994mm8508n3c/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-G8plwCnZ9gyjuePVwNnnCfiJjgM4f0Z06qkMfgbHBf9ubmmWQbxkdn7-EkStecuGOvKB4aEl9l0NgtP4eQ4h198SGdN2r6HRz-lCtlm3NiskxeCTBy6-G9cxmXFvic_cwG01Esi6W6HvV7HbIa0rqgfwg4s3QYl_rmNcPvTMNHQNMtx0hFM_zP8OhZ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:00–1:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (348, 174, 2, NULL);
INSERT INTO `brava_lang` VALUES (349, 175, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/tv06u4hhrk5obiibkkfdupq0hk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Gst-WGmZuJcUGV4k0so1qaOS6VKhDVjqDOsC2EkIcfqLmDYWZJljYww0tRyxZ0NURwEgao3_6uZAub6OiSduo15B7SyYnG2Pt2TwnfdFYK6sAX9q1wzbHdVL6emUVn_UMSfusbDfRjz7cGtYjJMGndWMAsROYtbEiDq-1mqGw2oEaOdcqded8lbrJM?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DV 8:00–0:00<br>DSS-DG 10:00–0:30<br><br>foodguideforstudents');
INSERT INTO `brava_lang` VALUES (350, 175, 2, NULL);
INSERT INTO `brava_lang` VALUES (351, 176, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/gm15dgm97nch2krgf9epiu1vi4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Fykfb8D25D-4SIuOcSmnxBcJ_8IErPa-EK90WgsrAdpo_0L-thui73uGu-9tOp5gMtLTsFPq_kYUX2TsbdHEY_oqqvuz5J3kgAKuL2h2IRZZvIOIom-yMrjmv7XxSR_39H8znemEghbwbKPJm_AWlhVykg-Dr0lr8Wj9e2GLVEstZ1wHSZK08jOMTU?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>horari?<br><br>vermuterus');
INSERT INTO `brava_lang` VALUES (352, 176, 2, NULL);
INSERT INTO `brava_lang` VALUES (355, 178, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/rvl9nbhf2htoircs39ri5hhvok/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-E2vNFEgu5HOiWF7O67VdN4T1fqJfjRj6-Fq2pnHKKR6mj2gtkLVPVQuCDXb0tyMVyqzoTtTH3-JZbYJU14V4wA33UxfcErdZg-t_1_jIVxG8KUOvU8j9wDeAXs1B_lC7q872MaL6mqf9AMp5xh3bTP4zz6o5fGCprH1H1IN2KJpWsvgpO7mR6figJinA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>13:00–0:00<br><br>vermuterus<br>traslabrava');
INSERT INTO `brava_lang` VALUES (356, 178, 2, NULL);
INSERT INTO `brava_lang` VALUES (359, 180, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/hduqc6a95fkmo195d5prohcuv4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GEJ_T7Dm88gwhGgFBoD1UTk4z2qHCiD9YKGCb5qEGnAvjzcm7RJtX2D8rcDGCOurIcjFzylXPTb2qWcU_wkkBL2ZGT6q_xR0sbgrRn_SRErhwe_bFua-WIuk3Ndl6I6UEUgQEAHatp_3OT45qZVsGaXwrYUk4UltJ2YDz6tmR8KqvkhJUg1PwtrqgY?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>10:30–1:30<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (360, 180, 2, NULL);
INSERT INTO `brava_lang` VALUES (361, 181, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/b8j7sm0q8f2l8vno4sr7ocp0bs/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HcSUWPB7rGkwWaJcOCDlRGUHqAwSoS-KXBUzPFJRVl8vEixhLV0DfKZn4NagLMR-zB7Kh8W-vmz3FoOfIWS_QWbv3A9QBqp5l3DT_9bbhtGvw962S_kHMUKYxcdAU_DeNfIoEzx05d_va5nJ6f5TXUf_I5XnnISaigGTB8ZbU8hK2VtUoaOa--ZGGV?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DX: 10:00–3:00<br>DJ-DSS: 10:00–5:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (362, 181, 2, NULL);
INSERT INTO `brava_lang` VALUES (363, 182, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/fftbmq1e101fee8u3l8jdltbs4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GzAP0WLqeUinmfVFJ6LuNtr5zC4UsdGV6eRoInwhpTBdr4mPM7zp8_GQek0PUI5YXgUI_BO4tIwxBkVco07JWzRCHHTPY-Lvdo484wftsQVUBcWuRaqdAkdxaxjdxEhyneBZvOKkt_-BzJUronXL2y-sVrt4NK7WWgM-YOiGXtfbZeuW5ajentkqrM?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS: 12:30–0:00<br>DG: 12:30–16:30<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (364, 182, 2, NULL);
INSERT INTO `brava_lang` VALUES (365, 183, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/4p5v1v7562ln2getcdjpncq49s/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EFM0_hWmJTdIWIyA4-hOBy_hnIS0VxNp0xT0UOh3hOxT3n_dfxOLoTq0VcuPhyctRq2hBc99SSh-0P68Na47T2c-ijd0taF7gi4cq029p_2S-IKD1L1-AuHkh_BwxeNYoWBIROzrIUUDwsPM_RoOzW1_IGnY7eL2iQXKsAEdNskEF43IM3EtZIjMzS?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>10:00–22:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (366, 183, 2, NULL);
INSERT INTO `brava_lang` VALUES (369, 185, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/oekb07b9qu06ro1dvm04h5h01s/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GoKaDBqRqbznp2jhAFvPE0qzozbQUXm9PgShETxUUueyPoxq2MP3SWlnaxQfkP4zmtBqiteiKj-HekK2fLUYvTBWH1m2gOr8b5ZYb3zKeOxO5msFX1t8jeQvtBUiZ5ylEA1yl1BVXYIUZt3JY1G4d7l3xIql5oaGyHtaiSMpwwNTkqY8dPkpdQRFd3?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dilluns	12:00–1:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (370, 185, 2, NULL);
INSERT INTO `brava_lang` VALUES (371, 186, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ofg7naiudtqt72l90djbmpi2uc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HQ3l19Qwa7nAAwyKE77E3ajB30eNMc5BMIVCV1XQsKe7aMSyuHm-eWRqn42jgdOJSBmCgdiDgZcGWDX26FV3ybHvq2He4fXlFR-6fXV68UhNxJ7Iplcq4wh4o04Z2X3g1TxsvhHVfyY5ZR2FTpZu18xCPPWZE_u51GFwc7b4yLOkjZOCfHF-aXFizO?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DV 9:00–22:30<br>DSS 11:30–16:00, 20:00–0:00<br>DG 12:00–16:00<br><br>bestburgersBCN');
INSERT INTO `brava_lang` VALUES (372, 186, 2, NULL);
INSERT INTO `brava_lang` VALUES (373, 187, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ndj76klc6vsd4s8g9obu6nd744/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HJTuugasRxVpLOMorqHM2pKFqahTzPrarwOaN3JqcX5j8xO_W1NT3VaAE6jUytlMt3iuAUMNxdeVcYujbfcHW6l_7m7bAZgUoelvhTzVzc2CvNuJpRor4_GBvV6JbjfQ-CeX5CGFfsUsC6rcHdFNOv_iv2y3oGgNGmZjOsr1kLPwXd0yxuRKuMR8D9?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dl-dx 17:00–1:30<br>dj 17:00–2:30<br>dv 17:00–3:00<br>dss 13:00–3:00<br>dg 13:00–1:30<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (374, 187, 2, NULL);
INSERT INTO `brava_lang` VALUES (375, 188, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/50uj28tkk6b3rr02ons07einoo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FjUpgMJiQHe4ayylRgxkbNEBAaopDRA3hScSRKtbo-LZpb_0eL-Nm9l_yoNDVxs8Q1TiiTIoFBDnRPfE9rSV2cgHi6cGGLkibR-yh2MGUF9T1Zg9fN2bIFkUvMejP9DrGJZNmykh8EG66CtCGrWVnlEtS7_ZSIKdaRiCFFD4nFY663GJO_x7iK2Yc_?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>9:00–0:00<br><br>cuoreciones');
INSERT INTO `brava_lang` VALUES (376, 188, 2, NULL);
INSERT INTO `brava_lang` VALUES (377, 189, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/4feliduko2eq88ph9asgsheivg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EOaYbkADGSxp9QInJ16erBrS-C8YEdkvFvBicoh_z2DmQpVtWbybad0v9sbKZwzEKFgDskgf4lKFJKwrXDsrinDBrhzojsSsHXvm44NsdiWZuSO--xn1z32RpDljHE3bXQAqmTt-rficB8odVAmQtNNo_kveKWJXm86AoagySIRjgG8n13P0HGeEgG?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DV: 11:00–23:00<br>DSS: 12:00–0:00<br>DG: 12:00–23:00');
INSERT INTO `brava_lang` VALUES (378, 189, 2, NULL);
INSERT INTO `brava_lang` VALUES (379, 190, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/9lups67pkh560gtcpuppinpmck/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-E5mCrfrnBUDGoh7bkZlJr6rfzhql2JlncCDrK7KbR8pxyTkoIKfEkaQwClhDu_iofhV52ZPlyFq2v3b6GMMO2OdYqGZRjaMdpjJhHrqZTZ4v4VzyhZxIi4OqlLN2EJLCTfLmErdWZatBurR1WUiM5FYP5OGw04EIQJP7FxziLenL9qU9eX3sfO1lYl?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>8:00–0:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (380, 190, 2, NULL);
INSERT INTO `brava_lang` VALUES (381, 191, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/k7al2tvuvc7hhrt148c7rursbc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HHhIhlprEENl3P3tGTr5azx1J-NM0YNgwEDOdBxvC3r1tkkuFm7e9Fw5z8TPrLtLMbOynGqCZA3YS5yOx-SyBHJJQqYyPcrNBRJGTqJmeplDu3P18MlZqAYpOKwVQDwf4wL_VTW0jriYNqc4_k_tEEuqmKl2zg2cMXARroe_xSEO1lXmoYXVcMCmk8?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL, DM-DSS 11:00–0:00<br>DG 12:00–17:00<br><br>bravesBCN');
INSERT INTO `brava_lang` VALUES (382, 191, 2, NULL);
INSERT INTO `brava_lang` VALUES (383, 192, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/354qk09o54gas7cmeq60d61oko/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FQjtjFHGOvWIuo6BNETs33iw8Dp426-7s4UFOsE_3JLJ0W5Kf47-RFTpoWTKwFHymdv5mJGfvdQzoPR_MZKRkbpusqTV9dCVwth1d5q4o91meDcUlh3YhqgeuncWvV4JfZ0Lrn6_CId1PKPo48IuuQddwU1kFFt2UTvNpZpig6JHLF9RCGS7Wdtv6d?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>9:00–0:00');
INSERT INTO `brava_lang` VALUES (384, 192, 2, NULL);
INSERT INTO `brava_lang` VALUES (385, 193, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/29vajm5l0oeuodmhs3ctlbt07k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hc6AHFNgNqF-3FfW6lidYfcc36UVzNmMj-3FhdfC8l4trwU4NyNHXYQB8wJW0wXqEho2zqIvgVXeJGE9LcgNlpp17gl9sVK0KuTc6hsBZphPevneVtk5kWgiabls2Jx3kfRzYksjgrbDkXAR7y1j74xUREReSxtRMJak0LoIHJyCrITIiCQldDzHYG?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS: 12:00–16:00, 20:30–0:00<br>DG: 12:00–16:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (386, 193, 2, NULL);
INSERT INTO `brava_lang` VALUES (387, 194, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ongljukodddeuvo8v6ufhijhkk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H_CjsgEcj6EC0vrTbejh3DtmavH4avLBMaZB6bWU6a0gcuMW6o-zqSVRbF9XPnhaDfT36b3_bq9eYqfhmwFKYalpTkasV9ZZSoiB8dhqKhIBNe2fPs9sf2KNJQ2p-PWlPKqA1WcQgDY_1vsLheUFByPX4eZC70sJJTOkZS7IqnCs9C9j-nUsTIKaaZ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>8:00–2:00<br><br>imfoodiein');
INSERT INTO `brava_lang` VALUES (388, 194, 2, NULL);
INSERT INTO `brava_lang` VALUES (389, 195, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/3tgn50nhnr9o6dt025qsd3i8rs/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F1CnN3OJ0DqVrA2HxAsq7lywVk_PbjNlabvPpfyJp5m-m7bzTZHey2OVZ1smlqrzCD8PnV2vRngC0uUo-B3o713ShWVTVhUPy9NiacUI_zX1POO2UdLTPVv744lTQx3Njaui05q2TyqeYE_VJxajaEtyH-1BozOyYZIkaJ5uZQbDp_bUs-qhlypvLh?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DSS: 8:00–23:00<br>DG: 9:00–17:00<br><br>jufremi');
INSERT INTO `brava_lang` VALUES (390, 195, 2, NULL);
INSERT INTO `brava_lang` VALUES (391, 196, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/h568s1dpk6tvud0st0dutljm2k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GLwNhWzeUO5sDEwIw13ymGb1mpF1cfQT0qjcMC-HxgNVHnbavsLLIFYUGZIRyfYfBAH9gQPZzZqHDzFy7IJhQOSO7qtvcXAp3PfI5ZX7vf7jPFUN0JylfcQuZ5-sjMSLtgC8Y8THLTIH4iJBRoijSVabO4MYNGmv0FAw12hWlRaeh4weVnVN2ki5lg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>8:00–1:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (392, 196, 2, NULL);
INSERT INTO `brava_lang` VALUES (393, 197, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ssnv7qbrtpabe07uvnlg29p2c4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EaUEaoSXarBfk9bV3KZhH4QU5mo80IEiB-ouN8s-SmToje6TvdQN2CMiYjJmrGlwSD9PaQRLg3kCYWw54U0OLOC1PDtSKTpLumgVrHHF2pAP8-Fs1hpFu36j9rsZajIrYCJRP_V5STEU8zqDWHI4RMaJcPezMKj_JXfq_FQjHOiTe_IYTBSKNGjdjA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DX: Tancat<br>DJ-DG: 13:00–15:30<br>Post-pandemia: ?<br><br>eatchipglobal');
INSERT INTO `brava_lang` VALUES (394, 197, 2, NULL);
INSERT INTO `brava_lang` VALUES (395, 198, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ehh8ip6ggn6qaff8hc9ps2lu1c/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GHv6xKvTCLR1DXvISi8vSvE9fckZg2dunieL19i-wY0ArkqFvEWABp4IncDJbm2PBsRUVOQ-KPBHNqxDOl8bOh43GgUYGVNC7q8XVixiUlMWScKfMF7JM2MbBkl-zFRuf7_Doj1MCb5o_eDJK9tzDlSlvhhJ0zY5I9_eYhUjvOa0-UQq26PU4bSNwnyg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DS: 8:00–0:00<br>DG: 11:00–17:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (396, 198, 2, NULL);
INSERT INTO `brava_lang` VALUES (397, 199, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/e9hldi7fsh3tftfe042ihlhd34/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FjLf0q45xUwPkNxUC9bzJ5RN1YJ9y5LMI5kn9HvW9XQOjMnXUWOC2SdUASPc5PCCM-guG--QawTr1aXVoJFt0V2A37o_7RpTRL7t58JXkSl36AbQJTrrok57DongjNG_x0PrCiWrxUrkICh2CNy3uW269bxhYfh-uc0_6afQ0YVL6F831CchbpLqEDug?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DJ: Tancat<br>DV-DG: 17:00–21:30<br><br>srboca');
INSERT INTO `brava_lang` VALUES (398, 199, 2, NULL);
INSERT INTO `brava_lang` VALUES (399, 200, 1, 'DLL-DV: 9:00–23:30<br>DSS: 9:00–17:00, 20:00–23:30<br>DG: Tancat<br><br>bravasbcn');
INSERT INTO `brava_lang` VALUES (400, 200, 2, NULL);
INSERT INTO `brava_lang` VALUES (401, 201, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/euceqhog282r9j4n87vjc20sao/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GI0-UksJ_FUXqpwN0dMvaf3h_Fnw696AnBxS04t6GRM92O8Bz7-PFD2SF32v4UFC2E0h7P-boDaZdMWZDJJUm2kQwC13x6sAhuDD082a7czxsbXOYtNAkY71P13qEMyotpwxNXvn1QZ9Qp6SjkbF2FZVs4ZVbnLUVnXkNoeRWnDLP56WuQGI_44N8pXA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL: Tancat<br>DM-DSS 12:45–15:30, 19:00–22:00<br>DG: 12:45–16:00<br><br>bravasbcn');
INSERT INTO `brava_lang` VALUES (402, 201, 2, NULL);
INSERT INTO `brava_lang` VALUES (403, 202, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/i2ve3ljk2u6tbgl5rto2unuouo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HP21QQ7DBPVs_8GRWbIVlxQPpTV3usogd844TnwEw2YxlhMyqD7-OxokkIwuxOwvHypZHeCZ47l7XYozIySAsFP7XTw9mgbk6H7he8vVziCr9E9b16Lx2Z8Raf9iBlYrpd8xtPs0rsBeT89BQ197AUeHa1SOJXm8DjhrZAb7oCBNO2FehQxD7zEeLZ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL: tancat<br>DM-DSS: 13:00–16:00 i 19:00–23:00<br>DG: 12:00–16:00');
INSERT INTO `brava_lang` VALUES (404, 202, 2, NULL);
INSERT INTO `brava_lang` VALUES (405, 203, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/5307184583nqh0jo0pajlgs700/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GqZNIWWYTWQ5vm2fnXFmG6wFDV61_20caDwQSRoDbDYbAcXruUX89qKE6jf6hFv8F7gP_lxbLHpuSHTUJdBAkIAm49tLs3KH8IdYZHxHkiNxViikEyKET6LZLBFZCWA5PwGaUDGfDct1UpsfPTnNV5tnHBvFqhi89b5MR4xLAwPIJ4k-gzDZ0WL0EDRA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DJ-DSS: 10:00–1:00<br>DG:10:00–17:00<br><br>foodyingbcn');
INSERT INTO `brava_lang` VALUES (406, 203, 2, NULL);
INSERT INTO `brava_lang` VALUES (407, 204, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/1h5kekff11nd3u1bkkos4obfog/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EeUwX7g9rHXoYAgclhL16ZmiIgXDOUdhXS0RCvcWL2D9Cns9vT1IIOvuZdhWVna2j_FPlDA0ZO-tOw-sqDVXfjxiOcpvKTIUs1tageLXxmlhfzgPOOqjqBmCf_SnFPXoLa3ZkSjmy_7mzYb7XjsiN3VTVGWGVrkQVTynkiFQzXyTEVh2iTK2JSGSNdAA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DX 13:00–0:00<br>DJ-DS 13:00–1:00');
INSERT INTO `brava_lang` VALUES (408, 204, 2, NULL);
INSERT INTO `brava_lang` VALUES (409, 205, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/vhmqh791obnuj8g2k9tjqlmgck/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FwpiAfze6wcuVmWbC6wHrJnjiVT3QJiCuW1Yfyez8SR_9I38xD0taoPCIpJzH72P_tqdlReOXAscudbwrp8JcOTUkg2PRgq_5PapeMpd73ozRuImiCXTUo3Fs54m8sF3RGwp4_6xfWvEBl5pJfQXMC-YUpJuP3gi9DxvGU1qUTCeZoSgdRDrYcVN5Y?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DX: 19:00–23:00<br>DJ-DG: 11:00–16:00, 19:00–23:30<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (410, 205, 2, NULL);
INSERT INTO `brava_lang` VALUES (411, 206, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/v1d16cfpq3f2204cs304uq6kp0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GjBMWMtPuDJV7cWL6nZIT-UdU49KKyKslbZ9izdDDXsI8bRHkg2uBnYg-q9BlU70z7O8Xyi36EEsd3Nfh_4pRZgczUvvZDjT6jdztLAitnEH7qWdWorlOH4wjitECqEyIjU_uO80h5FlOmCeVnF7DY1DcpCw3BtNoBAH3SE7UmivnhqbMt2Croprdfgg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DG: 8:00–0:00<br><br>cuinabcn');
INSERT INTO `brava_lang` VALUES (412, 206, 2, NULL);
INSERT INTO `brava_lang` VALUES (413, 207, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/e8cv79brj4rnteglc232r77vmg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Eb4GM6IJwAy-E3AmUErkfz3jg7WcvZ4IUawgC816UqrjmHaDSkoPFrXimmFN9_pHSHgwTbUmUM7JJssmoycWDPR_xvnYsI13POTI6nQEZIRexnD-gWieCOpNobbnWCzMxDiTALQwIBSrYaqtKFtGKK92n3QPeaFNqhJMU2zEZjOpp6Pr-2ughbRlay9w?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DX-DG: 12:00–19:00<br><br>gastrotrip');
INSERT INTO `brava_lang` VALUES (414, 207, 2, NULL);
INSERT INTO `brava_lang` VALUES (415, 208, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/cck1hnvqd74fj98lmppp3c1cac/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EwDuHBiUQSu3TPM5T7wbey9d6HLfwkuOLvncT6-GEqla6eMVK1-gUSmNNcIkGw3ENMtutsIhuwEXyaj4b9fxpr5u5RjkoBSycuHRNIrIvnm4q8K6Xt7IDO4YQR2UdpX0Wy0LnG6lIoaS0KVUigG_mTHz4yG8KFHNedqNEHHBQlIeJGwxLfxHHsdRr9?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DX-DG: 13:00–17:00, 19:30–23:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (416, 208, 2, NULL);
INSERT INTO `brava_lang` VALUES (417, 209, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/5rlcd3r20ibd8j452qdaqmc1fs/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Gc61ZFMRzmu5l2zseYIDHj3Bm-ZYq3nz6V-XaQ3sDxlkmBkUfhQL-YA2l4Dlt5HA3AvT_prFZGFsgmPH1Tnri8fkOCTCBdVTr3lJfc8PUec0vm3fCFydoHl9jiPnBNUeb33XjI9Oma5gZ9gHJfq9t6cfe2vnSwiqz9UvBOxeRjEtu5vHYKdYs96QeHyw?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DG: 9:00–23:00<br><br>traslabrava');
INSERT INTO `brava_lang` VALUES (418, 209, 2, NULL);
INSERT INTO `brava_lang` VALUES (419, 210, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/nik7fj121sndg2m87q2n541a3o/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-G8yTpRGEPm-tUAZ4gnEc0RsLxb0uYXncCPKB6ZIT_Mrhekt7lgbcjpMMFzxRaIWBphS5AkiOBDMRfpibcUUNf9uoC4sqYjTkmmVZOFBHDk2bVz6zinFvnZsO9UyzFgMO8jwWl3V7axVswRWV7WEpmM3JyyFd0hxzlQGO77DoBEQT7RXiDAOzME6GhJ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DJ: 12:00–17:00<br>DV-DSS: 12:00–21:00');
INSERT INTO `brava_lang` VALUES (420, 210, 2, NULL);
INSERT INTO `brava_lang` VALUES (421, 211, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/d3d8voboeridvigsf5rqkbmh38/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hyi23SxrYH64gNN4NP11dKlXt1qu2RlFgX2XkgEUCuQAvzTwxVCpoikwwTEbgLh4duYZsl-VbjLM7PqrdvVBXCYYorKeO_Rq72baHcgcXIsEdv1VV5pwJfX7EKJqtvvigJYhD-HKhxKIq8cxMo4W6iTvO6QZdmdZhOlMsTF-C11J7K8n-HZROoIsCuAA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DG: 8:00–0:00');
INSERT INTO `brava_lang` VALUES (422, 211, 2, NULL);
INSERT INTO `brava_lang` VALUES (423, 212, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ht0f9ok1lc5ft4k53mvl097uik/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-E6JpsufMni36OSfNmi0SehqzpfZFoKNGw7PVZiTizgRryz-YrrJ5bHncFgUEjkpgqJNWjbW2WH5VK2Nu6BJ4yylSZ7IM0uYpfZVkuf83eLfBaFlhjvOfTIG92AhrX3zH-FTuYn8ICB8Wn84pu6I733tq-z35HIruynfSQWniqg6dh9OtWZ8ahPpToM?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DG: 12.30-16.30h i 18.30-23.00');
INSERT INTO `brava_lang` VALUES (424, 212, 2, NULL);
INSERT INTO `brava_lang` VALUES (425, 213, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/53camhs9vtm8b7ci444ef55dgo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FPwlfArftNel2lyywO1S9O9yX2jQ14TPA-xm3CHQewUPH8gBj2Ee_4GCJD9AZFsN5gxVc_GD_mYpQDtdhJsgamVfV5BKgDa_syN1L-jxrN159iRjVQ98ee3QU3-E1z18LNjiVxdYMQSpqpZnhffJdXw594avIjAUlrpB-k0ohri7yJ4uHXafAnxyoLkw?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL: 19:00–23:00<br>DM I DX: Tancat<br>DJ I DV 19:00–23:00<br>DSS I DG: 13:00–16:00, 19:30–23:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (426, 213, 2, NULL);
INSERT INTO `brava_lang` VALUES (427, 214, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/talrs14uke206pik2mft4mqsf4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EuT7wk4RTkfqsenITkx2e_PkkNkEPWLAOuChO4qn3LL2EUdvi60CLaFPl6d9ijko3_9kWfHfst9PyYJsT-Qem9tIBoNrtsMG8k-TRUzmvIFAGnuzMEt0PMp_dXady3s9fX0zV2tGgHi87Z9dUDl323DisAoRzDy5gPDwdvMF-e5z5jqOIxHlcMRvY_?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DV: 19:00–23:00<br>DSS: 13:00–16:00, 19:00–0:00<br>DG: 13:00–16:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (428, 214, 2, NULL);
INSERT INTO `brava_lang` VALUES (429, 215, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/a8i78kn51hbhk9mn2n89bc2br4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-E0Qe_x7PZ07zQoj922EvypuUwleb0Szx80__d2-P0-A4rT_fp13TwPesw2RqwXEZ5_vepGl6ICvn2q-wcQeru3DJ9RFUVYj0dNcxf-yBy1ce2BsBa5HvZtZIUpeoorWP2De1JxlUNnSPG5zYPCI-YywEYdBsYwXa5Sa9VUi6EE_3xXsMUYn0ZUkE2XHg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DV: 9:00–16:00<br>DSS-DG: 10:00–16:00');
INSERT INTO `brava_lang` VALUES (430, 215, 2, NULL);
INSERT INTO `brava_lang` VALUES (431, 216, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/k0uojks59fdrgfrtte2ddij8c8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Ehf0TBM6hK7yXAl3fv1UyKMbA0m3sO2OJgS1EjRN1qWfLQPkzknAfPgFmOD6Zi9PAsjQ4nyfDnPRuOUxLd7sAmJRAjGGKC1ptG6eSkGu99BQFl8F3xP_wgE6AQNoCDAEdVUszJLFs1a3GbkevuizKdtH9Kavgfghkaigel1dprzap-P1QmdEZG20GkDg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>8:00 - 23:00');
INSERT INTO `brava_lang` VALUES (432, 216, 2, NULL);
INSERT INTO `brava_lang` VALUES (433, 217, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/jvpesrpbvcoj84v2gtcn9hh550/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Ghpw1eK0e45HeHDtbHVTHwZrqCUL3E_XUvq47SDPsxnzkpAqpO-gqmWKw4mQRJEw3gEAIGcv2fS_DsjLKzfvPMFIK0XfLrBv7Bq9t88pW_oqJBi7_Le6--eTdLPIm6DTIZafsMZldaEHV506A1NuvnBIXFLsoHSQ_RqiXxLnvC2-ghTrpQUtyAUSoS-g?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>8:00 - 17:30');
INSERT INTO `brava_lang` VALUES (434, 217, 2, NULL);
INSERT INTO `brava_lang` VALUES (435, 218, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/scsgika58pnd0m0pq2vjkeccqo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HF4PCVq8hxNsGNQdwAtx-eM2oqTFwWyv7kTEI3TXe04e58HX2OBSJdJX6nA7ZhN-SQ2jFY-3UUKlBx-IdWPDa1Onqd7fDVORCoAuPU2e9S_iJNqmcmLvGs13MJ-0jXmyiSKuuNdPpDNoPqCPteAdA0Se8Dwj_dGi38mP1nLytXBEEKhg045_-RWEsW?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>13:00–23:30');
INSERT INTO `brava_lang` VALUES (436, 218, 2, NULL);
INSERT INTO `brava_lang` VALUES (437, 219, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/9o1d7t2tq4071jsor2vsg95bao/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Gmb1jufqcbyzZXh23UUPNArI5Rw9VH9_Y1xbATYDt0rzAxFROCOuq7IqAMQBM9Qw50IkDoTQ4nnezWzKFLsCSsYpFIwHpHEVGRh-0n8hEHiYUpi16RMQI3IiP7gqvEusiKbcVgHXJiKEzePaSAYxMtgI3i8_sb5OpPRM7MLMSUbZu5N02OvYMObe-9?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Abierto de martes a viernes: 8:30h a 00:00h<br>Sábado de 9h a 00:30h');
INSERT INTO `brava_lang` VALUES (438, 219, 2, NULL);
INSERT INTO `brava_lang` VALUES (441, 221, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/s4aifpbeh36tvormmmb53s4h8c/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H9qL9eQTLTgMqZTp2TAGk7N_p3p79F55CikVSVG-KXSMOPZiJOiBkgvD7CXJM-atNqsLKkmJuodY_Dgo8mvuwDQT7WZo3UjYljQqY4GnAAghDGJPYb7l18ZnslOPWgtYox1Dg7JhLXZAjL5BQI3GgPbTG1k9A7EI8CA6oU-5fYFppZJnFJiSHZLTGyl_rZRBkOYM59OEBlXWshszspvMsR7VgcNaaIzV9E?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DM: 13:00–16:00<br>DX-DJ: 12:00–23:00<br>DV- DSS: 12:00–0:00<br>DG: tancat');
INSERT INTO `brava_lang` VALUES (442, 221, 2, NULL);
INSERT INTO `brava_lang` VALUES (443, 222, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/23iqqedkim6tro5sto4j5mkem8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HtWr-OAHLzdqMKPsCGr4epPzeEhz7uDF_qhbEKw2V0CM4sDwsNbSwMSpjDaNtF5WxHOOqZlCj1QARz-5-eUdwBRq7mSB4hDWGW6stnJyRIbbUqzDLXjQrkeSU7tr3XDwXcaz3R-SvU_1j21TP-rcFZyV0PeEOhISi4Z2nzzwC_QUdZ9SEzBTJc87dT?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (444, 222, 2, NULL);
INSERT INTO `brava_lang` VALUES (445, 223, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/7sot37c7f5afcqf7bldck6b1c0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HhTkQ17lMXuKCz7svTqX3118W6bIEuMPkhkSZAP3QMCDOD8oOU9pgbASXU2wFcg7cZg-zASLG2HsGbsJUP4mQWvKkFOC4yStfch4X5b8sz3guFZdJsRoeyotHy9hlQEw61f6SmE57TsS6D-M5VevoaHDtQSJQcVVIPNxlmSYbWwan3jkxlNG9pgEn7?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dg-dj 12:30–17:00, 19:00–23:30<br>dv-dss 12:30–17:00, 19:00–0:30<br><br>las mas bravas');
INSERT INTO `brava_lang` VALUES (446, 223, 2, NULL);
INSERT INTO `brava_lang` VALUES (447, 224, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/2ca3velf6n3aelcl9vggfldr2c/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H6oqrj_ygT_Ixl6erov8LyMtiWWqeHqr5d7Is7J2FnKLeE2STTs0WIbxXvfLnar-l4PERUu_u3gotfv1fZXN68WXTfX-I6Pv7g804juzcCKRRinOhWj-Zpr0jQ00fdu6yhdI9KlODimniJmzF1y3oHMlJpH63IysFI7QdLttLuz3dqfm-XwYDgmA5I?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>8:00–0:00<br><br>albertsantasusana');
INSERT INTO `brava_lang` VALUES (448, 224, 2, NULL);
INSERT INTO `brava_lang` VALUES (449, 225, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/lcuovk6kvggs3fkdc1c4l4jqrk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GtEiA_fcVSvhpQefemy0z4Cu_fD6WW4DXPfLZHSyJJ50L2sdDOXhBmVR4zB2sZovogMYUoOkO3WL8e3E7FF2FLs6IE8H8CjN_RjL2Pzu84UFw1lESJnI1IlUyhI73pQho-FIZD4ofp3g5e944dcYcTLgHnPRIhR1rvc08RVd5lwumxI-OwamUrin5h?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-ds 13:30–15:30, 20:00–23:30<br>dg 13:30–15:30');
INSERT INTO `brava_lang` VALUES (450, 225, 2, NULL);
INSERT INTO `brava_lang` VALUES (451, 226, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/g8fppulc4ef7m83vqmu1ilpplg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HpXIDmo1-QqXacrUX1upgaR5CH0iUYFnhm5Cz7yjRwR5FfnzZn4YGM93Rts10d24OrZ-XqVO3IeRUx0pcKYNgAxX2gCBfh7-fykf8o5iFnh99s4M_0wiXOEKzG7tZJ1RKrdEgiN6UQDbSin13W9mjZmXYXzXT35Pe6mXnGXYsrfAsUrAWPmTNnvfa0?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM: 20:00–23:30<br>DX-DG: 13:00–16:00, 20:00–23:30<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (452, 226, 2, NULL);
INSERT INTO `brava_lang` VALUES (453, 227, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/31hrniqadtgo4hp3scia49hsno/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GZBSDeAhJ2lbB766-LnL42OafwdpGancwlAOnRgmJrg5guqO4aVN9rUV00T0tSqAlVu8VR_0-DB5E2gCw5Wz16-IWZNjQfLP1MEK2Uo2yzQN1WopiHWvlw6Ki7GqmWioUEfPBteb5jCmZa5J9msbv6mUiRyDB6c3ZLUfkIER_zY1Y6N7TJSO-54UHd?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dj 9:00–16:00<br>dv 9:00–16:00, 21:00–23:00<br>dss 21:00–23:00');
INSERT INTO `brava_lang` VALUES (454, 227, 2, NULL);
INSERT INTO `brava_lang` VALUES (455, 228, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/rkm2ub7pbktb2cqe4g2dp1fim4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ETVmxM59WRl3vj2h_SIUM7BJ8RIuQ3iwoRlfad2pA3xcBH-6OYzildIOMxEtMnC1lyp_qWlJsdjSRMKqd9v26raq_ABmEZmud8j0k_jTtBUjgMPs6ocCGj_iBfhAc11pVTl3tI1umplPu-U_ZLS7fLJBKRedRxGW_6aS9ZsFc6SM_h8Z4SP-G0lqbA?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DJ 9:00–16:00<br>DV 9:00–16:00, 20:00–23:00<br>DSS 13:00–16:00, 20:00–0:00<br>DG 13:00–16:00');
INSERT INTO `brava_lang` VALUES (456, 228, 2, NULL);
INSERT INTO `brava_lang` VALUES (457, 229, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/8eeqcojh3953a9q98tpspuv9e0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EmyMcnGuNZ_nBO5ft7d0ukZbh4HFWlKTET7qcdOCOfT7wrPe4OXYv4haitM52YrL1AwWxPm9TyKvzqrHy3Xs9LaqAnGlMiJse17kVHd1TxURqqxeq6l2ZBBiDfhAtSVSsJG3W3Dee-NMJmCclqG4sK_oWOceVTcCGGcYthx2RI84OwVyHPNN1tq6h0?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dx 13:00–17:00<br>dj-dss 13:00–17:00, 20:30–23:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (458, 229, 2, NULL);
INSERT INTO `brava_lang` VALUES (459, 230, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/cafo6q0ec6rss8a889u67qv58g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-G2-YaFVloz0wvuL1PlEE25-828BglX8TbFBVIvcEUmUwJ82zjCPaGMvXihmedkadjdxkccSzPbYZx4Nid4sHNNvevsSOL9SwEoeIo3D1ei_PQYquQ1tsAFe946cv64FFoPxVXd9ZPgq6kgKDOEIArVhmF3aDg7PXIdHnk3I4MI5H4Z5JLrBx_OY7E8?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS: 13:00–16:00, 20:00–0:00');
INSERT INTO `brava_lang` VALUES (460, 230, 2, NULL);
INSERT INTO `brava_lang` VALUES (461, 231, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ12ez8EqnOh-YUoTp1Ck1ezpnM0mpTZW_lUpY9RuR7OoP38mqZitnloWhR9C5bpAa4jhVj-PkD4NaeGEI1ode3Ssv3qpI50U2Wipruj0xfLjvsXPYKyBEAkROukVEj7A4pjkALVADuV1sXp80061HaSlIUiHZF-FYOJM4j_3KEtSFxtc6-nPEfB7DUA2pbbhShvHGw0FJCy4Ie9uyB21-Qz2mO-Qu9CaR624zG0WIUoq4sY5fU\" height=\"200\" width=\"auto\" /><br><br>Carrer de la Rectoria, 15<br><br>DM-DG 12:00–16:00, 20:00–23:00');
INSERT INTO `brava_lang` VALUES (462, 231, 2, NULL);
INSERT INTO `brava_lang` VALUES (463, 232, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/7uraeke2ck7q08jrgh8u6a1mnk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EWQeGCIdGDPGjbvpTtR_VQ2-vcjx9phKvivsszD8vEDqt7cQg7Zmvqg0clSBt9fN0FYClfkOdDq9yKGVB39Uu8QsYa_Q4t6C27iYZUg63U6U2qQv-XsnFZEC6dsEs-UgTc4unoA-M8EDrxC_6ZrFo382rX902mTjj6fmo_9V1EU9Zl32TBSP8S78Cj?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DL-DG: 13h a 16h y de 20h a 0h<br>Horario de verano (julio-agosto): cerrado domingos de 13h a 16h');
INSERT INTO `brava_lang` VALUES (464, 232, 2, NULL);
INSERT INTO `brava_lang` VALUES (465, 233, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/6nt19il8lb8sb0fn5o2msk3ug0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EM82Ez8J6vRVN2cJruftI9fVMS1Y6JzD69jvE7wVXCdw46bTRb3fDWHtXF2KpowhJ5oNR3WACamwl484Wi05agb9R9M6QunmX8AC2CYBlklcZW9aOO542IQZgZ1XWsEex54akFfxO1fYmXOC8eTgvNStQJC6946R9IGwUxAkwitKP6tDcfZmoiu_Ay?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dj 11:30–16:00, 19:30–23:00<br>dv-dss 11:30–16:00, 19:00–0:00<br>dg 11:30–16:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (466, 233, 2, NULL);
INSERT INTO `brava_lang` VALUES (467, 234, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/i5p0me9f8rg3rd5ubdgth60bpc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EccDxP9goOpn4IrPF_FOGVTiYOMAPVwsw6fQxPb_oFMCr8LL0MG9WDj92EYzjps9Oxs7PCmYFOvW4seXzsRnWchAi21T48t8XvUgsRiF7ZUDPYYaTq8nrdDQtnADswE-0guceJ3CCQ25QxhRGXdZf3cjPkDVt3qhsuIZg-xxaOq_lazIMJxnHaHbLK?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>GastroBarna<br><br>DLL-DJ 13:00–16:00, 20:30–23:00<br>DV 13:00–16:00, 21:00–1:00<br>DSS 21:00–1:00');
INSERT INTO `brava_lang` VALUES (468, 234, 2, NULL);
INSERT INTO `brava_lang` VALUES (469, 235, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ3mSlCUU5U7k25agFeaa-P7mclRKA0R5FW3VQnmw8Wi5TQDbp8ed4si0UuRSxn1CMShC-vIY4fb4eZb8qurzMigjEN8uF5q9vcW01hAsbSe6LM4D0TM0lgzO8RszEIp2WHBHM5cB7K5XJYZBxzbqkQYfUst4TXU_fojpMRHc0tihzZgwMWds6l8LUGv-P4swLCac26bkBvxqqrr9OaG20gTwOUH6QhGDux5mWy371RgGWL0kQ\" height=\"200\" width=\"auto\" /><br><br>Carrer Mossèn Joaquim Palet, 5<br><br>DL-DG Tancat<br>DM 13:30–16:30<br>DX 13:30–23:30<br>DJ-DS 13:30–16:30, 21:00–23:30');
INSERT INTO `brava_lang` VALUES (470, 235, 2, NULL);
INSERT INTO `brava_lang` VALUES (471, 236, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/24hgur93nt2d257lp25akbio74/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HV3vmQQzfCO8uxThV3tjV8j0OS-9uc9Cfh_PkcTvgAla1LT0Z5OmNjubR0L3I_Gh8TY0zu4LccGeQB4A6cUj0IZy7waW6jLTAC4kvVM5QHkHQGiBc0LDLaJLkV2Hlu-sRWSTxyj-rL4DBayHTqCFmpexX4d8oCrUiQ9kzkwqwcyMEPX7zBPUSPRKh7?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Ctra. Reial, 54<br><br>BAR:<br>Dl-dg: 8:30 a 17:30 h<br><br>CUINA: <br>Dg-dx: 13:00h a 16:00h<br>Dj-ds: 13:00h a 16:00h y por la noche 21:00h a 23:00h');
INSERT INTO `brava_lang` VALUES (472, 236, 2, NULL);
INSERT INTO `brava_lang` VALUES (473, 237, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/c9belqn6gcdgad2hpjnhi7vfbg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GnnjGySAjtQB7rc-z_2QIW47u-z8eCweUnocl-R45QsgtzQV4WfR16Evqw0ZfabziN57ygfTPva6j8lEEAweX7ILIqK3yGf3a6b6YLw-KozO6D8DYF3aaV-7CeWkASvcHxHcAdsU_SfIvKPHRDEye7GOmCzal-R64p-rDsPBomgZDrx7exkieva5T7?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dg 11:00–16:15, 19:30–0:00');
INSERT INTO `brava_lang` VALUES (474, 237, 2, NULL);
INSERT INTO `brava_lang` VALUES (475, 238, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/pqan8nf0s9dlnjragejajjug8g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EHjfXcPhrvwkXVWEU6BJ1ycPlHMnjnUN6DHl9amU07k7cansJ0rtXmhLD7iGnPGhLx27DS6mwj2RR1ttlL-B8LRcEWPxRAn63cJWotXVvcF34rOGK1nmy3T4L-1D0kcXVtGNoV72i9iyztOqfmNLU-LM-VdqxUU7HwGsiH1JZcMkUbeUlDUo0-TNeO?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dg-dx 13:00–16:00<br>dj-dss 13:00–16:00, 21:00–0:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (476, 238, 2, NULL);
INSERT INTO `brava_lang` VALUES (477, 239, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/632jno1bdmi3unfurvcdn66rl4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HQu_ABUdr9tLaI2c6R5u5WlvPTNK2GHIYODo2OxT4j7BMjDLhDtBZSuEzFKmQJxaiCbzAY0I_CtVuZ26YSQfIClJJt1WsqHLDhrWHqE-KRIj96roxYlkAQoIsWZnsGRGHAfFCqgii6G-wl8HPcCBNiokrOM4LJf50qFpoJf4QuzmkvxQ6TkCD-Sim2?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS: 13:15–15:30, 20:15–23:00');
INSERT INTO `brava_lang` VALUES (478, 239, 2, NULL);
INSERT INTO `brava_lang` VALUES (479, 240, 1, 'Carrer de Pelegrí Ballester, 19');
INSERT INTO `brava_lang` VALUES (480, 240, 2, NULL);
INSERT INTO `brava_lang` VALUES (481, 241, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ3B0FB-02RoE3tLwJru3eNQKVFUbtVdiX9ng2MuEIAypmOSkQlu4eofle8oRMEHsB85efi3CBor65iUhuzFz_D8uFZx2CycEGD_wPMw37myjH57ua9tT1oUIZyAeRinVduBiNNI63eG6uExSeNYUfSJJA3Nj3SRvHo0KTgCA7-MgCa8ZPZtIRwIHL9_07c4149CDvIsSIBW0psu5Iz8ky1k3WhmWgXt2jdbQejDmdTbF9rGLzpOlA\" height=\"200\" width=\"auto\" /><br><br>Avinguda de Pablo Picasso, 12<br><br>DM-DJ 12:00–0:00<br>DV-DS 12:00–1:00');
INSERT INTO `brava_lang` VALUES (482, 241, 2, NULL);
INSERT INTO `brava_lang` VALUES (483, 242, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ot0ivfs5do66test1n7fa4t8mo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EDlKg5BGN-AKwPaZ8PEI_VAroAkwmzPdIt5GCM2E98cVnmY6ukbS49k8siNpV7Q9GHaO-VZb8Lh3KEqeqLgbLoX3kHcW4YzwkJy22_5he_v3kkq8xpH4vOlAqXbiDe_yAGa57RXEpopNzDukpGgC07AEu7-T6_5IFMwGo5B6HqxQ88q7iA8tnCO9OC?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DV 7:30–22:30<br>DSS: 9:00–0:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (484, 242, 2, NULL);
INSERT INTO `brava_lang` VALUES (485, 243, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/9kg5tuno6d37rv8ravu3ko5v7c/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FLgzfAYHIDYqpEEAZt_7TOO8Qec7s_0sOEx0cr7gHJUYbWCuQ1p6t-xbUHsduVBiEQZw1lp0-jX92pd1gFLyE8xBdXk4Wja8IBWMUYYRooJo6XOmR_B3Tyo_Bequ05xz3caCopoxkYw9wYG3KVM6Ug7KHPHBrmzO5S5MswTJUuSMJwHPRqQBCOENu3?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>Carrer de Ramoneda, 40B');
INSERT INTO `brava_lang` VALUES (486, 243, 2, NULL);
INSERT INTO `brava_lang` VALUES (487, 244, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/bbl94u3am3nlfs00253gh7r69o/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EeZqxrzudXJnPKk_oJALHCvy0ogKi6QxpNzfptLNOJH1K1ll4OwUzZmJCvS9P7uAt60igK89_PfFJU2XYFtzwGjiJDm9JHaIDemVBQRlsqthJLm6EoojR7vt8qoJZFMSOhUZ15lQJG-v5gO8J4BP81pfo5Oj1seqGcKzYu5sNhLrXmEYZUJMvO6G7-?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>horari?<br><br>itsilviamn');
INSERT INTO `brava_lang` VALUES (488, 244, 2, NULL);
INSERT INTO `brava_lang` VALUES (489, 245, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/kdpbatk7rk5sg4vc8sa0s4aa6s/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FXNXAfo5nMYZLMKFyCrYYyU-6GFlBnnCx5fetwrO_TEuYvXXr7qq9NjU7V2YmpSQhM4jqwBZkmiccaGsH3662lvtdDggfdQL4_WYXiQ8ndpZWtBlwg_3wGKjgBienVPoA7N4pY4W8QJZBdt8ME6IXsXE8KEM7G2M9WY0I_2nXKYzwiEJ7yq5v6_ie1?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-ds 12:00–0:00<br>dg 9:00–15:00<br><br>bravas bcn');
INSERT INTO `brava_lang` VALUES (490, 245, 2, NULL);
INSERT INTO `brava_lang` VALUES (491, 246, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/2mccvvkl3cu614d700kau2uehc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Ef7b4SXtkFCAhS0Wepm1e9PWY3ViYHZhQjP3rnBUDeW1MMf7X_IVDD3bjXu0zSwWBVh8c2zXuPwodDLIoe7j_JcaGXMWlGb-BBpghiVZkJOeli-K8njJcOl9ksbsF0nl7b4L5Aho2O-tuTg5AIFSBQ4MV7ifqnnIGP7bUsxMcwbGZoUGFZRUQCxckw?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>9:00–17:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (492, 246, 2, NULL);
INSERT INTO `brava_lang` VALUES (493, 247, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ33qke-k0RMAnCsKzdSbJXvilIbzwxRPMbJy7VVw1ep3gmxmbSsMo2MceY9ve-qoQHcmweA8TWu-xoavsFWlln5Ich8mE0qlNWc8kgSUcABuRqyw3EC7CeEb_Xhch7n64V3nIG0eidhRhDkKZY8TZ2J4-Y_ZwICuVVdUXVIEPgJQ1OC7KzTdU0RcXAM6N1qmNK_Dj5yTKWjQsaY7Smfp_J51OrksvuOUAFCzXClLVXdxvpDHg\" height=\"200\" width=\"auto\" /><br><br>Carrer de Caldetes, 10<br><br>DL Tancat<br>DM-DJ I DG 8:00–0:30<br>DV-DS 9:00–3:00');
INSERT INTO `brava_lang` VALUES (494, 247, 2, NULL);
INSERT INTO `brava_lang` VALUES (495, 248, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/35iikqkc8s6t37hph7ebj1oip0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Es9O3Dna3P3lJI7CSQALZXqUeKllIdsWqoruacDn25BbhMXJOAD0CMDC0H1HjzybzsMFDVoqREyE2MklkhrnmKSH4XjwmR7chLUGEA_yateZMqvZEWgbsCX9mXbzg-MJ2RY5bl6Wh1TI4Sdwnpe-BXm1pIYh_UE99TEU59LeLlm1NWmsW8hQjDj-nE?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll 8:00–11:00<br>dm-dj 8:00–16:00<br>dv-dss 8:00–16:00, 20:00–0:00<br>dg 11:00–16:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (496, 248, 2, NULL);
INSERT INTO `brava_lang` VALUES (497, 249, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/2k307iaocd4codotldsi06m11k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HMVIStOUM3Mpn293-O5tVTiESo_gleBWOMXEg3BRNiOLK8Q-n-m0vfk2xPlEc1ZV_H_jXkP4Z0QQVs7sQUZn4Cr7bnX-Krk422_QP7jYJVq6cSMyPr_-DOBc6KcyA-6wTwes3OhVSBQnfGWuWva0w3Hm_oesSuJOPBo3oaSLVs6Jq1Tnid4w8bKrFV?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DSS: 8:00–16:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (498, 249, 2, NULL);
INSERT INTO `brava_lang` VALUES (499, 250, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/iebrovqhl54cgc5t9mjl67jv0g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H6lOnIbs14BIFygjz5lxscfJJMCxj22nfTgQXHpcOIG0exQ_sz9XA4TCPFIb5AGqlpzVfmp-x_BTBNKROzhzq3zAYwBnY336xy9FyFanFXviS7xIJ-zPUhGQDLEzteHu4EB2pZMaS0qLuZ-sV0Bw45HMbMWGwhQczBPOGmHOPQtFQystR97I2qTZ3L?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DG 13:00–16:00, 20:00–23:00');
INSERT INTO `brava_lang` VALUES (500, 250, 2, NULL);
INSERT INTO `brava_lang` VALUES (501, 251, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/12v1tpfvm7apoklousd4fanl2c/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EcyeVHRzBntHkIDGOYFdKBpMCPa4bKgYWhboZG8SfhBni9-Sb_16Bmo31EfVPfikxRHVUESNkgq39WrqqxXS7HMAwFanj2fKW-nzofRJGmWssMalhFTXsUraiOnYLTNpz7EcDV1H955UKakcFckRp_Hald22b2wuPlx2PbKmRKncYpjH-I2lbniV3U?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DX 9:00–21:00<br>DV 9:00–21:00<br>DSS-DG 10:00–15:00');
INSERT INTO `brava_lang` VALUES (502, 251, 2, NULL);
INSERT INTO `brava_lang` VALUES (503, 252, 1, '<img src=\"https://lh3.googleusercontent.com/umsh/AKnoyZ1X8FoYkdULn5WYmOnzCpZNIF0OiYY54nDxHvYK89FNn3rQprErRATonLGQ7LhDrU8fEEtEr880cHBKavfqQpU4TGLga3rrL3yfUP375BVbmpns5-cPx8d6LX8SG9JItCV7VvjeiJZlFIawOojmi8luSbpgwdTFXvIFekLG-A7U3FdC0NIHbY3R7dO6cm0\" height=\"200\" width=\"auto\" /><br><br>Plaça de Catalunya, 39<br><br>dg-dj: de 09:00 a 23:00<br>dv-ds de 09:00 a 03:00');
INSERT INTO `brava_lang` VALUES (504, 252, 2, NULL);
INSERT INTO `brava_lang` VALUES (505, 253, 1, 'Av. Torre Blanca, 2-8');
INSERT INTO `brava_lang` VALUES (506, 253, 2, NULL);
INSERT INTO `brava_lang` VALUES (507, 254, 1, 'Carrer dels Forns, 7');
INSERT INTO `brava_lang` VALUES (508, 254, 2, NULL);
INSERT INTO `brava_lang` VALUES (509, 255, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/m27882bh8psc90fdtn335a42js/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HEi6VlNbUV1t8iA3ZHrYVbwhCaHxDz1HaRMcruefZh-P8sTx-Zg2uAHKh8fpsn75i7jBs3PKq9_ib7yYyT7DUmc_ucbIj--VE6x0gjdyUt-L8eC9Gpe8LQufjZ6Hrxo_BNOmSskglb0e2iOKhC7gFPWLBHegTpV7ZHAOX7aAcusYQ6pkrzIvxwdIDw?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DJ 13:00–15:30<br>DV-DSS 13:00–22:30');
INSERT INTO `brava_lang` VALUES (510, 255, 2, NULL);
INSERT INTO `brava_lang` VALUES (511, 256, 1, 'De dm. a ds. de 9 a 23 h.');
INSERT INTO `brava_lang` VALUES (512, 256, 2, NULL);
INSERT INTO `brava_lang` VALUES (513, 257, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/iafk9nclns54jfhtnp3a19lr1g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F575cxWRSEYKt_htlRcG5gVGu_5z5swnaKwKePocDRF6yAZwt55zPQivniyZXPaazbChdArO5boivG7BmdsdKknZ407zDencYkOZ4ZelSO6FbyjyzSlFe3PaJwuyN7pNJ5iuvPk9NJ9f7Gmob4JmT5x_7_WCrEPwLDBIsz6_KPzO6SsLdQqLHWUzEL?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>EatinBCN: https://www.instagram.com/p/BY_kmUmHctW<br><br>dll-dg 13:00–1:00');
INSERT INTO `brava_lang` VALUES (514, 257, 2, NULL);
INSERT INTO `brava_lang` VALUES (515, 258, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/hm0f62shm4fdbm3vg5pbe8tc00/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HklD3MEs41Kcn1OtfTBO7g7rhHMV24t8Ibj4PNal6285ypMfGwQnWD_J6x2QJ5B4EltKmyPuwq9RhCf1JbYlr2cpAOawRMYwEfvKrYsD3XjBf5ZmviFp_Hdygef-whhzVCjlRCrGVlEYmFKXbdwWutzg1QLMqOMzZkkGrmo3Sm0rScokX8yi3JcLO6?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>MariaBoines: https://www.instagram.com/p/BYlqXWjH1TX<br><br>DM-DSS 13:00–15:30, 20:30–23:30');
INSERT INTO `brava_lang` VALUES (516, 258, 2, NULL);
INSERT INTO `brava_lang` VALUES (517, 259, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/2pra12ld1sms1g35k4hrc3cf2g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GYt81LXQJ_Uuqq9Hk5QdIhjIXjmg-oHVqavXoE-RTiwapZz5Jfvn1m-7w_hhPmwhXrd03M6kwm2BA7JrOKJsgh8yY4-TSOv2Rc7zyuDDPAl00Zxxz5p14564curoj-871UMUdMPOBCOsrHNFOeBphLO7YQSAs47npu2vyG3T_5YBAmJfGZMsKbbY19?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>PatatasBravasWorld: https://www.instagram.com/p/BYYK0Pfg-pe<br><br>DX-DG 13:30–15:30, 20:30–23:30');
INSERT INTO `brava_lang` VALUES (518, 259, 2, NULL);
INSERT INTO `brava_lang` VALUES (519, 260, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ngk64od61di8fphrj8h410t61s/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hq11xAlMygr3gx4vqCDC8mbZxLeb-58XXILfbmmZusn_kTaQDPCgolYMeVmFQXA4Lh1pUnfIroUKTbvBFxacbmJRPHGwgmMaOPxkG4KajqYxqShzKfTMG0CPQQaMNdz7OPcdQvP9KTwCDarWgEHaKFclLjwK44uLK0OoY76mSDEervJs46SBrUIH7n?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>PatatasBravasWorld: https://www.instagram.com/p/BYVrk8CgFBL<br><br>DLL-DG 12:00–0:00');
INSERT INTO `brava_lang` VALUES (520, 260, 2, NULL);
INSERT INTO `brava_lang` VALUES (521, 261, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/3drlcirqou1pt6hlgtt7tfvsag/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EsYb7zvvnEWLCc9rYbeAbTST5ETeMj_aTry0MDmBBfKdabqsEYGbWmAMYoa0HHNj4fcYRlPrhakGiwN3AaisxAlmoDPYawyCr2SUb6esEIOrB_4SG4HlRWSmcHlFPAEj1QebwxQM2Nw3DqnS0KpVIItYxRYmVhkX433_JNrhTig9z7P9lCigYLP0Oh?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>PatatasBravasWorld: https://www.instagram.com/p/BXyRoRvA3uZ<br><br>DX-DSS: 8:30–0:00<br>DG 9:00–17:00');
INSERT INTO `brava_lang` VALUES (522, 261, 2, NULL);
INSERT INTO `brava_lang` VALUES (523, 262, 1, 'DM-DJ 6:30–20:00<br>DV 6:30–23:3<br>DSS-DG 7:30–23:30');
INSERT INTO `brava_lang` VALUES (524, 262, 2, NULL);
INSERT INTO `brava_lang` VALUES (525, 263, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/c9man84c98mm92jnfbrhffvu04/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HYqNvnRvpziP_AXOyfGJ44CXtEm3cRwItP_113HMCG0LeEjRABrOV1TEiCVvtOKbGpeyPDmkJQUTVS6yTwcE5QlNWHPe4XgFLMrnOVcnI0wGY8xEKTrY0zeuFCvDN8rjO20GJtnLvzarGMpb-fdH2wMIXNX_5lma4r0uEq0zLSbWqyfMTp9FgIk3XF?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DV 7:30–22:00<br>DSS: 8:00–23:00<br>DG: 8:00–16:00');
INSERT INTO `brava_lang` VALUES (526, 263, 2, NULL);
INSERT INTO `brava_lang` VALUES (527, 264, 1, 'DM-DJ 19:00–23:30<br>DV-DG 13:00–16:00, 19:00–0:00<br><br>BravesBCN');
INSERT INTO `brava_lang` VALUES (528, 264, 2, NULL);
INSERT INTO `brava_lang` VALUES (529, 265, 1, 'DLL-DG 13:00–16:00, 20:00–22:30<br><br>BravesBCN');
INSERT INTO `brava_lang` VALUES (530, 265, 2, NULL);
INSERT INTO `brava_lang` VALUES (531, 266, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ftc265t9977kavuhqf3pd08ev4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FAfZRtj4wFZc9nu6wBIYhyRLWKHzCvQ5XICDuXSnZktl0uizoW7_pj1rEQSRuExtyRuY6rrERmKfmsJLVwRvHzygmPwGaiw9jo4CU599LSbtc4zHkd8jXDbPn7v879i2l2h0kgU_2ZYvzTyccVMInHVJzIAsBsPYtgqil6RVYHHbYYhdonuKy4o879?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>');
INSERT INTO `brava_lang` VALUES (532, 266, 2, NULL);
INSERT INTO `brava_lang` VALUES (533, 267, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/2ujii9o1q3tibhjpbh31pbnp9s/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EYUn0J9l8JatNQA_kZraiosaUrPLOj6wEHfVMAWCuFOUV6HFZMbUPWNPqUx1CRzbPnkpVNm3hOERzUaQEb3KYPKCSTjb9BUkQijN4xaJ1E49c57IGapFu9XqxIAfsvKFJ7xn9toYw_bLWqApmMrs1oPWFo3pe3dky1gKTCjZUty6zOXHjgeRR7tRIZ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dm-dss 13:00–16:00, 20:00–0:00<br>dg-dll 20:00–0:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (534, 267, 2, NULL);
INSERT INTO `brava_lang` VALUES (535, 268, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/r2j1n5a7a3m6u1hqoik56hj37c/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-G73lmvvL2FoACRhYhj2Z4jrB6dX0hR7ZAfxQkdnFQ1wpc5M8zji5WcWt6a3PfzBHEDjH3XU4xqBSy8ITOf8AKjGpxok4IZPPia0b8WdpL1hyo1IFEF3UpMw31O4um76u12qISdZB3RmOIndgIA6ivjDmmMuS6_Om00cpXOqMxa7x3S4kIR0SgM2LH1?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dv 8:00–0:00<br>dss-dg 11:00–1:00<br><br>patatasbravasworld');
INSERT INTO `brava_lang` VALUES (536, 268, 2, NULL);
INSERT INTO `brava_lang` VALUES (537, 269, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/hu82d9dct6o6m9be0ktpi2tva4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FG4UtUF8mtZI6NhRA0IUi-cbgOE_1tFtdNSEiUTaMnQUhy8NpYL3SL-m8UuQvzlwsqshqMavmkpcbCeJ8UNnjt6dj4neBfQUvO3YESoEvgBhJ4PTFVZYBN0wlg6figUXvcgHS4cfyMxxmUWhk3m_e2O8kLt4HGRVbXkjXRhDGsEQaSvYkHoep0EzFi?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll 9:00–17:00<br>dm-dv 9:00–0:00<br>dss-dg 12:00–0:00<br><br>viajeros glotones');
INSERT INTO `brava_lang` VALUES (538, 269, 2, NULL);
INSERT INTO `brava_lang` VALUES (539, 270, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/qad8641tdaso7r2h48eb31af7g/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F7shEM38pXG64ioWL2ARoXledu5v-lOM9ZrN5qRV7aQLtz8uEZ2GSE5sBCmNjGP8czMEyd25bcmgtndbc5rycLBIFggC3RAKq7WysEm44jBB1EHZ9n_kqxMDVCsEpi6pDaM-M1DOFAAEWpUmILwkJ4nsH6nwipCkITkQC7tzWXtzRJnvrntVHsqtlU?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dv 19:00–23:30<br>dss-dg 12:00–15:30, 19:00–23:30<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (540, 270, 2, NULL);
INSERT INTO `brava_lang` VALUES (541, 271, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/rgnmn1u2dejaf3nqho47gj7o8k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FxMMatnOIcD1M9ZQO2HTKz3FQ0FHbzk9mC2oYzwTJYKjidNQzgwsZiK4lwFr7IW2hGzU4Xz_BXL0AuA_xLLzOA9T9u920s7CHdMifMvwGEtHu7j3fX_WvB4gNSjgWjgwzqx1R7MNYK7CWyks3VNwnjvzJ-osMpvqaW1Y3QLJBjO8TBloffigfub3-E?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DG-DLL: 13:00–16:00<br>DX-DJ: 13:00–16:00, 20:00–23:00<br>DV-DSS: 13:00–16:00, 20:00–0:00<br><br>badalona_forever');
INSERT INTO `brava_lang` VALUES (542, 271, 2, NULL);
INSERT INTO `brava_lang` VALUES (543, 272, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/l35ssni5c6b65nq1rlumfa02u4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HxuUvmNW-rKvBVw8BNH03D-3R8fwWn8kVqb5TvwpKdrCiNqFpgtwoKcU1WBwr-nq0zFuf8vbCi8iwTN59uBsLL8qHyI8RUQehUH4N6rBwLpbb4EsPiovrItBso9j0l3Hfsnj9XRUs-sXfr6EkFT6G4x0pnYBsN7fcg8P7vu-ahhqg37lGbWZMM0NMk?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DJ: 9:00–17:00<br>DV-DSS 9:00–17:00, 19:00–23:30<br>DG 9:00–17:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (544, 272, 2, NULL);
INSERT INTO `brava_lang` VALUES (545, 273, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/vf14k1aiebg2lrcj55p22va9ss/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GR-p3w7XryUMerA3CMFMZaW0OXK0vZbRQDHHvw0OWbyuWdJszmoz_rVkuzJ3a3EUBdcmA-e1H9U-ig0BHXR9ddNQ7fUjs_n-AUWkgZ_WRGlVj7yVKrvTR-6gy03WV2mVGW7YKbjBfUujDKy_MGT2lzXQ_VNvf679myhPVASumaj4lKRjbRFdNsaJvM?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DJ: 11:30–1:00<br>DV 11:30–2:00<br>DSS 10:00–2:00<br>DG 10:00–1:00');
INSERT INTO `brava_lang` VALUES (546, 273, 2, NULL);
INSERT INTO `brava_lang` VALUES (547, 274, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/smlj6rcl37lf7ajcu9o9c0hf60/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GwrH4kkie9hOkR-A7IQC-e1Mmbi1AWS7bd97avc2NklxbuU-40xqt7J5j-zuIHF4gUh5AcyRNfbnX2n1ak9_IX9KxYWZ28dcUXJo9vBP6kuh6hz83PbUAxbjvNzMVpDeISHr0GjnRue2g_GKok4F2yAPBfD2xWVWjplyUnalFR7j5mY7VECJmk1_OQ?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>horari?<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (548, 274, 2, NULL);
INSERT INTO `brava_lang` VALUES (549, 275, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/t2os0eqcfi7vvj5656ks727a3k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GdL3ffsxNHyn3QHB94t_Q02rcm57aR_sAi8G6DgdhdAVgxExnrwilnAlRoCzUgAlrw5et_LNFKInEjxfWQ4xSK-QPYfnE2F97m6HDFr1L8sIzvER8TOMWnPhS3C0lpyY6C87or_TtiXYF2ubrIrw_D6kY8LDrSWQsAF7yQlL4IG_X8f2A1TGXJcLB2?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dv 19:00–0:00<br>dss-dg 12:00–16:00, 19:00–0:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (550, 275, 2, NULL);
INSERT INTO `brava_lang` VALUES (551, 276, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/7d2ork5jlpvt75itf6l2kmceac/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HFoaDleZtYHCbDnnSjpSd9VEBYuPg00r0yJHzfhkJUTeNRWoPTjVF0tEoqgz5I16htubu5XEyHdK_fi2jLWoS1Syat4OT59KxbQ0ba5vdFVgk1PRLmFjSbVfUjO3J4q0fOyBLvxF02ubveUu7etPxvsvMaNsK0QI7LUjb4saZUlUZoX32d9tdc490w?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dx-dss 10:00–0:00<br>dg-dm 10:00–20:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (552, 276, 2, NULL);
INSERT INTO `brava_lang` VALUES (553, 277, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/f1cngevjbdt5siet53m7b041fo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-ElgnA3ngul9WTtAShDmdLQDAzbiHPQ2-Lg4cANORwKy0OySiI6hYeHhsKa1Jvlb3hMpjqCy5Pvufc5k1YdbJuqxTQjXCG7Rf92Z9GiGY0uKGiJY-upZziWdfJ9ZAyzbdCmJ2uf88g5ju70kEO87bL_Ww5dqLxMXJ20flcQ-qdfqXjVONjqnUzm9bBx?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>');
INSERT INTO `brava_lang` VALUES (554, 277, 2, NULL);
INSERT INTO `brava_lang` VALUES (555, 278, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/4i8ek1ish921etmgcp38ojm2o0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GA6-j73KQ9-QmCLbz1rZ0DSAy4YHCLMMME200M7rPaWkSkjQzJBqDPKzwarJEoVXYEmZ-hDRKuL9MG5DiHh85CmL-JDsvHkpjvMPxqSOtTsVCXwggXVoZ8UdOFWoyrCRwdHNs-Z0wlcztg-FwWeG31hdV2MCvkG65lH_4JwlgeOGwSMpv7bVIlgm0p?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dg: 10:00–2:00<br><br>bravasbcn');
INSERT INTO `brava_lang` VALUES (556, 278, 2, NULL);
INSERT INTO `brava_lang` VALUES (557, 279, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/44076f0man4uag3jrafg5n0i1k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-G0A_7sDZPRbTtecT6aoz6d_1ktRNA85x0LUEZ5URdzHZd-3btdOshbCFzQ5l-qV-n1wPJKX4Mj6ao77is7adKyNUP8_Lr0WzJ8NPHdLDAsQPdHcejAJy9mJ61tzD4E-1SrqIWkVCWj9ZXk_zx854a_ipoU7Opq5KTYcL48MrT9_LYLtOHwGems1Bn-?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dg: 13:00–17:00, 20:30–0:00<br><br>viajeros glotones');
INSERT INTO `brava_lang` VALUES (558, 279, 2, NULL);
INSERT INTO `brava_lang` VALUES (559, 280, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/clj9f74i047a258gp2b5mtskcc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-F3odbmYysk8FEyZoKEMoTTxKPT1GO0rZQS49EGRGEb-Q_Nl6xHdNaYUdlhDcTgRloEynXkPltPjxrisWOaLOy_pqieibFxDa2qJT57vu4UF8dTn4_Y4oJ8LZ2a5bVzMI7A__MqEkUTq9z0jDWdBpq2MoJKzVEqpcc9dk_oHUyaSukXvHH5CK6zwYun?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>10:00–0:00<br><br>bravasbcn / miquelantoja');
INSERT INTO `brava_lang` VALUES (560, 280, 2, NULL);
INSERT INTO `brava_lang` VALUES (563, 282, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/pvi5ggmgpup5c9ep1tu2hhohbo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Ep9yq9rOiOI2NeqwcFt138zZj0B_A8odECtYWD_7zhFmBiX42hBf2fQPOD_pRRiD9n7-7wuMTDPSlOI-AlEXl8RBjBNtH3TiQZbxpRhzOjKGlNFxAw8VT5SVutSI6T55hAjhrJXrua5Cnv4RLY4EzOJ-ZHrMJU08hWT7c743lKby1QQi0m9sLKmh79?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>11:00–1:00<br><br>bravablogbcn');
INSERT INTO `brava_lang` VALUES (564, 282, 2, NULL);
INSERT INTO `brava_lang` VALUES (565, 283, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/pqmqh2u3h3elmc4ipa5hqui8h4/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GbLS5PelGTmbOenzd5mdgZY72KWv4eX_2RqrkLJTd7C1tZWXIh3adZPXQ6ejrvuBGoiz7UMLPiy9tWcZUdomrm_xZnjq9ynuN1DAZ23b_PJ182gmI8KE70szghPC_zcZlUCfyB4R1gc_KenhIHuCuRyh1-LaOSuI2O5fnZFVcXGTwZngnUgUB630ju?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dx 8:00–1:00<br>dj-dv 8:00–3:00<br>dss 8:00–0:00<br>dg 11:00–23:00<br><br>bravablogbcn');
INSERT INTO `brava_lang` VALUES (566, 283, 2, NULL);
INSERT INTO `brava_lang` VALUES (567, 284, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/0f3jbtutk75r21ss447qrkdtg0/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EW-qkdCBq5WIOXsmQ5PeavNKaq7FKLKgRRn8Uu3OGm5TLZnzdndgYPeGEqSksJYw3VIzYcwxYTDUnza_iJJ-V-gaYPVYZs6XahpXI-wc2ho-njj9BmQ1tL72-XJj_MjX4pqSL-4dF8wZw6erAAuVo8DqxOk4dljbfrvT5KeI7y7Zzt5HioE358Vv9u?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL 17:00–20:00<br>DM-DJ 9:00–13:00, 17:00–20:00<br>DV 17:00–20:00<br><br>bravablogbcn');
INSERT INTO `brava_lang` VALUES (568, 284, 2, NULL);
INSERT INTO `brava_lang` VALUES (569, 285, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/kuleb2fa2arq2rerc9fnhjg41o/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FHn0w0rvAt7GtUTBjra1ArqvHAKHn904zJFcRaBrltIs1uMqe7Od5ao4f3zc0lYXSn1yFdhMsNhbOlpxewhBL0DotxZkOKfEkQOVa3i29lRUCctAIUhF5B9ddNlLCDL5j08v4hstd8t18oiiVcOhlIIsJLwFg2Qbb6Z2guDx36ND-yHbLeYw4uEuqT?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>12:00–0:30');
INSERT INTO `brava_lang` VALUES (570, 285, 2, NULL);
INSERT INTO `brava_lang` VALUES (571, 286, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/h2b2dr2ddeasarsnca9l20fa38/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GouZduUMj1E7a-0b4WVLoT7cRFx0vmh68tm6wb7M-cCHI_K6C3CnvNQGy6zSOJfU_Gy3X4zPLT1VewdXjIlOgXtfx-TC9kNMpBHgQmEbOsLJD2A-V978yRRs7lttIF5pSVBc4OMZSQNcBihdOkAJQXfky3rD1OC8qFvx6mDZ2yQ5LBmEDkkd9DGMU9?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dll-dv 6:00–0:00<br>dss 8:00–1:00<br>dg 8:00–0:00<br><br>la actualidad con 5 sentidos');
INSERT INTO `brava_lang` VALUES (572, 286, 2, NULL);
INSERT INTO `brava_lang` VALUES (573, 287, 1, '<img src=\"https://doc-0k-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/r34im2p0mbscieu9ueosh3fo4k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HekoUz4NButWJ7J7T-Cfdi9YxlTP7JH3SY4P93lmXmJDREtF-bwC-TB9V8sWmLvkdZ0aEEmDEqe2zqwSspjTQqlj1FhhHB67rrds6bw7M1LIXQU-HrPu_3eG9hYnfYdcEj-pYc0pS8rgQ4DKfhcgP-Jqoi15q1EnZmU8QNcsCh7ymCF2C6dLWgm2PB?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DSS-DG: 12:00–18:00');
INSERT INTO `brava_lang` VALUES (574, 287, 2, NULL);
INSERT INTO `brava_lang` VALUES (575, 288, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/bhaq56mndmt6torv2elta9vh64/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HHDT8G5yZ-dRtPa0aCfbjfMmpoBS9F6_WvJioleemc8hO0VL61i-YM_etzoJ2YYh2fZMnrno_A3QizZhKG0k4JH9PVVfVU9FsmsOEiqha3efyMqtEK9mW_L3ShLMAOGbSC22ghfDX7EARjSjj9B18jBEMyRvw5oCOX_uqLILvjWgqps72NLae4Ffhb?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dilluns	12:00–1:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (576, 288, 2, NULL);
INSERT INTO `brava_lang` VALUES (577, 289, 1, '<img src=\"https://doc-04-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/i5895oul05p7rgf150rr2ipcqk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-GgoUBUJ6sfOGgZ7iBXi1kL96FyMYlPErd1HCaL3nbMhKBuyTc1FA87FHwSCkpNatQIHKp9EMVBTyoOl5JV-zlb7_mcVlwmcD-VYg3DYLLpDiJ9ctqpZxy8uLEecoxRfos9rfCPjvNGHPTDOdAAPUEwBYL35_B5jC182XsU0stH7jEijCrvVSOGTmSr?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DSS 13:00–16:00, 20:00–23:00<br>DG: 13:00–16:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (578, 289, 2, NULL);
INSERT INTO `brava_lang` VALUES (579, 290, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/qr00muvb6iqshpedliimdlt548/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FO6CSRwR5mftdhvueDx6iSFizAAupqoV4H7qe9zriIWwwkm55KPtA-_5PmUDgGvaOkZ_4Rf7mow95kJpkdCv3EfsgGKPXhIXz0b4LugmCKm-BKM8z-gGT7t3Gc2wAVnaq3m5SupvpS8j4FyIk4Jx-H7N1MIdPdxkq74R6bzUsLpQTZjuAEIw-W1y1v?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DX-DJ 12:00–23:30<br>DV-DG 12:00–0:30<br>DLL 12:00–17:00<br><br>dondesibcn');
INSERT INTO `brava_lang` VALUES (580, 290, 2, NULL);
INSERT INTO `brava_lang` VALUES (581, 291, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/pobe4hl52e1gs61e69bp579e90/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FrELgXOEv406jbC1awQt2tlyiGR-axWICeVghtCcmZgMc7z8cGoo_XSDgDuMXeNnWCPXOFo3OXhXfQOHenxnFnjMHbe2zBWMaZiVM-ZgtJS5_gs37B6IUYjgJL39l9ZPywDSWVSKOtMnNhvnNxWbaTxafOFJCEdDl8KJ8pY_g1A7AepG8zLoZXPquG?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>13:00–0:00');
INSERT INTO `brava_lang` VALUES (582, 291, 2, NULL);
INSERT INTO `brava_lang` VALUES (583, 292, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/8dc3b0685bm8lo4sphnajaa1tc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HE0Iltvax0z8RNq1X2hNJv_t4jDRuIkhsJgtfoDdmtj7DTSoIGrNQcFfF02ClnFR35kBMTJQUe2-WLX8rntpz7GzMQOr24IzI15s3Nmd7WOvik2VYiK5f3HDug8Nlrf2P_Wllfg6QIMKcHYxgqTKvOZkGwz1yba3bY656FhMIsuVvpqFe3MxJ-mUSr?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>13:00–23:00<br><br>tras la brava');
INSERT INTO `brava_lang` VALUES (584, 292, 2, NULL);
INSERT INTO `brava_lang` VALUES (585, 293, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/j501o534h03c3lduv8nsmgkte8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Hp4hsGzUjHyuu26A8idiGbZXWEXk4SZHzct87Wm8VJzESlXnid7OUbNVcedj9VJ9LVlAFtxiXetWn_hGgcPDe8X6R-Hd2KOFSHUDvVdn5VpMFvIpSsMamIY1rnt1EHZgjhRgdJXonTU-NUb7vBx_lUMRi4pfc-AEKrpx_dghyEh_JNW_zDTOyRdLfV?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DJ-DG: 13:30–16:30, 20:30–23:30<br><br>tras la brava');
INSERT INTO `brava_lang` VALUES (586, 293, 2, NULL);
INSERT INTO `brava_lang` VALUES (587, 294, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/qmnb644ra8p6c9s11pn0o62e38/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-HGJLcscKUGGCVNOPVncGtpRC0pYKf2rSWoov5pVOpal26dkG9puiYmn0vkAdMXS82Qha0P22uqA7czkwN5H7cd_ZOkZ9fH2Ryqu0SpU8cj0kTniwIrwpjyk8vcZpfFWiRqxHVIFdHmpJVd9ns1ghqQ8fUpFIyl-pttoJyyWX1uyLkrf5r_E3npw9IR?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DV: 0:00–23:45<br>DSS-DG 9:00–0:00<br><br>BravasBCN');
INSERT INTO `brava_lang` VALUES (588, 294, 2, NULL);
INSERT INTO `brava_lang` VALUES (589, 295, 1, '<img src=\"https://doc-0g-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/8l9g8h3nbm037rot546pvv6e30/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H2bGH0IC4Fess3a5KfkO8vvyeI1aMSh4cnHyBM6SL6f4FjXQ5p53BWwucQ8hBfCSQi7zyNUqKzR3rwZRXSdTisai-GMGUdEj-6skLAyoxKN_U5iZyqdwOoZKZfpZbM57HmQT3nKBZ-YVJzHxofvcRlbeV9FYD_zlt2-xl-7KdQWh5t2i0qLTOS-oeu?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL, DX: 13:00–16:00<br>DJ-DSS: 13:00–16:00, 21:00–23:00<br>DG: 13:00–16:00<br><br>MORFANDING_BCN');
INSERT INTO `brava_lang` VALUES (590, 295, 2, NULL);
INSERT INTO `brava_lang` VALUES (591, 296, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/j0q6dv25vpubg5tet4aokhvf48/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FFmbu_xlt0dQmCnZeJbAnfL23xB4kwQ5aGWeLPW49tNNdDejRpT3rFL4xYvy47zL8GxHG35Uj2KTKUmYefiYCvsTSJ6-449Z3CnCzCFsXlk_MyuVFz_REtRnOjARQ6E4_wCakqgb_j60FkCnS-SFJn_0GHNOkgo3vXAOSxHaH7-hPIoqkse-JUm8NMvg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DSS: 8:00–23:00');
INSERT INTO `brava_lang` VALUES (592, 296, 2, NULL);
INSERT INTO `brava_lang` VALUES (593, 297, 1, '<img src=\"https://doc-10-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/vkef89mceg2vtg7qu109pr0ud8/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-G59428522OUPqwwZwEtB7ESBUquqc_y0-k4pfC_ACzUO2kj44vYt7bedm9lI8ZOgwF89ROPvREXJNeUcIEmzahQdfEvc6HmFLl9tUXPKPz8jM0cAmkXOP5WpxFe3OOx41S1m4UozOTSowzwqZiEVwvQ9060ax4OUW6NEIYVNyiNzyb4aAh557E0tpj?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>');
INSERT INTO `brava_lang` VALUES (594, 297, 2, NULL);
INSERT INTO `brava_lang` VALUES (595, 298, 1, '<img src=\"https://doc-0o-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/0eso27dd7icac51fbb2m6gt72k/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EvEs-bu0txNebS7goiC0MT4IGyy9q5UQxSOQqPAHgcTALzJx84_skzO__YtrLjbK8qTA1KrHgLGDEPgC5CIcpeOO_tgXcHJYKUf2ZgOhCrbb1jCLYaxJMnNcADk9GfRW0eR6-WGNpGS7Z-ol_0smRl92Qb4UV6iM8jRI7wbHLj_HI89EDUEIc0FDpy?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>');
INSERT INTO `brava_lang` VALUES (596, 298, 2, NULL);
INSERT INTO `brava_lang` VALUES (597, 299, 1, '<img src=\"https://doc-08-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/aktphpimprnbhh9ebabl5flbls/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FhKpucWmyQkqbQ-YIP73dj5ibYb8ULSfd-IpZMc8iApTmo1drhykbd1NifvR_9MAPw0ytUfRhUkoVe_f1RRPRnc39d817tiyDt1l-HrzTznr-VKXBIWEuaEfYtRkiXkLQD7dMvJPOwxg__9z1qAws8HAja4TLnSn5edxifYkRcTik-N9fKbjTcDF4v?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DX: TANCAT<br>DJ: 20:00–0:00<br>DV-DSS 13:00–16:00, 20:00–0:00<br>DG 13:00–16:00<br><br>Bravas BCN');
INSERT INTO `brava_lang` VALUES (598, 299, 2, NULL);
INSERT INTO `brava_lang` VALUES (599, 300, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/r4co6ieqepd4pa7fus75t0sijg/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FiWS2tz_KscBoeST8WjbFNf5i10mQfsX_E0qSmJk2N_ZnBb_fj1M3-BaqVOgtJVdz4KfCokwtXqq0KxhwI0APb5hDqiaa5tWvFoQPzdWQHURMxAHY68j-IGUYWekDybEUSPCsdDyNeA9Xg7LxqJ9Qo5Vdn0-uZJZNO2-O3ZZ5ULu3xRnvC40GMDzx3?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL-DSS: 13:00–0:00<br>DG: 12:00–18:00<br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (600, 300, 2, NULL);
INSERT INTO `brava_lang` VALUES (601, 301, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/q626v78nqf66js1n306t3serhs/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FbYBsQ0f244v87EPGf89n6FHUeDAMl98687Eg7IX9UKhvFYL2vvVohmGvsek49aw2Av8d1_BKwMWNcfudd1PcojLs1O34do1QQqyoB7DDEvKKovRBysh5IpDp6xj6qgWkTlCXxNG2yl2BetmQgmeyLUxSStO3scOpFWPcVuyQm8k3kbbshRhCaYMEe?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DV: 20:00–23:00<br>DSS: 13:00–16:00, 20:00–23:00<br>DG: 12:00–16:00');
INSERT INTO `brava_lang` VALUES (602, 301, 2, NULL);
INSERT INTO `brava_lang` VALUES (603, 302, 1, '<img src=\"https://doc-0s-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/4dulm42163u6lh42fofj2u9lgc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-EBG4kOQPULNm6Pwsuqnpfqpx73GCv7P8MhEK3ov_4QVpDQXSqC3nzKKsyM4_P8OXk0dSd5f2GVt5vxX8LjdlZLsOUX_9Fnok7JOkiUyvU2Od4O2Aib0FCl23hiGQt6uSGE6UMcqaxSsVJMrjWtdARhzy6QARW6-7l4_ckFobuSaFvctzrw0cbLADhgIg?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DV 18:00–22:30<br>DSS 12:00–14:30, 19:30–22:30<br>DG 12:00–14:30<br><br>elmeuvermut');
INSERT INTO `brava_lang` VALUES (604, 302, 2, NULL);
INSERT INTO `brava_lang` VALUES (605, 303, 1, '<img src=\"https://doc-0c-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/i4igvlph82884epetq1b2340uo/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-H6Fvx-KBJPCK4z1jxmdJQ6T2pf7QT8UBdoQ0wnktQxfm4V7RLXVcBGIwcb4voArDC-EZw0wLn8LjMAJTLUaLNwJgDM_k1hjTbh_0HwnVn2QBGd6GXq31z6QRAj-CDEqrlpiyhBIuIae5Oi9rrIhggkWWyGX04RUY11qhXQY9naMyAOuRQSmzKbbZ7f?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DM-DG: 13:00–18:00');
INSERT INTO `brava_lang` VALUES (606, 303, 2, NULL);
INSERT INTO `brava_lang` VALUES (607, 304, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/ho7p9otp20nn27kemnl8cmigog/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-Fq1HcY2VTq6gL7iTwv82UiNsmsk2LsEJybe8rQYUtOqGKCg-Pkm6L5knpmTqjkVn2OI5gc7w85xJVEXE6ea-KA9__dEUpDQspvbl07qrbTuMhMW4cEQRiqo8VWKymnRomfdFaNTMNZVm-5n38zhu7sUL4xxnbZKKIwq4oarjYS79oKYaH296ugoDx4?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>bravasBCN');
INSERT INTO `brava_lang` VALUES (608, 304, 2, NULL);
INSERT INTO `brava_lang` VALUES (609, 305, 1, '<img src=\"https://doc-14-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/jm8hupa43sr2gun2abc93h72gc/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FJ3KGBjKi9n4gKb4HiscunI1jA7B6RreAYgj-DOPEk5_l1DjOESfky6U4mE9xcifqtJk1dYkxIoDwe24TcrMMmLJ7_JINU_jDZd0qjXjdNpmeicXSSjvAh-2VUTPqGi59mNc7wB8Yw3itJIrHptROFCMiSOrblR-S6jCQdohqGUKA-qEipTedQVdrzPvfm4Snzs9rUE0-qCSMZ-Rn7R6GrJ7ri-0Jb50iLl78?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>dg-dll-dm 13:00–16:00<br>dx-dss 13:00–16:00, 20:00–23:00');
INSERT INTO `brava_lang` VALUES (610, 305, 2, NULL);
INSERT INTO `brava_lang` VALUES (611, 306, 1, '<img src=\"https://doc-00-0s-mymaps.googleusercontent.com/untrusted/hostedimage/sp540u1gdhv7u5v9na7627phvo/9us2svg9runhhvs85pr6h3h9lk/1684942590500/xUcpN3FudnuQYrEAf25SWSdkT0JYD12L/17346896698994278261/5ACtvi-FOKsfhPDtbAwkKq57ysj83jxA952KvJmEIxpMxJHu33p5fixaL_6PjtsNjVmZ5lpx1WdEEjAgoOR130azzIO5ZM6l_rqwUq60Z92qPYKubObvqi09EBAxHMUhxG61fi6Urw4wVn2BsICsplbGWNiC4IHhcd7O-s_vr5YE7QcuSqTb_ms0WhFPFFkkHyTGobI-5gMXD3EBeGk2WND4reH1VLGc1_xKbRnlU?session=0&fife\" height=\"200\" width=\"auto\" /><br><br>DLL: 18:30–0:00<br>DM-DJ: 12:00–16:30 i 18:30–0:00<br>DV-DSS:<br>DG: tancat');
INSERT INTO `brava_lang` VALUES (612, 306, 2, NULL);
INSERT INTO `brava_lang` VALUES (613, 307, 1, 'Trio de braves.');
INSERT INTO `brava_lang` VALUES (614, 307, 2, '<p>Trío de bravas.</p>');
INSERT INTO `brava_lang` VALUES (615, 308, 1, NULL);
INSERT INTO `brava_lang` VALUES (616, 308, 2, NULL);
INSERT INTO `brava_lang` VALUES (617, 309, 1, NULL);
INSERT INTO `brava_lang` VALUES (618, 309, 2, NULL);
INSERT INTO `brava_lang` VALUES (619, 310, 1, NULL);
INSERT INTO `brava_lang` VALUES (620, 310, 2, NULL);
INSERT INTO `brava_lang` VALUES (621, 311, 1, NULL);
INSERT INTO `brava_lang` VALUES (622, 311, 2, NULL);
INSERT INTO `brava_lang` VALUES (623, 312, 1, NULL);
INSERT INTO `brava_lang` VALUES (624, 312, 2, NULL);
INSERT INTO `brava_lang` VALUES (625, 313, 1, '<p>Vine més tard de les 20, que si no: no cuinen, però vigila que no et quedis sense lloc!</p><p>Proveu la bomba de galta.</p>');
INSERT INTO `brava_lang` VALUES (626, 313, 2, '<p>Ven más tarde de las 20, que si no: no cocinan, ¡pero vigila que no te quedes sin sitio!</p><p>Pruebe la bomba de carrillera.</p>');
INSERT INTO `brava_lang` VALUES (627, 314, 1, NULL);
INSERT INTO `brava_lang` VALUES (628, 314, 2, NULL);
INSERT INTO `brava_lang` VALUES (629, 315, 1, NULL);
INSERT INTO `brava_lang` VALUES (630, 315, 2, NULL);
INSERT INTO `brava_lang` VALUES (631, 316, 1, NULL);
INSERT INTO `brava_lang` VALUES (632, 316, 2, NULL);
INSERT INTO `brava_lang` VALUES (633, 317, 1, NULL);
INSERT INTO `brava_lang` VALUES (634, 317, 2, NULL);
INSERT INTO `brava_lang` VALUES (635, 318, 1, NULL);
INSERT INTO `brava_lang` VALUES (636, 318, 2, NULL);
INSERT INTO `brava_lang` VALUES (637, 319, 1, NULL);
INSERT INTO `brava_lang` VALUES (638, 319, 2, NULL);
INSERT INTO `brava_lang` VALUES (639, 320, 1, NULL);
INSERT INTO `brava_lang` VALUES (640, 320, 2, NULL);
INSERT INTO `brava_lang` VALUES (641, 321, 1, NULL);
INSERT INTO `brava_lang` VALUES (642, 321, 2, NULL);
INSERT INTO `brava_lang` VALUES (643, 322, 1, NULL);
INSERT INTO `brava_lang` VALUES (644, 322, 2, NULL);
INSERT INTO `brava_lang` VALUES (645, 323, 1, NULL);
INSERT INTO `brava_lang` VALUES (646, 323, 2, NULL);
INSERT INTO `brava_lang` VALUES (647, 324, 1, NULL);
INSERT INTO `brava_lang` VALUES (648, 324, 2, NULL);
INSERT INTO `brava_lang` VALUES (649, 325, 1, NULL);
INSERT INTO `brava_lang` VALUES (650, 325, 2, NULL);
INSERT INTO `brava_lang` VALUES (651, 326, 1, NULL);
INSERT INTO `brava_lang` VALUES (652, 326, 2, NULL);
INSERT INTO `brava_lang` VALUES (653, 327, 1, NULL);
INSERT INTO `brava_lang` VALUES (654, 327, 2, NULL);
INSERT INTO `brava_lang` VALUES (655, 328, 1, NULL);
INSERT INTO `brava_lang` VALUES (656, 328, 2, NULL);
INSERT INTO `brava_lang` VALUES (657, 329, 1, NULL);
INSERT INTO `brava_lang` VALUES (658, 329, 2, NULL);
INSERT INTO `brava_lang` VALUES (659, 330, 1, 'Entreu al restaurant secret que tenen.');
INSERT INTO `brava_lang` VALUES (660, 330, 2, '<p>Entrad en el restaurante secreto que tienen.</p>');
INSERT INTO `brava_lang` VALUES (661, 331, 1, NULL);
INSERT INTO `brava_lang` VALUES (662, 331, 2, NULL);
INSERT INTO `brava_lang` VALUES (663, 332, 1, NULL);
INSERT INTO `brava_lang` VALUES (664, 332, 2, NULL);
INSERT INTO `brava_lang` VALUES (665, 333, 1, NULL);
INSERT INTO `brava_lang` VALUES (666, 333, 2, NULL);
INSERT INTO `brava_lang` VALUES (667, 334, 1, NULL);
INSERT INTO `brava_lang` VALUES (668, 334, 2, NULL);
INSERT INTO `brava_lang` VALUES (669, 335, 1, '<p>Podeu venir i fer les dues braves que tenen!</p>');
INSERT INTO `brava_lang` VALUES (670, 335, 2, '<p>Puede venir y hacer las dos bravas que tienen!</p>');
INSERT INTO `brava_lang` VALUES (671, 336, 1, 'Podeu venir a fer només la tapa, però és un restaurant amb hamburgueses molt sorprenents així que veniu a provar-lo.');
INSERT INTO `brava_lang` VALUES (672, 336, 2, '<p>Puede venir a hacer sólo la tapa, pero es un restaurante con hamburguesas muy sorprendentes así que venid a probarlo.</p>');
INSERT INTO `brava_lang` VALUES (673, 337, 1, NULL);
INSERT INTO `brava_lang` VALUES (674, 337, 2, NULL);
INSERT INTO `brava_lang` VALUES (675, 338, 1, NULL);
INSERT INTO `brava_lang` VALUES (676, 338, 2, NULL);
INSERT INTO `brava_lang` VALUES (677, 339, 1, NULL);
INSERT INTO `brava_lang` VALUES (678, 339, 2, NULL);
INSERT INTO `brava_lang` VALUES (679, 340, 1, 'Tot i que és un restaurant, vam poder fer només la tapa.');
INSERT INTO `brava_lang` VALUES (680, 340, 2, '<p>Aunque es un restaurante, pudimos hacer sólo la tapa.</p>');
INSERT INTO `brava_lang` VALUES (681, 341, 1, NULL);
INSERT INTO `brava_lang` VALUES (682, 341, 2, NULL);
INSERT INTO `brava_lang` VALUES (683, 342, 1, NULL);
INSERT INTO `brava_lang` VALUES (684, 342, 2, NULL);
INSERT INTO `brava_lang` VALUES (685, 343, 1, NULL);
INSERT INTO `brava_lang` VALUES (686, 343, 2, NULL);
INSERT INTO `brava_lang` VALUES (687, 344, 1, NULL);
INSERT INTO `brava_lang` VALUES (688, 344, 2, NULL);
INSERT INTO `brava_lang` VALUES (689, 345, 1, NULL);
INSERT INTO `brava_lang` VALUES (690, 345, 2, NULL);
INSERT INTO `brava_lang` VALUES (691, 346, 1, NULL);
INSERT INTO `brava_lang` VALUES (692, 346, 2, NULL);
INSERT INTO `brava_lang` VALUES (693, 347, 1, 'Tot i que és un restaurant, vam poder fer només la tapa.');
INSERT INTO `brava_lang` VALUES (694, 347, 2, '<p>Aunque es un restaurante, pudimos hacer sólo la tapa.</p>');
INSERT INTO `brava_lang` VALUES (695, 348, 1, NULL);
INSERT INTO `brava_lang` VALUES (696, 348, 2, NULL);
INSERT INTO `brava_lang` VALUES (697, 349, 1, 'El restaurant està molt bé. Si vols alguna cosa \"brava\" demana els musclos amb salsa brava.');
INSERT INTO `brava_lang` VALUES (698, 349, 2, '<p>El restaurante está muy bien. Si quieres algo \"bravo\" pide los mejillones con salsa brava.</p>');
INSERT INTO `brava_lang` VALUES (699, 350, 1, NULL);
INSERT INTO `brava_lang` VALUES (700, 350, 2, NULL);
INSERT INTO `brava_lang` VALUES (701, 351, 1, NULL);
INSERT INTO `brava_lang` VALUES (702, 351, 2, NULL);
INSERT INTO `brava_lang` VALUES (703, 352, 1, '[foto perduda]');
INSERT INTO `brava_lang` VALUES (704, 352, 2, '<p>[foto perdida]</p>');
INSERT INTO `brava_lang` VALUES (705, 353, 1, 'Veniu a sopar! Tapes molt bones i a bon preu.');
INSERT INTO `brava_lang` VALUES (706, 353, 2, '<p>¡Ven a cenar! Tapas muy buenas ya buen precio.</p>');
INSERT INTO `brava_lang` VALUES (707, 354, 1, NULL);
INSERT INTO `brava_lang` VALUES (708, 354, 2, NULL);
INSERT INTO `brava_lang` VALUES (709, 355, 1, '<p>Tot i que és un restaurant, vam poder fer només la tapa.</p>');
INSERT INTO `brava_lang` VALUES (710, 355, 2, '<p>Aunque es un restaurante, pudimos hacer sólo la tapa.</p>');
INSERT INTO `brava_lang` VALUES (711, 356, 1, NULL);
INSERT INTO `brava_lang` VALUES (712, 356, 2, NULL);
INSERT INTO `brava_lang` VALUES (713, 357, 1, NULL);
INSERT INTO `brava_lang` VALUES (714, 357, 2, NULL);
INSERT INTO `brava_lang` VALUES (715, 358, 1, NULL);
INSERT INTO `brava_lang` VALUES (716, 358, 2, NULL);
INSERT INTO `brava_lang` VALUES (717, 359, 1, NULL);
INSERT INTO `brava_lang` VALUES (718, 359, 2, NULL);
INSERT INTO `brava_lang` VALUES (719, 360, 1, NULL);
INSERT INTO `brava_lang` VALUES (720, 360, 2, NULL);
INSERT INTO `brava_lang` VALUES (721, 361, 1, NULL);
INSERT INTO `brava_lang` VALUES (722, 361, 2, NULL);
INSERT INTO `brava_lang` VALUES (723, 362, 1, NULL);
INSERT INTO `brava_lang` VALUES (724, 362, 2, NULL);
INSERT INTO `brava_lang` VALUES (725, 363, 1, NULL);
INSERT INTO `brava_lang` VALUES (726, 363, 2, NULL);
INSERT INTO `brava_lang` VALUES (727, 364, 1, NULL);
INSERT INTO `brava_lang` VALUES (728, 364, 2, NULL);
INSERT INTO `brava_lang` VALUES (729, 365, 1, NULL);
INSERT INTO `brava_lang` VALUES (730, 365, 2, NULL);
INSERT INTO `brava_lang` VALUES (731, 366, 1, NULL);
INSERT INTO `brava_lang` VALUES (732, 366, 2, NULL);
INSERT INTO `brava_lang` VALUES (733, 367, 1, NULL);
INSERT INTO `brava_lang` VALUES (734, 367, 2, NULL);
INSERT INTO `brava_lang` VALUES (735, 368, 1, NULL);
INSERT INTO `brava_lang` VALUES (736, 368, 2, NULL);
INSERT INTO `brava_lang` VALUES (737, 369, 1, NULL);
INSERT INTO `brava_lang` VALUES (738, 369, 2, NULL);
INSERT INTO `brava_lang` VALUES (739, 370, 1, NULL);
INSERT INTO `brava_lang` VALUES (740, 370, 2, NULL);
INSERT INTO `brava_lang` VALUES (741, 371, 1, NULL);
INSERT INTO `brava_lang` VALUES (742, 371, 2, NULL);
INSERT INTO `brava_lang` VALUES (743, 372, 1, NULL);
INSERT INTO `brava_lang` VALUES (744, 372, 2, NULL);
INSERT INTO `brava_lang` VALUES (745, 373, 1, NULL);
INSERT INTO `brava_lang` VALUES (746, 373, 2, NULL);
INSERT INTO `brava_lang` VALUES (747, 374, 1, '<p>Aneu als Königs de Girona que estan molt més bons.</p>');
INSERT INTO `brava_lang` VALUES (748, 374, 2, '<p>Id a los Königs de Girona que están mucho mejores.</p>');
INSERT INTO `brava_lang` VALUES (749, 375, 1, '<p>Tot i que és un restaurant, vam poder fer només la tapa.</p>');
INSERT INTO `brava_lang` VALUES (750, 375, 2, '<p>Aunque es un restaurante, pudimos hacer sólo la tapa.</p>');
INSERT INTO `brava_lang` VALUES (751, 376, 1, NULL);
INSERT INTO `brava_lang` VALUES (752, 376, 2, NULL);
INSERT INTO `brava_lang` VALUES (753, 377, 1, NULL);
INSERT INTO `brava_lang` VALUES (754, 377, 2, NULL);
INSERT INTO `brava_lang` VALUES (755, 378, 1, NULL);
INSERT INTO `brava_lang` VALUES (756, 378, 2, NULL);
INSERT INTO `brava_lang` VALUES (757, 379, 1, NULL);
INSERT INTO `brava_lang` VALUES (758, 379, 2, NULL);
INSERT INTO `brava_lang` VALUES (759, 380, 1, NULL);
INSERT INTO `brava_lang` VALUES (760, 380, 2, NULL);
INSERT INTO `brava_lang` VALUES (761, 381, 1, NULL);
INSERT INTO `brava_lang` VALUES (762, 381, 2, NULL);
INSERT INTO `brava_lang` VALUES (763, 382, 1, NULL);
INSERT INTO `brava_lang` VALUES (764, 382, 2, NULL);
INSERT INTO `brava_lang` VALUES (765, 383, 1, NULL);
INSERT INTO `brava_lang` VALUES (766, 383, 2, NULL);
INSERT INTO `brava_lang` VALUES (767, 384, 1, NULL);
INSERT INTO `brava_lang` VALUES (768, 384, 2, NULL);
INSERT INTO `brava_lang` VALUES (769, 385, 1, NULL);
INSERT INTO `brava_lang` VALUES (770, 385, 2, NULL);
INSERT INTO `brava_lang` VALUES (771, 386, 1, NULL);
INSERT INTO `brava_lang` VALUES (772, 386, 2, NULL);
INSERT INTO `brava_lang` VALUES (773, 387, 1, '<p>Tot i que és un restaurant, vam poder fer només la tapa.</p>');
INSERT INTO `brava_lang` VALUES (774, 387, 2, '<p>Aunque es un restaurante, pudimos hacer sólo la tapa.</p>');
INSERT INTO `brava_lang` VALUES (775, 388, 1, 'Tot i que és un restaurant, vam poder fer només la tapa.');
INSERT INTO `brava_lang` VALUES (776, 388, 2, '<p>Aunque es un restaurante, pudimos hacer sólo la tapa.</p>');
INSERT INTO `brava_lang` VALUES (777, 389, 1, NULL);
INSERT INTO `brava_lang` VALUES (778, 389, 2, NULL);
INSERT INTO `brava_lang` VALUES (779, 390, 1, NULL);
INSERT INTO `brava_lang` VALUES (780, 390, 2, NULL);
INSERT INTO `brava_lang` VALUES (781, 391, 1, NULL);
INSERT INTO `brava_lang` VALUES (782, 391, 2, NULL);
INSERT INTO `brava_lang` VALUES (783, 392, 1, 'Tenen diversos locals: el Camp de l\'Arpa, les Corts, Sant Andreu i Badalona.');
INSERT INTO `brava_lang` VALUES (784, 392, 2, '<p>Tienen varios locales: el Camp de l\'Arpa, Les Corts, Sant Andreu y Badalona.</p>');
INSERT INTO `brava_lang` VALUES (785, 393, 1, NULL);
INSERT INTO `brava_lang` VALUES (786, 393, 2, NULL);
INSERT INTO `brava_lang` VALUES (787, 394, 1, NULL);
INSERT INTO `brava_lang` VALUES (788, 394, 2, NULL);
INSERT INTO `brava_lang` VALUES (789, 395, 1, NULL);
INSERT INTO `brava_lang` VALUES (790, 395, 2, NULL);
INSERT INTO `brava_lang` VALUES (791, 396, 1, NULL);
INSERT INTO `brava_lang` VALUES (792, 396, 2, NULL);
INSERT INTO `brava_lang` VALUES (793, 397, 1, NULL);
INSERT INTO `brava_lang` VALUES (794, 397, 2, NULL);
INSERT INTO `brava_lang` VALUES (795, 398, 1, NULL);
INSERT INTO `brava_lang` VALUES (796, 398, 2, NULL);
INSERT INTO `brava_lang` VALUES (797, 399, 1, NULL);
INSERT INTO `brava_lang` VALUES (798, 399, 2, NULL);
INSERT INTO `brava_lang` VALUES (799, 400, 1, NULL);
INSERT INTO `brava_lang` VALUES (800, 400, 2, NULL);
INSERT INTO `brava_lang` VALUES (801, 401, 1, '<p>Imprescindible venir a menjar pizza, ja que hi ets: demana braves.</p>');
INSERT INTO `brava_lang` VALUES (802, 401, 2, '<p>Imprescindible venir a comer pizza, ya que estás ahí: pide bravas.</p>');
INSERT INTO `brava_lang` VALUES (803, 402, 1, NULL);
INSERT INTO `brava_lang` VALUES (804, 402, 2, NULL);
INSERT INTO `brava_lang` VALUES (805, 403, 1, NULL);
INSERT INTO `brava_lang` VALUES (806, 403, 2, NULL);
INSERT INTO `brava_lang` VALUES (807, 404, 1, NULL);
INSERT INTO `brava_lang` VALUES (808, 404, 2, NULL);
INSERT INTO `brava_lang` VALUES (809, 405, 1, 'Tot i que és un restaurant, vam poder fer només la tapa.');
INSERT INTO `brava_lang` VALUES (810, 405, 2, '<p>Aunque es un restaurante, pudimos hacer sólo la tapa.</p>');
INSERT INTO `brava_lang` VALUES (811, 406, 1, NULL);
INSERT INTO `brava_lang` VALUES (812, 406, 2, NULL);
INSERT INTO `brava_lang` VALUES (813, 407, 1, NULL);
INSERT INTO `brava_lang` VALUES (814, 407, 2, NULL);
INSERT INTO `brava_lang` VALUES (815, 408, 1, NULL);
INSERT INTO `brava_lang` VALUES (816, 408, 2, NULL);
INSERT INTO `brava_lang` VALUES (817, 409, 1, 'Tenen diversos locals: Gràcia, Poblenou i Raval.');
INSERT INTO `brava_lang` VALUES (818, 409, 2, '<p>Tienen varios locales: Gràcia, Poblenou i Raval.</p>');
INSERT INTO `brava_lang` VALUES (819, 410, 1, NULL);
INSERT INTO `brava_lang` VALUES (820, 410, 2, NULL);
INSERT INTO `brava_lang` VALUES (821, 411, 1, '<p>Tot i que és un restaurant, vam poder fer només la tapa.</p>');
INSERT INTO `brava_lang` VALUES (822, 411, 2, '<p>Aunque es un restaurante, pudimos hacer sólo la tapa.</p>');
INSERT INTO `brava_lang` VALUES (823, 412, 1, NULL);
INSERT INTO `brava_lang` VALUES (824, 412, 2, NULL);
INSERT INTO `brava_lang` VALUES (825, 413, 1, NULL);
INSERT INTO `brava_lang` VALUES (826, 413, 2, NULL);
INSERT INTO `brava_lang` VALUES (827, 414, 1, NULL);
INSERT INTO `brava_lang` VALUES (828, 414, 2, NULL);
INSERT INTO `brava_lang` VALUES (829, 415, 1, NULL);
INSERT INTO `brava_lang` VALUES (830, 415, 2, NULL);
INSERT INTO `brava_lang` VALUES (831, 416, 1, NULL);
INSERT INTO `brava_lang` VALUES (832, 416, 2, NULL);
INSERT INTO `brava_lang` VALUES (833, 417, 1, NULL);
INSERT INTO `brava_lang` VALUES (834, 417, 2, NULL);
INSERT INTO `brava_lang` VALUES (835, 418, 1, NULL);
INSERT INTO `brava_lang` VALUES (836, 418, 2, NULL);
INSERT INTO `brava_lang` VALUES (837, 419, 1, NULL);
INSERT INTO `brava_lang` VALUES (838, 419, 2, NULL);
INSERT INTO `brava_lang` VALUES (839, 420, 1, NULL);
INSERT INTO `brava_lang` VALUES (840, 420, 2, NULL);
INSERT INTO `brava_lang` VALUES (841, 421, 1, NULL);
INSERT INTO `brava_lang` VALUES (842, 421, 2, NULL);
INSERT INTO `brava_lang` VALUES (843, 422, 1, NULL);
INSERT INTO `brava_lang` VALUES (844, 422, 2, NULL);
INSERT INTO `brava_lang` VALUES (845, 423, 1, NULL);
INSERT INTO `brava_lang` VALUES (846, 423, 2, NULL);
INSERT INTO `brava_lang` VALUES (847, 424, 1, NULL);
INSERT INTO `brava_lang` VALUES (848, 424, 2, NULL);
INSERT INTO `brava_lang` VALUES (849, 425, 1, NULL);
INSERT INTO `brava_lang` VALUES (850, 425, 2, NULL);
INSERT INTO `brava_lang` VALUES (851, 426, 1, NULL);
INSERT INTO `brava_lang` VALUES (852, 426, 2, NULL);
INSERT INTO `brava_lang` VALUES (853, 427, 1, NULL);
INSERT INTO `brava_lang` VALUES (854, 427, 2, NULL);
INSERT INTO `brava_lang` VALUES (855, 428, 1, NULL);
INSERT INTO `brava_lang` VALUES (856, 428, 2, NULL);
INSERT INTO `brava_lang` VALUES (857, 429, 1, NULL);
INSERT INTO `brava_lang` VALUES (858, 429, 2, NULL);
INSERT INTO `brava_lang` VALUES (859, 430, 1, 'Tenen diversos locals: Eixample i Poblenou.');
INSERT INTO `brava_lang` VALUES (860, 430, 2, '<p>Tienen varios locales: Eixample y Poblenou.</p>');
INSERT INTO `brava_lang` VALUES (861, 431, 1, NULL);
INSERT INTO `brava_lang` VALUES (862, 431, 2, NULL);
INSERT INTO `brava_lang` VALUES (863, 432, 1, NULL);
INSERT INTO `brava_lang` VALUES (864, 432, 2, NULL);
INSERT INTO `brava_lang` VALUES (865, 433, 1, NULL);
INSERT INTO `brava_lang` VALUES (866, 433, 2, NULL);
INSERT INTO `brava_lang` VALUES (867, 434, 1, NULL);
INSERT INTO `brava_lang` VALUES (868, 434, 2, NULL);
INSERT INTO `brava_lang` VALUES (869, 435, 1, NULL);
INSERT INTO `brava_lang` VALUES (870, 435, 2, NULL);
INSERT INTO `brava_lang` VALUES (871, 436, 1, NULL);
INSERT INTO `brava_lang` VALUES (872, 436, 2, NULL);
INSERT INTO `brava_lang` VALUES (873, 437, 1, NULL);
INSERT INTO `brava_lang` VALUES (874, 437, 2, NULL);
INSERT INTO `brava_lang` VALUES (875, 438, 1, NULL);
INSERT INTO `brava_lang` VALUES (876, 438, 2, NULL);
INSERT INTO `brava_lang` VALUES (877, 439, 1, NULL);
INSERT INTO `brava_lang` VALUES (878, 439, 2, NULL);
INSERT INTO `brava_lang` VALUES (879, 440, 1, NULL);
INSERT INTO `brava_lang` VALUES (880, 440, 2, NULL);
INSERT INTO `brava_lang` VALUES (881, 441, 1, NULL);
INSERT INTO `brava_lang` VALUES (882, 441, 2, NULL);
INSERT INTO `brava_lang` VALUES (883, 442, 1, NULL);
INSERT INTO `brava_lang` VALUES (884, 442, 2, NULL);
INSERT INTO `brava_lang` VALUES (885, 443, 1, NULL);
INSERT INTO `brava_lang` VALUES (886, 443, 2, NULL);
INSERT INTO `brava_lang` VALUES (887, 444, 1, NULL);
INSERT INTO `brava_lang` VALUES (888, 444, 2, NULL);
INSERT INTO `brava_lang` VALUES (889, 445, 1, NULL);
INSERT INTO `brava_lang` VALUES (890, 445, 2, NULL);
INSERT INTO `brava_lang` VALUES (891, 446, 1, NULL);
INSERT INTO `brava_lang` VALUES (892, 446, 2, NULL);
INSERT INTO `brava_lang` VALUES (893, 447, 1, NULL);
INSERT INTO `brava_lang` VALUES (894, 447, 2, NULL);
INSERT INTO `brava_lang` VALUES (895, 448, 1, NULL);
INSERT INTO `brava_lang` VALUES (896, 448, 2, NULL);
INSERT INTO `brava_lang` VALUES (897, 449, 1, NULL);
INSERT INTO `brava_lang` VALUES (898, 449, 2, NULL);
INSERT INTO `brava_lang` VALUES (899, 450, 1, NULL);
INSERT INTO `brava_lang` VALUES (900, 450, 2, NULL);
INSERT INTO `brava_lang` VALUES (901, 451, 1, NULL);
INSERT INTO `brava_lang` VALUES (902, 451, 2, NULL);
INSERT INTO `brava_lang` VALUES (903, 452, 1, NULL);
INSERT INTO `brava_lang` VALUES (904, 452, 2, NULL);
INSERT INTO `brava_lang` VALUES (905, 453, 1, NULL);
INSERT INTO `brava_lang` VALUES (906, 453, 2, NULL);
INSERT INTO `brava_lang` VALUES (907, 454, 1, NULL);
INSERT INTO `brava_lang` VALUES (908, 454, 2, NULL);
INSERT INTO `brava_lang` VALUES (909, 455, 1, NULL);
INSERT INTO `brava_lang` VALUES (910, 455, 2, NULL);
INSERT INTO `brava_lang` VALUES (911, 456, 1, NULL);
INSERT INTO `brava_lang` VALUES (912, 456, 2, NULL);
INSERT INTO `brava_lang` VALUES (913, 457, 1, NULL);
INSERT INTO `brava_lang` VALUES (914, 457, 2, NULL);
INSERT INTO `brava_lang` VALUES (915, 458, 1, NULL);
INSERT INTO `brava_lang` VALUES (916, 458, 2, NULL);
INSERT INTO `brava_lang` VALUES (917, 459, 1, NULL);
INSERT INTO `brava_lang` VALUES (918, 459, 2, NULL);
INSERT INTO `brava_lang` VALUES (919, 460, 1, NULL);
INSERT INTO `brava_lang` VALUES (920, 460, 2, NULL);
INSERT INTO `brava_lang` VALUES (921, 461, 1, NULL);
INSERT INTO `brava_lang` VALUES (922, 461, 2, NULL);
INSERT INTO `brava_lang` VALUES (923, 462, 1, NULL);
INSERT INTO `brava_lang` VALUES (924, 462, 2, NULL);
INSERT INTO `brava_lang` VALUES (925, 463, 1, NULL);
INSERT INTO `brava_lang` VALUES (926, 463, 2, NULL);
INSERT INTO `brava_lang` VALUES (927, 464, 1, NULL);
INSERT INTO `brava_lang` VALUES (928, 464, 2, NULL);
INSERT INTO `brava_lang` VALUES (929, 465, 1, NULL);
INSERT INTO `brava_lang` VALUES (930, 465, 2, NULL);
INSERT INTO `brava_lang` VALUES (931, 466, 1, NULL);
INSERT INTO `brava_lang` VALUES (932, 466, 2, NULL);
INSERT INTO `brava_lang` VALUES (933, 467, 1, NULL);
INSERT INTO `brava_lang` VALUES (934, 467, 2, NULL);
INSERT INTO `brava_lang` VALUES (935, 468, 1, NULL);
INSERT INTO `brava_lang` VALUES (936, 468, 2, NULL);
INSERT INTO `brava_lang` VALUES (937, 469, 1, NULL);
INSERT INTO `brava_lang` VALUES (938, 469, 2, NULL);
INSERT INTO `brava_lang` VALUES (939, 470, 1, NULL);
INSERT INTO `brava_lang` VALUES (940, 470, 2, NULL);
INSERT INTO `brava_lang` VALUES (941, 471, 1, NULL);
INSERT INTO `brava_lang` VALUES (942, 471, 2, NULL);
INSERT INTO `brava_lang` VALUES (943, 472, 1, NULL);
INSERT INTO `brava_lang` VALUES (944, 472, 2, NULL);
INSERT INTO `brava_lang` VALUES (945, 473, 1, NULL);
INSERT INTO `brava_lang` VALUES (946, 473, 2, NULL);
INSERT INTO `brava_lang` VALUES (947, 474, 1, NULL);
INSERT INTO `brava_lang` VALUES (948, 474, 2, NULL);
INSERT INTO `brava_lang` VALUES (949, 475, 1, NULL);
INSERT INTO `brava_lang` VALUES (950, 475, 2, NULL);
INSERT INTO `brava_lang` VALUES (951, 476, 1, NULL);
INSERT INTO `brava_lang` VALUES (952, 476, 2, NULL);
INSERT INTO `brava_lang` VALUES (953, 477, 1, NULL);
INSERT INTO `brava_lang` VALUES (954, 477, 2, NULL);
INSERT INTO `brava_lang` VALUES (955, 478, 1, NULL);
INSERT INTO `brava_lang` VALUES (956, 478, 2, NULL);
INSERT INTO `brava_lang` VALUES (957, 479, 1, NULL);
INSERT INTO `brava_lang` VALUES (958, 479, 2, NULL);
INSERT INTO `brava_lang` VALUES (959, 480, 1, NULL);
INSERT INTO `brava_lang` VALUES (960, 480, 2, NULL);
INSERT INTO `brava_lang` VALUES (961, 481, 1, NULL);
INSERT INTO `brava_lang` VALUES (962, 481, 2, NULL);
INSERT INTO `brava_lang` VALUES (963, 482, 1, NULL);
INSERT INTO `brava_lang` VALUES (964, 482, 2, NULL);
INSERT INTO `brava_lang` VALUES (965, 483, 1, NULL);
INSERT INTO `brava_lang` VALUES (966, 483, 2, NULL);
INSERT INTO `brava_lang` VALUES (967, 484, 1, NULL);
INSERT INTO `brava_lang` VALUES (968, 484, 2, NULL);
INSERT INTO `brava_lang` VALUES (969, 485, 1, NULL);
INSERT INTO `brava_lang` VALUES (970, 485, 2, NULL);
INSERT INTO `brava_lang` VALUES (971, 486, 1, NULL);
INSERT INTO `brava_lang` VALUES (972, 486, 2, NULL);
INSERT INTO `brava_lang` VALUES (973, 487, 1, NULL);
INSERT INTO `brava_lang` VALUES (974, 487, 2, NULL);
INSERT INTO `brava_lang` VALUES (975, 488, 1, NULL);
INSERT INTO `brava_lang` VALUES (976, 488, 2, NULL);
INSERT INTO `brava_lang` VALUES (977, 489, 1, NULL);
INSERT INTO `brava_lang` VALUES (978, 489, 2, NULL);
INSERT INTO `brava_lang` VALUES (979, 490, 1, NULL);
INSERT INTO `brava_lang` VALUES (980, 490, 2, NULL);
INSERT INTO `brava_lang` VALUES (981, 491, 1, NULL);
INSERT INTO `brava_lang` VALUES (982, 491, 2, NULL);
INSERT INTO `brava_lang` VALUES (983, 492, 1, NULL);
INSERT INTO `brava_lang` VALUES (984, 492, 2, NULL);
INSERT INTO `brava_lang` VALUES (985, 493, 1, NULL);
INSERT INTO `brava_lang` VALUES (986, 493, 2, NULL);
INSERT INTO `brava_lang` VALUES (987, 494, 1, NULL);
INSERT INTO `brava_lang` VALUES (988, 494, 2, NULL);
INSERT INTO `brava_lang` VALUES (989, 495, 1, NULL);
INSERT INTO `brava_lang` VALUES (990, 495, 2, NULL);
INSERT INTO `brava_lang` VALUES (991, 496, 1, NULL);
INSERT INTO `brava_lang` VALUES (992, 496, 2, NULL);
INSERT INTO `brava_lang` VALUES (993, 497, 1, NULL);
INSERT INTO `brava_lang` VALUES (994, 497, 2, NULL);
INSERT INTO `brava_lang` VALUES (995, 498, 1, NULL);
INSERT INTO `brava_lang` VALUES (996, 498, 2, NULL);
INSERT INTO `brava_lang` VALUES (997, 499, 1, NULL);
INSERT INTO `brava_lang` VALUES (998, 499, 2, NULL);
INSERT INTO `brava_lang` VALUES (999, 500, 1, NULL);
INSERT INTO `brava_lang` VALUES (1000, 500, 2, NULL);
INSERT INTO `brava_lang` VALUES (1001, 501, 1, NULL);
INSERT INTO `brava_lang` VALUES (1002, 501, 2, NULL);
INSERT INTO `brava_lang` VALUES (1003, 502, 1, NULL);
INSERT INTO `brava_lang` VALUES (1004, 502, 2, NULL);
INSERT INTO `brava_lang` VALUES (1005, 503, 1, NULL);
INSERT INTO `brava_lang` VALUES (1006, 503, 2, NULL);
INSERT INTO `brava_lang` VALUES (1007, 504, 1, NULL);
INSERT INTO `brava_lang` VALUES (1008, 504, 2, NULL);
INSERT INTO `brava_lang` VALUES (1009, 505, 1, NULL);
INSERT INTO `brava_lang` VALUES (1010, 505, 2, NULL);
INSERT INTO `brava_lang` VALUES (1011, 506, 1, NULL);
INSERT INTO `brava_lang` VALUES (1012, 506, 2, NULL);
INSERT INTO `brava_lang` VALUES (1013, 507, 1, NULL);
INSERT INTO `brava_lang` VALUES (1014, 507, 2, NULL);
INSERT INTO `brava_lang` VALUES (1015, 508, 1, NULL);
INSERT INTO `brava_lang` VALUES (1016, 508, 2, NULL);
INSERT INTO `brava_lang` VALUES (1017, 509, 1, NULL);
INSERT INTO `brava_lang` VALUES (1018, 509, 2, NULL);
INSERT INTO `brava_lang` VALUES (1019, 510, 1, '<p>Patatines al cabrales con “ablanes”.&nbsp;</p>');
INSERT INTO `brava_lang` VALUES (1020, 510, 2, '<p>Patatines al cabrales con “ablanes”.&nbsp;</p>');
INSERT INTO `brava_lang` VALUES (1021, 511, 1, 'Entrepà bravo.');
INSERT INTO `brava_lang` VALUES (1022, 511, 2, '<p>Bocata bravo.</p>');
INSERT INTO `brava_lang` VALUES (1023, 512, 1, 'Truita brava.');
INSERT INTO `brava_lang` VALUES (1024, 512, 2, '<p>Tortilla brava.</p>');
INSERT INTO `brava_lang` VALUES (1025, 513, 1, '<p>Pollastre bravo.</p>');
INSERT INTO `brava_lang` VALUES (1026, 513, 2, '<p>Pollo bravo.</p>');
INSERT INTO `brava_lang` VALUES (1027, 514, 1, '<p>Gnochis bravos.</p>');
INSERT INTO `brava_lang` VALUES (1028, 514, 2, '<p>Gnochis bravos.</p>');
INSERT INTO `brava_lang` VALUES (1029, 515, 1, 'Cachopo bravo.');
INSERT INTO `brava_lang` VALUES (1030, 515, 2, '<p>Cachopo bravo.</p>');
INSERT INTO `brava_lang` VALUES (1031, 516, 1, NULL);
INSERT INTO `brava_lang` VALUES (1032, 516, 2, NULL);
INSERT INTO `brava_lang` VALUES (1033, 517, 1, NULL);
INSERT INTO `brava_lang` VALUES (1034, 517, 2, NULL);
INSERT INTO `brava_lang` VALUES (1035, 518, 1, NULL);
INSERT INTO `brava_lang` VALUES (1036, 518, 2, NULL);
INSERT INTO `brava_lang` VALUES (1037, 519, 1, NULL);
INSERT INTO `brava_lang` VALUES (1038, 519, 2, NULL);
INSERT INTO `brava_lang` VALUES (1039, 520, 1, NULL);
INSERT INTO `brava_lang` VALUES (1040, 520, 2, NULL);
INSERT INTO `brava_lang` VALUES (1041, 521, 1, NULL);
INSERT INTO `brava_lang` VALUES (1042, 521, 2, NULL);
INSERT INTO `brava_lang` VALUES (1043, 522, 1, NULL);
INSERT INTO `brava_lang` VALUES (1044, 522, 2, NULL);
INSERT INTO `brava_lang` VALUES (1045, 523, 1, NULL);
INSERT INTO `brava_lang` VALUES (1046, 523, 2, NULL);
INSERT INTO `brava_lang` VALUES (1047, 524, 1, NULL);
INSERT INTO `brava_lang` VALUES (1048, 524, 2, NULL);
INSERT INTO `brava_lang` VALUES (1049, 525, 1, NULL);
INSERT INTO `brava_lang` VALUES (1050, 525, 2, NULL);
INSERT INTO `brava_lang` VALUES (1051, 526, 1, NULL);
INSERT INTO `brava_lang` VALUES (1052, 526, 2, NULL);
INSERT INTO `brava_lang` VALUES (1053, 527, 1, NULL);
INSERT INTO `brava_lang` VALUES (1054, 527, 2, NULL);
INSERT INTO `brava_lang` VALUES (1055, 528, 1, NULL);
INSERT INTO `brava_lang` VALUES (1056, 528, 2, NULL);
INSERT INTO `brava_lang` VALUES (1057, 529, 1, NULL);
INSERT INTO `brava_lang` VALUES (1058, 529, 2, NULL);
INSERT INTO `brava_lang` VALUES (1059, 530, 1, NULL);
INSERT INTO `brava_lang` VALUES (1060, 530, 2, NULL);
INSERT INTO `brava_lang` VALUES (1061, 531, 1, NULL);
INSERT INTO `brava_lang` VALUES (1062, 531, 2, NULL);
INSERT INTO `brava_lang` VALUES (1063, 532, 1, NULL);
INSERT INTO `brava_lang` VALUES (1064, 532, 2, NULL);
INSERT INTO `brava_lang` VALUES (1065, 533, 1, NULL);
INSERT INTO `brava_lang` VALUES (1066, 533, 2, NULL);
INSERT INTO `brava_lang` VALUES (1067, 534, 1, NULL);
INSERT INTO `brava_lang` VALUES (1068, 534, 2, NULL);
INSERT INTO `brava_lang` VALUES (1069, 535, 1, NULL);
INSERT INTO `brava_lang` VALUES (1070, 535, 2, NULL);
INSERT INTO `brava_lang` VALUES (1071, 536, 1, NULL);
INSERT INTO `brava_lang` VALUES (1072, 536, 2, NULL);
INSERT INTO `brava_lang` VALUES (1073, 537, 1, NULL);
INSERT INTO `brava_lang` VALUES (1074, 537, 2, NULL);
INSERT INTO `brava_lang` VALUES (1075, 538, 1, NULL);
INSERT INTO `brava_lang` VALUES (1076, 538, 2, NULL);
INSERT INTO `brava_lang` VALUES (1077, 539, 1, NULL);
INSERT INTO `brava_lang` VALUES (1078, 539, 2, NULL);
INSERT INTO `brava_lang` VALUES (1079, 540, 1, NULL);
INSERT INTO `brava_lang` VALUES (1080, 540, 2, NULL);
INSERT INTO `brava_lang` VALUES (1081, 541, 1, NULL);
INSERT INTO `brava_lang` VALUES (1082, 541, 2, NULL);
INSERT INTO `brava_lang` VALUES (1083, 542, 1, NULL);
INSERT INTO `brava_lang` VALUES (1084, 542, 2, NULL);
INSERT INTO `brava_lang` VALUES (1085, 543, 1, NULL);
INSERT INTO `brava_lang` VALUES (1086, 543, 2, NULL);
INSERT INTO `brava_lang` VALUES (1089, 545, 1, NULL);
INSERT INTO `brava_lang` VALUES (1090, 545, 2, NULL);
INSERT INTO `brava_lang` VALUES (1091, 546, 1, NULL);
INSERT INTO `brava_lang` VALUES (1092, 546, 2, NULL);
INSERT INTO `brava_lang` VALUES (1093, 547, 1, NULL);
INSERT INTO `brava_lang` VALUES (1094, 547, 2, NULL);
INSERT INTO `brava_lang` VALUES (1095, 548, 1, NULL);
INSERT INTO `brava_lang` VALUES (1096, 548, 2, NULL);
INSERT INTO `brava_lang` VALUES (1097, 549, 1, NULL);
INSERT INTO `brava_lang` VALUES (1098, 549, 2, NULL);
INSERT INTO `brava_lang` VALUES (1099, 550, 1, NULL);
INSERT INTO `brava_lang` VALUES (1100, 550, 2, NULL);
INSERT INTO `brava_lang` VALUES (1101, 551, 1, NULL);
INSERT INTO `brava_lang` VALUES (1102, 551, 2, NULL);
INSERT INTO `brava_lang` VALUES (1103, 552, 1, NULL);
INSERT INTO `brava_lang` VALUES (1104, 552, 2, NULL);
INSERT INTO `brava_lang` VALUES (1105, 553, 1, NULL);
INSERT INTO `brava_lang` VALUES (1106, 553, 2, NULL);
INSERT INTO `brava_lang` VALUES (1107, 554, 1, NULL);
INSERT INTO `brava_lang` VALUES (1108, 554, 2, NULL);
INSERT INTO `brava_lang` VALUES (1109, 555, 1, NULL);
INSERT INTO `brava_lang` VALUES (1110, 555, 2, NULL);
COMMIT;

-- ----------------------------
-- Table structure for brava_review
-- ----------------------------
DROP TABLE IF EXISTS `brava_review`;
CREATE TABLE `brava_review` (
  `id_brava_review` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_brava` mediumint(8) unsigned NOT NULL,
  `image` mediumint(8) unsigned DEFAULT NULL,
  `price` double(6,2) unsigned DEFAULT NULL,
  `amount` double(3,1) unsigned DEFAULT NULL,
  `potatoes` double(3,1) unsigned DEFAULT NULL,
  `sauce` double(3,1) unsigned DEFAULT NULL,
  `score` double(3,1) unsigned DEFAULT NULL,
  `last_visit` date DEFAULT NULL,
  PRIMARY KEY (`id_brava_review`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brava_review
-- ----------------------------
BEGIN;
INSERT INTO `brava_review` VALUES (1, 307, 85, 5.50, 10.0, 9.0, 10.0, 9.5, '2016-10-16');
INSERT INTO `brava_review` VALUES (2, 308, 87, 4.20, 6.0, 9.0, 10.0, 9.5, '2016-07-06');
INSERT INTO `brava_review` VALUES (3, 309, 88, 4.50, 7.0, 9.5, 10.0, 9.5, '2015-11-17');
INSERT INTO `brava_review` VALUES (4, 310, 90, 4.00, 8.0, 9.5, 9.5, 9.5, '2017-02-25');
INSERT INTO `brava_review` VALUES (5, 311, 91, 5.25, 7.0, 10.0, 9.0, 9.5, '2019-08-06');
INSERT INTO `brava_review` VALUES (6, 312, 92, 4.75, 7.0, 9.0, 10.0, 9.5, '2020-02-03');
INSERT INTO `brava_review` VALUES (7, 313, 94, 8.50, 7.0, 9.0, 9.0, 9.0, '2023-03-01');
INSERT INTO `brava_review` VALUES (8, 314, 95, 9.50, 2.0, 9.0, 9.0, 9.0, '2022-10-01');
INSERT INTO `brava_review` VALUES (9, 315, 96, NULL, 7.0, 10.0, 8.0, 9.0, '2022-07-15');
INSERT INTO `brava_review` VALUES (10, 316, 98, 5.90, 9.0, 9.0, 9.0, 9.0, '2022-06-16');
INSERT INTO `brava_review` VALUES (11, 317, 99, 5.00, 4.0, 9.0, 9.0, 9.0, '2022-04-14');
INSERT INTO `brava_review` VALUES (12, 318, 101, 6.50, 10.0, 9.0, 9.0, 9.0, '2021-10-11');
INSERT INTO `brava_review` VALUES (13, 319, 102, NULL, 7.0, 8.0, 10.0, 9.0, '2020-09-05');
INSERT INTO `brava_review` VALUES (14, 320, 103, 4.50, 8.0, 8.0, 10.0, 9.0, '2019-01-08');
INSERT INTO `brava_review` VALUES (15, 321, 104, 5.50, 8.0, 10.0, 8.0, 9.0, '2018-11-01');
INSERT INTO `brava_review` VALUES (16, 322, 105, 4.80, 3.0, 9.0, 9.0, 9.0, '2018-01-03');
INSERT INTO `brava_review` VALUES (17, 323, 108, 5.00, 7.0, 9.0, 9.0, 9.0, '2021-03-28');
INSERT INTO `brava_review` VALUES (18, 324, 110, NULL, NULL, NULL, NULL, 9.0, '2015-03-17');
INSERT INTO `brava_review` VALUES (19, 325, 111, 3.75, 6.0, 10.0, 8.0, 9.0, '2017-03-15');
INSERT INTO `brava_review` VALUES (20, 326, 112, NULL, 8.0, 10.0, 8.0, 9.0, '2018-09-13');
INSERT INTO `brava_review` VALUES (21, 327, 113, 3.80, 8.0, 10.0, 8.0, 9.0, '2018-12-13');
INSERT INTO `brava_review` VALUES (22, 328, 152, 7.50, 6.0, 8.0, 9.0, 8.5, '2022-12-24');
INSERT INTO `brava_review` VALUES (23, 329, 130, NULL, 10.0, 9.0, 8.0, 8.5, '2022-04-30');
INSERT INTO `brava_review` VALUES (24, 330, 142, 6.00, 3.0, 9.0, 8.0, 8.5, '2022-03-15');
INSERT INTO `brava_review` VALUES (25, 331, 136, 4.50, 8.0, 9.0, 8.0, 8.5, '2021-06-12');
INSERT INTO `brava_review` VALUES (26, 332, 140, 4.40, 8.0, 9.0, 8.0, 8.5, '2022-01-17');
INSERT INTO `brava_review` VALUES (27, 333, 135, 4.50, 8.0, 9.0, 8.0, 8.5, '2021-06-12');
INSERT INTO `brava_review` VALUES (28, 334, 148, 3.90, 8.0, 9.0, 8.0, 8.5, '2020-07-02');
INSERT INTO `brava_review` VALUES (29, 335, 145, 4.80, 5.0, 9.0, 8.0, 8.5, '2021-04-02');
INSERT INTO `brava_review` VALUES (30, 336, 141, 4.50, 8.0, 9.0, 8.0, 8.5, '2017-08-01');
INSERT INTO `brava_review` VALUES (31, 337, 133, 4.80, 6.0, 9.0, 8.0, 8.5, '2018-09-03');
INSERT INTO `brava_review` VALUES (32, 338, 132, 3.95, 8.0, 8.5, 8.5, 8.5, '2015-05-01');
INSERT INTO `brava_review` VALUES (33, 339, 155, 6.50, 9.0, 9.0, 8.0, 8.5, '2017-09-17');
INSERT INTO `brava_review` VALUES (34, 340, 131, 5.00, 4.0, 9.0, 8.0, 8.5, '2015-10-22');
INSERT INTO `brava_review` VALUES (35, 341, 147, 4.30, 7.0, 8.0, 9.0, 8.5, '2019-11-17');
INSERT INTO `brava_review` VALUES (36, 342, 143, 4.50, 7.0, 10.0, 6.0, 8.5, '2016-09-17');
INSERT INTO `brava_review` VALUES (37, 343, 153, 3.90, 8.0, 9.0, 8.0, 8.5, '2016-11-05');
INSERT INTO `brava_review` VALUES (38, 344, 149, NULL, 10.0, 8.0, 9.0, 8.5, '2019-11-28');
INSERT INTO `brava_review` VALUES (39, 345, 137, 7.00, 10.0, 9.0, 8.0, 8.5, '2021-05-01');
INSERT INTO `brava_review` VALUES (40, 346, 138, 4.50, 6.0, 9.0, 8.0, 8.5, '2017-06-22');
INSERT INTO `brava_review` VALUES (41, 347, 156, 4.50, 10.0, 9.0, 8.0, 8.5, '2017-07-06');
INSERT INTO `brava_review` VALUES (42, 348, 134, 4.50, 6.0, 8.0, 9.0, 8.5, '2020-12-19');
INSERT INTO `brava_review` VALUES (43, 349, 144, 4.50, 9.0, 9.0, 8.0, 8.5, '2019-06-30');
INSERT INTO `brava_review` VALUES (44, 350, 154, 4.50, 7.0, 8.0, 9.0, 8.5, '2017-12-04');
INSERT INTO `brava_review` VALUES (45, 351, 139, 4.95, 6.0, 9.0, 8.0, 8.5, '2015-06-01');
INSERT INTO `brava_review` VALUES (46, 352, 347, 4.00, 6.0, 10.0, 7.0, 8.5, '2017-09-23');
INSERT INTO `brava_review` VALUES (47, 353, 170, 6.40, 9.0, 9.0, 7.0, 8.0, '2023-05-09');
INSERT INTO `brava_review` VALUES (48, 354, 175, 4.95, 9.0, 9.0, 7.0, 8.0, '2023-03-04');
INSERT INTO `brava_review` VALUES (49, 355, 199, 4.50, 7.0, 8.0, 8.0, 8.0, '2022-09-25');
INSERT INTO `brava_review` VALUES (50, 356, 201, 6.00, 7.0, 8.0, 8.0, 8.0, '2022-05-13');
INSERT INTO `brava_review` VALUES (51, 357, 174, 6.00, 4.0, 9.0, 7.0, 8.0, '2023-02-22');
INSERT INTO `brava_review` VALUES (52, 358, 181, 5.95, 7.0, 8.0, 8.0, 8.0, '2022-04-01');
INSERT INTO `brava_review` VALUES (53, 359, 190, 5.70, 7.0, 8.0, 8.0, 8.0, '2022-03-29');
INSERT INTO `brava_review` VALUES (54, 360, 188, 4.50, 7.0, 9.0, 7.0, 8.0, '2021-07-28');
INSERT INTO `brava_review` VALUES (55, 361, 157, NULL, 6.0, 9.0, 7.0, 8.0, '2022-02-02');
INSERT INTO `brava_review` VALUES (56, 362, 166, 6.00, 8.0, 8.0, 8.0, 8.0, '2021-12-18');
INSERT INTO `brava_review` VALUES (57, 363, 167, 5.50, 7.0, 8.0, 8.0, 8.0, '2021-03-13');
INSERT INTO `brava_review` VALUES (58, 364, 162, NULL, 8.0, 9.0, 7.0, 8.0, '2020-01-09');
INSERT INTO `brava_review` VALUES (59, 365, 180, 5.00, 2.0, 6.0, 8.0, 8.0, '2018-10-16');
INSERT INTO `brava_review` VALUES (60, 366, 164, 4.50, 7.0, 6.0, 10.0, 8.0, '2027-06-25');
INSERT INTO `brava_review` VALUES (61, 367, 192, 4.80, 8.0, 8.0, 8.0, 8.0, '2017-02-02');
INSERT INTO `brava_review` VALUES (62, 368, 193, 4.00, 8.0, 9.0, 7.0, 8.0, '2018-01-10');
INSERT INTO `brava_review` VALUES (63, 369, NULL, 8.00, 7.0, 8.0, 8.0, 8.0, '2019-12-10');
INSERT INTO `brava_review` VALUES (64, 370, 198, 3.60, 5.0, 8.0, 8.0, 8.0, '2018-03-27');
INSERT INTO `brava_review` VALUES (65, 371, 159, 3.80, 5.0, 8.0, 9.0, 8.0, '2016-05-07');
INSERT INTO `brava_review` VALUES (66, 372, 168, NULL, 2.0, 7.0, 9.0, 8.0, '2019-01-27');
INSERT INTO `brava_review` VALUES (67, 373, 195, 4.40, 7.0, 8.0, 8.0, 8.0, '2018-07-26');
INSERT INTO `brava_review` VALUES (68, 374, 176, NULL, 9.0, 9.0, 7.0, 8.0, '2018-07-22');
INSERT INTO `brava_review` VALUES (69, 375, 158, 4.00, 6.0, 8.0, 8.0, 8.0, '2017-10-07');
INSERT INTO `brava_review` VALUES (70, 376, 183, 3.50, 7.0, 9.0, 7.0, 8.0, '2016-10-14');
INSERT INTO `brava_review` VALUES (71, 377, 196, 3.90, 7.0, 8.0, 8.0, 8.0, '2018-05-16');
INSERT INTO `brava_review` VALUES (72, 378, 161, NULL, 5.0, 8.0, 7.0, 8.0, '2016-11-11');
INSERT INTO `brava_review` VALUES (73, 379, 256, 4.60, 7.0, 8.0, 7.0, 7.5, '2016-03-15');
INSERT INTO `brava_review` VALUES (74, 380, 160, 7.00, 7.0, 8.0, 8.0, 8.0, '2017-04-12');
INSERT INTO `brava_review` VALUES (75, 381, 163, NULL, 7.0, 9.0, 7.0, 8.0, '2017-06-09');
INSERT INTO `brava_review` VALUES (76, 382, 169, 3.50, 10.0, 9.0, 7.0, 8.0, '2017-05-19');
INSERT INTO `brava_review` VALUES (77, 383, 178, 3.80, 6.0, 8.0, 8.0, 8.0, '2020-07-21');
INSERT INTO `brava_review` VALUES (78, 384, 165, 4.00, 6.0, 7.0, 10.0, 8.0, '2018-03-31');
INSERT INTO `brava_review` VALUES (79, 385, 200, 3.90, 10.0, 9.0, 7.0, 8.0, '2017-06-08');
INSERT INTO `brava_review` VALUES (80, 386, 173, NULL, NULL, NULL, NULL, 7.5, '2019-12-24');
INSERT INTO `brava_review` VALUES (81, 387, 202, 5.90, 9.0, 8.0, 7.0, 7.5, '2023-04-19');
INSERT INTO `brava_review` VALUES (82, 388, 206, 6.50, 9.0, 8.0, 7.0, 7.5, '2023-04-05');
INSERT INTO `brava_review` VALUES (83, 389, 229, 2.50, 10.0, 8.0, 7.0, 7.5, '2022-12-28');
INSERT INTO `brava_review` VALUES (84, 390, 209, 4.75, 10.0, 8.0, 7.0, 7.5, '2022-11-22');
INSERT INTO `brava_review` VALUES (85, 391, 210, 4.70, 8.0, 8.0, 7.0, 7.5, '2022-08-19');
INSERT INTO `brava_review` VALUES (86, 392, 234, 4.20, 7.0, 8.0, 7.0, 7.5, '2022-07-25');
INSERT INTO `brava_review` VALUES (87, 393, 235, NULL, 8.0, 8.0, 7.0, 7.5, '2022-06-26');
INSERT INTO `brava_review` VALUES (88, 394, 237, 4.50, 7.0, 7.0, 8.0, 7.5, '2022-05-03');
INSERT INTO `brava_review` VALUES (89, 395, 204, 6.50, 9.0, 9.0, 6.0, 7.5, '2022-02-05');
INSERT INTO `brava_review` VALUES (90, 396, 238, 7.00, 9.0, 7.0, 8.0, 7.5, '2018-11-09');
INSERT INTO `brava_review` VALUES (91, 397, 225, 5.00, 7.0, 7.0, 8.0, 7.5, '2021-09-05');
INSERT INTO `brava_review` VALUES (92, 398, 236, 4.90, 9.0, 6.0, 8.0, 7.5, NULL);
INSERT INTO `brava_review` VALUES (93, 399, 239, 4.10, 7.0, 9.0, 7.0, 7.5, '2016-06-02');
INSERT INTO `brava_review` VALUES (94, 400, 228, 4.90, 10.0, 7.0, 8.0, 7.5, NULL);
INSERT INTO `brava_review` VALUES (95, 401, 232, 4.50, 9.0, 10.0, 5.0, 7.5, '2019-06-02');
INSERT INTO `brava_review` VALUES (96, 402, 233, 3.50, 9.0, 9.0, 6.0, 7.5, '2018-02-17');
INSERT INTO `brava_review` VALUES (97, 403, 208, 4.80, 6.0, 8.0, 7.0, 7.5, '2017-02-17');
INSERT INTO `brava_review` VALUES (98, 404, 211, 4.70, 4.0, 7.0, 8.0, 7.5, '2016-03-17');
INSERT INTO `brava_review` VALUES (99, 405, 227, 5.25, 7.0, 7.0, 8.0, 7.5, '2016-06-09');
INSERT INTO `brava_review` VALUES (100, 406, 207, 4.50, 7.0, 8.0, 7.0, 7.5, '2019-09-10');
INSERT INTO `brava_review` VALUES (101, 407, 216, 4.50, 10.0, 8.0, 7.0, 7.5, '2018-02-14');
INSERT INTO `brava_review` VALUES (102, 408, 226, 6.00, 8.0, 7.0, 8.0, 7.5, '2018-03-20');
INSERT INTO `brava_review` VALUES (103, 409, 240, 3.00, 7.0, 7.0, 8.0, 7.5, '2016-09-01');
INSERT INTO `brava_review` VALUES (104, 410, 203, 6.30, 7.0, 8.0, 7.0, 7.5, '2019-07-05');
INSERT INTO `brava_review` VALUES (105, 411, 219, NULL, 8.0, 8.0, 7.0, 7.5, '2018-12-27');
INSERT INTO `brava_review` VALUES (106, 412, 242, 4.50, 8.0, 7.0, 7.0, 7.5, '2017-05-09');
INSERT INTO `brava_review` VALUES (107, 413, 224, 4.50, 9.0, 9.0, 6.0, 7.5, '2020-12-15');
INSERT INTO `brava_review` VALUES (108, 414, 217, 4.10, 5.0, 9.0, 7.0, 7.5, '2017-02-15');
INSERT INTO `brava_review` VALUES (109, 415, 241, 6.50, 7.0, 7.0, 8.0, 7.5, '2021-05-21');
INSERT INTO `brava_review` VALUES (110, 416, 221, NULL, 8.0, 6.0, 9.0, 7.5, '2017-10-29');
INSERT INTO `brava_review` VALUES (111, 417, 205, 4.50, 8.0, 8.0, 7.0, 7.5, '2018-09-27');
INSERT INTO `brava_review` VALUES (112, 418, 346, NULL, 10.0, 9.0, 7.0, 7.5, '2017-03-17');
INSERT INTO `brava_review` VALUES (113, 419, 243, 5.30, 7.0, 7.0, 8.0, 7.5, '2021-05-25');
INSERT INTO `brava_review` VALUES (114, 420, 215, 3.95, 7.0, 8.0, 7.0, 7.5, '2019-02-14');
INSERT INTO `brava_review` VALUES (115, 421, 218, 4.75, 9.0, 9.5, 6.5, 8.0, NULL);
INSERT INTO `brava_review` VALUES (116, 422, 276, 4.60, 9.0, 8.0, 6.0, 7.0, '2023-02-01');
INSERT INTO `brava_review` VALUES (117, 423, 281, 4.50, 10.0, 8.0, 6.0, 7.0, '2022-07-13');
INSERT INTO `brava_review` VALUES (118, 424, 271, 5.00, 8.0, 9.0, 5.0, 7.0, '2022-06-02');
INSERT INTO `brava_review` VALUES (119, 425, 285, 3.90, 9.0, 7.0, 7.0, 7.0, '2022-03-04');
INSERT INTO `brava_review` VALUES (120, 426, 279, 6.00, 5.0, 7.0, 7.0, 7.0, '2022-03-02');
INSERT INTO `brava_review` VALUES (121, 427, 254, 3.00, 7.0, 10.0, 3.0, 6.5, '2019-10-23');
INSERT INTO `brava_review` VALUES (122, 428, 251, 7.00, 8.0, 7.0, 7.0, 7.0, '2022-01-02');
INSERT INTO `brava_review` VALUES (123, 429, 258, 4.00, 8.0, 7.0, 7.0, 7.0, '2020-03-05');
INSERT INTO `brava_review` VALUES (124, 430, 259, 2.50, 4.0, 7.0, 7.0, 7.0, '2020-02-16');
INSERT INTO `brava_review` VALUES (125, 431, 264, NULL, NULL, NULL, NULL, 8.0, '2014-11-25');
INSERT INTO `brava_review` VALUES (126, 432, 250, 6.75, 10.0, 7.0, 7.0, 7.0, '2017-04-06');
INSERT INTO `brava_review` VALUES (127, 433, 282, NULL, 10.0, 6.0, 7.0, 7.0, '2016-03-03');
INSERT INTO `brava_review` VALUES (128, 434, 263, 5.00, 5.0, 6.0, 7.0, 7.0, NULL);
INSERT INTO `brava_review` VALUES (129, 435, 261, 6.50, 4.0, 7.0, 7.0, 7.0, '2019-09-24');
INSERT INTO `brava_review` VALUES (130, 436, 273, 4.50, 10.0, 6.0, 7.0, 7.0, NULL);
INSERT INTO `brava_review` VALUES (131, 437, 260, 4.70, 7.0, 7.0, 7.0, 7.0, '2018-02-27');
INSERT INTO `brava_review` VALUES (132, 438, 248, 4.95, 7.0, 8.0, 6.0, 7.0, '2019-10-08');
INSERT INTO `brava_review` VALUES (133, 439, 283, 3.75, 8.0, 7.0, 7.0, 7.0, NULL);
INSERT INTO `brava_review` VALUES (134, 440, 257, 4.50, 7.0, 7.0, 8.0, 7.0, '2016-07-28');
INSERT INTO `brava_review` VALUES (135, 441, 280, 3.25, 9.0, 6.0, 7.0, 7.0, '2016-06-04');
INSERT INTO `brava_review` VALUES (136, 442, 278, NULL, NULL, NULL, NULL, 7.0, '2015-11-07');
INSERT INTO `brava_review` VALUES (137, 443, 274, 3.95, 7.0, 9.0, 5.0, 7.0, NULL);
INSERT INTO `brava_review` VALUES (138, 444, 277, 4.90, 6.0, 8.0, 7.0, 7.0, '2016-11-25');
INSERT INTO `brava_review` VALUES (139, 445, 245, 5.50, 8.0, 8.0, 6.5, 7.0, '2017-05-30');
INSERT INTO `brava_review` VALUES (140, 446, 266, NULL, NULL, 7.0, 7.0, 7.0, '2018-08-23');
INSERT INTO `brava_review` VALUES (141, 447, 252, 7.00, 8.0, 6.5, 7.0, 7.0, '2017-05-22');
INSERT INTO `brava_review` VALUES (142, 448, 275, 4.85, 9.0, 8.0, 6.0, 7.0, '2021-01-08');
INSERT INTO `brava_review` VALUES (143, 449, 267, 6.00, 4.0, 8.0, 6.0, 7.0, '2018-08-16');
INSERT INTO `brava_review` VALUES (144, 450, 270, 4.50, 9.0, 8.0, 6.0, 7.0, '2017-09-10');
INSERT INTO `brava_review` VALUES (145, 451, 246, NULL, 8.0, 8.0, 6.0, 7.0, '2019-01-27');
INSERT INTO `brava_review` VALUES (146, 452, 272, 3.50, 8.0, 8.0, 6.0, 7.0, '2018-10-25');
INSERT INTO `brava_review` VALUES (147, 453, 247, 4.50, 7.0, 8.0, 6.0, 7.0, '2020-10-24');
INSERT INTO `brava_review` VALUES (148, 454, 269, 5.50, 6.0, 7.0, 7.0, 7.0, '2022-04-25');
INSERT INTO `brava_review` VALUES (149, 455, 287, NULL, 8.0, 7.0, 6.0, 6.5, '2023-05-07');
INSERT INTO `brava_review` VALUES (150, 456, 296, 9.00, 7.0, 7.0, 6.0, 6.5, '2022-09-16');
INSERT INTO `brava_review` VALUES (151, 457, 297, NULL, 9.0, 6.0, 7.0, 6.5, '2022-07-21');
INSERT INTO `brava_review` VALUES (152, 458, 294, 4.50, 10.0, 7.0, 9.0, 8.5, '2027-06-02');
INSERT INTO `brava_review` VALUES (153, 459, NULL, NULL, NULL, NULL, NULL, 6.5, NULL);
INSERT INTO `brava_review` VALUES (154, 460, 289, NULL, 6.0, 5.0, 6.0, 6.5, '2017-05-15');
INSERT INTO `brava_review` VALUES (155, 461, 316, 4.00, 6.0, 7.0, 6.0, 6.5, NULL);
INSERT INTO `brava_review` VALUES (156, 462, 291, NULL, 8.0, 7.0, 6.0, 6.5, '2020-07-23');
INSERT INTO `brava_review` VALUES (157, 463, 288, 4.70, 6.0, 6.0, 7.0, 6.5, '2017-07-12');
INSERT INTO `brava_review` VALUES (158, 464, 293, 4.50, 7.0, 7.0, 6.0, NULL, '2019-10-08');
INSERT INTO `brava_review` VALUES (159, 465, 298, 4.00, 9.0, 6.0, 7.0, 6.5, '2018-10-13');
INSERT INTO `brava_review` VALUES (160, 466, 311, 5.00, 8.0, 8.0, 4.0, 6.0, '2023-01-25');
INSERT INTO `brava_review` VALUES (161, 467, 309, 5.95, 7.0, 9.0, 7.0, 6.0, '2022-11-04');
INSERT INTO `brava_review` VALUES (162, 468, 314, NULL, 9.0, 7.0, 5.0, 6.0, '2022-09-06');
INSERT INTO `brava_review` VALUES (163, 469, 303, 8.00, 10.0, 8.0, 4.0, 6.0, '2022-03-23');
INSERT INTO `brava_review` VALUES (164, 470, NULL, NULL, 9.0, 5.0, 7.0, 6.0, '2019-12-07');
INSERT INTO `brava_review` VALUES (165, 471, 302, 5.95, 7.0, 8.0, 4.0, 6.0, '2019-06-05');
INSERT INTO `brava_review` VALUES (166, 472, 299, NULL, 9.0, 7.0, 5.0, 6.0, '2019-02-26');
INSERT INTO `brava_review` VALUES (167, 473, 310, 4.50, 7.0, 6.0, 6.0, 6.0, '2019-01-15');
INSERT INTO `brava_review` VALUES (168, 474, 301, 0.00, 10.0, 6.0, 7.0, 6.0, '2016-04-24');
INSERT INTO `brava_review` VALUES (169, 475, 305, 4.20, 9.0, 8.0, 4.0, 6.0, '2018-06-29');
INSERT INTO `brava_review` VALUES (170, 476, 352, NULL, 8.0, 6.0, 6.0, 6.0, NULL);
INSERT INTO `brava_review` VALUES (171, 477, 307, NULL, 9.0, 6.0, 5.0, 6.0, '2016-06-11');
INSERT INTO `brava_review` VALUES (172, 478, 312, 3.00, 7.0, 6.0, 6.0, 6.0, '2018-09-21');
INSERT INTO `brava_review` VALUES (173, 479, 313, 4.50, 4.0, 8.0, 4.0, 6.0, '2018-10-05');
INSERT INTO `brava_review` VALUES (174, 480, 304, NULL, 8.0, 8.0, 4.0, 6.0, '2017-03-02');
INSERT INTO `brava_review` VALUES (175, 481, 306, 4.50, 6.0, 5.0, 7.0, NULL, '2017-08-08');
INSERT INTO `brava_review` VALUES (176, 482, 300, NULL, 9.0, NULL, 6.0, 6.0, '2017-03-18');
INSERT INTO `brava_review` VALUES (177, 483, 320, 5.50, 5.0, 5.0, 6.0, 5.5, '2022-12-20');
INSERT INTO `brava_review` VALUES (178, 484, 321, 5.50, 7.0, 8.0, 8.0, 8.0, '2022-12-11');
INSERT INTO `brava_review` VALUES (179, 485, 351, 6.90, 5.0, 5.0, 6.0, NULL, '2021-10-21');
INSERT INTO `brava_review` VALUES (180, 486, 318, 4.10, 7.0, 7.0, 4.0, 5.5, '2018-07-27');
INSERT INTO `brava_review` VALUES (181, 487, 350, 3.90, 8.0, 4.0, 6.0, 5.5, NULL);
INSERT INTO `brava_review` VALUES (182, 488, 323, NULL, 4.0, 5.0, 6.0, 5.5, NULL);
INSERT INTO `brava_review` VALUES (183, 489, 317, NULL, 7.0, 6.0, 5.0, 6.5, '2017-04-18');
INSERT INTO `brava_review` VALUES (184, 490, 322, 4.85, 6.0, 6.0, 5.0, 5.5, '2017-04-25');
INSERT INTO `brava_review` VALUES (185, 491, 325, 4.10, 10.0, 7.0, 4.0, 5.5, '2018-05-17');
INSERT INTO `brava_review` VALUES (186, 492, 329, 1.25, 10.0, 7.0, 3.0, 5.0, '2022-08-22');
INSERT INTO `brava_review` VALUES (187, 493, 328, 3.95, 7.0, 5.0, 5.0, 5.0, '2020-08-11');
INSERT INTO `brava_review` VALUES (188, 494, 326, 4.50, 7.0, 7.0, 2.0, 5.0, '2017-03-11');
INSERT INTO `brava_review` VALUES (189, 495, 330, NULL, 8.0, 7.0, 5.0, 6.0, '2022-09-24');
INSERT INTO `brava_review` VALUES (190, 496, 327, 3.00, 6.0, 7.0, 4.0, 5.5, '2017-12-13');
INSERT INTO `brava_review` VALUES (191, 497, 336, 3.50, 6.0, 7.0, 5.0, 6.0, NULL);
INSERT INTO `brava_review` VALUES (192, 498, 349, 4.00, 6.0, 5.0, 6.0, 4.5, '2019-04-01');
INSERT INTO `brava_review` VALUES (193, 499, 335, 4.80, 10.0, 7.0, 4.0, 4.5, '2015-11-07');
INSERT INTO `brava_review` VALUES (194, 500, 337, 15.00, 6.0, 3.0, 7.0, 5.0, '2017-07-12');
INSERT INTO `brava_review` VALUES (195, 501, 341, NULL, 7.0, 5.0, 3.0, 4.0, '2023-03-13');
INSERT INTO `brava_review` VALUES (196, 502, NULL, 4.50, 8.0, 5.0, 3.0, 4.0, '2022-06-21');
INSERT INTO `brava_review` VALUES (197, 503, 339, 5.50, 8.0, 5.0, 3.0, 4.0, '2021-05-08');
INSERT INTO `brava_review` VALUES (198, 504, 348, 2.60, 4.0, 6.0, 3.0, 4.5, '2016-06-19');
INSERT INTO `brava_review` VALUES (199, 505, 340, 3.80, 9.0, 4.0, 4.0, 4.0, '2020-02-28');
INSERT INTO `brava_review` VALUES (200, 506, 342, 4.95, 8.0, 7.0, 0.0, 3.5, '2020-09-05');
INSERT INTO `brava_review` VALUES (201, 507, 343, NULL, NULL, NULL, NULL, 3.0, '2020-07-09');
INSERT INTO `brava_review` VALUES (202, 508, 344, 4.50, 8.0, 3.0, 3.0, 3.0, '2021-01-02');
INSERT INTO `brava_review` VALUES (203, 509, 345, 3.90, 8.0, 3.0, 1.0, 2.0, '2017-07-25');
INSERT INTO `brava_review` VALUES (204, 510, 79, NULL, NULL, NULL, NULL, 10.0, '2017-04-25');
INSERT INTO `brava_review` VALUES (205, 511, 80, 6.00, 8.0, NULL, NULL, 9.0, '2018-02-08');
INSERT INTO `brava_review` VALUES (206, 512, 81, 28.00, 7.0, 9.0, 10.0, 8.5, '2018-02-22');
INSERT INTO `brava_review` VALUES (207, 513, 84, 5.00, 8.0, NULL, 9.0, 8.0, '2013-10-17');
INSERT INTO `brava_review` VALUES (208, 514, 82, 4.90, 10.0, 6.0, 9.0, 7.5, '2019-09-10');
INSERT INTO `brava_review` VALUES (209, 515, 83, 4.50, 8.0, NULL, NULL, 5.5, '2018-02-08');
INSERT INTO `brava_review` VALUES (210, 307, 86, 5.50, 10.0, 9.0, 10.0, 9.5, '2019-06-11');
INSERT INTO `brava_review` VALUES (211, 309, 89, NULL, 6.0, 9.0, 8.0, 8.5, '2021-04-04');
INSERT INTO `brava_review` VALUES (212, 312, 93, NULL, 7.0, 9.0, 10.0, 9.5, '2023-03-21');
INSERT INTO `brava_review` VALUES (213, 315, 97, 5.70, 6.0, 9.0, 9.0, 9.0, '2020-08-13');
INSERT INTO `brava_review` VALUES (214, 322, 106, 4.80, 7.0, 8.0, 10.0, 9.0, '2018-08-15');
INSERT INTO `brava_review` VALUES (215, 322, 107, 4.80, 7.0, 8.0, 10.0, 9.0, '2019-06-28');
INSERT INTO `brava_review` VALUES (216, 549, 114, 3.95, 7.0, 5.0, 3.0, 4.0, '2019-01-15');
INSERT INTO `brava_review` VALUES (217, 548, 115, NULL, 10.0, 4.0, 5.0, 4.5, '2019-01-25');
INSERT INTO `brava_review` VALUES (218, 547, 116, 3.25, 8.0, 9.0, 4.0, 5.0, '2015-10-15');
INSERT INTO `brava_review` VALUES (219, 550, 121, 6.80, 5.0, 7.0, 8.0, 7.5, '2023-05-28');
INSERT INTO `brava_review` VALUES (220, 551, 122, 6.00, 8.0, 8.0, 6.0, 7.0, '2023-05-28');
INSERT INTO `brava_review` VALUES (221, 516, 123, 5.90, 10.0, 9.0, 10.0, 9.5, '2019-09-17');
INSERT INTO `brava_review` VALUES (222, 518, 124, 3.50, 7.0, 9.0, 10.0, 9.5, '2016-03-17');
INSERT INTO `brava_review` VALUES (223, 519, 125, 6.90, 10.0, 9.0, 1.0, 9.5, '2018-04-14');
INSERT INTO `brava_review` VALUES (224, 517, 126, 5.90, 10.0, 9.0, 10.0, 9.5, '2018-09-08');
INSERT INTO `brava_review` VALUES (225, 521, 127, 4.90, 10.0, 8.5, 9.0, 9.0, '2017-02-21');
INSERT INTO `brava_review` VALUES (226, 522, 128, NULL, NULL, 8.0, 10.0, 9.0, '2015-12-17');
INSERT INTO `brava_review` VALUES (227, 520, 129, 9.50, 2.0, 8.0, 10.0, 9.0, '2015-02-17');
INSERT INTO `brava_review` VALUES (228, 335, 146, 4.25, 5.0, 9.0, 8.0, 8.5, '2021-04-02');
INSERT INTO `brava_review` VALUES (229, 344, 150, NULL, 7.0, 7.0, 8.0, 7.5, '2022-10-21');
INSERT INTO `brava_review` VALUES (230, 344, 151, NULL, NULL, NULL, NULL, NULL, '2022-10-21');
INSERT INTO `brava_review` VALUES (231, 386, 172, 4.20, 7.0, 8.0, 8.0, 8.0, '2020-12-11');
INSERT INTO `brava_review` VALUES (232, 523, 177, 4.30, 8.0, 7.0, 9.0, 8.0, '2019-04-01');
INSERT INTO `brava_review` VALUES (233, 525, 182, NULL, NULL, NULL, NULL, 8.0, '2015-02-24');
INSERT INTO `brava_review` VALUES (234, 526, 184, NULL, 9.0, 9.0, 7.0, 8.0, NULL);
INSERT INTO `brava_review` VALUES (235, 552, 185, 6.00, 6.0, 7.0, 7.0, 7.0, '2023-05-20');
INSERT INTO `brava_review` VALUES (236, 553, 186, 4.90, 9.0, 9.0, 8.0, 8.5, '2023-06-07');
INSERT INTO `brava_review` VALUES (237, 528, 197, NULL, 10.0, 7.0, 8.0, 7.5, '2016-04-23');
INSERT INTO `brava_review` VALUES (238, 527, 191, 3.20, 7.0, 9.0, 7.0, 8.0, '2015-10-07');
INSERT INTO `brava_review` VALUES (239, 524, 194, 5.50, 6.0, 6.0, 9.0, 7.5, '2016-10-26');
INSERT INTO `brava_review` VALUES (240, 530, 220, 4.50, 5.0, 9.0, 6.0, 7.5, '2017-03-07');
INSERT INTO `brava_review` VALUES (241, 416, 222, NULL, 6.0, 8.0, 7.0, 7.5, '2019-12-18');
INSERT INTO `brava_review` VALUES (242, 529, 223, 3.00, 4.0, 8.0, 7.0, 7.5, '2018-05-31');
INSERT INTO `brava_review` VALUES (243, 532, 230, 5.50, 8.0, 8.0, 7.0, 7.5, '2016-06-16');
INSERT INTO `brava_review` VALUES (244, 531, 231, 4.50, 6.0, 8.0, 7.0, 7.5, '2018-01-28');
INSERT INTO `brava_review` VALUES (245, 535, 244, 5.00, 3.0, 6.0, 7.0, 7.0, NULL);
INSERT INTO `brava_review` VALUES (246, 534, 249, 3.75, 4.0, 6.0, 7.0, 6.5, NULL);
INSERT INTO `brava_review` VALUES (247, 534, NULL, 5.50, 7.0, 5.0, 7.0, 6.0, NULL);
INSERT INTO `brava_review` VALUES (248, 427, 255, 3.50, 9.0, 10.0, 4.0, 7.0, '2022-02-25');
INSERT INTO `brava_review` VALUES (249, 537, 262, 4.50, 5.0, 7.0, 7.0, 7.0, '2017-07-25');
INSERT INTO `brava_review` VALUES (250, 431, 265, 4.80, 7.0, 6.0, 7.0, 7.0, '2016-09-28');
INSERT INTO `brava_review` VALUES (251, 536, 268, 4.00, 8.0, 8.0, 6.0, 7.0, '2017-06-10');
INSERT INTO `brava_review` VALUES (252, 533, 284, 4.50, 5.0, 7.0, 7.0, 7.0, '2016-07-16');
INSERT INTO `brava_review` VALUES (253, 538, 286, 4.25, 9.0, 4.0, 8.0, 6.5, '2017-04-01');
INSERT INTO `brava_review` VALUES (254, 539, 290, 4.50, 12.0, 7.0, 6.0, 6.5, '2018-08-27');
INSERT INTO `brava_review` VALUES (255, 540, 292, 4.50, 7.0, 7.0, 6.0, 6.5, '2017-07-18');
INSERT INTO `brava_review` VALUES (256, 458, 295, NULL, 7.0, 6.0, 7.0, 6.5, '2022-02-02');
INSERT INTO `brava_review` VALUES (257, 542, 308, 4.50, 3.0, 7.0, 5.0, 6.0, NULL);
INSERT INTO `brava_review` VALUES (258, 467, NULL, NULL, 7.0, 9.0, 7.0, 8.0, '2013-10-14');
INSERT INTO `brava_review` VALUES (259, 543, NULL, NULL, NULL, NULL, NULL, 6.0, NULL);
INSERT INTO `brava_review` VALUES (260, 541, 315, 4.50, 6.0, 6.0, 5.0, 5.5, '2016-12-02');
INSERT INTO `brava_review` VALUES (261, 546, NULL, 5.00, 6.0, 6.0, 5.0, 5.5, '2017-09-23');
INSERT INTO `brava_review` VALUES (262, 545, 324, 4.00, 9.0, 8.0, 3.0, 5.5, '2016-06-21');
INSERT INTO `brava_review` VALUES (263, 495, 331, 4.00, 8.0, 6.0, 4.0, 5.0, '2020-09-09');
INSERT INTO `brava_review` VALUES (264, 554, 332, 6.50, 7.0, 8.0, 7.0, 7.5, '2023-06-14');
INSERT INTO `brava_review` VALUES (265, 555, 333, 4.70, 8.0, 7.0, 7.0, 7.0, '2023-07-08');
INSERT INTO `brava_review` VALUES (266, 555, 334, 4.50, 8.0, 7.0, 6.0, 6.5, '2023-07-08');
COMMIT;

-- ----------------------------
-- Table structure for brava_review_lang
-- ----------------------------
DROP TABLE IF EXISTS `brava_review_lang`;
CREATE TABLE `brava_review_lang` (
  `id_brava_review_lang` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_brava_review` smallint(5) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_brava_review_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of brava_review_lang
-- ----------------------------
BEGIN;
INSERT INTO `brava_review_lang` VALUES (1, 1, 1, '<p>Yuka: bones però les pitjors. Potser per la yuka en si. Salsa molt bona, és la textura de la patata que no combinen.</p><p>Moniato: niceeee. Fritura de 10 i pesto bonissin. Original i sorprenent.</p><p>Patata: Salsa i patates molt bé.</p>');
INSERT INTO `brava_review_lang` VALUES (2, 1, 2, '<p>Yuka: buenas pero las peores. Quizá por la yuka en sí. Salsa muy buena, es la textura de la patata que no combina.</p><p>Boniato: niceeee. Fritura de 10 y pesto bonissin. Original y sorprendente.</p><p>Patata: Salsa y patatas muy bien.<br></p>');
INSERT INTO `brava_review_lang` VALUES (3, 2, 1, '<p>Patates calentes, bastant ben fetes cuites i un pèl cruixents (podrien ser-ho més). La salsa és abundant i està boníssima: una salsa de tomàquet casolana, amb una salsa especiada que pica suficient.</p>');
INSERT INTO `brava_review_lang` VALUES (4, 2, 2, '<p>Patatas calientes, bastante bien hechas cocidas y algo crujientes (podrían serlo más). La salsa es abundante y está buenísima: una salsa de tomate casera, con una salsa especiada que pica suficiente</p>');
INSERT INTO `brava_review_lang` VALUES (5, 3, 1, '<p>Estan putament bones. Molta salsa per patata quadrada. La salsa blanca és allioli suau, l\'oli picant: pica, però podria picar més pel que fa als nostres paladars.</p>');
INSERT INTO `brava_review_lang` VALUES (6, 3, 2, '<p>Están putamente buenas. Mucha salsa por patata cuadrada. La salsa blanca es alioli suave, el aceite picante: pica, pero podría picar más con respecto a nuestros paladares.</p>');
INSERT INTO `brava_review_lang` VALUES (7, 4, 1, '<p>Les patates estan bones i ben fetes. Les salses.... no sabem que són, però estan molt bones. La blanca és com un allioli-romesco molt suau i la vermella pimenton a saco.</p>');
INSERT INTO `brava_review_lang` VALUES (8, 4, 2, '<p>Las patatas están buenas y bien hechas. Las salsas... no sabemos que son, pero están muy buenas. La blanca es como un alioli-romesco muy suave y la roja pimenton a saco.</p>');
INSERT INTO `brava_review_lang` VALUES (9, 5, 1, '<p>Vull dir: així es fan les patates d\'unes braves. Salsa allioli cremós, i una salsa vermella bastant potent i un xiiiic picant.</p>');
INSERT INTO `brava_review_lang` VALUES (10, 5, 2, '<p>Quiero decir: así se hacen las patatas de unas bravas. Salsa alioli cremoso, y una salsa roja bastante potente y un poco picante.</p>');
INSERT INTO `brava_review_lang` VALUES (11, 6, 1, '<p>Les patateres estan molt ben fetes, creiem que bullides però no fregides, és per això que no tenen un 10. Aquestes en forma de volcà en mig d\'un mar d\'oli de xoriço picant amb erupció de mus d\'allioli.</p>');
INSERT INTO `brava_review_lang` VALUES (12, 6, 2, '<p>Las patateras están muy bien hechas, creemos que hervidas pero no fritas, es por eso que no tienen un 10. Éstas en forma de volcán en medio de un mar de aceite de chorizo picante con erupción de mus de alioli.</p>');
INSERT INTO `brava_review_lang` VALUES (13, 7, 1, '<p>Realment bastant increïble. Truita brava perfecta: molt crueta i salsa picantona. Llastima que estiguin les patates una mica fredes, i que no siguin unes \"braves en si\".</p>');
INSERT INTO `brava_review_lang` VALUES (14, 7, 2, '<p>Realmente bastante increíble. Tortilla brava perfecta: muy crudita y salsa picantona. Lástima que estén las patatas algo frías, y que no sean unas \"bravas en sí\".</p>');
INSERT INTO `brava_review_lang` VALUES (15, 8, 1, '<p>Milfulls de patata molt ben fet i cruixent, però l\'hi falta un punt de sabor. Les salses casolanes són un bon allioli i una vermella de tomàquet molt bona també. La combinació és quasi perfecte. Lloc idíl·lic pagat a preu d\'or.</p>');
INSERT INTO `brava_review_lang` VALUES (16, 8, 2, '<p>Milhojas de patata muy bien hecho y crujiente, pero le falta un punto de sabor. Las salsas caseras son un buen alioli y una roja de tomate muy buena también. La combinación es casi perfecta. Lugar idílico pagado a precio de oro.</p>');
INSERT INTO `brava_review_lang` VALUES (17, 9, 1, '<p>Les patates excel·lents. Res més a dir. Salsa: allioli simplona, això si: una salsa vermella picantona i que li queda molt bé.</p>');
INSERT INTO `brava_review_lang` VALUES (18, 9, 2, '<p>Las patatas excelentes. Nada más que decir. Salsa: alioli simplona, eso si: una salsa roja picantona y que le queda muy bien.</p>');
INSERT INTO `brava_review_lang` VALUES (19, 10, 1, '<p>La patata molt bona: ben feta, fregida i amb un gust molt meloset 😋. La salsa vermella picantona, i un allioli potent. Global genial.</p>');
INSERT INTO `brava_review_lang` VALUES (20, 10, 2, '<p>La patata muy buena: bien hecha, frita y con un sabor muy melosito 😋. La salsa roja picantona, y un alioli potente. Global genial.</p>');
INSERT INTO `brava_review_lang` VALUES (21, 11, 1, '<p>Les patates molt bones, com mig al caliu mig fregides. Salses: allioli suau però casolà, i una salsa vermella de pimenton que pica correctament. Malauradament estan a New York...</p>');
INSERT INTO `brava_review_lang` VALUES (22, 11, 2, '<p>Las patatas muy buenas, como medio al rescoldo medio fritas. Salsas: alioli suave pero casero, y una salsa roja de pimenton que pica correctamente. Desgraciadamente están en New York...</p>');
INSERT INTO `brava_review_lang` VALUES (23, 12, 1, '<p>Patates al caliu amb crosta cruixent, molt bona. Salsa vermella picantona, allioli suau i maionesa d\'oliva negre, molt molt bona.</p>');
INSERT INTO `brava_review_lang` VALUES (24, 12, 2, '<p>Patatas al horno con corteza crujiente, muy buena. Salsa roja picantona, alioli suave y mayonesa de aceituna negra, muy muy buena.</p>');
INSERT INTO `brava_review_lang` VALUES (25, 13, 1, '<p>Patata ben feta, res a destacar. Salses: vermella amb nyora i un gust interessant, salsa blanca: maionesa casolana. Tot acompanyat d\'oli picant interessant. Conjunt molt bo que recorda a Lays receta campesina! \"Agitar antes de usar\".</p>');
INSERT INTO `brava_review_lang` VALUES (26, 13, 2, '<p>Patata bien hecha, nada que destacar. Salsas: roja con ñora y un sabor interesante, salsa blanca: mayonesa casera. Todo acompañado de aceite picante interesante. ¡Conjunto muy bueno que recuerda a Lays receta campesina! \"Agitar antes de usar\".</p>');
INSERT INTO `brava_review_lang` VALUES (27, 14, 1, '<p>Patata molt ben feta, bon gust però no cruixent. Salsa <i>incredibol</i>: allioli de casar-hi amb oli picant, que pica. Quantitat de salsa més que correcte. Global molt bo.</p>');
INSERT INTO `brava_review_lang` VALUES (28, 14, 2, '<p>Patata muy bien hecha, buen gusto pero no crujiente. Salsa <i>incredibol</i>: alioli de casarse con aceite picante, que pica. Cantidad de salsa más que correcta. Global muy bueno.</p>');
INSERT INTO `brava_review_lang` VALUES (29, 15, 1, '<p>La patata està molt bona de gust, toveta per dins i amb un toc de fritura. Les salses: vermella casolana de tomàquet amb un toc de picant, blanca allioli molt líquid i suau.</p>');
INSERT INTO `brava_review_lang` VALUES (30, 15, 2, '<p>La patata está muy buena de gusto, blandita por dentro y con un toque de fritura. Las salsas: roja casera de tomate con un toque de picante, blanca alioli muy líquido y suave.</p>');
INSERT INTO `brava_review_lang` VALUES (31, 16, 1, '<p>La patata està moooolt bona i ben feta, un toc extra de cruixent i tindrien un 10. Salsa blanca allioli suau cremós, i una taronja axoriçada i un toc picant. Conclusió: tots els descobriments haurien de ser així.</p>');
INSERT INTO `brava_review_lang` VALUES (32, 16, 2, '<p>La patata está muuuuy buena y bien hecha, un toque extra de crujiente y tendrían un 10. Salsa blanca alioli suave cremoso, y una naranja chorizada y un toque picante. Conclusión: todos los descubrimientos deberían ser así.</p>');
INSERT INTO `brava_review_lang` VALUES (33, 17, 1, '<p>Tot i que falta un pèl de cruixent les patates estan boníssimes. Vermella de tomàquet fregit i allioli casolà potent. Sense ser re especial són del millor.</p>');
INSERT INTO `brava_review_lang` VALUES (34, 17, 2, '<p>Aunque falta un poco de crujiente las patatas están buenísimas. Roja de tomate frito y alioli casero potente. Sin ser especial son de lo mejor.</p>');
INSERT INTO `brava_review_lang` VALUES (35, 18, 1, '<p>Salsa molt bona, patates una mica crues?</p>');
INSERT INTO `brava_review_lang` VALUES (36, 18, 2, '<p>Salsa muy buena, ¿patatas un poco crudas?</p>');
INSERT INTO `brava_review_lang` VALUES (37, 19, 1, '<p>Patata perfecta, salsa allioli picant que mola. Piquen, però podrien picar més...😋</p>');
INSERT INTO `brava_review_lang` VALUES (38, 19, 2, '<p>Patata perfecta, salsa alioli picante que muela. Pican, pero podrían...😋</p>');
INSERT INTO `brava_review_lang` VALUES (39, 20, 1, '<p>Patates molt bones, una mica cruixents i ben fetes per dins. La salsa blanca és de iogurt tipus kebab, i \"salsa vermella\" és una vedella esmicolada amb un toc picant.</p>');
INSERT INTO `brava_review_lang` VALUES (40, 20, 2, '<p>Patatas muy buenas, algo crujientes y bien hechas por dentro. La salsa blanca es de yogur tipo kebab, y \"salsa roja\" es una ternera desmenuzada con un toque picante.</p>');
INSERT INTO `brava_review_lang` VALUES (41, 21, 1, '<p>Quina sorpresa, veníem amb zero expectatives i... patata excel·lent! Boníssima i gust i cruixent com ens agrada. La salsa: un allioli suau amb oli picant, picant, PICANT.</p>');
INSERT INTO `brava_review_lang` VALUES (42, 21, 2, '<p>Qué sorpresa, veníamos con cero expectativas y... ¡patata excelente! Buenísima y gusto y crujiente como nos gusta. La salsa: un alioli suave con aceite picante, picante, PICANTE.</p>');
INSERT INTO `brava_review_lang` VALUES (43, 22, 1, '<p>Braves cruixentones, però no és la varietat de patata que toca. Salsa: ceba caramel·litzada més salsa vermella, el conjunt pica i bastant resultón.</p>');
INSERT INTO `brava_review_lang` VALUES (44, 22, 2, '<p>Bravas crujientes, pero no es la variedad de patata que toca. Salsa: cebolla caramelizada más salsa roja, el conjunto pica y bastante resultón.</p>');
INSERT INTO `brava_review_lang` VALUES (45, 23, 1, '<p>Patates molt bones amb toc cruixentet. Allioli i salsa romesco. El conjunt està molt bo, però no pica gens.</p>');
INSERT INTO `brava_review_lang` VALUES (46, 23, 2, '<p>Patatas muy buenas con toque crujiente. Alioli y salsa romesco. El conjunto está muy bueno, pero no pica nada.</p>');
INSERT INTO `brava_review_lang` VALUES (47, 24, 1, '<p>La patata molt bona i ben fregida farcida de salses casolanes que pica una mica. Llastima que és 1€ per patata.</p>');
INSERT INTO `brava_review_lang` VALUES (48, 24, 2, '<p>La patata muy buena y bien frita rellena de salsas caseras que pica un poco. Lástima que es 1€ por patata.</p>');
INSERT INTO `brava_review_lang` VALUES (49, 25, 1, '<p>Ens han sorprès, pensàvem que serien de bar de manolo, però: tant de bo tots els bars tinguessin com a mínim unes braves així. Patata melosa i salsa senzilla però bona.</p>');
INSERT INTO `brava_review_lang` VALUES (50, 25, 2, '<p>Nos han sorprendido, pensábamos que serían de bar de manolo, pero: ojalá todos los bares tuvieran al menos unas bravas así. Patata melosa y salsa sencilla pero buena.</p>');
INSERT INTO `brava_review_lang` VALUES (51, 26, 1, '<p>Les patates tindrien un 10 si no estiguessin fregides amb oli cancerigen. La salsa blanda un allioli potent, la vermella un romesco amb pimenton de la vera que fan un conjunt molt bo.</p>');
INSERT INTO `brava_review_lang` VALUES (52, 26, 2, '<p>Las patatas tendrían un 10 si no estuvieran fritas con aceite cancerígeno. La salsa tova un alioli potente, la roja un romesco con pimiento de la vera que hacen un conjunto muy bueno.</p>');
INSERT INTO `brava_review_lang` VALUES (53, 27, 1, '<p>Patates molt bones, no tenen un 10 perquè són al forn/caliu en comptes de fregides. Les sales estan bones, les dues casolanes tot i que no piquen molt.</p>');
INSERT INTO `brava_review_lang` VALUES (54, 27, 2, '<p>Patatas muy buenas, no tienen un 10 portqué están en hechas al hornoen vez de fritas. Las salas están buenas, las dos caseras aunque no pican mucho.</p>');
INSERT INTO `brava_review_lang` VALUES (55, 28, 1, '<p>Patates molt ben fetes, però potser congelades? O tenen un alguna cosa que no acaba de donar el 10. Les salses (blanca i vermella) estan molt bones però no piquen.</p>');
INSERT INTO `brava_review_lang` VALUES (56, 28, 2, '<p>Patatas muy bien hechas, pero ¿quizás congeladas? O tienen algo que no acaba de dar el 10. Las salsas (blanca y roja) están muy buenas pero no pican.</p>');
INSERT INTO `brava_review_lang` VALUES (57, 29, 1, '<p>Les braves de l’Estraperlo</p><p>Les patates molt bones de gust i cuinades (tenen un toc de romaní) però zero cruixents. La salsa blanca un allioli potent, amb salsa de tomàquet casolana (però freda...) i oli. Conjunt poc picant però molt resulton.</p>');
INSERT INTO `brava_review_lang` VALUES (58, 29, 2, '<p>Les braves de l’Estraperlo</p><p>Las patatas muy buenas de gusto y cocinadas (tienen un toque de romero) pero cero crujientes. La salsa blanca un alioli potente, con salsa de tomate casera (pero fría...) y aceite. Conjunto poco picante pero mucho resultan.</p>');
INSERT INTO `brava_review_lang` VALUES (59, 30, 1, '<p>Patates amb pell molt bones. No tenen un 10 perquè no tenen prou cruixentor. Salsa blanca suau i \"vermella\" ataronjada més picantona.</p>');
INSERT INTO `brava_review_lang` VALUES (60, 30, 2, '<p>Patatas con piel muy buenas. No tienen un 10 porque no tienen crujiente suficiente. Salsa blanca suave y \"roja\" anaranjada más picantona.</p>');
INSERT INTO `brava_review_lang` VALUES (61, 31, 1, '<p>La patata està bona, cruixenteta i bona de gust. Allioli no amb oli picant que pica una miqueta.</p>');
INSERT INTO `brava_review_lang` VALUES (62, 31, 2, '<p>La patata está buena, crujiente y buena a gusto. Alioli no con aceite picante que pica un poquito.</p>');
INSERT INTO `brava_review_lang` VALUES (63, 32, 1, '<p>Patates amb cruixentor molt correcte. Salsa allioli suau amb vermella molt picant. Podria haver-hi més salsa i més pebrots.</p>');
INSERT INTO `brava_review_lang` VALUES (64, 32, 2, '<p>Patatas con crujiente muy correcto. Salsa alioli suave con roja muy picante. Podría haber más salsa y pimientos.</p>');
INSERT INTO `brava_review_lang` VALUES (65, 33, 1, '<p>La patata té molt bon gust i molt bona fruitura però, com sempre, podria estar una mica més cruixent. Les salses estan molt bones, però falta que piquin i calentes estarien més bones. Quantitat de salsa 😍</p>');
INSERT INTO `brava_review_lang` VALUES (66, 33, 2, '<p>La patata tiene muy buen gusto y muy buena fruta pero, como siempre, podría estar un poco más crujiente. Las salsas están muy buenas, pero falta que piquen y calientes estarían mejores. Cantidad de salsa 😍</p>');
INSERT INTO `brava_review_lang` VALUES (67, 34, 1, '<p>Molt bones. Les patates podrien ser més cruixents, podria haver-hi més salsa.</p>');
INSERT INTO `brava_review_lang` VALUES (68, 34, 2, '<p>Muy buenas. Las patatas podrían ser más crujientes, podría haber más salsa.</p>');
INSERT INTO `brava_review_lang` VALUES (69, 35, 1, '<p>Les patates estan ben fregides, però no tenen un gust espectacular de bona patata. La salsa bastant senzilleta, però bona i pica!</p>');
INSERT INTO `brava_review_lang` VALUES (70, 35, 2, '<p>Las patatas están bien fritas, pero no tienen un sabor espectacular de buena patata. La salsa bastante sencilita, ¡pero buena y pica!</p>');
INSERT INTO `brava_review_lang` VALUES (71, 36, 1, '<p>Les salses es nota que són casolanes (ajonesa i de tomàquet) per no pica. Les patates estan molt ben fetes. La carn de porc està molt bona.</p>');
INSERT INTO `brava_review_lang` VALUES (72, 36, 2, '<p>Las salsas se nota que son caseras (ajonesa y de tomate) por no pica. Las patatas están muy bien hechas. La carne de cerdo está muy buena.</p>');
INSERT INTO `brava_review_lang` VALUES (73, 37, 1, '<p>Patata ben feta. Dues salses, la vermella pica i la blanca no. Potser la fosca eclipsa a l\'altra.</p>');
INSERT INTO `brava_review_lang` VALUES (74, 37, 2, '<p>Patata bien hecha. Dos salsas, la roja pica y la blanca no. Quizás la oscuridad eclipsa a la otra.</p>');
INSERT INTO `brava_review_lang` VALUES (75, 38, 1, '<p>Les patates estan ben fetes i cruixents, però el gust no és el de patata feta amb amor. Les salses: allioli correcte, i una vermella picantona que combinades estan més que bé!</p>');
INSERT INTO `brava_review_lang` VALUES (76, 38, 2, '<p>Las patatas están bien hechas y crujientes, pero el sabor no es el de patata hecha con amor. Las salsas: alioli correcto, y una roja picantona que combinadas están más que bien!</p>');
INSERT INTO `brava_review_lang` VALUES (77, 39, 1, '<p>Patates al caliu molt bones. Salses casolanes al nivell.</p>');
INSERT INTO `brava_review_lang` VALUES (78, 39, 2, '<p>Patatas al horno muy buenas. Salsas caseras en el nivel.</p>');
INSERT INTO `brava_review_lang` VALUES (79, 40, 1, '<p>Patata molt bona però no cruixent... Allioli molt bo, salsa vermella bona però més fluixa. Oli al fons. En general bé i salsa no falta. Picant acumulatiu.</p>');
INSERT INTO `brava_review_lang` VALUES (80, 40, 2, '<p>Patata muy buena pero no crujiente... Alioli muy bueno, salsa roja buena pero más floja. Óleo al fondo. Por lo general bien y salsa no falta. Picante acumulativo.</p>');
INSERT INTO `brava_review_lang` VALUES (81, 41, 1, '<p>Patates molt bones pèèèèro: un toc més de cruixentor no estaria malament. Allioli + salsa tomàquet-romesco guachi, no piquen.</p>');
INSERT INTO `brava_review_lang` VALUES (82, 41, 2, '<p>Patatas muy buenas peeeero: un toque más de crujiente no estaría mal. Allioli + salsa tomate-romesco guachi, no pican.</p>');
INSERT INTO `brava_review_lang` VALUES (83, 42, 1, '<p>Patates molt finetes crujis que molen. Salsa allioli casolana amb oli picant. Conjunt boooo.</p>');
INSERT INTO `brava_review_lang` VALUES (84, 42, 2, '<p>Patatas muy finitas crujis que muelen. Salsa alioli casera con aceite picante. Conjunto bueno.</p>');
INSERT INTO `brava_review_lang` VALUES (85, 43, 1, '<p>Patates molt bones de gust, ben fetes i calentones, però -10 de cruixent. Salsa bona però no pica ni té res especial.</p>');
INSERT INTO `brava_review_lang` VALUES (86, 43, 2, '<p>Patatas muy buenas de gusto, bien hechas y calentitas, pero -10 de crujiente. Salsa buena pero no pica ni tiene nada especial.</p>');
INSERT INTO `brava_review_lang` VALUES (87, 44, 1, '<p>Les patates estan ben fregides, però el gust podria millorar. La salsa vermella que pica bastant, potser massa nyora/pimientón, la salsa allioli que queda una mica eclipsada.</p>');
INSERT INTO `brava_review_lang` VALUES (88, 44, 2, '<p>Las patatas están bien fritas, pero el sabor podría mejorar. La salsa roja que pica bastante, quizás demasiado ñora/pimientón, la salsa alioli que queda un poco eclipsada.</p>');
INSERT INTO `brava_review_lang` VALUES (89, 45, 1, '<p>Patates bullides boníssimes i supertovetes. Salsa rosa casolana picant amb regust d\'all, segons els Toni no s\'enganxa amb la salsa.</p>');
INSERT INTO `brava_review_lang` VALUES (90, 45, 2, '<p>Patatas hervidas buenísimas y superblanditas. Salsa rosa casera picante con sabor a ajo, según Toni no se pegan con la salsa.</p>');
INSERT INTO `brava_review_lang` VALUES (91, 46, 1, '<p>Les patates estan boníssimes, la salsa estan bones. Allioli molt suau, vermella com salsa de tomàquet molt dolç.</p>');
INSERT INTO `brava_review_lang` VALUES (92, 46, 2, '<p>Las patatas están buenísimas, la salsa están buenas. Alioli muy suave, roja como salsa de tomate muy dulce.</p>');
INSERT INTO `brava_review_lang` VALUES (93, 47, 1, '<p>Patates xips fetes casolanes amb una salsa vermella poc picantona, però intensa de nyora, i un allioli molt suau.</p>');
INSERT INTO `brava_review_lang` VALUES (94, 47, 2, '<p>Patatas chips hechas caseras con una salsa roja poco picantona, pero intensa de ñora, y un alioli muy suave.</p>');
INSERT INTO `brava_review_lang` VALUES (95, 48, 1, '<p>No són les braves, però estan bones les patates molt sucoses i bones. Salses bé, però no piquen.</p>');
INSERT INTO `brava_review_lang` VALUES (96, 48, 2, '<p>No son las bravas, pero están buenas las patatas muy jugosas y buenas. Salsas bien, pero no pican.</p>');
INSERT INTO `brava_review_lang` VALUES (97, 49, 1, '<p>Patates ben fregides, potser falta 1 mica de sabor. Salsa blanca bon allioli suau i vermella amb ametlles que genera discrepàncies. El resultat global és bo.</p>');
INSERT INTO `brava_review_lang` VALUES (98, 49, 2, '<p>Patatas bien fritas, quizás falta un poco de sabor. Salsa blanca buen alioli suave y roja con almendras que genera discrepancias. El resultado global es bueno.</p>');
INSERT INTO `brava_review_lang` VALUES (99, 50, 1, '<p>Les patates molt crujis, però el gust... bastant farinós. Salsa blanca: allioli supersuau, la vermella una salsa potentíssima, però no pica gaire. Estrellades milloren molt.</p>');
INSERT INTO `brava_review_lang` VALUES (100, 50, 2, '<p>Las patatas muy crujis, pero el gusto... bastante harinoso. Salsa blanca: alioli supersuave, la roja una salsa potentísima, pero no pica mucho. Estrelladas mejoran mucho.</p>');
INSERT INTO `brava_review_lang` VALUES (101, 51, 1, '<p>Les patates són yuca molt ben fregida: està molt bona. La salsa tampoc destaca gaire, igual perquè no és la típica salsa que posaries a unes braves.</p>');
INSERT INTO `brava_review_lang` VALUES (102, 51, 2, '<p>Las patatas son yuca muy bien frita: está muy buena. La salsa tampoco destaca demasiado, igual porque no es la típica salsa que pondrías a unas bravas.</p>');
INSERT INTO `brava_review_lang` VALUES (103, 52, 1, '<p>Al Toni li han al·lucinat les patates, a la Bàrbara no tant perquè li semblen fregides de restaurant \"fabrica-fritanga\". Les salses: allioli suavet, salsa vermella és pimentó de la vera com fregit molt potent i picantona. Tot el conjunt millora molt!!!</p>');
INSERT INTO `brava_review_lang` VALUES (104, 52, 2, '<p>A Toni le han alucinado las patatas, a Bárbara no tanto porque le parecen fritas de restaurante \"fabrica-fritanga\". Las salsas: alioli suaveto, salsa roja es pimiento de la vera como frito muy potente y picantona. Todo el conjunto mejora mucho!!!</p>');
INSERT INTO `brava_review_lang` VALUES (105, 53, 1, '<p>Les patates al caliu molt bones, però no estan fregides. Les salses casolanes: una blanca que porta formatge? I una de tomàquet: estan bastant bé, però no piquen.</p>');
INSERT INTO `brava_review_lang` VALUES (106, 53, 2, '<p>Las patatas al rescoldo muy buenas, pero no están fritas. Las salsas caseras: ¿una blanca que lleva queso? Y una tomate: están bastante bien, pero no pican.</p>');
INSERT INTO `brava_review_lang` VALUES (107, 54, 1, '<p>La patata molt ben feta. La salsa blanca és maionesa normal de pot. La vermella és una salsa casolana amb un toc de pebrot i que pica una mica.</p>');
INSERT INTO `brava_review_lang` VALUES (108, 54, 2, '<p>La patata muy bien hecha. La salsa blanca es mayonesa normal de bote. La roja es una salsa casera con un toque de pimiento y que pica un poco.</p>');
INSERT INTO `brava_review_lang` VALUES (109, 55, 1, '<p>Les patates molt bones: ben fetes i bon gust, però no busquen ser unes patates fregides, sinó més al caliu. Les salses una mica llàstima comparades amb les braves: allioli normalet i salsa vermella picantona.</p>');
INSERT INTO `brava_review_lang` VALUES (110, 55, 2, '<p>Las patatas muy buenas: bien hechas y buen gusto, pero no buscan ser unas patatas fritas, sino más bien al horno. Las salsas algo lástima comparadas con las bravas: alioli normalito y salsa roja picantona.</p>');
INSERT INTO `brava_review_lang` VALUES (111, 56, 1, '<p>Les patates són moniatos, no molt dolços i ben fregits. Hi acompanya un allioli suau que els hi queda molt bé. Original i bones.</p>');
INSERT INTO `brava_review_lang` VALUES (112, 56, 2, '<p>Las patatas son boniatos, no muy dulces y bien fritos. Acompaña un alioli suave que les queda muy bien. Original y buenas.</p>');
INSERT INTO `brava_review_lang` VALUES (113, 57, 1, '<p>Patata ben feta, però el gust no és especialment perfecte (no desperta el nostre umami). Salsa allioli bo, amb toc picant peròòò el nostre paladar tampoc el detecta. Tot i que amb la bassa doli a queda a baix, milloren.</p>');
INSERT INTO `brava_review_lang` VALUES (114, 57, 2, '<p>Patata bien hecha, pero el gusto no es especialmente perfecto (no despierta nuestro umami). Salsa alioli bueno, con toque picante pero nuestro paladar tampoco lo detecta. Aunque con la balsa dole a queda abajo, mejoran.</p>');
INSERT INTO `brava_review_lang` VALUES (115, 58, 1, '<p>Patata boníssima, però: al caliu, el no fregir-les resta punts! Salsa amb un toc picant, però tampoc destaca pel seu sabor. El conjunt és bo.</p>');
INSERT INTO `brava_review_lang` VALUES (116, 58, 2, '<p>Patata buenísima, pero: ¡al calor, el no freírlas resta puntos! Salsa con un toque picante, pero tampoco destaca por su sabor. El conjunto es bueno.</p>');
INSERT INTO `brava_review_lang` VALUES (117, 59, 1, '<p>Patata bullida i després fregida (tot i que no ho sembla), bé de gust però no mata. La salsa és 1 combinació de salses bastant bona, allioli suau, romesco i toc de picant que amb la patata es nota bastant.</p>');
INSERT INTO `brava_review_lang` VALUES (118, 59, 2, '<p>Patata hervida y después frita (aunque no lo parece), bien a gusto pero no mata. La salsa es 1 combinación de salsas bastante buena, alioli suave, romesco y toque de picante que con la patata se nota bastante.</p>');
INSERT INTO `brava_review_lang` VALUES (119, 60, 1, '<p>Textura patates perfecte, però de qualitat dolenta. Allioli bo, salsa vermella increïble. Les salses predominen per sobre de la patata, mola. Es poden repetir.</p>');
INSERT INTO `brava_review_lang` VALUES (120, 60, 2, '<p>Textura patatas perfecta, pero de mala calidad. Alioli bueno, salsa roja increíble. Las salsas predominan por encima de la patata, muela. Pueden repetirse.</p>');
INSERT INTO `brava_review_lang` VALUES (121, 61, 1, '<p>Allioli molt suau amb salsa molt picant, però escassa. Les patates són crujis peeeerò la qualitat no mata.</p>');
INSERT INTO `brava_review_lang` VALUES (122, 61, 2, '<p>Alioli muy suave con salsa muy picante, pero escasa. Las patatas son crujis peeeero cuya calidad no mata.</p>');
INSERT INTO `brava_review_lang` VALUES (123, 62, 1, '<p>Les patates estan molt bones, molt tovetes per dins, bon gust, un pèl cruixents, però falta sal. La salsa està bona, però no destaca: allioli amb oli picant.</p>');
INSERT INTO `brava_review_lang` VALUES (124, 62, 2, '<p>Las patatas están muy buenas, muy blanditas por dentro, buen gusto, algo crujientes, pero falta sal. La salsa está buena, pero no destaca: alioli con aceite picante.</p>');
INSERT INTO `brava_review_lang` VALUES (125, 63, 1, '<p>Les patates estan molt bones, peeerò no estan fregides, ara: el gust molt top. La salsa blanca: allioli suau casolà. La salsa vermella: una salsa de tomàquet arromescada. El conjunt molt bo, però ni són patates fregides, ni braves, perquè no piquen gens.</p>');
INSERT INTO `brava_review_lang` VALUES (126, 63, 2, '<p>Las patatas están muy buenas, pero no están fritas, ahora: el gusto muy top. La salsa blanca: alioli suave casero. La salsa roja: una salsa de tomate arromezcada. El conjunto muy bueno, pero ni son patatas fritas, ni bravas, porque no pican nada.</p>');
INSERT INTO `brava_review_lang` VALUES (127, 64, 1, '<p>El porten uns asiàtics que han heretat la recepta del propietari original. Les patates estan bones, però els hi falta cruixentor i l\'oli de 10 anys aporta un gust especial. La salsa és allioli amb alguna espècie més que, com a conjunt, és resultona.</p>');
INSERT INTO `brava_review_lang` VALUES (128, 64, 2, '<p>Lo llevan unos asiáticos que han heredado la receta del propietario original. Las patatas están buenas, pero les falta crujiente y el aceite de 10 años aporta un gusto especial. La salsa es alioli con alguna especie más que, como conjunto, es resultona.</p>');
INSERT INTO `brava_review_lang` VALUES (129, 65, 1, '<p>La salsa pica (oli) + allioli pepi. La patata és com al caliu i fregideta. Prou bé.</p>');
INSERT INTO `brava_review_lang` VALUES (130, 65, 2, '<p>La salsa pica (aceite) + alioli pepi. La patata es como al horno y frita. Bien.</p>');
INSERT INTO `brava_review_lang` VALUES (131, 66, 1, '<p>Aspecte original: Patata xip sobre patata al caliu farcida de salsa. Les salses estan correctes, però piquen. Massa poques.</p>');
INSERT INTO `brava_review_lang` VALUES (132, 66, 2, '<p>Aspecto original: Patata chip sobre patata al rescoldo rellena de salsa. Las salsas están correctas, pero pican. Demasiadas pocas.</p>');
INSERT INTO `brava_review_lang` VALUES (133, 67, 1, '<p>Patates al forn bastant bones tot i que queden camuflades per la salsa vermella (única salsa) massa potent: gust de romaní exagerat, i una mica picant.</p>');
INSERT INTO `brava_review_lang` VALUES (134, 67, 2, '<p>Patatas al horno bastante buenas aunque quedan camufladas por la salsa roja (única salsa) demasiado potente: sabor a romero exagerado, y algo picante.</p>');
INSERT INTO `brava_review_lang` VALUES (135, 68, 1, '<p>La patata bona de gust i bona fritura, no tenen gust de fritanga tot i que això és una fàbrica. Salsa avinagrada que no destaca.</p>');
INSERT INTO `brava_review_lang` VALUES (136, 68, 2, '<p>La patata buena de gusto y buen fritura, no saben a fritanga aunque esto es una fábrica. Salsa avinagrada que no destaca.</p>');
INSERT INTO `brava_review_lang` VALUES (137, 69, 1, '<p>Braves diferents, salsa vermella pica però poca quantitat (3 salses).</p>');
INSERT INTO `brava_review_lang` VALUES (138, 69, 2, '<p>Bravas diferentes, salsa roja fregadero pero poca cantidad (3 salsas).</p>');
INSERT INTO `brava_review_lang` VALUES (139, 70, 1, '<p>Les patates estan ben fetes però soses. Les salses són: una vermella i una blanca (amb pebre?) destaca massa el pebre. Al final milloren (més salsa, tot barrejat). Remenar-les molt al principi.</p>');
INSERT INTO `brava_review_lang` VALUES (140, 70, 2, '<p>Las patatas están bien hechas pero sosas. Las salsas son: una roja y una blanca (¿con pimienta?) destaca demasiado la pimienta. Al final mejoran (más salsa, todo mezclado). Removerlas muy al principio.</p>');
INSERT INTO `brava_review_lang` VALUES (141, 71, 1, '<p>Patates OK, però falta cruixentor. Piquen prou, allioli potent amb oli picant i pimentón.</p>');
INSERT INTO `brava_review_lang` VALUES (142, 71, 2, '<p>Patatas OK, pero falta crujiente. Pican lo suficiente, alioli potente con aceite picante y pimentón.</p>');
INSERT INTO `brava_review_lang` VALUES (143, 72, 1, '<p>Els hi falta cruixentor. La salsa pica, però té massa toc de vinagre. El conjunt és bo.</p>');
INSERT INTO `brava_review_lang` VALUES (144, 72, 2, '<p>Les falta crujiente. La salsa pica, pero tiene demasiado toque de vinagre. El conjunto es bueno.</p>');
INSERT INTO `brava_review_lang` VALUES (145, 73, 1, '<p>Molt original. Patata ben feta, molt tendre. Salsa diferent (\"mojo picón\") que pica una miqueta. Potser massa avinagrada.</p>');
INSERT INTO `brava_review_lang` VALUES (146, 73, 2, '<p>Muy original. Patata bien hecha, muy tierna. Salsa diferente (mojo picón) que pica un poquito. Quizás demasiado avinagrada.</p>');
INSERT INTO `brava_review_lang` VALUES (147, 74, 1, '<p>Patates petites bullides amb un fregit final, bones de gust, però podrien ser més cruixents. Salsa blanca allioli, salsa vermella pincanteta, però hi ha alguna cosa que no acaba.</p>');
INSERT INTO `brava_review_lang` VALUES (148, 74, 2, '<p>Patatas pequeñas hervidas con una fritura final, buenas de gusto, pero podrían ser más crujientes. Salsa blanca alioli, salsa roja pincantita, pero hay algo que no termina.</p>');
INSERT INTO `brava_review_lang` VALUES (149, 75, 1, '<p>Són unes bones patates braves comuns.</p>');
INSERT INTO `brava_review_lang` VALUES (150, 75, 2, '<p>Son unas buenas patatas bravas comunes.</p>');
INSERT INTO `brava_review_lang` VALUES (151, 76, 1, '<p>Les patates estan molt bones de gust i molt ben cuinades. Llastima que falti una mica de cruixentor. Les salses estan bones, allioli bo, salsa vermella molt normal i freda 👎🏼.</p>');
INSERT INTO `brava_review_lang` VALUES (152, 76, 2, '<p>Las patatas están muy buenas de gusto y muy bien cocinadas. Lástima que falte algo de crujiente. Las salsas están buenas, alioli bueno, salsa roja muy normal y fría 👎🏼.</p>');
INSERT INTO `brava_review_lang` VALUES (153, 77, 1, '<p>Patates molt ben fregides i salses fetes amb carinyo. La salsa vermella molt original amb toc de cafè i canyella. Però no piquen. El cambrer no calla.</p>');
INSERT INTO `brava_review_lang` VALUES (154, 77, 2, '<p>Patatas muy bien fritas y salsas hechas con cariño. La salsa roja muy original con toque de café y canela. Pero no pican. El camarero no se calla.</p>');
INSERT INTO `brava_review_lang` VALUES (155, 78, 1, '<p>Estan bones, però com que fa estona que estan fetes... la sala molt bona i pica!!!! La blanca és com maionesa amb alguna cosa, la vermella ni idea, però pica i està bona.</p>');
INSERT INTO `brava_review_lang` VALUES (156, 78, 2, '<p>Están buenas, pero como hace rato que están hechas... la sala muy buena y pica!!!! La blanca es como mayonesa con algo, la roja ni idea, pero pica y está buena.</p>');
INSERT INTO `brava_review_lang` VALUES (157, 79, 1, '<p>Patates molt bones però sense cruixent. Salses mediocres: maionesa + tomàquet artesana amb massa gust de romaní i sense picar.</p>');
INSERT INTO `brava_review_lang` VALUES (158, 79, 2, '<p>Patatas muy buenas pero sin crujiente. Salsas mediocres: mayonesa + tomate artesano con demasiado sabor a romero y sin picar.</p>');
INSERT INTO `brava_review_lang` VALUES (159, 80, 1, '<p>La patata està molt ben feta, i al moment, però creiem que la varietat de patata no és la perfecta. La salsa és casolana, però molt semblant a una de pot: deixa bastant a desitjar. Conjunt correcte.</p>');
INSERT INTO `brava_review_lang` VALUES (160, 80, 2, '<p>La patata está muy bien hecha y al momento, pero creemos que la variedad de patata no es la perfecta. La salsa es casera, pero muy parecida a una bote: deja bastante que desear. Conjunto correcto.</p>');
INSERT INTO `brava_review_lang` VALUES (161, 81, 1, '<p>Braves de bar de Manolo però ben fetes. Patates ben fregides, potser no la millor varietat. Allioli casolà i un oli \"picant\" que no pica. Podria estar més forta la salsa. Llastima que la salsa està freda.</p>');
INSERT INTO `brava_review_lang` VALUES (162, 81, 2, '<p>Bravas de bar de Manolo pero bien hechas. Patatas bien fritas, quizás no la mejor variedad. Alioli casero y un aceite \"picante\" que no pica. Podría estar más fuerte la salsa. Lástima que la salsa está fría.</p>');
INSERT INTO `brava_review_lang` VALUES (163, 82, 1, '<p>Patates un pèl crues però bones de gust. Salsa blanca: allioli suau, salsa vermella: picantona amb un dolç bastant addictiu.</p>');
INSERT INTO `brava_review_lang` VALUES (164, 82, 2, '<p>Patatas algo crudas pero buenas de gusto. Salsa blanca: alioli suave, salsa roja: picantona con un dulce bastante adictivo.</p>');
INSERT INTO `brava_review_lang` VALUES (165, 83, 1, '<p>Patates tenen bon gust, però la salsa senzilla: allioli de pot amb oli picant. El global està bé: bon preu a la terrasseta al sol.</p>');
INSERT INTO `brava_review_lang` VALUES (166, 83, 2, '<p>Patatas tienen buen gusto, pero la salsa sencilla: alioli de bote con aceite picante. Lo global está bien: buen precio en la terracita al sol.</p>');
INSERT INTO `brava_review_lang` VALUES (167, 84, 1, '<p>Patates semblants a les \"papas arrugades\" amb una salsa semicasolana, però que pica bastant. Prou bé per estar al nostre barri.</p>');
INSERT INTO `brava_review_lang` VALUES (168, 84, 2, '<p>Patatas parecidas a las papas arrugadas con una salsa semicasera, pero que pica bastante. Basta para estar en nuestro barrio.</p>');
INSERT INTO `brava_review_lang` VALUES (169, 85, 1, '<p>Patates al caliu ben bones. Salsa vermella picant de pimenton i un allioli suau amb julivert. Global original i bo!</p>');
INSERT INTO `brava_review_lang` VALUES (170, 85, 2, '<p>Patatas al rescoldo muy buenas. Salsa roja picante de pimenton y un alioli suave con perejil. Global original y bueno!</p>');
INSERT INTO `brava_review_lang` VALUES (171, 86, 1, '<p>Patates fregides com si fossin de bossa. Estan molt bones, però no són braves. La salsa blanca: allioli suau, la vermella: salsa tomàquet picantona. Global collonut i diferent.</p>');
INSERT INTO `brava_review_lang` VALUES (172, 86, 2, '<p>Patatas fritas como si fueran de bolsa. Están muy buenas, pero no son bravas. La salsa blanca: alioli suave, la roja: salsa tomate picantona. Global cojonudo y diferente.</p>');
INSERT INTO `brava_review_lang` VALUES (173, 87, 1, '<p>Les patates estan molt bé de gust, però els hi falta cruixentor. Les sales abundants, allioli supersuau, salsa de tomàquet suau també: el global no pica.</p>');
INSERT INTO `brava_review_lang` VALUES (174, 87, 2, '<p>Las patatas están muy bien a gusto, pero les falta crujiente. Las salas abundantes, alioli supersuave, salsa de tomate suave también: el global no pica.</p>');
INSERT INTO `brava_review_lang` VALUES (175, 88, 1, '<p>Les patates estan ben fregides, però la varietat no és la bona. La salsa vermella amb ceba caramel·litzada li dona un toc guai, però en contrapartida l\'allioli és molt suau. Piquen una mica pel pimentón picant que porten.</p>');
INSERT INTO `brava_review_lang` VALUES (176, 88, 2, '<p>Las patatas están bien fritas, pero la variedad no es la buena. La salsa roja con cebolla caramelizada le da un toque guay, pero en contrapartida el alioli es muy suave. Pican un poco por el pimentón picante que llevan.</p>');
INSERT INTO `brava_review_lang` VALUES (177, 89, 1, '<p>Patates ben fetes i fregides. Salsa blanca: allioli de pot, salsa vermella: salsa rosa de pot. Amb espècies per sobre per donar-li un toc extra.</p>');
INSERT INTO `brava_review_lang` VALUES (178, 89, 2, '<p>Patatas bien hechas y fritas. Salsa blanca: alioli de bote, salsa roja: salsa rosa de bote. Con especias por encima para darle un toque extra.</p>');
INSERT INTO `brava_review_lang` VALUES (179, 90, 1, '<p>Les patates tenen la consistència perfecta, però de gust no són les millors patates per ser fregides. La salsa blanca és un maionesa amb all casolana molt suau, i la vermella: alguna cosa semblant a un pesto. Una vegada barrejat tot: millora</p>');
INSERT INTO `brava_review_lang` VALUES (180, 90, 2, '<p>Las patatas tienen la consistencia perfecta, pero a gusto no son las mejores patatas para ser fritas. La salsa blanca es un mayonesa con ajo casera muy suave, y la roja: algo parecido a un pesto. Una vez mezclado todo: mejora</p>');
INSERT INTO `brava_review_lang` VALUES (181, 91, 1, '<p>📣EXTRA EXTRA📣 unes braves que piquen! La patata és feta al caliu i està bona, però no és fregida 👎🏼. Tot i això, no deixen de ser bastant normals.</p><p>Salses: allioli i una vermella picant.</p>');
INSERT INTO `brava_review_lang` VALUES (182, 91, 2, '<p>📣EXTRA EXTRA📣 unas bravas que pican! La patata está hecha al horno y está buena, pero no es frita 👎🏼. Sin embargo, no dejan de ser bastante normales.</p><p>Salsas: alioli y una roja picante.</p>');
INSERT INTO `brava_review_lang` VALUES (183, 92, 1, '<p>Salsa picant però dolça. Patates massa grans, estan una mica crues. Bastant salsa!</p>');
INSERT INTO `brava_review_lang` VALUES (184, 92, 2, '<p>Salsa picante pero dulce. Patatas demasiado grandes, están algo crudas. ¡Bastante salsa!</p>');
INSERT INTO `brava_review_lang` VALUES (185, 93, 1, '<p>No piquen gaire, la vermella sí. Falta salsa. Són originals. Amb el temps milloren.</p>');
INSERT INTO `brava_review_lang` VALUES (186, 93, 2, '<p>No pican mucho, la roja sí. Falta salsa. Son originales. Con el tiempo mejoran.</p>');
INSERT INTO `brava_review_lang` VALUES (187, 94, 1, '<p>Les salses no maten, per la carn li dona un toc. No piquen. Són originals, no passen a l\'historia bravil, però les recomanaríem. Millor barrejar-ho tot.</p>');
INSERT INTO `brava_review_lang` VALUES (188, 94, 2, '<p>Las salsas no matan, por la carne le da un toque. No pican. Son originales, no pasan a la historia bravil, pero las recomendaríamos. Mejor mezclarlo todo.</p>');
INSERT INTO `brava_review_lang` VALUES (189, 95, 1, '<p>Les patates excel·lents! Així es fa una patata: cruji-cruji!!! Salsa: maionesa amb toc de llima que no aporta massa, tot i que a l\'estiu estan bé perquè són fresquetes. Tampoc enganyen, ja que a la carta estan posades com a patates fregides.</p>');
INSERT INTO `brava_review_lang` VALUES (190, 95, 2, '<p>¡Las patatas excelentes! Así se hace una patata: cruji-cruji!!! Salsa: mayonesa con toque de limón que no aporta demasiado, aunque en verano están bien porque son fresquitas. Tampoco engañan, ya que en la carta están puestas como patatas fritas.</p>');
INSERT INTO `brava_review_lang` VALUES (191, 96, 1, '<p>La patata està bona. Salses: maionesa 😞, i salsa especiada de comí, pimentón, pebre... \"pica\" per les espècies. Poca salsa. Maionesa nooooo!!!!!</p>');
INSERT INTO `brava_review_lang` VALUES (192, 96, 2, '<p>La patata está buena. Salsas: mayonesa 😞, y salsa especiada de comino, pimentón, pimienta... \"pica\" por las especias. Poca salsa. Mayonesa nooooo!!!!!</p>');
INSERT INTO `brava_review_lang` VALUES (193, 97, 1, '<p>La patata està molt ben feta, però de gust no és una passada. La salsa és una muselina d\'all amb oli picant que no pica.</p>');
INSERT INTO `brava_review_lang` VALUES (194, 97, 2, '<p>La patata está muy bien hecha, pero a gusto no es una pasada. La salsa es una muselina de ajo con aceite picante que no pica.</p>');
INSERT INTO `brava_review_lang` VALUES (195, 98, 1, '<p>La salsa pica (allioli amb oli picant). No destaquen (semblants a les del Tomàs, perquè no tenen salsa vermella) molen perquè piquen. Les patates són cruixents, però després no maten, semblen de bar cutre.</p>');
INSERT INTO `brava_review_lang` VALUES (196, 98, 2, '<p>La salsa pica (alioli con aceite picante). No destacan (similares a las del Tomás, porque no tienen salsa roja) muelen porque pican. Las patatas son crujientes, pero después no matan, parecen de bar cutre.</p>');
INSERT INTO `brava_review_lang` VALUES (197, 99, 1, '<p>Si fossin més cruixent, encara que fos un pèl, tindrien més bona nota. La salsa està bona, però no fa els honors al nom \"encabronadas\". Sobra la pell, es nota massa.</p>');
INSERT INTO `brava_review_lang` VALUES (198, 99, 2, '<p>Si fueran más crujiente, aunque fuera un poco, tendrían mejor nota. La salsa está buena, pero no hace los honores al nombre encabronadas. Sobra la piel, se nota demasiado.</p>');
INSERT INTO `brava_review_lang` VALUES (199, 100, 1, '<p>Les patates estan bones, però es nota que és un lloc guiri i van amb pressa. La salsa vermella casolana molt bona, allioli suau. No pica gens. El local petit i amb mal servei.</p>');
INSERT INTO `brava_review_lang` VALUES (200, 100, 2, '<p>Las patatas están buenas, pero se nota que es un sitio guiri y van con prisa. La salsa roja casera muy buena, alioli suave. No pica nada. El pequeño local y con mal servicio.</p>');
INSERT INTO `brava_review_lang` VALUES (201, 101, 1, '<p>Patates bona fritura, però gust no maten. Tres salses: pesto amb maionesa, brava, ceba <i>potxada</i> picant. Poca salsa i poc predominant.</p>');
INSERT INTO `brava_review_lang` VALUES (202, 101, 2, '<p>Patatas buen fritura, pero sabor no matan. Tres salsas: pesto con mayonesa, brava, cebolla picada. Poca salsa y poco predominante.</p>');
INSERT INTO `brava_review_lang` VALUES (203, 102, 1, '<p>Ni fred ni calor. Patata poc fregida i freda amb salsa vermella mexicana i allioli especiat. Les salses estan bones, però el conjunt no passarà a la història.</p>');
INSERT INTO `brava_review_lang` VALUES (204, 102, 2, '<p>Ni frío ni calor. Patata poco frita y fría con salsa roja mexicana y alioli especiado. Las salsas están buenas, pero el conjunto no va a pasar a la historia.</p>');
INSERT INTO `brava_review_lang` VALUES (205, 103, 1, '<p>Les patates estan ben fetes, però és farinosa (tipus de patata no encertat). Les salses estan bones, però no destaquen.</p>');
INSERT INTO `brava_review_lang` VALUES (206, 103, 2, '<p>Las patatas están bien hechas, pero es harinosa (tipo de patata no acertado). Las salsas están buenas pero no destacan.</p>');
INSERT INTO `brava_review_lang` VALUES (207, 104, 1, '<p>Les patates estan bones, però les han fregit amb la fregidora de tot. La salsa vermella és com una marinera de musclo amb un toc picant, la blanca és un allioli suau.</p>');
INSERT INTO `brava_review_lang` VALUES (208, 104, 2, '<p>Las patatas están buenas, pero las han frito con la freidora de todo. La salsa roja es como una marinera de mejillón con un toque picante, la blanca es un alioli suave.</p>');
INSERT INTO `brava_review_lang` VALUES (209, 105, 1, '<p>Les patates estan bones, però poc cruixents. La salsa és un \"mojo picón\", poc picant i massa líquid. Conjunt global correcte</p>');
INSERT INTO `brava_review_lang` VALUES (210, 105, 2, '<p>Las patatas están buenas, pero poco crujientes. La salsa es un \"mojo picón\", poco picante y demasiado líquido. Conjunto global correcto</p>');
INSERT INTO `brava_review_lang` VALUES (211, 106, 1, '<p>El concepte mola. La massa ens agradaria una mica més cruixent, més semblant a una patata. Les estan bones, però la blanca té massa poc gust, i la vermella (axoriçada). Cada quadrat hauria de tenir les dues salses.</p>');
INSERT INTO `brava_review_lang` VALUES (212, 106, 2, '<p>El concepto muela. La masa nos gustaría algo más crujiente, más parecida a una patata. Las están buenas, pero la blanca tiene demasiado poco gusto, y la roja (ahorrizada). Cada cuadrado debería tener las dos salsas.</p>');
INSERT INTO `brava_review_lang` VALUES (213, 107, 1, '<p>Les patates estan molt bones, tendretes i bon gust peeerò... zero cruixents. Salses casolanes però molt normaletes: allioli i tomàquet fregit.</p>');
INSERT INTO `brava_review_lang` VALUES (214, 107, 2, '<p>Las patatas están muy buenas, tiernas y buen gusto peeero... cero crujientes. Salsas caseras pero muy normalitas: alioli y tomate frito.</p>');
INSERT INTO `brava_review_lang` VALUES (215, 108, 1, '<p>Maionesa amb pimentón i una vermella més picant. Li falta gust a la salsa.</p>');
INSERT INTO `brava_review_lang` VALUES (216, 108, 2, '<p>Mayonesa con pimentón y una roja más picante. Le falta sabor a la salsa.</p>');
INSERT INTO `brava_review_lang` VALUES (217, 109, 1, '<p>Patata de gust excel·lent, però no fregida, una llastima. Maionesa amb all suau i vermella picant notables, però honestament... ves al Bandarra.</p>');
INSERT INTO `brava_review_lang` VALUES (218, 109, 2, '<p>Patata de sabor excelente, pero no frita, una lástima. Mayonesa con ajo suave y roja picando notables, pero honestamente... ves al Bandarra.</p>');
INSERT INTO `brava_review_lang` VALUES (219, 110, 1, '<p>La patata no mata i la salsa està bona, pica una mica.</p>');
INSERT INTO `brava_review_lang` VALUES (220, 110, 2, '<p>La patata no mata y la salsa está buena, pica un poco.</p>');
INSERT INTO `brava_review_lang` VALUES (221, 111, 1, '<p>Les patates estan bones, però fredes algunes i calentes les altres! Tres salses: allioli, romesco, brava. Estan bones, però no piquen i tampoc destaquen molt.</p>');
INSERT INTO `brava_review_lang` VALUES (222, 111, 2, '<p>Las patatas están buenas, ¡pero frías algunas y calientes las otras! Tres salsas: alioli, romesco, brava. Están buenas, pero no pican y tampoco destacan mucho.</p>');
INSERT INTO `brava_review_lang` VALUES (223, 112, 1, '<p>Les patates estan bones i cruixents. Salsa vermella casolana amb punt picant. Salsa blanca ajonesa. La pega: no peguen les salses i... més tomàquet si us plau!.</p>');
INSERT INTO `brava_review_lang` VALUES (224, 112, 2, '<p>Las patatas están buenas y crujientes. Salsa roja casera con punto picante. Salsa blanca ajonesa. Lo malo: no pegan las salsas y... ¡más tomate por favor!.</p>');
INSERT INTO `brava_review_lang` VALUES (225, 113, 1, '<p>Patata insulsa però ben feta. Blanc d\'allioli suau i vermella que recorda al \"mojo picón\", resultat correcte sense destacar.</p>');
INSERT INTO `brava_review_lang` VALUES (226, 113, 2, '<p>Patata sosa pero bien hecha. Blanco de alioli suave y roja que recuerda al \"mojo picón\", resultado correcto sin destacar.</p>');
INSERT INTO `brava_review_lang` VALUES (227, 114, 1, '<p>Patata ben fregida, però sense gust. Salsa blanca suau, vermella molt dolça. Conjunt global bé, però no destaca.</p>');
INSERT INTO `brava_review_lang` VALUES (228, 114, 2, '<p>Patata bien frita, pero sin gusto. Salsa blanca suave, roja muy dulce. Conjunto global bien, pero no destaca.</p>');
INSERT INTO `brava_review_lang` VALUES (229, 115, 1, '<p>Allioli amb oli picant, que no pica gaire. Massa sal gorda negra.</p>');
INSERT INTO `brava_review_lang` VALUES (230, 115, 2, '<p>Alioli con aceite picante, que no pica demasiado. Demasiada sal gorda negra.</p>');
INSERT INTO `brava_review_lang` VALUES (231, 116, 1, '<p>Les patates molt bones, tendres o sabroses. Les salses són casolanes, però els hi falta un <i>punch</i>, sobretot picant.</p>');
INSERT INTO `brava_review_lang` VALUES (232, 116, 2, '<p>Las patatas muy buenas, tiernas o sabrosas. Las salsas son caseras, pero les falta un <i>punch</i>, sobre todo picante.</p>');
INSERT INTO `brava_review_lang` VALUES (233, 117, 1, '<p>Un munt de patates ben fregidetes. Crec que amb l\'oli de fa mil fregides, però la salsa (molt especiada) ho dissimula. La salsa és picantona amb toc tailandès que aniria superbé amb un curri, però potser no tant amb unes braves...</p>');
INSERT INTO `brava_review_lang` VALUES (234, 117, 2, '<p>Un montón de patatas bien fritas. Creo que con el aceite de hace mil fritas, pero la salsa (muy especiada) lo disimula. La salsa es picantona con toque tailandés que iría soberbio con un curry, pero quizás no tanto con unas bravas...</p>');
INSERT INTO `brava_review_lang` VALUES (235, 118, 1, '<p>Patata molt ben fregida desgraciada amb una salsa mediocre que té bones idees mal executades.</p>');
INSERT INTO `brava_review_lang` VALUES (236, 118, 2, '<p>Patata muy bien frita desgraciada con una salsa mediocre que tiene buenas ideas mal ejecutadas.</p>');
INSERT INTO `brava_review_lang` VALUES (237, 119, 1, '<p>Patates normaletes, ben fregidetes, però potser un pèl crues. Salses casolanes, però no destaquen per l\'originalitat.</p>');
INSERT INTO `brava_review_lang` VALUES (238, 119, 2, '<p>Patatas normalitas, bien fritas, pero quizá algo crudas. Salsas caseras, pero no destacan por su originalidad.</p>');
INSERT INTO `brava_review_lang` VALUES (239, 120, 1, '<p>Patates amb fregit correcte però amb poc gust. Porten 1 puntet de sal picant. Allioli guai i vermella amb toc picant, bé sense destacar.</p>');
INSERT INTO `brava_review_lang` VALUES (240, 120, 2, '<p>Patatas con fritura correcta pero con poco gusto. Llevan 1 puntito de sal picante. Alioli guay y roja con toque picante, bien sin destacar.</p>');
INSERT INTO `brava_review_lang` VALUES (241, 121, 1, '<p>Patates suuuuper bones. El de bravesBCN diu que estan fregides amb l\'oli del morro fregit expressament... segurament per això estan tan bones. La salsa un KO: salsa industrial!</p>');
INSERT INTO `brava_review_lang` VALUES (242, 121, 2, '<p>Patatas suuuuper buenas. El de braves BCN dice que están fritas con el aceite del hocico frito expresamente... seguramente por eso están tan buenas. La salsa un KO: ¡salsa industrial!</p>');
INSERT INTO `brava_review_lang` VALUES (243, 122, 1, '<p>Bastant melós tot el conjunt. I les patates fregides bé, però normaletes.</p>');
INSERT INTO `brava_review_lang` VALUES (244, 122, 2, '<p>Bastante meloso todo el conjunto. Y las patatas fritas bien, pero normalitas.</p>');
INSERT INTO `brava_review_lang` VALUES (245, 123, 1, '<p>Patates com al caliu, tenen bon gust. La salsa es nota que és casolana, però bastant insípid, el Toni diu que piquen, i sí, però no té un gust molt definit.</p>');
INSERT INTO `brava_review_lang` VALUES (246, 123, 2, '<p>Patatas como al rescoldo, tienen buen gusto. La salsa se nota que es casera, pero bastante insípido, Toni dice que pican, y sí, pero no tiene un sabor muy definido.</p>');
INSERT INTO `brava_review_lang` VALUES (247, 124, 1, '<p>Patates congelades ben fetes. La salsa pica però molt normal. Vine a fer burgers i oblidat de la resta.</p>');
INSERT INTO `brava_review_lang` VALUES (248, 124, 2, '<p>Patatas congeladas bien hechas. La salsa pica pero muy normal. Ven a hacer burgers y olvidado del resto.</p>');
INSERT INTO `brava_review_lang` VALUES (249, 125, 1, NULL);
INSERT INTO `brava_review_lang` VALUES (250, 125, 2, NULL);
INSERT INTO `brava_review_lang` VALUES (251, 126, 1, '<p>Les patates són cruixents, però no maten de gust. Les salses: allioli suau molt bo, vermella tipus barbacoa picant amb trossos sencers de ceba (massa dolça).</p>');
INSERT INTO `brava_review_lang` VALUES (252, 126, 2, '<p>Las patatas son crujientes, pero no matan a gusto. Las salsas: alioli suave muy bueno, roja tipo barbacoa picante con trozos enteros de cebolla (demasiado dulce).</p>');
INSERT INTO `brava_review_lang` VALUES (253, 127, 1, '<p>Originals. Maionesa condimentada + salsa de cacauet una mica picant. Si no tenen més nota, és perquè no estan més bones, no perquè estiguin dolentes.</p>');
INSERT INTO `brava_review_lang` VALUES (254, 127, 2, '<p>Originales. Mayonesa condimentada + salsa de cacahuetes un poco picante. Si no tienen más nota, es porque no están mejores, no porque estén malas.</p>');
INSERT INTO `brava_review_lang` VALUES (255, 128, 1, '<p>Patates poc convincents pel que fa a la textura. El conjunt està bo. Allioli suau, tomàquet poc picant, cibulet i comí.</p>');
INSERT INTO `brava_review_lang` VALUES (256, 128, 2, '<p>Patatas poco convincentes en lo que se refiere a la textura. El conjunto está bueno. Alioli suave, tomate poco picante, cebollino y comino.</p>');
INSERT INTO `brava_review_lang` VALUES (257, 129, 1, '<p>La patata està ben feta, però la varietat no és la que toca per fer unes braves. La salsa és com avinagrada, ens recorda a currywurst, una mescla estranya amb un toc picant que està bé.</p>');
INSERT INTO `brava_review_lang` VALUES (258, 129, 2, '<p>La patata está bien hecha, pero la variedad no es la que toca para tomar unas bravas. La salsa es como avinagrada, nos recuerda a currywurst, una extraña mezcla con un toque picante que está bien.</p>');
INSERT INTO `brava_review_lang` VALUES (259, 130, 1, '<p>Estan bones, però la salsa s\'assembla sospitosament a la Ferrer.</p>');
INSERT INTO `brava_review_lang` VALUES (260, 130, 2, '<p>Están buenas, pero la salsa se parece sospechosamente a Ferrer.</p>');
INSERT INTO `brava_review_lang` VALUES (261, 131, 1, '<p>Patates al forn amb pell. Salsa blanca: allioli bastant líquid. Salsa vermella: salsa de tomàquet.</p>');
INSERT INTO `brava_review_lang` VALUES (262, 131, 2, '<p>Patatas al horno con piel. Salsa blanca: alioli bastante líquido. Salsa roja: salsa de tomate.</p>');
INSERT INTO `brava_review_lang` VALUES (263, 132, 1, '<p>La patata està bastant bona: cruixentona i amb bon gust de patata fregida com cal, això sí: saladetes. Salsa blanca: allioli per no dir maionesa, massa suau, suau, suau, su-su-su-suau, suau, suau...! Salsa vermella: sembla pimentón picant lligat amb algun líquid...no trempa!</p>');
INSERT INTO `brava_review_lang` VALUES (264, 132, 2, '<p>La patata está bastante buena: cruixentona y con buen sabor a patata frita como es debido, eso sí: saladitas. Salsa blanca: alioli por no decir mayonesa, demasiado suave, suave, suave, su-su-su-suave, suave, suave...! Salsa roja: parece pimentón picante atado con algún líquido... ¡no temple!</p>');
INSERT INTO `brava_review_lang` VALUES (265, 133, 1, '<p>Salses separades de les patates. Salsa vermella pica molt, acompanyada de maionesa.</p>');
INSERT INTO `brava_review_lang` VALUES (266, 133, 2, '<p>Salsas separadas de las patatas. Salsa roja pica mucho, acompañada de mayonesa.</p>');
INSERT INTO `brava_review_lang` VALUES (267, 134, 1, '<p>Patates gust molt bo. Allioli potent, pimentón picant bo.</p>');
INSERT INTO `brava_review_lang` VALUES (268, 134, 2, '<p>Patatas sabor muy bueno. Alioli potente, pimentón picante bueno.</p>');
INSERT INTO `brava_review_lang` VALUES (269, 135, 1, '<p>Patates bullides tot i que les han fregit. Correctes, però no passaran a la història.</p>');
INSERT INTO `brava_review_lang` VALUES (270, 135, 2, '<p>Patatas hervidas aunque las han frito. Correctas, pero no pasarán a la historia.</p>');
INSERT INTO `brava_review_lang` VALUES (271, 136, 1, '<p>Presentació bona, però no té relació amb la qualitat. Salsa pica però escassa. Patata no Molt ben feta.</p>');
INSERT INTO `brava_review_lang` VALUES (272, 136, 2, '<p>Presentación buena pero no tiene relación con la calidad. Salsa pica pero escasa. Patata no Muy bien hecha.</p>');
INSERT INTO `brava_review_lang` VALUES (273, 137, 1, '<p>Les patates estan molt bones, igual els falta un toc cruixent. La salsa creiem que és casolana, tot i que podria ser de pot perfectament, ja que és una maio-brava. Això sí: tenen un toc picant.</p>');
INSERT INTO `brava_review_lang` VALUES (274, 137, 2, '<p>Las patatas están muy buenas, igual les falta un toque crujiente. La salsa creemos que es casera, aunque podría ser de bote perfectamente, ya que es una maio-brava. Eso sí: tienen un toque picante.</p>');
INSERT INTO `brava_review_lang` VALUES (275, 138, 1, '<p>Les patates estan bé, la salsa també, però la idea (que a l\'allioli li afegeixin tinta) és millor que l\'execució.</p>');
INSERT INTO `brava_review_lang` VALUES (276, 138, 2, '<p>Las patatas están bien, la salsa también, pero la idea (que al alioli le añadan tinta) es mejor que la ejecución.</p>');
INSERT INTO `brava_review_lang` VALUES (277, 139, 1, '<p>Patates petitones al caliu molt bones. Llastima que siguin al caliu. Només hi ha una salsa i molt normaleta.</p>');
INSERT INTO `brava_review_lang` VALUES (278, 139, 2, '<p>Patatas pequeñitas en el rescoldo muy buenas. Lástima que estén en el rescoldo. Solo hay una salsa y muy normalita.</p>');
INSERT INTO `brava_review_lang` VALUES (279, 140, 1, '<p>Les patates estan ben fetes, però de gust... alguna cosa falla. Salsa: allioli suau amb pimentón picant arrabassant les patates: prou bones.</p>');
INSERT INTO `brava_review_lang` VALUES (280, 140, 2, '<p>Las patatas están bien hechas, pero a gusto... algo falla. Salsa: alioli suave con pimentón picante arrebatando las patatas: bastante buenas.</p>');
INSERT INTO `brava_review_lang` VALUES (281, 141, 1, '<p>Són cares pel que són (o haurien d\'estar molt més bones). La patata no ens mata quant a la qualitat. Les salses tampoc, tot i que no estan dolentes. Simplement, correctes.</p>');
INSERT INTO `brava_review_lang` VALUES (282, 141, 2, '<p>Son caras por lo que son (o deberían estar mucho mejores). La patata no nos mata en cuanto a calidad. Las salsas tampoco, aunque no están malas. Simplemente, correctos.</p>');
INSERT INTO `brava_review_lang` VALUES (283, 142, 1, '<p>Les patates estan bones però reescalfades. Les salses: vermella amb massa cúrcuma, pesto de Coriandre que destaca massa, i una maionesa amb all massa suau. Tot estrellat millora. Estan bones, però no passen a cap top.</p>');
INSERT INTO `brava_review_lang` VALUES (284, 142, 2, '<p>Las patatas están buenas pero recalentadas. Las salsas: roja con masa cúrcuma, pesto de Cilantro que destaca demasiado, y una mayonesa con ajo demasiado suave. Todo estrellado mejora. Están buenas, pero no pasan a ningún top.</p>');
INSERT INTO `brava_review_lang` VALUES (285, 143, 1, '<p>La patata és feta al forn, bona de gust. La salsa no destaca tot i que pica una mica.</p>');
INSERT INTO `brava_review_lang` VALUES (286, 143, 2, '<p>La patata está hecha al horno, buena a gusto. La salsa no destaca aunque pica un poco.</p>');
INSERT INTO `brava_review_lang` VALUES (287, 144, 1, '<p>Patates amb bona textura, però la patata de gust podria millorar. La salsa no és casolana.</p>');
INSERT INTO `brava_review_lang` VALUES (288, 144, 2, '<p>Patatas con buena textura, pero la patata a gusto podría mejorar. La salsa no es casera.</p>');
INSERT INTO `brava_review_lang` VALUES (289, 145, 1, '<p>Patata ben fregida, però varietat incorrecta. Les salses correctes, tot i que piquen. Simplement correctes.</p>');
INSERT INTO `brava_review_lang` VALUES (290, 145, 2, '<p>Patata bien frita, pero variedad incorrecta. Las salsas correctas, aunque pican. Simplemente correctos.</p>');
INSERT INTO `brava_review_lang` VALUES (291, 146, 1, '<p>Les patates són originals, molt especiades però zero cruixents. La salsa vermella està bona, però és estranya amb el regust de taronja. La blanca: maionesa amb all prou bona.</p>');
INSERT INTO `brava_review_lang` VALUES (292, 146, 2, '<p>Las patatas son originales, muy especiadas pero cero crujientes. La salsa roja está buena, pero es rara con el sabor a naranja. La blanca: mayonesa con ajo bastante buena.</p>');
INSERT INTO `brava_review_lang` VALUES (293, 147, 1, '<p>Patata bona tot i la mala pinta, ben fregida però falta cruixentor. Allioli blanc bo i vermella regular amb espècies. Absència total de picantor.</p>');
INSERT INTO `brava_review_lang` VALUES (294, 147, 2, '<p>Patata buena pese a la mala pinta, bien frita pero falta crujiente. Alioli blanco bueno y roja regular con especias. Ausencia total de picante.</p>');
INSERT INTO `brava_review_lang` VALUES (295, 148, 1, '<p>Patates una mica seques tot i que cruixents. Salsa normaleta, però pica! Conjunt bé, però no destaquen en res.</p>');
INSERT INTO `brava_review_lang` VALUES (296, 148, 2, '<p>Patatas un poco secas aunque crujientes. Salsa normalita, ¡pero pica! Conjunto bien, pero no destacan en nada.</p>');
INSERT INTO `brava_review_lang` VALUES (297, 149, 1, '<p>Patates normals fregides amb tot el pescadito frito del restaurant. Salsa vermella: currywurst. Salsa blanca: allioli molt suau.</p>');
INSERT INTO `brava_review_lang` VALUES (298, 149, 2, '<p>Patatas normales fritas con todo el pescadito frito del restaurante. Salsa roja: currywurst. Salsa blanca: alioli muy suave.</p>');
INSERT INTO `brava_review_lang` VALUES (299, 150, 1, '<p>Les patates estan bones, però no estan fregides (o molt poc). La salsa vermella pica una mica, però no mata: són francesos, no saben fer braves.</p>');
INSERT INTO `brava_review_lang` VALUES (300, 150, 2, '<p>Las patatas están buenas, pero no están fritas (o muy poco). La salsa roja da un poco, pero no mata: son franceses, no saben hacer bravas.</p>');
INSERT INTO `brava_review_lang` VALUES (301, 151, 1, '<p>Les patates normaletes: no destaquen en qualitat no en fregida. La salsa: allioli potent d\'all i una salsa vermella que pica bastant, però que no està especialment bona.</p>');
INSERT INTO `brava_review_lang` VALUES (302, 151, 2, '<p>Las patatas normalitas: no destacan en calidad no en frita. La salsa: alioli potente de ajo y una salsa roja que pica bastante, pero que no está especialmente buena.</p>');
INSERT INTO `brava_review_lang` VALUES (303, 152, 1, '<p>La salsa vermella està molt bona. La combinació de les dues molt bé. No són les típiques braves, però estan molt bones. Falta cruixentor.</p>');
INSERT INTO `brava_review_lang` VALUES (304, 152, 2, '<p>La salsa roja está muy buena. La combinación de ambas muy bien. No son las típicas bravas, pero están muy buenas. Falta crujiente.</p>');
INSERT INTO `brava_review_lang` VALUES (305, 153, 1, NULL);
INSERT INTO `brava_review_lang` VALUES (306, 153, 2, NULL);
INSERT INTO `brava_review_lang` VALUES (307, 154, 1, '<p>Patates petites bullides, fallo número 1: no estan fregides. La salsa està bé, però el conjunt no convenç.</p>');
INSERT INTO `brava_review_lang` VALUES (308, 154, 2, '<p>Patatas pequeñas hervidas, falso número 1: no están fritas. La salsa está bien pero el conjunto no convence.</p>');
INSERT INTO `brava_review_lang` VALUES (309, 155, 1, '<p>Patates molt fetes i poc cruixents. Salsa allioli suau amb molt poca salsa picant.</p>');
INSERT INTO `brava_review_lang` VALUES (310, 155, 2, '<p>Patatas muy hechas y poco crujientes. Salsa alioli suave con muy poca salsa picante.</p>');
INSERT INTO `brava_review_lang` VALUES (311, 156, 1, '<p>Ben fregides però amb oli superfregit. Salsa casolana? No sabria dir, té gust de pinxo moruno però tampoc destaca.</p>');
INSERT INTO `brava_review_lang` VALUES (312, 156, 2, '<p>Bien fritas pero con aceite superfrito. ¿Salsa casera? No sabría decir, sabe a pincho moruno pero tampoco destaca.</p>');
INSERT INTO `brava_review_lang` VALUES (313, 157, 1, '<p>Textura bona de la patata però gust KO. Les salses bones, però no tenen gens de gràcia. No passaran a la història.</p>');
INSERT INTO `brava_review_lang` VALUES (314, 157, 2, '<p>Textura buena de la patata pero sabor KO. Las salsas buenas, pero no tienen ninguna gracia. No pasarán a la historia.</p>');
INSERT INTO `brava_review_lang` VALUES (315, 158, 1, '<p>Patates molt normaletes, correcte de cruixent, però de gust no destaquen. La salsa blanca és un allioli, la vermella una salsa que pica amb poca gràcia.</p>');
INSERT INTO `brava_review_lang` VALUES (316, 158, 2, '<p>Patatas muy normalitas, correcto de crujiente, pero a gusto no destacan. La salsa blanca es un alioli, la roja una salsa que pica con poca gracia.</p>');
INSERT INTO `brava_review_lang` VALUES (317, 159, 1, '<p>Patata regulera, recalentada. Salsa vermella que recorda a la marinera amb 1 toc picant, però no mata.</p>');
INSERT INTO `brava_review_lang` VALUES (318, 159, 2, '<p>Patata regulera, recalentada. Salsa roja que recuerda a la marinera con 1 toque picante pero no mata.</p>');
INSERT INTO `brava_review_lang` VALUES (319, 160, 1, '<p>Les patates estan força bones i molt tovetes. Però les salses molt fluixes: estan a banda, no piquen i són de pot.</p>');
INSERT INTO `brava_review_lang` VALUES (320, 160, 2, '<p>Las patatas están bastante buenas y muy blanditas. Pero las salsas muy flojas: están aparte, no pican y son de bote.</p>');
INSERT INTO `brava_review_lang` VALUES (321, 161, 1, '<p>Bona ració de patates que no estan massa ben fregides (un pèl crues), varietat malament, trossos massa grans. Salses normaletes: allioli molt suau i vermella feta amb poc amor.</p>');
INSERT INTO `brava_review_lang` VALUES (322, 161, 2, '<p>Buena ración de patatas que no están demasiado bien fritas (un poco crudas), variedad mal, trozos demasiado grandes. Salsas normalitas: alioli muy suave y roja hecha con poco amor.</p>');
INSERT INTO `brava_review_lang` VALUES (323, 162, 1, '<p>Les patates estan millor del que semblava per la pinta. La salsa és casolana: quètxup + maionesa + tabasco.</p>');
INSERT INTO `brava_review_lang` VALUES (324, 162, 2, '<p>Las patatas están mejor de lo que parecía por el peine. La salsa es casera: ketchup + mayonesa + tabasco.</p>');
INSERT INTO `brava_review_lang` VALUES (325, 163, 1, '<p>Les patates estan ben fregides, però la salsa rosa de pot, tot i que pica una miqueta.</p>');
INSERT INTO `brava_review_lang` VALUES (326, 163, 2, '<p>Las patatas están bien fritas, pero la salsa rosa de bote, aunque pica un poquito.</p>');
INSERT INTO `brava_review_lang` VALUES (327, 164, 1, '<p>Patates molt petites, bones de gust, però la textura és toveta... una mica estranya. Salsa picant, però de pot? Conjunt salat.</p>');
INSERT INTO `brava_review_lang` VALUES (328, 164, 2, '<p>Patatas muy pequeñas, buenas de gusto, pero la textura es blandita... algo extraña. Salsa picante, pero ¿de bote? Conjunto salado.</p>');
INSERT INTO `brava_review_lang` VALUES (329, 165, 1, '<p>Patates amb ceba caramel·litzada enganxada: prou ben feta. Maionesa sense gust, salsa vermella normaleta i que no pica.</p>');
INSERT INTO `brava_review_lang` VALUES (330, 165, 2, '<p>Patatas con cebolla caramelizada enganchada: bastante bien hecha. Mayonesa sin sabor, salsa roja normalita y que no pica.</p>');
INSERT INTO `brava_review_lang` VALUES (331, 166, 1, '<p>No destaquen en res, gust molt neutre tot i que la patata està ben bullida. Totalment prescindibles.</p>');
INSERT INTO `brava_review_lang` VALUES (332, 166, 2, NULL);
INSERT INTO `brava_review_lang` VALUES (333, 167, 1, '<p>Només correcte. Patates cruixents, però es nota que són reescalfades. Allioli industrial i salsa de tomàquet amb un toc especial, però que no destaca.</p>');
INSERT INTO `brava_review_lang` VALUES (334, 167, 2, '<p>Sólo correcto. Patatas crujientes, pero se nota que son recalentadas. Alioli industrial y salsa de tomate con un toque especial, pero que no destaca.</p>');
INSERT INTO `brava_review_lang` VALUES (335, 168, 1, '<p>Falta salsa, i la patata no mata, és congelada. No pica gaire però són gratis.</p>');
INSERT INTO `brava_review_lang` VALUES (336, 168, 2, '<p>Falta salsa, y la patata no mata, está congelada. No pica mucho pero son gratis.</p>');
INSERT INTO `brava_review_lang` VALUES (337, 169, 1, '<p>La patata està bona de gust i bastant ben fregides. La salsa: allioli suau normal, vermella que no aporta res perquè no pica ni té gust 😳.</p>');
INSERT INTO `brava_review_lang` VALUES (338, 169, 2, '<p>La patata está buena a gusto y bastante bien fritas. La salsa: alioli suave normal, roja que no aporta nada porque no pica ni sabe 😳.</p>');
INSERT INTO `brava_review_lang` VALUES (339, 170, 1, '<p>Patates reescalfades, es nota molt per l\'interior. Molt normals, no destaquen. No són braves.</p>');
INSERT INTO `brava_review_lang` VALUES (340, 170, 2, '<p>Patatas recalentadas, se nota mucho por el interior. Muy normales, no destacan. No son bravas.</p>');
INSERT INTO `brava_review_lang` VALUES (341, 171, 1, '<p>No estan dolentes, però no aporten res de res: la salsa no pica (salsa tomàquet i maionesa), i les patates no tenen gens de gràcia.</p>');
INSERT INTO `brava_review_lang` VALUES (342, 171, 2, '<p>No están malas, pero no aportan nada: la salsa no pica (salsa tomate y mayonesa), y las patatas no tienen nada de gracia.</p>');
INSERT INTO `brava_review_lang` VALUES (343, 172, 1, '<p>La patata no està mal fregida, però de gust no és espectacular. Segons el Toni tenen gust de calamar. La salsa blanca és maionesa amb un oli picant que és el millor de tot el plat. A la carta són l\'especialitat del Marcel.</p>');
INSERT INTO `brava_review_lang` VALUES (344, 172, 2, '<p>La patata no está mal frita, pero a gusto no es espectacular. Según Toni saben a calamar. La salsa blanca es mayonesa con un aceite picante que es el mejor de todo el plato. En la carta son la especialidad de Marcel.</p>');
INSERT INTO `brava_review_lang` VALUES (345, 173, 1, '<p>Patata ben fregida, com si les haguessin fregit en una xurreria. Salsa pica bastant pero es de pot i aixo es un suspens en tota regla</p>');
INSERT INTO `brava_review_lang` VALUES (346, 173, 2, '<p>Patata bien frita, como si las hubieran frito en una churrería. Salsa pica bastante pero es de bote y esto es un suspenso en toda regla</p>');
INSERT INTO `brava_review_lang` VALUES (347, 174, 1, '<p>Les patates tenen molt bon gust, llastima que es noti que estan reescalfades. La salsa no té gaire gust, no ens diu res.</p>');
INSERT INTO `brava_review_lang` VALUES (348, 174, 2, '<p>Las patatas tienen muy buen gusto, lástima que se note que están recalentadas. La salsa no sabe demasiado, no nos dice nada.</p>');
INSERT INTO `brava_review_lang` VALUES (349, 175, 1, '<p>Les patates estan ben fregides però de gust no maten. Salsa blanca: maionesa industrial 👎🏼, salsa vermella: sembla goulash bastant bona.</p>');
INSERT INTO `brava_review_lang` VALUES (350, 175, 2, '<p>Las patatas están bien fritas pero a gusto no matan. Salsa blanca: mayonesa industrial 👎🏼, salsa roja: parece goulash bastante buena.</p>');
INSERT INTO `brava_review_lang` VALUES (351, 176, 1, '<p>Estan bones, però no destaquen en res. Patates zero cruixents, salsa zero picant.</p>');
INSERT INTO `brava_review_lang` VALUES (352, 176, 2, '<p>Están buenas, pero no destacan en nada. Patatas cero crujientes, salsa cero picante.</p>');
INSERT INTO `brava_review_lang` VALUES (353, 177, 1, '<p>Típiques patates de bar de barri: patates fregides amb oli reaprofitat. Salsa blanca: allioli normalet, vermella amb un toc picant. No els hi faríem un lleig un dia que anem a fer birres i vulguem picar alguna cosa.</p>');
INSERT INTO `brava_review_lang` VALUES (354, 177, 2, '<p>Típicas patatas de bar de barrio: patatas fritas con aceite reaprovechado. Salsa blanca: alioli normalito, roja con un toque picante. No les haríamos un feo un día que vayamos a hacer birras y queramos picar algo.</p>');
INSERT INTO `brava_review_lang` VALUES (355, 178, 1, '<p>Patates fetes de polenta cruixentetes. Salsa vermella: salsa tomàquet de pizza. Salsa blanca: allioli suau. Et porten l\'oli picant i milloren molt. Plus d\'originalitat.</p>');
INSERT INTO `brava_review_lang` VALUES (356, 178, 2, '<p>Patatas hechas de polenta crujillas. Salsa roja: salsa tomate de pizza. Salsa blanca: alioli suave. Te traen el aceite picante y mejoran mucho. Plus de originalidad.</p>');
INSERT INTO `brava_review_lang` VALUES (357, 179, 1, NULL);
INSERT INTO `brava_review_lang` VALUES (358, 179, 2, NULL);
INSERT INTO `brava_review_lang` VALUES (359, 180, 1, '<p>Patates molt senzilletes. Tot i així, la patata i fritura prou bé, però sales industrials (errrorrrrr).</p>');
INSERT INTO `brava_review_lang` VALUES (360, 180, 2, '<p>Patatas muy sencilitas. Sin embargo, la patata y fritura bastante bien, pero salas industriales (errrorrrrr).</p>');
INSERT INTO `brava_review_lang` VALUES (361, 181, 1, '<p>Les patates no tenen gens de gràcia. Maionesa més salsa vermella que no mata ni pica. Bones però gens recomanables.</p>');
INSERT INTO `brava_review_lang` VALUES (362, 181, 2, '<p>Las patatas no tienen ninguna gracia. Mayonesa más salsa roja que no mata ni pica. Buenas pero nada recomendables.</p>');
INSERT INTO `brava_review_lang` VALUES (363, 182, 1, '<p>Patates bullides. Les salses no piquen.</p>');
INSERT INTO `brava_review_lang` VALUES (364, 182, 2, '<p>Patatas hervidas. Las salsas no pican.</p>');
INSERT INTO `brava_review_lang` VALUES (365, 183, 1, '<p>Patates massa grans i de gust no destaquen. Les salses no tenen gust, no sabem quins ingredients tenen.</p>');
INSERT INTO `brava_review_lang` VALUES (366, 183, 2, '<p>Patatas demasiado grandes y de gusto no destacan. Las salsas no saben, no sabemos qué ingredientes tienen.</p>');
INSERT INTO `brava_review_lang` VALUES (367, 184, 1, '<p>Patates normaletes i salsa normaleta. Piquen una mica, però no ens diuen res. No són iguals que les fotos, totes les fotos de braves que hem trobat, eren diferents.</p>');
INSERT INTO `brava_review_lang` VALUES (368, 184, 2, '<p>Patatas normalitas y salsa normalita. Pican un poco, pero nada nos dicen. No son iguales que las fotos, todas las fotos de bravas que hemos encontrado eran diferentes.</p>');
INSERT INTO `brava_review_lang` VALUES (369, 185, 1, '<p>La patata no està malament, bullida i fregida. El gust és bo, però textura podria millorar. Salsa blanca: maionesa de pot 👎🏼, salsa vermella: tomàquet fregit de pot 👎🏼 (potser han afegit tabasco). Fan més bona pinta, que \"bones\" que estan.</p>');
INSERT INTO `brava_review_lang` VALUES (370, 185, 2, '<p>La patata no está mal, hervida y frita. El sabor es bueno pero textura podría mejorar. Salsa blanca: mayonesa de bote 👎🏼, salsa roja: tomate frito de bote 👎🏼 (quizás han añadido tabasco). Hacen mejor peine, que \"buenas\" que están.</p>');
INSERT INTO `brava_review_lang` VALUES (371, 186, 1, '<p>Les patates estan bones: ben fregides i cruixentetes. El problema és la salsa que és de pot... però pel preu que té (1,25€) estan molt bé!</p>');
INSERT INTO `brava_review_lang` VALUES (372, 186, 2, '<p>Las patatas están buenas: bien fritas y crujillas. El problema es la salsa que es de bote... ¡pero por el precio que tiene (1,25€) están muy bien!</p>');
INSERT INTO `brava_review_lang` VALUES (373, 187, 1, '<p>Patata al caliu amb unes espècies que no està mal. Salsa de pot. Conjunt mediocre.</p>');
INSERT INTO `brava_review_lang` VALUES (374, 187, 2, '<p>Patata hervida con unas especias que no está mal. Salsa de bote. Conjunto mediocre.</p>');
INSERT INTO `brava_review_lang` VALUES (375, 188, 1, '<p>Sembla salsa de pot, bona patata però falta cruixentor.</p>');
INSERT INTO `brava_review_lang` VALUES (376, 188, 2, '<p>Parece salsa de bote, buena patata pero falta crujiente.</p>');
INSERT INTO `brava_review_lang` VALUES (377, 189, 1, '<p>Patates molt ben fregides però amb la varietat equivocada. Les salses una mica bluf: vermella casolana, però amb gust de salsa d\'espagueti de col·legi, amb una maionesa que podria ser de pot.</p>');
INSERT INTO `brava_review_lang` VALUES (378, 189, 2, '<p>Patatas muy bien fritas pero con la variedad equivocada. Las salsas un poco bluf: roja casera, pero con sabor a salsa de espagueti de colegio, con una mayonesa que podría ser de bote.</p>');
INSERT INTO `brava_review_lang` VALUES (379, 190, 1, '<p>Salsa rosa de pot, allioli de pot. Patates bones en consideració a les salses.</p>');
INSERT INTO `brava_review_lang` VALUES (380, 190, 2, '<p>Salsa rosa de bote, alioli de bote. Patatas buenas en atención a las salsas.</p>');
INSERT INTO `brava_review_lang` VALUES (381, 191, 1, '<p>Patata bona però reescalfada i amb forma de patata fregida normal. Salsa molt senzilla, res d\'especial.</p>');
INSERT INTO `brava_review_lang` VALUES (382, 191, 2, '<p>Patata buena pero recalentada y con forma de patata frita normal. Salsa muy sencilla, nada especial.</p>');
INSERT INTO `brava_review_lang` VALUES (383, 192, 1, '<p>Salsa bona, la patata no és la millor de la història.</p>');
INSERT INTO `brava_review_lang` VALUES (384, 192, 2, '<p>Salsa buena, la patata no es la mejor de la historia.</p>');
INSERT INTO `brava_review_lang` VALUES (385, 193, 1, '<p>Patates: falta cruixent. Salses: allioli i brava que no pica.</p>');
INSERT INTO `brava_review_lang` VALUES (386, 193, 2, '<p>Patatas: falta crujiente. Salsas: alioli y brava que no pica.</p>');
INSERT INTO `brava_review_lang` VALUES (387, 194, 1, '<p>De tot el vermut que ens han donat, les patates és el pitjor plat. La patata està crua, la salsa està millor: recorda gust de paella però no mata. Venir a fer vermut a la terrassa de dalt de tot: mola!</p>');
INSERT INTO `brava_review_lang` VALUES (388, 194, 2, '<p>De todo el vermut que nos han dado, las patatas es el peor plato. La patata está cruda, la salsa está mejor: recuerda sabor a sartén pero no mata. Venir a vermut a la terraza de arriba de todo: ¡muela!</p>');
INSERT INTO `brava_review_lang` VALUES (389, 195, 1, '<p>Braves de \"bar de Manolo\" amb tot de pot.</p>');
INSERT INTO `brava_review_lang` VALUES (390, 195, 2, '<p>Bravas de \"bar de Manolo\" con todo de bote.</p>');
INSERT INTO `brava_review_lang` VALUES (391, 196, 1, '<p>El que mai vols que passi quan demanes unes braves: patates congelades i salsa de pot que ni pica. Almenys estan ben fregides.</p>');
INSERT INTO `brava_review_lang` VALUES (392, 196, 2, '<p>Lo que nunca quieres que ocurra cuando pides unas bravas: patatas congeladas y salsa de bote que ni pica. Por lo menos están bien fritas.</p>');
INSERT INTO `brava_review_lang` VALUES (393, 197, 1, '<p>Les patates no estan mal fregides, però el gust no destaca i falta carinyo. Les salses: ketchup per sobre, allioli de pot, i salsa rosa picant. Lamentable és poc.</p>');
INSERT INTO `brava_review_lang` VALUES (394, 197, 2, '<p>Las patatas no están mal fritas, pero el gusto no destaca y falta cariño. Las salsas: ketchup por encima, alioli de bote, y salsa rosa picante. Lamentable es poco.</p>');
INSERT INTO `brava_review_lang` VALUES (395, 198, 1, '<p>Patates no estan calentes, però no és el pitjor: la salsa no ens agrada. No té cap gràcia i és avinagrada.</p>');
INSERT INTO `brava_review_lang` VALUES (396, 198, 2, '<p>Patatas no están calientes, pero no es lo peor: la salsa no nos gusta. No tiene ninguna gracia y es avinagrada.</p>');
INSERT INTO `brava_review_lang` VALUES (397, 199, 1, '<p>Típiques braves congelades amb salsa de pot.</p>');
INSERT INTO `brava_review_lang` VALUES (398, 199, 2, '<p>Típicas bravas congeladas en salsa de bote.</p>');
INSERT INTO `brava_review_lang` VALUES (399, 200, 1, '<p>Les patates estaven ben fregides però són estàndards. \"Salsa\" insultant de quètxup i maionesa amb pimenton picant per sobre.</p>');
INSERT INTO `brava_review_lang` VALUES (400, 200, 2, '<p>Las patatas estaban bien fritas pero son estándares. \"Salsa\" insultante de ketchup y mayonesa con pimenton picante por encima.</p>');
INSERT INTO `brava_review_lang` VALUES (401, 201, 1, '<p>No hi aneu!!!</p>');
INSERT INTO `brava_review_lang` VALUES (402, 201, 2, '<p>¡No vayais!</p>');
INSERT INTO `brava_review_lang` VALUES (403, 202, 1, '<p>Ens van dir que les braves eren millors que les bombes. ERROR. La foto no enganya.</p>');
INSERT INTO `brava_review_lang` VALUES (404, 202, 2, '<p>Nos dijeron que las bravas eran mejores que las bombas. ERROR. La foto no engaña.</p>');
INSERT INTO `brava_review_lang` VALUES (405, 203, 1, '<p>Patates fregides congelades (no estan malament, però es veu a llegues que són congelades i no \"cortadas a mano\" com diu a la carta). Salsa amb pimenton picant i zero gràcia.</p>');
INSERT INTO `brava_review_lang` VALUES (406, 203, 2, '<p>Patatas fritas congeladas (no están mal, pero se ve a legas que son congeladas y no \"cortadas a mando\" como dice a la carta). Salsa con pimiento picante y cero gracia.</p>');
INSERT INTO `brava_review_lang` VALUES (407, 204, 1, '<p>Iguals que les del Llamber.</p>');
INSERT INTO `brava_review_lang` VALUES (408, 204, 2, '<p>Iguales que las del Llamber.</p>');
INSERT INTO `brava_review_lang` VALUES (409, 205, 1, '<p>Entrepà molt bo de porc i patates. No pica, la salsa està bona. Podria semblar massa pesat però resulta lleuger.</p>');
INSERT INTO `brava_review_lang` VALUES (410, 205, 2, '<p>Bocadillo muy bueno de cerdo y patatas. No pica, la salsa está buena. Podría parecer demasiado pesado, pero resulta ligero.</p>');
INSERT INTO `brava_review_lang` VALUES (411, 206, 1, '<p>Truita farcida de patates braves. Les patates no són fregides, però va acompanyat de la truita. La salsa pica molt més que moltes altres braves: ens agrada. Una truita de braves ha de ser imprescindible.</p>');
INSERT INTO `brava_review_lang` VALUES (412, 206, 2, '<p>Tortilla rellena de patatas bravas. Las patatas no son fritas, pero va acompañado de la tortilla. La salsa pica mucho más que otras muchas bravas: nos gusta. Una tortilla de bravas debe ser imprescindible.</p>');
INSERT INTO `brava_review_lang` VALUES (413, 207, 1, '<p>No és patata, és pollastre fregit amb una salsa vermella casolana i un allioli casolà també. Tot el conjunt pica.</p>');
INSERT INTO `brava_review_lang` VALUES (414, 207, 2, '<p>No es patata, es pollo frito con una salsa roja casera y un alioli casero también. Todo el conjunto pica.</p>');
INSERT INTO `brava_review_lang` VALUES (415, 208, 1, '<p>La vermella és salsa bolonyesa, la blanca no sé de què és però pica. Amb un toc de pinyons i cebollino. El còmput global és bo, però el gnochi podria millorar.</p>');
INSERT INTO `brava_review_lang` VALUES (416, 208, 2, '<p>La roja es salsa boloñesa, la blanca no sé de qué es pero pica. Con un toque de piñones y cebollino. El cómputo global es bueno pero el gnochi podría mejorar.</p>');
INSERT INTO `brava_review_lang` VALUES (417, 209, 1, '<p>El cachopo està bo, tot i que poc farcit. Les patates passables però la salsa sense gràcia.</p>');
INSERT INTO `brava_review_lang` VALUES (418, 209, 2, '<p>El cachopo está bueno, aunque poco relleno. Las patatas pasables pero la salsa sin gracia.</p>');
INSERT INTO `brava_review_lang` VALUES (419, 210, 1, '<p>Hem tornat: mateixa crítica perquè estan putament bones :P..</p>');
INSERT INTO `brava_review_lang` VALUES (420, 210, 2, '<p>Hemos vuelto: misma crítica porque están putamente buenas :P.</p>');
INSERT INTO `brava_review_lang` VALUES (421, 211, 1, '<p>Han canviat les braves i ara són amb salsa vermella + allioli. Estan molt bones igualment, però no són la idealització que teníem al cap de les braves que vam provar en el seu moment.</p>');
INSERT INTO `brava_review_lang` VALUES (422, 211, 2, '<p>Han canviat les braves i ara són amb salsa vermella + allioli. Estan molt bones igualment, però no són la idealització que teníem al cap de les braves que vam provar en el seu moment.</p>');
INSERT INTO `brava_review_lang` VALUES (423, 212, 1, '<p>Continuen igual de bones!</p>');
INSERT INTO `brava_review_lang` VALUES (424, 212, 2, '<p>¡Siguen igual de buenas!</p>');
INSERT INTO `brava_review_lang` VALUES (425, 213, 1, '<p>Patata al caliu amb unes espècies de puta mare i molt tovetes! Llastima que no siguin fregides. Salsa: una ajonesa casolana amb un oli amb espècies picantones que li queda molt bé al conjunt.</p>');
INSERT INTO `brava_review_lang` VALUES (426, 213, 2, '<p>¡Patata hervidas con unas especies de puta madre y muy blanditas! Lástima que no sean fritas. Salsa: una ajonesa casera con un aceite con especias picantonas que le queda muy bien al conjunto.</p>');
INSERT INTO `brava_review_lang` VALUES (427, 214, 1, '<p>Les patates estan ben fetes, però creiem que no encerten amb la varietat: podrien estar més bones de gust. La salsa ha millorat. Un allioli amb toc dolç (mel) que quasi no es nota amb la vermella picant que és com un mus amb la clara d\'ou a punt de neu.</p>');
INSERT INTO `brava_review_lang` VALUES (428, 214, 2, '<p>Las patatas están bien hechas, pero creemos que no aciertan con la variedad: podrían estar mejor a gusto. La salsa ha mejorado. Un alioli con toque dulce (miel) que apenas se nota con la roja picante que es como un mus con la clara de huevo a punto de nieve.</p>');
INSERT INTO `brava_review_lang` VALUES (429, 215, 1, '<p>Mantenen nota: estan molt bones.</p>');
INSERT INTO `brava_review_lang` VALUES (430, 215, 2, '<p>Mantienen nota: están muy buenas.</p>');
INSERT INTO `brava_review_lang` VALUES (431, 216, 1, '<p>Patates de típic local que ho refregeix tot al mateix lloc. La salsa no està bona, pica molt, però no lliga el picant amb el gust de la salsa. Tot malament.</p>');
INSERT INTO `brava_review_lang` VALUES (432, 216, 2, '<p>Patatas de típico local que lo refríe todo en el mismo sitio. La salsa no está buena, pica mucho, pero no liga el picante con el sabor a la salsa. Todo mal.</p>');
INSERT INTO `brava_review_lang` VALUES (433, 217, 1, '<p>Patates crues, però de gust està bona. Salsa de pot? Tot malament. Hem de tornar a donar segona oportunitat per veure si estan millor fetes.</p>');
INSERT INTO `brava_review_lang` VALUES (434, 217, 2, '<p>Patatas crudas, pero a gusto está buena. ¿Salsa de bote? Todo mal. Debemos volver a dar segunda oportunidad para ver si están mejor hechas.</p>');
INSERT INTO `brava_review_lang` VALUES (435, 218, 1, '<p>Ketchup, maionesa, nou moscada, pimenton picant, curry? Patates toves però fines i cruixents per fora.</p>');
INSERT INTO `brava_review_lang` VALUES (436, 218, 2, '<p>Ketchup, mayonesa, nuez moscada, pimiento picante, curry? Patatas blandas pero finas y crujientes por fuera.</p>');
INSERT INTO `brava_review_lang` VALUES (437, 219, 1, '<p>Patates ben fetes, però tampoc estan boníssimes. Salsa vermella picantona de pimenton. Salsa blanca: salsa rosa que també pica. El conjunt està bé i pica!!! </p>');
INSERT INTO `brava_review_lang` VALUES (438, 219, 2, '<p>Patatas bien hechas, pero tampoco están buenísimas. Salsa roja picantona de pimientón. Salsa blanca: salsa rosa que también pica. El conjunto está bien y pica!!!</p>');
INSERT INTO `brava_review_lang` VALUES (439, 220, 1, '<p>Talls gegants de patata ben feta però poc cruixent. Salsa blanca d\'allioli suau correcte i vermella de romesco i chili regulera. El conjunt no mata, però els entrepans estan molt bons!</p>');
INSERT INTO `brava_review_lang` VALUES (440, 220, 2, '<p>Cortes gigantes de patata bien hecha pero poco crujiente. Salsa blanca de alioli suave correcto y roja de romesco y chili regulera. El conjunto no mata, ¡pero los bocadillos están muy buenos!</p>');
INSERT INTO `brava_review_lang` VALUES (441, 221, 1, '<p>La patata bullida o NO fregida, estan molt bones de gust, però baixen un punt per no ser fregides. La salsa blanca és un allioli suau amb alguna cosa confitada. La salsa vermella és picantona i amb espècies. Conjunt molt resultón, poder un xic salat.</p>');
INSERT INTO `brava_review_lang` VALUES (442, 221, 2, '<p>La patata hervida o NO frita, están muy buenas de gusto, pero bajan un punto para no ser fritas. La salsa blanca es un alioli suave con algo confitado. La salsa roja es picantona y con especias. Conjunto muy resultón, poder un poco salado.</p>');
INSERT INTO `brava_review_lang` VALUES (443, 222, 1, '<p>La patata està molt bona, al gust de la Bàrbara: podrien tenir una mica més de cruixentor. El Toni no opina el mateix. La salsa és un allioli suau acompanyat d\'un oli bastant picant! Un pèl salades.</p>');
INSERT INTO `brava_review_lang` VALUES (444, 222, 2, '<p>La patata está muy buena, al gusto de Bárbara: podrían tener algo más de crujiente. Toni no opina lo mismo. La salsa es un alioli suave acompañado de un aceite bastante picante! Un poco saladas.</p>');
INSERT INTO `brava_review_lang` VALUES (445, 223, 1, '<p>Les patates estan molt bones, no són cruixents, però el gust és molt bo i molt ben cuites. Les sales molt bones, la vermella pica i l\'allioli suau i espectacular amb la textura escumosa. No tenen un 10, perquè no són fregides.</p>');
INSERT INTO `brava_review_lang` VALUES (446, 223, 2, '<p>Las patatas están muy buenas, no son crujientes pero el sabor es muy bueno y muy bien cocidas. Las salas muy buenas, el rojo fregadero y el alioli suave y espectacular con la textura espumosa. No tienen un 10, porque no son fritas.</p>');
INSERT INTO `brava_review_lang` VALUES (447, 224, 1, '<p>Suuuuuper crujis, infinitament crujis!!! Potser massa...no hi ha lloc a patata toveta. La salsa blanca un allioli suau superbò. La vermella: una salsa de tomàquet amb ceba i amb picant suficient.</p>');
INSERT INTO `brava_review_lang` VALUES (448, 224, 2, '<p>Suuuuuper crujis, infinitamente crujis!!! Quizás demasiado...no hay sitio a patata blandita. La salsa blanca un alioli suave soberbio. La roja: una salsa de tomate con cebolla y con picante suficiente.</p>');
INSERT INTO `brava_review_lang` VALUES (449, 225, 1, '<p>A la patata li falta cruixentor, però estan bones de sabor i ben fetes (i calentones). La salsa blanca és ajonesa suau, la vermella és ceba caramel·litzada/confitada amb nyora, pimenton.... Haurien de picar molt més.</p>');
INSERT INTO `brava_review_lang` VALUES (450, 225, 2, '<p>A la patata le falta crujiente, pero están buenas de sabor y bien hechas (y calentitas). La salsa blanca es ajonesa suave, la roja es cebolla caramelizada/confitada con ñora, pimenton.... Deberían picar mucho más.</p>');
INSERT INTO `brava_review_lang` VALUES (451, 226, 1, '<p>Patates bullides. Salsa pica molt. Sobren herbes.</p>');
INSERT INTO `brava_review_lang` VALUES (452, 226, 2, '<p>Patatas hervidas. Salsa pica mucho. Sobran hierbas.</p>');
INSERT INTO `brava_review_lang` VALUES (453, 227, 1, '<p>Salsa molt bona, molta salsa per patata. Piquen. Llastima de la quantitat. Coberts daurats. Cares, però valen la pena una vegada a la vida.</p>');
INSERT INTO `brava_review_lang` VALUES (454, 227, 2, '<p>Salsa muy buena, mucha salsa por patata. Pican. Lástima de la cantidad. Cubiertos dorados. Caras, pero merecen la pena una vez en la vida.</p>');
INSERT INTO `brava_review_lang` VALUES (455, 228, 1, '<p>Braves amb all i oli negre</p><p>Les patates molt bones de gust i cuinades (tenen un toc de romaní) però zero cruixents. La salsa molt original, amb toc de romaní. No tenen més nota perquè no les considerem braves.</p>');
INSERT INTO `brava_review_lang` VALUES (456, 228, 2, '<p>Braves amb all i oli negre</p><p>Las patatas muy buenas de gusto y cocinadas (tienen un toque de romero) pero cero crujientes. La salsa muy original, con toque de romero. No tienen más nota porque no las consideramos bravas.</p>');
INSERT INTO `brava_review_lang` VALUES (457, 229, 1, '<p>Patates ben fregides, però una mica seques. Salsa blanca allioli suau, salsa vermella de pebrot i un xic picants.</p>');
INSERT INTO `brava_review_lang` VALUES (458, 229, 2, '<p>Patatas bien fritas, pero algo secas. Salsa blanca alioli suave, salsa roja de pimiento y algo picantes.</p>');
INSERT INTO `brava_review_lang` VALUES (459, 230, 1, '<p>Versió de les braves però amb tequeños.</p>');
INSERT INTO `brava_review_lang` VALUES (460, 230, 2, '<p>Versión de las bravas pero con tequeños.</p>');
INSERT INTO `brava_review_lang` VALUES (461, 231, 1, '<p>Salsa millor que l\'altra vegada, perquè ara és brava i es nota que és casolana. Patates una mica crues i amb bon gust.</p>');
INSERT INTO `brava_review_lang` VALUES (462, 231, 2, '<p>Salsa mejor que la otra vez, porque ahora está brava y se nota que es casera. Patatas algo crudas y con buen gusto.</p>');
INSERT INTO `brava_review_lang` VALUES (463, 232, 1, '<p>Patata bona de gust, però no és fregida, alguna inclús amb la pell cremada. Salsa amb toc picant correcte, molt especiada: farigola?</p>');
INSERT INTO `brava_review_lang` VALUES (464, 232, 2, '<p>Patata buena de gusto, pero no es frita, alguna incluso con la piel quemada. Salsa con toque picante correcto, muy especiada: tomillo?</p>');
INSERT INTO `brava_review_lang` VALUES (465, 233, 1, NULL);
INSERT INTO `brava_review_lang` VALUES (466, 233, 2, NULL);
INSERT INTO `brava_review_lang` VALUES (467, 234, 1, '<p>Podrien ser més cruixents. Les salses: allioli espumós molt suau, salsa vermella poc picant però bona. No piquen.</p>');
INSERT INTO `brava_review_lang` VALUES (468, 234, 2, '<p>Podrían ser más crujientes. Las salsas: alioli espumoso muy suave, salsa roja poco picante pero buena. No pican.</p>');
INSERT INTO `brava_review_lang` VALUES (469, 235, 1, '<p>Patates ben fetes molt poc cruixents potser perquè tenen molta salsa. Salsa mexicana molt bona que pica correctament.</p>');
INSERT INTO `brava_review_lang` VALUES (470, 235, 2, '<p>Patatas bien hechas muy poco crujientes quizás porque tienen mucha salsa. Salsa mexicana muy buena que pica correctamente.</p>');
INSERT INTO `brava_review_lang` VALUES (471, 236, 1, '<p>Les patates molt bones, les han preparat molt de pressa i pensàvem que potser defraudarien, però no. Allioli i salsa vermella de pebrot del piquillo que pica una miqueta.</p>');
INSERT INTO `brava_review_lang` VALUES (472, 236, 2, '<p>Las patatas muy buenas, las han preparado muy deprisa y pensábamos que quizá defraudarían, pero no. Alioli y salsa roja de pimiento del piquillo que pica un poquito.</p>');
INSERT INTO `brava_review_lang` VALUES (473, 237, 1, '<p>Acompanyades d\'una salsitxa moruna boníssima. Patates correctes i salsa bona, pica.</p>');
INSERT INTO `brava_review_lang` VALUES (474, 237, 2, '<p>Acompañadas de una salchicha moruna buenísima. Patatas correctas y salsa buena, fregadero.</p>');
INSERT INTO `brava_review_lang` VALUES (475, 238, 1, '<p>Molt cruixents. Piquen peeeerò, recorda a allioli, no?</p>');
INSERT INTO `brava_review_lang` VALUES (476, 238, 2, '<p>Muy crujientes. Pican peeero, recuerda a alioli, ¿no?</p>');
INSERT INTO `brava_review_lang` VALUES (477, 239, 1, '<p>La patata penalitza en la nota. La salsa molt bona, pica poc. La patata no mata.</p>');
INSERT INTO `brava_review_lang` VALUES (478, 239, 2, '<p>La patata penaliza en la nota. La salsa muy buena, pica poco. La patata no mata.</p>');
INSERT INTO `brava_review_lang` VALUES (479, 240, 1, '<p>Les patates tallades a grills de patata amb pell bones i cruixents. La salsa no ens acaba... falta que tingui una mica més de gràcia.</p>');
INSERT INTO `brava_review_lang` VALUES (480, 240, 2, '<p>Las patatas cortadas en gajos de patata con piel buenas y crujientes. La salsa no termina... falta que tenga un poco más de gracia.</p>');
INSERT INTO `brava_review_lang` VALUES (481, 241, 1, '<p>Patates al caliu banyades amb comí que dona un toc picant i exòtic wai. Salsa rosa, una mica picant, però tampoc destaca.</p>');
INSERT INTO `brava_review_lang` VALUES (482, 241, 2, '<p>Patatas al rescoldo bañadas con comino que da un toque picante y exótico wai. Salsa rosa, algo picante, pero tampoco destaca.</p>');
INSERT INTO `brava_review_lang` VALUES (483, 242, 1, '<p>La patata bullida (amb forn al final?) està molt bona de gust. La salsa blanca: muselina d\'all al forn, vermella: tomàquet aromatitzat, però no pica.</p>');
INSERT INTO `brava_review_lang` VALUES (484, 242, 2, '<p>La patata hervida (¿con horno al final?) está muy buena a gusto. La salsa blanca: muselina de ajo en el horno, roja: tomate aromatizado, pero no pica.</p>');
INSERT INTO `brava_review_lang` VALUES (485, 243, 1, '<p>Són petites i cruixentones. Allioli potent i pimentón picant, és correcte, pica prou. Millor gust que aspecte.</p>');
INSERT INTO `brava_review_lang` VALUES (486, 243, 2, '<p>Son pequeñas y cruixentonas. Alioli potente y pimentón picante, es correcto, pica lo suficiente. Mejor gusto que aspecto.</p>');
INSERT INTO `brava_review_lang` VALUES (487, 244, 1, '<p>La textura de la patata és OK, però de gust no entusiasma. Salsa molt normal.</p>');
INSERT INTO `brava_review_lang` VALUES (488, 244, 2, '<p>La textura de la patata es OK, pero a gusto no entusiasma. Salsa muy normal.</p>');
INSERT INTO `brava_review_lang` VALUES (489, 245, 1, '<p>Falta cruixent, falta patata o sobra salsa? Salsa original, suau, no pica, de pebrot escalivat?</p>');
INSERT INTO `brava_review_lang` VALUES (490, 245, 2, '<p>¿Falta crujiente, falta patata o sobra salsa? ¿Salsa original, suave, no pica, de pimiento asado?</p>');
INSERT INTO `brava_review_lang` VALUES (491, 246, 1, '<p>Espuma de patates braves. És molt original, però estrany.</p>');
INSERT INTO `brava_review_lang` VALUES (492, 246, 2, '<p>Espuma de patatas bravas. Es muy original, pero raro.</p>');
INSERT INTO `brava_review_lang` VALUES (493, 247, 1, '<p>La salsa NO pica.</p>');
INSERT INTO `brava_review_lang` VALUES (494, 247, 2, '<p>La salsa NO pica.</p>');
INSERT INTO `brava_review_lang` VALUES (495, 248, 1, '<p>Quina manera de malgastar unes patates ben fetes i fregides al punt perfecte amb una salsa de pot 🤦🏻‍♀️</p>');
INSERT INTO `brava_review_lang` VALUES (496, 248, 2, '<p>Qué manera de malgastar unas patatas bien hechas y fritas en su punto perfecto con una salsa de bote 🤦🏻‍♀️</p>');
INSERT INTO `brava_review_lang` VALUES (497, 249, 1, '<p>Patata reescalfada tot i que està bona. Salsa molt picant, però senzilla.</p>');
INSERT INTO `brava_review_lang` VALUES (498, 249, 2, '<p>Patata recalentada aunque está buena. Salsa muy picante pero sencilla.</p>');
INSERT INTO `brava_review_lang` VALUES (499, 250, 1, '<p>Maionesa amb toc fi dall, oli amb pimentón ¿picant? Les patates estan un pèl crues. Teníem molt hype, ens han decebut 🙁</p>');
INSERT INTO `brava_review_lang` VALUES (500, 250, 2, '<p>Mayonesa con toque fino de ajo, aceite con pimentón ¿picante? Las patatas están algo crudas. Teníamos muy hype, nos han decepcionado 🙁</p>');
INSERT INTO `brava_review_lang` VALUES (501, 251, 1, '<p>Falta sal. Les patates estan bones, però la salsa és rara i n\'hi ha poca.</p>');
INSERT INTO `brava_review_lang` VALUES (502, 251, 2, '<p>Falta sal. Las patatas están buenas, pero la salsa es rara y hay poca.</p>');
INSERT INTO `brava_review_lang` VALUES (503, 252, 1, '<p>Patata amb textura bona, però el gust no mata. Salsa allioli suau amb oli lleugerament picant. Correctes. 5,50€ braves + 2 canyes.</p>');
INSERT INTO `brava_review_lang` VALUES (504, 252, 2, '<p>Patata con buena textura, pero el gusto no mata. Salsa alioli suave con aceite ligeramente picante. Correctas. 5,50€ bravas + 2 cañas.</p>');
INSERT INTO `brava_review_lang` VALUES (505, 253, 1, '<p>Les patates són bullides i això no ens agrada: estan molt bones, però el resultat final com a \"brava\" defrauda. La salsa està bona, sembla un allioli barrejat amb alguna cosa que la fa vermella. Pica.</p>');
INSERT INTO `brava_review_lang` VALUES (506, 253, 2, '<p>Las patatas son hervidas y eso no nos gusta: están muy buenas, pero el resultado final como \"brava\" defrauda. La salsa está buena, parece un alioli mezclado con algo que la hace roja. Pica.</p>');
INSERT INTO `brava_review_lang` VALUES (507, 254, 1, '<p>Patates normals: no destaquen. La salsa tampoc, molts suaus i absència total de picant.</p>');
INSERT INTO `brava_review_lang` VALUES (508, 254, 2, '<p>Patatas normales: no destacan. La salsa tampoco, muchos suaves y ausencia total de picante.</p>');
INSERT INTO `brava_review_lang` VALUES (509, 255, 1, '<p>Millors del que sembla, patates bones, una mica picant (casolana? No ho tenim clar). La Marta les tornaria a demanar.</p>');
INSERT INTO `brava_review_lang` VALUES (510, 255, 2, '<p>Mejores de lo que parece, patatas buenas, algo picante (¿casera? No lo tenemos claro). Marta las volvería a pedir.</p>');
INSERT INTO `brava_review_lang` VALUES (511, 256, 1, '<p>La patata no té gràcia, bastant insípida. La salsa blanca tampoc té gust de res, i la picant almenys pica. Han perdut molt, ja que la primera versió la recordàvem bastant top.</p>');
INSERT INTO `brava_review_lang` VALUES (512, 256, 2, '<p>La patata no tiene gracia, bastante insípida. La salsa blanca tampoco sabe a nada, y la picante al menos pica. Han perdido mucho, ya que la primera versión la recordábamos bastante top.</p>');
INSERT INTO `brava_review_lang` VALUES (513, 257, 1, '<p>Piquen una mica. Textura patata OK, salsa KO. Millor pinta que gust.</p>');
INSERT INTO `brava_review_lang` VALUES (514, 257, 2, '<p>Pican un poco. Textura patata OK, salsa KO. Mejor peine que gusto.</p>');
INSERT INTO `brava_review_lang` VALUES (515, 258, 1, '<p>Les patates estan bé, però de qualitat podrien estar millor. Salsa blanca normaleta, vermella casolana que pica una mica però no prou.</p>');
INSERT INTO `brava_review_lang` VALUES (516, 258, 2, '<p>Las patatas están bien, pero de calidad podrían estar mejor. Salsa blanca normalita, roja casera que pica un poco pero no lo suficiente.</p>');
INSERT INTO `brava_review_lang` VALUES (517, 259, 1, NULL);
INSERT INTO `brava_review_lang` VALUES (518, 259, 2, NULL);
INSERT INTO `brava_review_lang` VALUES (519, 260, 1, '<p>Es poden menjar, però crec que són congelades i la salsa és de pot. Molt normals.</p>');
INSERT INTO `brava_review_lang` VALUES (520, 260, 2, '<p>Pueden comerse, pero creo que son congeladas y la salsa es de bote. Muy normales.</p>');
INSERT INTO `brava_review_lang` VALUES (521, 261, 1, '<p>Les patates de textura estan bones, però tenen gust de tot menys a patates. Les salses no tenen gens de gràcia.</p>');
INSERT INTO `brava_review_lang` VALUES (522, 261, 2, '<p>Las patatas de textura están buenas, pero saben a menos a patatas. Las salsas no tienen ninguna gracia.</p>');
INSERT INTO `brava_review_lang` VALUES (523, 262, 1, '<p>Oli molt refregit. Llàstima de la salsa perquè la patata val la pena, molt cruixenteta. Salsa escassa.</p>');
INSERT INTO `brava_review_lang` VALUES (524, 262, 2, '<p>Aceite muy refrito. Lástima de la salsa porque la patata vale la pena, muy crujiente. Salsa escasa.</p>');
INSERT INTO `brava_review_lang` VALUES (525, 263, 1, '<p>Patates bullides passades per la planxa. Salsa que es nota que és casolana, però no està bona, no té cap gràcia. Gràcies bar que tenim al costat de casa, per fer aquestes braves mediocres.</p>');
INSERT INTO `brava_review_lang` VALUES (526, 263, 2, '<p>Patatas hervidas pasadas por la plancha. Salsa que se nota que es casera, pero no está buena, no tiene gracia alguna. Gracias bar que tenemos junto a casa, por hacer estas bravas mediocres.</p>');
INSERT INTO `brava_review_lang` VALUES (527, 264, 1, '<p>Patates ben fetes, però no sabem si estan fregides o no. Allioli trufat guai però lluny de ser brava. Resultat bo, però no són braves.</p>');
INSERT INTO `brava_review_lang` VALUES (528, 264, 2, '<p>Patatas bien hechas, pero no sabemos si están fritas o no. Alioli trufado guay pero lejos de ser brava. Resultado bueno, pero no son bravas.</p>');
INSERT INTO `brava_review_lang` VALUES (529, 265, 1, '<p>Patates no congelades que les fregeixen amb tot el que cuinen al restaurant. Salsa brava&nbsp;bastant picant.</p>');
INSERT INTO `brava_review_lang` VALUES (530, 265, 2, '<p>Patatas no congeladas que las fríen con todo lo que cocinan en el restaurante. Salsa brava bastante picante.</p>');
INSERT INTO `brava_review_lang` VALUES (531, 266, 1, '<p>Patates no congelades que les fregeixen amb tot el que cuinen al restaurant. Allioli + salsa picant que pica bastant. El Toni creu que casolanes però la Bàrbara i la Lara no.</p>');
INSERT INTO `brava_review_lang` VALUES (532, 266, 2, '<p>Patatas no congeladas que las fríen con todo lo que cocinan en el restaurante. Alioli + salsa picante que pica bastante. Toni cree que caseras pero Bárbara y Lara no.</p>');
COMMIT;

-- ----------------------------
-- Table structure for brava_type
-- ----------------------------
DROP TABLE IF EXISTS `brava_type`;
CREATE TABLE `brava_type` (
  `id_brava_type` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_brava_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brava_type
-- ----------------------------
BEGIN;
INSERT INTO `brava_type` VALUES (1, 1);
INSERT INTO `brava_type` VALUES (2, 2);
INSERT INTO `brava_type` VALUES (3, 3);
INSERT INTO `brava_type` VALUES (4, 4);
INSERT INTO `brava_type` VALUES (5, 5);
COMMIT;

-- ----------------------------
-- Table structure for brava_type_lang
-- ----------------------------
DROP TABLE IF EXISTS `brava_type_lang`;
CREATE TABLE `brava_type_lang` (
  `id_brava_type_lang` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `id_brava_type` tinyint(3) unsigned NOT NULL,
  `id_appacman_lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_brava_type_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brava_type_lang
-- ----------------------------
BEGIN;
INSERT INTO `brava_type_lang` VALUES (1, 1, 1, 'Per fer: bars');
INSERT INTO `brava_type_lang` VALUES (2, 1, 2, 'Por hacer: bares');
INSERT INTO `brava_type_lang` VALUES (3, 2, 1, 'Per fer: restaurants');
INSERT INTO `brava_type_lang` VALUES (4, 2, 2, 'Por hacer: restaurantes');
INSERT INTO `brava_type_lang` VALUES (5, 3, 1, 'Fetes');
INSERT INTO `brava_type_lang` VALUES (6, 3, 2, 'Hechas');
INSERT INTO `brava_type_lang` VALUES (7, 4, 1, 'Fetes: altres');
INSERT INTO `brava_type_lang` VALUES (8, 4, 2, 'Hechas: otras');
INSERT INTO `brava_type_lang` VALUES (9, 5, 1, 'Tancat');
INSERT INTO `brava_type_lang` VALUES (10, 5, 2, ' Cerrado');
COMMIT;

-- ----------------------------
-- Table structure for difficulty
-- ----------------------------
DROP TABLE IF EXISTS `difficulty`;
CREATE TABLE `difficulty` (
  `id_difficulty` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_difficulty`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of difficulty
-- ----------------------------
BEGIN;
INSERT INTO `difficulty` VALUES (1, 2);
INSERT INTO `difficulty` VALUES (2, 3);
INSERT INTO `difficulty` VALUES (3, 4);
INSERT INTO `difficulty` VALUES (4, 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

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
INSERT INTO `difficulty_lang` VALUES (7, 4, 1, 'Superfàcil', 'superfacil');
INSERT INTO `difficulty_lang` VALUES (8, 4, 2, 'Superfacil', 'superfacil');
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
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

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
INSERT INTO `ingredient` VALUES (163, '$cornStarch', NULL, NULL);
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
INSERT INTO `ingredient` VALUES (218, '$ribeye', 1, NULL);
INSERT INTO `ingredient` VALUES (219, '$bombaRice', 7, NULL);
INSERT INTO `ingredient` VALUES (220, '$piquilloPeppers', 21, NULL);
INSERT INTO `ingredient` VALUES (221, '$meatBroth', NULL, NULL);
INSERT INTO `ingredient` VALUES (222, '$chickenThighs', 6, NULL);
INSERT INTO `ingredient` VALUES (223, '$saffron', 9, NULL);
INSERT INTO `ingredient` VALUES (224, '$groundClove', 9, NULL);
INSERT INTO `ingredient` VALUES (225, '$cumin', 9, NULL);
INSERT INTO `ingredient` VALUES (226, '$nutmeg', 9, NULL);
INSERT INTO `ingredient` VALUES (227, '$aluminumSkewers', 23, NULL);
INSERT INTO `ingredient` VALUES (228, '$cinnamon', 9, NULL);
INSERT INTO `ingredient` VALUES (229, '$lime', 4, NULL);
INSERT INTO `ingredient` VALUES (230, '$peppermint', 10, NULL);
INSERT INTO `ingredient` VALUES (231, '$coriander', 10, NULL);
INSERT INTO `ingredient` VALUES (232, '$valentinaSauce', 16, NULL);
INSERT INTO `ingredient` VALUES (233, '$wheatTortitas', NULL, NULL);
INSERT INTO `ingredient` VALUES (234, '$vanillaExtract', NULL, NULL);
INSERT INTO `ingredient` VALUES (235, '$bakingSoda', NULL, NULL);
INSERT INTO `ingredient` VALUES (236, '$chocolateChips', NULL, NULL);
INSERT INTO `ingredient` VALUES (237, '$stuffedGreenOlives', NULL, NULL);
INSERT INTO `ingredient` VALUES (238, '$chive', 3, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ingredient_category
-- ----------------------------
DROP TABLE IF EXISTS `ingredient_category`;
CREATE TABLE `ingredient_category` (
  `id_ingredient_category` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ingredient_category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;

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
INSERT INTO `ingredient_lang` VALUES (73, 37, 1, '\"Tortitas\" de blat de moro', 'tortitas-de-blat-de-moro');
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
INSERT INTO `ingredient_lang` VALUES (105, 53, 1, 'Llorer', 'llorer');
INSERT INTO `ingredient_lang` VALUES (106, 53, 2, 'Laurel', 'laurel');
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
INSERT INTO `ingredient_lang` VALUES (325, 163, 1, 'Midó de blat de moro', 'mido-de-blat-de-moro');
INSERT INTO `ingredient_lang` VALUES (326, 163, 2, 'Almidón de maíz', 'almidon-de-maiz');
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
INSERT INTO `ingredient_lang` VALUES (435, 218, 1, '\"Chuletón\" de vadella', 'chuleton-de-vadella');
INSERT INTO `ingredient_lang` VALUES (436, 218, 2, 'Chuletón de ternera', 'chuleton-de-ternera');
INSERT INTO `ingredient_lang` VALUES (437, 219, 1, 'Arròs bomba', 'arros-bomba');
INSERT INTO `ingredient_lang` VALUES (438, 219, 2, 'Arroz bomba', 'arroz-bomba');
INSERT INTO `ingredient_lang` VALUES (439, 220, 1, 'Pebrots del piquillo', 'pebrots-del-piquillo');
INSERT INTO `ingredient_lang` VALUES (440, 220, 2, 'Pimientos del piquillo', 'pimientos-del-piquillo');
INSERT INTO `ingredient_lang` VALUES (441, 221, 1, 'Caldo de carn', 'caldo-de-carn');
INSERT INTO `ingredient_lang` VALUES (442, 221, 2, 'Caldo de carne', 'caldo-de-carne');
INSERT INTO `ingredient_lang` VALUES (443, 222, 1, 'Cuixes de pollastre', 'cuixes-de-pollastre');
INSERT INTO `ingredient_lang` VALUES (444, 222, 2, 'Muslos de pollo', 'muslos-de-pollo');
INSERT INTO `ingredient_lang` VALUES (445, 223, 1, 'Safrà', 'safra');
INSERT INTO `ingredient_lang` VALUES (446, 223, 2, 'Azafrán', 'azafran');
INSERT INTO `ingredient_lang` VALUES (447, 224, 1, 'Clau mòlt', 'clau-molt');
INSERT INTO `ingredient_lang` VALUES (448, 224, 2, 'Clavo molido', 'clavo-molido');
INSERT INTO `ingredient_lang` VALUES (449, 225, 1, 'Comí', 'comi');
INSERT INTO `ingredient_lang` VALUES (450, 225, 2, 'Comino', 'comino');
INSERT INTO `ingredient_lang` VALUES (451, 226, 1, 'Nou moscada', 'nou-moscada');
INSERT INTO `ingredient_lang` VALUES (452, 226, 2, 'Nuez moscada', 'nuez-moscada');
INSERT INTO `ingredient_lang` VALUES (453, 227, 1, 'Broqueta d\'alumini', 'broqueta-dalumini');
INSERT INTO `ingredient_lang` VALUES (454, 227, 2, 'Brochetas de aluminio', 'brochetas-de-aluminio');
INSERT INTO `ingredient_lang` VALUES (455, 228, 1, 'Canyella', 'canyella');
INSERT INTO `ingredient_lang` VALUES (456, 228, 2, 'Canela', 'canela');
INSERT INTO `ingredient_lang` VALUES (457, 229, 1, 'Llima', 'llima');
INSERT INTO `ingredient_lang` VALUES (458, 229, 2, 'Lima', 'lima');
INSERT INTO `ingredient_lang` VALUES (459, 230, 1, '\"Hierbabuena\"', 'hierbabuena');
INSERT INTO `ingredient_lang` VALUES (460, 230, 2, 'Hierbabuena', 'hierbabuena');
INSERT INTO `ingredient_lang` VALUES (461, 231, 1, 'Coriandre', 'coriandre');
INSERT INTO `ingredient_lang` VALUES (462, 231, 2, 'Cilantro', 'cilantro');
INSERT INTO `ingredient_lang` VALUES (463, 232, 1, 'Salsa Valentina', 'salsa-valentina');
INSERT INTO `ingredient_lang` VALUES (464, 232, 2, 'Salsa Valentina', 'salsa-valentina');
INSERT INTO `ingredient_lang` VALUES (465, 233, 1, '\"Tortitas\" de blat', 'tortitas-de-blat');
INSERT INTO `ingredient_lang` VALUES (466, 233, 2, 'Tortitas de trigo', 'tortitas-de-trigo');
INSERT INTO `ingredient_lang` VALUES (467, 234, 1, 'Extracte de vainilla', 'extracte-de-vainilla');
INSERT INTO `ingredient_lang` VALUES (468, 234, 2, 'Extracto de vainilla', 'extracto-de-vainilla');
INSERT INTO `ingredient_lang` VALUES (469, 235, 1, 'Bicarbonat de sodi', 'bicarbonat-de-sodi');
INSERT INTO `ingredient_lang` VALUES (470, 235, 2, 'Bicarbonato de sodio', 'bicarbonato-de-sodio');
INSERT INTO `ingredient_lang` VALUES (471, 236, 1, 'Perles de xocolata', 'perles-de-xocolata');
INSERT INTO `ingredient_lang` VALUES (472, 236, 2, 'Perlas de chocolate', 'perlas-de-chocolate');
INSERT INTO `ingredient_lang` VALUES (473, 237, 1, 'Olives verdes farcides', 'olives-verdes-farcides');
INSERT INTO `ingredient_lang` VALUES (474, 237, 2, 'Aceitunas verdes rellenas', 'aceitunas-verdes-rellenas');
INSERT INTO `ingredient_lang` VALUES (475, 238, 1, 'Cibulet', 'cibulet');
INSERT INTO `ingredient_lang` VALUES (476, 238, 2, 'Cebollino', 'cebollino');
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
  `is_reviewed` tinyint(1) unsigned DEFAULT 0,
  `link` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_recipe`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe
-- ----------------------------
BEGIN;
INSERT INTO `recipe` VALUES (1, 4, NULL, 30, 15, NULL, NULL, 0, 1, 0, 'http://www.nomecomesnada.es/tapenade-de-tomates-secos-y-queso-de-cabra/', '2020-09-02 13:52:42');
INSERT INTO `recipe` VALUES (2, 1, 4, NULL, 60, NULL, NULL, 0, 1, 0, 'https://tasty.co/recipe/one-pot-chicken-spinach-bacon-alfredo', '2020-10-14 16:16:32');
INSERT INTO `recipe` VALUES (3, 4, 4, 5, NULL, NULL, 11, 0, 1, 0, NULL, '2020-10-15 16:54:38');
INSERT INTO `recipe` VALUES (4, 1, 2, 55, 40, NULL, 3, 1, 1, 1, NULL, '2020-10-16 13:06:45');
INSERT INTO `recipe` VALUES (5, 1, 2, 10, 20, 30, 2, 0, 1, 1, NULL, '2020-10-16 13:13:34');
INSERT INTO `recipe` VALUES (6, 1, NULL, 45, 15, NULL, 12, 0, 1, 1, NULL, '2020-10-16 14:31:42');
INSERT INTO `recipe` VALUES (7, 1, 2, 15, 5, NULL, NULL, 0, 1, 0, 'https://www.instagram.com/p/CFsLgWohr5k/', '2022-03-16 18:35:12');
INSERT INTO `recipe` VALUES (8, 4, 2, 5, NULL, NULL, NULL, 0, 1, 0, 'https://www.instagram.com/p/CCih-Nvq4ww/', '2022-03-16 18:58:55');
INSERT INTO `recipe` VALUES (9, 1, 8, 15, 10, NULL, 49, 1, 1, 0, 'https://www.instagram.com/p/B7ZLOybCvz_/', '2022-03-16 19:19:37');
INSERT INTO `recipe` VALUES (10, 1, 2, 15, 270, NULL, NULL, 0, 1, 0, 'https://www.instagram.com/p/CWp_wJnolFA/', '2022-03-16 19:37:04');
INSERT INTO `recipe` VALUES (11, 2, 4, 30, NULL, 120, 43, 0, 1, 0, 'https://chefincamicia.com/ricetta/tiramisu-pistacchio-cioccolato-bianco/', '2022-03-16 19:40:06');
INSERT INTO `recipe` VALUES (12, 1, 1, 5, 5, NULL, NULL, 0, 1, 0, 'https://www.instagram.com/p/CMQJ_i6L42p/', '2022-03-16 19:45:10');
INSERT INTO `recipe` VALUES (13, 1, 1, 20, 20, NULL, NULL, 0, 1, 0, 'https://www.instagram.com/p/CNcLLYLBHGz/', '2022-03-16 19:46:59');
INSERT INTO `recipe` VALUES (14, 1, 4, 45, 45, NULL, 48, 0, 1, 0, NULL, '2022-03-16 19:52:27');
INSERT INTO `recipe` VALUES (15, 1, 2, 10, 30, NULL, NULL, 0, 1, 0, 'https://www.instagram.com/p/B0bHFpPDyMG/', '2022-03-16 19:54:10');
INSERT INTO `recipe` VALUES (16, 1, 8, 30, NULL, 60, 19, 1, 1, 0, 'https://www.instagram.com/p/CLo8pkIgM5n/', '2022-03-16 19:55:48');
INSERT INTO `recipe` VALUES (17, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'https://www.instagram.com/p/B9Ty0R5CyWZ/', '2022-03-16 19:57:06');
INSERT INTO `recipe` VALUES (18, 1, NULL, 10, 10, NULL, 39, 0, 1, 0, 'https://www.instagram.com/p/BvE20Uki8Ih/', '2022-03-16 19:58:27');
INSERT INTO `recipe` VALUES (19, 1, NULL, 15, 10, NULL, 40, 0, 1, 0, NULL, '2022-03-16 19:59:51');
INSERT INTO `recipe` VALUES (20, 1, NULL, 10, 15, NULL, 41, 1, 1, 0, 'https://www.instagram.com/p/BlVytV8nryM/', '2022-03-16 20:01:38');
INSERT INTO `recipe` VALUES (21, 1, 2, 20, 20, 30, 36, 0, 1, 0, 'https://chefincamicia.com/ricetta/panino-pollo-balsamico/', '2022-03-16 20:02:53');
INSERT INTO `recipe` VALUES (23, 1, 0, 0, 0, NULL, NULL, 0, 0, 0, 'https://www.instagram.com/p/B1lyJ96jDVt/', '2022-03-16 20:06:47');
INSERT INTO `recipe` VALUES (24, 4, 6, 5, NULL, NULL, 38, 0, 1, 0, NULL, '2022-03-16 20:09:16');
INSERT INTO `recipe` VALUES (25, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'https://www.instagram.com/p/CAZ5oWmoVdx/', '2022-03-16 20:10:22');
INSERT INTO `recipe` VALUES (26, 1, 2, 10, NULL, NULL, 35, 1, 1, 0, 'https://chefincamicia.com/ricetta/panino-morbido-con-mortadella/', '2022-03-16 20:12:02');
INSERT INTO `recipe` VALUES (27, 1, 0, 0, 0, NULL, NULL, 0, 0, 0, 'https://www.directoalpaladar.com/recetas-de-carnes-y-aves/receta-de-pollo-a-la-crema-con-tomates-secos', '2022-03-16 20:13:56');
INSERT INTO `recipe` VALUES (28, 1, 2, 10, 30, 60, NULL, 0, 1, 0, NULL, '2022-03-16 20:14:46');
INSERT INTO `recipe` VALUES (29, 1, 4, 5, 20, NULL, NULL, 0, 1, 0, 'https://www.tasteofhome.com/recipes/french-market-sandwiches/', '2022-03-16 20:17:40');
INSERT INTO `recipe` VALUES (30, 1, 0, 0, 0, NULL, NULL, 0, 0, 0, 'https://www.directoalpaladar.com/cultura-gastronomica/que-raclette-suiza-como-se-prepara', '2022-03-16 20:21:02');
INSERT INTO `recipe` VALUES (31, 4, 4, NULL, NULL, NULL, NULL, 0, 1, 0, 'https://www.recetasderechupete.com/tartar-de-salmon-al-estilo-clasico-receta-paso-a-paso/10154/', '2022-03-16 20:22:08');
INSERT INTO `recipe` VALUES (32, 1, 3, 5, 10, NULL, NULL, 0, 1, 0, 'https://www.shanazrafiq.com/2016/01/street-style-masala-egg-bun-bun-omelet/', '2022-03-16 20:23:49');
INSERT INTO `recipe` VALUES (33, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'https://www.chinasichuanfood.com/biang-biang-mian-biang-biang-noodles/', '2022-03-16 20:25:46');
INSERT INTO `recipe` VALUES (34, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'https://www.instagram.com/p/CFFIOq1AFnd/', '2022-03-16 20:27:49');
INSERT INTO `recipe` VALUES (35, 1, 0, 0, 0, NULL, NULL, 0, 0, 0, 'https://www.instagram.com/p/CBK3OaugsSl/', '2022-03-16 20:29:19');
INSERT INTO `recipe` VALUES (36, 1, 0, 0, 0, NULL, NULL, 0, 0, 0, 'https://www.instagram.com/p/CNR9UKyhxOS/', '2022-03-16 20:31:25');
INSERT INTO `recipe` VALUES (38, 1, 0, 0, 0, NULL, NULL, 0, 0, 0, 'https://www.instagram.com/p/CFFUnuoFhQf/', '2022-03-16 20:35:56');
INSERT INTO `recipe` VALUES (39, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'https://www.instagram.com/p/CPIso5gq8g9/', '2022-03-16 20:37:22');
INSERT INTO `recipe` VALUES (40, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'https://www.instagram.com/p/Bx7GHJrnwj-/', '2022-03-16 20:38:19');
INSERT INTO `recipe` VALUES (41, 1, NULL, 15, 60, NULL, NULL, 0, 1, 0, 'https://www.instagram.com/p/CJgNZwBAOTN/', '2022-03-16 20:40:03');
INSERT INTO `recipe` VALUES (43, 1, 4, 45, 60, NULL, 37, 0, 1, 0, NULL, '2022-09-05 12:45:32');
INSERT INTO `recipe` VALUES (44, 4, NULL, 5, NULL, NULL, NULL, 0, 1, 0, NULL, '2022-09-05 13:26:38');
INSERT INTO `recipe` VALUES (45, 2, 4, 10, 20, 30, 25, 0, 1, 0, NULL, '2022-09-05 15:22:25');
INSERT INTO `recipe` VALUES (46, 1, NULL, 10, NULL, NULL, 27, 0, 1, 0, 'https://www.justonecookbook.com/japanese-mayonnaise/', '2022-09-05 15:57:35');
INSERT INTO `recipe` VALUES (47, 1, 4, 20, 10, NULL, NULL, 0, 1, 0, 'https://www.instagram.com/p/CYQ92SFlRn2/', '2022-09-07 13:09:35');
INSERT INTO `recipe` VALUES (49, 4, 4, 15, NULL, 120, 31, 0, 1, 0, NULL, '2022-09-13 12:50:39');
INSERT INTO `recipe` VALUES (50, 1, 2, 10, 20, NULL, NULL, 0, 0, 0, 'https://www.instagram.com/p/CeqCpGRoxW8/', '2022-09-13 16:27:55');
INSERT INTO `recipe` VALUES (51, 1, 4, 20, 25, NULL, 55, 0, 1, 0, NULL, '2022-09-14 10:33:09');
INSERT INTO `recipe` VALUES (52, 1, 1, 10, NULL, NULL, 34, 0, 1, 0, NULL, '2022-10-02 19:46:41');
INSERT INTO `recipe` VALUES (53, 4, NULL, 5, NULL, 60, NULL, 0, 1, 0, NULL, '2022-11-09 19:16:22');
INSERT INTO `recipe` VALUES (54, 4, 4, 20, 20, NULL, NULL, 0, 1, 0, NULL, '2022-11-25 18:07:52');
INSERT INTO `recipe` VALUES (55, 2, 6, 45, 15, NULL, NULL, 0, 1, 0, NULL, '2022-11-26 15:24:17');
INSERT INTO `recipe` VALUES (56, 2, 6, 60, NULL, 30, NULL, 0, 1, 0, 'https://www.justonecookbook.com/gyoza-wrappers/', '2022-11-26 15:29:36');
INSERT INTO `recipe` VALUES (57, 2, 2, 10, 150, NULL, 45, 0, 1, 0, 'https://canalcocina.es/receta/alitas-infierno', '2022-11-26 15:49:22');
INSERT INTO `recipe` VALUES (58, 1, 5, 5, 80, NULL, 44, 0, 1, 0, NULL, '2022-11-26 16:55:23');
INSERT INTO `recipe` VALUES (59, 4, 2, 5, 15, NULL, 46, 0, 1, 0, NULL, '2022-12-17 13:40:46');
INSERT INTO `recipe` VALUES (60, 2, 6, 30, 60, 15, 47, 0, 1, 0, 'https://www.instagram.com/p/CZmSoI6lO8Q/', '2023-01-04 17:47:49');
INSERT INTO `recipe` VALUES (61, 4, 1, 10, 5, NULL, 50, 0, 1, 0, 'https://www.instagram.com/p/B5a2KGKqZuN/', '2023-01-16 12:59:10');
INSERT INTO `recipe` VALUES (62, 2, 8, 15, 90, NULL, NULL, 1, 1, 0, 'https://www.justonecookbook.com/instant-pot-asian-pulled-pork/', '2023-01-16 13:15:00');
INSERT INTO `recipe` VALUES (63, 1, 8, 45, 60, NULL, 51, 0, 1, 0, 'https://elcomidista.elpais.com/elcomidista/2011/11/10/articulo/1320904800_132090.html', '2023-01-16 16:03:12');
INSERT INTO `recipe` VALUES (64, 4, NULL, 10, NULL, 120, 52, 0, 1, 0, NULL, '2022-12-08 16:37:07');
INSERT INTO `recipe` VALUES (65, 2, 2, 5, 15, NULL, 54, 0, 1, 0, NULL, '2023-01-16 16:55:07');
INSERT INTO `recipe` VALUES (66, 1, 3, 15, 45, NULL, 56, 0, 1, 0, NULL, '2023-03-02 16:02:13');
INSERT INTO `recipe` VALUES (67, 3, 8, 30, 80, 120, 57, 1, 1, 0, NULL, '2023-03-10 13:28:37');
INSERT INTO `recipe` VALUES (68, 1, 4, 20, 12, 240, 58, 0, 1, 0, NULL, '2023-03-28 16:05:50');
INSERT INTO `recipe` VALUES (69, 1, 2, 5, 45, NULL, NULL, 0, 1, 0, NULL, '2023-04-24 17:30:45');
INSERT INTO `recipe` VALUES (70, 1, 2, 10, 60, NULL, 62, 0, 1, 0, NULL, '2023-05-04 10:50:56');
INSERT INTO `recipe` VALUES (71, 4, 4, 10, NULL, 60, NULL, 0, 1, 0, 'https://www.lauralopezmon.es/recetario/salsa-de-yogur-griega-tzatziki-sabes-el-truco-12084', '2023-05-19 10:22:54');
INSERT INTO `recipe` VALUES (72, 1, 6, 30, 20, NULL, 63, 0, 1, 0, 'https://www.instagram.com/p/CpkpqzNA9VA/', '2023-05-20 10:43:41');
INSERT INTO `recipe` VALUES (73, 1, 4, 20, 40, 90, 64, 0, 1, 0, 'https://www.penguinlibros.com/es/cocina/310289-ebook-nopi-9788418681547', '2023-05-23 13:17:56');
INSERT INTO `recipe` VALUES (74, 4, NULL, 1, 4, NULL, 65, 0, 1, 0, 'https://www.instagram.com/p/Cpk533LIBv_/', '2023-05-23 20:20:05');
INSERT INTO `recipe` VALUES (75, 2, 4, 15, 90, NULL, 179, 0, 0, 0, 'https://www.instagram.com/p/CafCw_2rxL1/', '2023-06-06 12:59:24');
INSERT INTO `recipe` VALUES (76, 2, 6, 45, 60, 720, 212, 0, 1, 0, 'https://www.instagram.com/p/CO5GBF0Kbp-/', '2023-06-09 19:52:14');
INSERT INTO `recipe` VALUES (77, 1, 6, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '2023-06-16 10:12:33');
INSERT INTO `recipe` VALUES (78, 1, 8, 20, 45, 60, NULL, 0, 1, 0, 'https://www.instagram.com/p/CfBnGUYrXAw/', '2023-07-11 17:20:32');
INSERT INTO `recipe` VALUES (79, 1, 3, 15, 30, NULL, 353, 0, 1, 1, 'https://www.instagram.com/p/CYxdnPMBnXt/', '2023-07-12 09:38:13');
INSERT INTO `recipe` VALUES (80, 2, 4, NULL, NULL, NULL, 354, 0, 1, 0, 'https://www.instagram.com/p/Cq7iQ3bt6N_/', '2023-07-12 11:19:55');
COMMIT;

-- ----------------------------
-- Table structure for recipe_appacman_user
-- ----------------------------
DROP TABLE IF EXISTS `recipe_appacman_user`;
CREATE TABLE `recipe_appacman_user` (
  `id_recipe` smallint(5) unsigned NOT NULL,
  `id_appacman_user` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_recipe`,`id_appacman_user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe_appacman_user
-- ----------------------------
BEGIN;
INSERT INTO `recipe_appacman_user` VALUES (1, 1);
INSERT INTO `recipe_appacman_user` VALUES (2, 1);
INSERT INTO `recipe_appacman_user` VALUES (3, 1);
INSERT INTO `recipe_appacman_user` VALUES (4, 1);
INSERT INTO `recipe_appacman_user` VALUES (5, 1);
INSERT INTO `recipe_appacman_user` VALUES (6, 1);
INSERT INTO `recipe_appacman_user` VALUES (7, 1);
INSERT INTO `recipe_appacman_user` VALUES (8, 1);
INSERT INTO `recipe_appacman_user` VALUES (9, 1);
INSERT INTO `recipe_appacman_user` VALUES (10, 1);
INSERT INTO `recipe_appacman_user` VALUES (11, 1);
INSERT INTO `recipe_appacman_user` VALUES (12, 1);
INSERT INTO `recipe_appacman_user` VALUES (13, 1);
INSERT INTO `recipe_appacman_user` VALUES (14, 1);
INSERT INTO `recipe_appacman_user` VALUES (14, 2);
INSERT INTO `recipe_appacman_user` VALUES (15, 1);
INSERT INTO `recipe_appacman_user` VALUES (16, 1);
INSERT INTO `recipe_appacman_user` VALUES (17, 2);
INSERT INTO `recipe_appacman_user` VALUES (18, 1);
INSERT INTO `recipe_appacman_user` VALUES (19, 1);
INSERT INTO `recipe_appacman_user` VALUES (20, 1);
INSERT INTO `recipe_appacman_user` VALUES (21, 1);
INSERT INTO `recipe_appacman_user` VALUES (23, 1);
INSERT INTO `recipe_appacman_user` VALUES (24, 1);
INSERT INTO `recipe_appacman_user` VALUES (25, 1);
INSERT INTO `recipe_appacman_user` VALUES (26, 1);
INSERT INTO `recipe_appacman_user` VALUES (26, 2);
INSERT INTO `recipe_appacman_user` VALUES (27, 1);
INSERT INTO `recipe_appacman_user` VALUES (28, 1);
INSERT INTO `recipe_appacman_user` VALUES (29, 1);
INSERT INTO `recipe_appacman_user` VALUES (30, 1);
INSERT INTO `recipe_appacman_user` VALUES (31, 1);
INSERT INTO `recipe_appacman_user` VALUES (32, 1);
INSERT INTO `recipe_appacman_user` VALUES (33, 1);
INSERT INTO `recipe_appacman_user` VALUES (34, 1);
INSERT INTO `recipe_appacman_user` VALUES (35, 1);
INSERT INTO `recipe_appacman_user` VALUES (36, 1);
INSERT INTO `recipe_appacman_user` VALUES (38, 1);
INSERT INTO `recipe_appacman_user` VALUES (39, 1);
INSERT INTO `recipe_appacman_user` VALUES (40, 1);
INSERT INTO `recipe_appacman_user` VALUES (41, 1);
INSERT INTO `recipe_appacman_user` VALUES (43, 1);
INSERT INTO `recipe_appacman_user` VALUES (44, 1);
INSERT INTO `recipe_appacman_user` VALUES (45, 1);
INSERT INTO `recipe_appacman_user` VALUES (46, 1);
INSERT INTO `recipe_appacman_user` VALUES (47, 1);
INSERT INTO `recipe_appacman_user` VALUES (49, 1);
INSERT INTO `recipe_appacman_user` VALUES (50, 1);
INSERT INTO `recipe_appacman_user` VALUES (51, 1);
INSERT INTO `recipe_appacman_user` VALUES (52, 1);
INSERT INTO `recipe_appacman_user` VALUES (53, 1);
INSERT INTO `recipe_appacman_user` VALUES (54, 1);
INSERT INTO `recipe_appacman_user` VALUES (55, 1);
INSERT INTO `recipe_appacman_user` VALUES (56, 1);
INSERT INTO `recipe_appacman_user` VALUES (57, 2);
INSERT INTO `recipe_appacman_user` VALUES (58, 1);
INSERT INTO `recipe_appacman_user` VALUES (59, 1);
INSERT INTO `recipe_appacman_user` VALUES (60, 2);
INSERT INTO `recipe_appacman_user` VALUES (61, 1);
INSERT INTO `recipe_appacman_user` VALUES (62, 1);
INSERT INTO `recipe_appacman_user` VALUES (63, 1);
INSERT INTO `recipe_appacman_user` VALUES (64, 1);
INSERT INTO `recipe_appacman_user` VALUES (65, 1);
INSERT INTO `recipe_appacman_user` VALUES (66, 1);
INSERT INTO `recipe_appacman_user` VALUES (67, 1);
INSERT INTO `recipe_appacman_user` VALUES (67, 2);
INSERT INTO `recipe_appacman_user` VALUES (68, 1);
INSERT INTO `recipe_appacman_user` VALUES (69, 1);
INSERT INTO `recipe_appacman_user` VALUES (70, 1);
INSERT INTO `recipe_appacman_user` VALUES (71, 1);
INSERT INTO `recipe_appacman_user` VALUES (72, 1);
INSERT INTO `recipe_appacman_user` VALUES (73, 1);
INSERT INTO `recipe_appacman_user` VALUES (74, 1);
INSERT INTO `recipe_appacman_user` VALUES (75, 2);
INSERT INTO `recipe_appacman_user` VALUES (76, 1);
INSERT INTO `recipe_appacman_user` VALUES (76, 2);
INSERT INTO `recipe_appacman_user` VALUES (77, 1);
INSERT INTO `recipe_appacman_user` VALUES (78, 1);
INSERT INTO `recipe_appacman_user` VALUES (79, 1);
INSERT INTO `recipe_appacman_user` VALUES (80, 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=560 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe_ingredient
-- ----------------------------
BEGIN;
INSERT INTO `recipe_ingredient` VALUES (1, 1, '80', 1, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (2, 1, '80', 10, 4, 1, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (3, 1, '3', 2, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (4, 1, '15', 3, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (5, 1, '70', 4, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (6, 1, '2', 5, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (7, 1, '1', 11, 10, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (8, 1, '8', 7, 7, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (9, 1, NULL, 8, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (10, 1, NULL, 9, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (11, 3, '20', 7, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (12, 3, '2', 24, 2, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (13, 3, '75', 23, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (14, 3, '75', 18, 4, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (15, 3, '30', 2, 5, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (16, 2, '200', 12, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (17, 2, '2', 13, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (18, 2, '2', 22, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (19, 2, '1', 9, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (20, 2, '1', 21, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (21, 2, '4', 20, 11, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (22, 2, '2', 19, NULL, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (23, 2, '150', 14, 4, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (24, 2, '1500', 15, 5, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (25, 2, '400', 16, 4, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (26, 2, '150', 17, 4, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (27, 2, '150', 18, 4, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (28, 5, '200', 25, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (29, 5, '240', 26, 5, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (30, 4, '200', 27, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (31, 4, '0.5', 13, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (32, 4, '0.5', 28, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (33, 6, '500', 26, 5, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (34, 6, '5', 29, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (35, 6, '5', 30, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (36, 4, '200', 31, 5, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (37, 4, '4', 32, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (38, 4, '3', 34, 2, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (39, 4, '1.5', 35, 2, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (40, 4, '0.5', 33, 2, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (41, 4, '1', 36, NULL, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (42, 7, '2', 37, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (43, 7, '5', 73, 2, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (44, 7, '5', 26, 2, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (45, 7, '3', 39, 2, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (46, 7, '3', 40, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (47, 7, '1', 22, 8, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (48, 7, '1', 38, 8, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (49, 8, '4', 10, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (50, 8, '200', 41, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (51, 8, '12', 42, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (52, 8, '6', 44, 1, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (53, 8, NULL, 2, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (54, 8, NULL, 7, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (55, 8, NULL, 45, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (56, 8, NULL, 22, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (57, 8, NULL, 9, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (58, 9, '250', 18, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (59, 9, '250', 46, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (60, 9, '175', 47, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (61, 9, NULL, 22, 9, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (62, 9, NULL, 9, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (63, 9, NULL, 48, 9, 0, 1, 6);
INSERT INTO `recipe_ingredient` VALUES (64, 10, '250', 49, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (65, 10, '250', 55, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (66, 10, '250', 56, 4, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (67, 10, '500', 50, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (68, 10, '100', 51, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (69, 10, '100', 52, 4, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (70, 10, '1', 53, 7, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (71, 10, '100', 54, 5, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (72, 10, '80', 18, 4, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (73, 10, NULL, 22, 9, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (74, 11, '140', 57, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (75, 11, '50', 58, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (76, 11, '10', 59, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (77, 11, '500', 60, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (78, 11, '150', 61, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (79, 11, '80', 33, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (80, 11, '2', 32, 1, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (81, 11, '100', 62, 5, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (82, 11, '12', 63, 1, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (83, 11, NULL, 64, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (84, 12, '0.25', 19, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (85, 12, '200', 14, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (86, 12, '2', 32, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (87, 12, '2', 65, 1, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (88, 12, NULL, 66, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (89, 12, NULL, 22, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (90, 12, NULL, 9, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (91, 13, '2', 72, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (92, 13, '1', 52, 12, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (93, 13, '2', 67, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (94, 13, '2', 33, 2, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (95, 13, NULL, 68, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (96, 13, NULL, 69, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (97, 13, '3', 28, NULL, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (98, 13, '1', 70, NULL, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (99, 13, '1', 71, NULL, 1, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (100, 13, NULL, 73, 9, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (101, 13, NULL, 22, 9, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (102, 13, NULL, 9, 9, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (103, 12, NULL, 73, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (104, 14, '2', 74, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (105, 14, NULL, 73, 14, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (106, 14, '4', 75, 2, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (107, 14, '4', 66, 2, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (108, 14, '12', 76, 13, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (109, 14, '8', 77, 13, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (110, 14, NULL, 9, 9, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (111, 14, '1', 144, 3, 0, 1, 11);
INSERT INTO `recipe_ingredient` VALUES (112, 14, '1', 79, 3, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (113, 14, '1', 20, 11, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (114, 14, '1', 32, 1, 0, 0, 14);
INSERT INTO `recipe_ingredient` VALUES (115, 14, '250', 59, 5, 0, 0, 15);
INSERT INTO `recipe_ingredient` VALUES (116, 14, NULL, 22, 9, 0, 0, 16);
INSERT INTO `recipe_ingredient` VALUES (117, 15, '1', 81, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (118, 15, '1', 80, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (119, 15, '1', 84, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (120, 15, '120', 82, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (121, 15, '1', 32, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (122, 15, NULL, 22, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (123, 15, NULL, 9, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (124, 15, NULL, 73, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (125, 15, NULL, 83, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (126, 16, '400', 85, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (127, 16, '400', 86, 4, 1, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (128, 16, '500', 60, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (129, 16, '4', 32, 1, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (130, 16, '120', 33, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (131, 16, NULL, 87, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (132, 16, '120', 62, 5, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (133, 16, NULL, 64, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (134, 18, '1', 88, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (135, 18, '40', 90, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (136, 18, '50', 91, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (137, 18, '50', 92, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (138, 18, '40', 93, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (139, 18, '1', 89, 1, 1, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (140, 18, '40', 4, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (141, 18, '30', 18, 4, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (142, 24, '400', 94, 5, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (143, 24, '1', 95, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (144, 24, '50', 73, 5, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (145, 24, '40', 11, 5, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (146, 24, '0.5', 22, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (147, 24, NULL, 39, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (148, 24, NULL, 79, 9, 1, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (149, 26, '2', 97, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (150, 26, '1', 89, 1, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (151, 26, '3', 98, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (152, 26, '60', 57, 4, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (153, 26, '100', 99, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (154, 26, NULL, 75, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (155, 21, NULL, 100, 9, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (156, 21, '1', 13, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (157, 21, NULL, 101, 9, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (158, 21, '30', 18, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (159, 21, NULL, 102, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (160, 21, NULL, 7, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (161, 21, NULL, 9, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (162, 21, NULL, 22, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (163, 21, NULL, 2, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (164, 21, '2', 103, 1, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (165, 45, '400', 25, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (166, 45, '400', 26, 5, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (167, 45, '5', 29, 4, 0, 1, 3);
INSERT INTO `recipe_ingredient` VALUES (168, 45, '80', 104, 5, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (169, 45, '3', 33, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (170, 45, '1', 22, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (171, 43, '400', 105, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (172, 43, '500', 106, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (173, 43, '1', 107, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (174, 43, '1', 51, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (175, 43, '0.5', 108, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (176, 43, NULL, 109, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (177, 43, NULL, 68, 9, 0, 1, 7);
INSERT INTO `recipe_ingredient` VALUES (178, 43, NULL, 83, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (179, 43, NULL, 34, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (180, 43, NULL, 110, 9, 0, 1, 10);
INSERT INTO `recipe_ingredient` VALUES (181, 43, '1', 111, 3, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (182, 43, NULL, 112, NULL, 0, 1, 12);
INSERT INTO `recipe_ingredient` VALUES (183, 44, '1', 32, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (184, 44, '200', 59, 5, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (185, 46, '2', 113, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (186, 46, '2', 114, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (187, 46, '1.5', 59, 6, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (188, 46, '0.5', 22, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (189, 46, '2', 33, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (190, 46, '0.5', 115, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (191, 46, '2', 104, 2, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (192, 46, '4', 11, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (193, 47, '8', 116, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (194, 47, '1', 50, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (195, 47, '2', 51, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (196, 47, '6', 118, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (197, 47, NULL, 22, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (198, 47, NULL, 59, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (199, 47, '400', 117, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (200, 47, NULL, 34, 9, 0, 1, 7);
INSERT INTO `recipe_ingredient` VALUES (201, 29, '50', 47, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (202, 29, '50', 114, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (203, 29, '1', 119, 2, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (204, 29, '1', 120, 3, 0, 1, 4);
INSERT INTO `recipe_ingredient` VALUES (205, 29, '0.5', 121, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (206, 29, '4', 122, 1, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (207, 29, '150', 82, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (208, 29, '4', 123, 1, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (209, 29, NULL, 124, NULL, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (210, 49, '0.25', 117, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (211, 49, '3', 51, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (212, 49, '4', 126, 2, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (213, 49, '2', 102, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (214, 49, '2', 114, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (215, 49, NULL, 125, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (217, 49, '0.5', 128, NULL, 0, 1, 3);
INSERT INTO `recipe_ingredient` VALUES (218, 51, '1', 129, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (219, 51, '2', 28, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (220, 51, '2', 32, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (221, 51, '200', 130, 5, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (222, 51, '100', 99, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (223, 51, '100', 131, 4, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (224, 51, NULL, 47, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (225, 51, NULL, 22, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (226, 51, NULL, 9, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (227, 52, '2', 132, 2, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (228, 52, '2', 33, 2, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (229, 52, '2', 26, 2, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (230, 52, NULL, 15, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (231, 52, '2', 133, 1, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (232, 52, NULL, 64, 9, 0, 1, 6);
INSERT INTO `recipe_ingredient` VALUES (233, 20, '1', 88, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (234, 20, '1', 84, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (235, 20, NULL, 44, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (236, 20, NULL, 17, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (237, 20, '1', 89, 1, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (238, 20, NULL, 134, 9, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (239, 20, NULL, 66, 9, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (240, 19, '1', 88, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (241, 19, '1', 13, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (242, 19, '250', 135, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (243, 19, '150', 42, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (244, 19, NULL, 136, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (245, 19, NULL, 138, 9, 1, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (246, 19, '0.5', 19, NULL, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (247, 19, '60', 12, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (248, 19, NULL, 137, 9, 0, 1, 10);
INSERT INTO `recipe_ingredient` VALUES (249, 19, NULL, 92, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (250, 19, NULL, 22, 9, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (251, 19, NULL, 9, 9, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (252, 19, NULL, 73, 9, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (253, 53, '0.5', 139, 6, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (254, 53, '4', 33, 2, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (255, 53, '4', 140, 2, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (256, 53, '4', 125, 2, 1, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (257, 32, '3', 141, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (258, 32, '3', 32, 1, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (259, 32, '0.5', 19, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (260, 32, '1', 142, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (261, 32, '1', 144, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (262, 32, '0.5', 143, 3, 0, 1, 6);
INSERT INTO `recipe_ingredient` VALUES (263, 32, NULL, 73, 10, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (264, 32, NULL, 22, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (265, 28, '3', 28, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (266, 28, '1', 74, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (267, 28, '25', 47, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (268, 28, '500', 145, 5, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (269, 28, '500', 146, 5, 1, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (270, 28, NULL, 9, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (271, 56, '280', 46, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (272, 56, '0.5', 22, 3, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (273, 57, '500', 155, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (274, 57, '2', 20, 11, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (275, 57, '2', 79, 2, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (276, 57, '4', 156, 1, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (277, 57, '1', 157, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (278, 57, '1', 158, 3, 1, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (279, 57, '1', 54, 10, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (280, 57, '1', 159, 10, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (281, 57, '1500', 145, 5, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (282, 57, NULL, 22, 9, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (283, 57, NULL, 9, 9, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (284, 57, NULL, 73, 9, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (285, 54, '3', 160, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (286, 54, '250', 130, 5, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (287, 54, NULL, 47, 9, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (288, 54, NULL, 9, 9, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (289, 54, NULL, 22, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (290, 58, '1000', 161, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (291, 58, '300', 162, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (292, 58, '1000', 66, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (293, 58, '4', 20, 11, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (294, 58, '360', 4, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (295, 58, NULL, 73, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (296, 55, '30', 147, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (297, 55, '30', 148, 1, 1, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (298, 55, '200', 149, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (299, 55, '1', 19, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (300, 55, '200', 150, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (301, 55, '200', 117, 4, 1, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (302, 55, '15', 151, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (303, 55, '1', 20, 11, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (304, 55, '1', 152, 2, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (305, 55, '1.5', 111, 2, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (306, 55, '1', 153, 2, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (307, 55, '5', 34, 2, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (308, 55, NULL, 9, 9, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (309, 55, '2', 22, 3, 0, 0, 14);
INSERT INTO `recipe_ingredient` VALUES (310, 55, '4', 104, 2, 0, 0, 15);
INSERT INTO `recipe_ingredient` VALUES (312, 56, '120', 26, 5, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (313, 56, NULL, 163, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (314, 56, NULL, 164, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (315, 56, '1', 165, NULL, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (316, 56, '1', 166, NULL, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (317, 55, NULL, 59, 10, 0, 0, 16);
INSERT INTO `recipe_ingredient` VALUES (318, 55, '100', 26, 5, 0, 0, 17);
INSERT INTO `recipe_ingredient` VALUES (319, 31, '500', 106, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (320, 31, '0.5', 119, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (321, 31, '30', 167, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (322, 31, '30', 168, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (323, 31, '1', 169, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (324, 31, '2', 170, 2, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (325, 31, '2', 171, 2, 1, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (326, 31, '2', 34, 2, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (327, 31, '5', 2, 2, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (328, 31, '1', 172, 3, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (329, 31, NULL, 9, 9, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (330, 31, '1', 107, NULL, 0, 1, 12);
INSERT INTO `recipe_ingredient` VALUES (331, 59, '160', 173, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (332, 59, '160', 26, 5, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (333, 59, NULL, 144, 9, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (334, 59, NULL, 73, 10, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (335, 59, '100', 174, 4, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (336, 59, '100', 175, 4, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (337, 60, '2', 176, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (338, 60, '650', 177, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (339, 60, '2', 28, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (340, 60, '25', 178, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (341, 60, '2', 20, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (342, 60, '2', 179, 15, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (343, 60, '1000', 180, 5, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (344, 60, '400', 138, 4, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (345, 60, NULL, 73, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (346, 60, NULL, 22, 9, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (347, 60, NULL, 9, 9, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (348, 14, NULL, 206, 9, 0, 1, 3);
INSERT INTO `recipe_ingredient` VALUES (351, 14, NULL, 124, NULL, 0, 0, 17);
INSERT INTO `recipe_ingredient` VALUES (352, 61, '2', 181, 16, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (353, 61, '3', 98, 1, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (354, 61, '50', 18, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (355, 61, '15', 182, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (356, 61, '3', 183, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (357, 61, '5', 184, 4, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (358, 61, NULL, 22, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (359, 61, NULL, 9, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (360, 61, NULL, 47, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (361, 62, '1', 19, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (362, 62, '30', 185, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (363, 62, '6', 20, 11, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (364, 62, '1250', 186, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (365, 62, NULL, 22, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (366, 62, NULL, 9, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (367, 62, '400', 145, 5, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (368, 62, '5', 34, 2, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (369, 62, '2', 152, 2, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (370, 62, '4', 187, 2, 0, 1, 11);
INSERT INTO `recipe_ingredient` VALUES (371, 62, NULL, 188, NULL, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (372, 62, NULL, 73, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (373, 63, '400', 14, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (374, 63, '200', 174, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (375, 63, '10', 189, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (376, 63, '2', 119, NULL, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (377, 63, '1', 32, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (378, 63, '2', 15, 2, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (379, 63, '1', 47, 2, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (380, 63, NULL, 73, NULL, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (381, 63, NULL, 22, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (382, 63, NULL, 9, 9, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (383, 64, '1', 190, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (384, 64, '250', 125, 5, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (385, 64, '250', 26, 5, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (386, 64, '1', 22, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (387, 64, '1', 33, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (388, 64, '1', 192, 3, 0, 1, 6);
INSERT INTO `recipe_ingredient` VALUES (389, 64, NULL, 193, 1, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (390, 65, '200', 194, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (391, 65, '4', 195, 1, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (392, 65, NULL, 112, 9, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (393, 65, NULL, 191, 9, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (394, 65, NULL, 168, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (395, 65, NULL, 73, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (396, 41, '1', 19, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (397, 41, '250', 196, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (398, 41, '400', 197, 5, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (399, 41, NULL, 73, 9, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (400, 41, NULL, 22, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (401, 14, '500', 161, 4, 1, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (402, 66, '220', 198, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (403, 66, '50', 199, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (404, 66, '1', 19, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (406, 66, '350', 26, 5, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (407, 66, '600', 145, 5, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (408, 66, '50', 47, 4, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (409, 66, '50', 54, 5, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (410, 66, '75', 18, 4, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (411, 66, NULL, 22, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (412, 67, '1000', 200, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (413, 67, '1000', 201, 4, 1, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (414, 67, '2', 19, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (415, 67, '600', 202, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (416, 67, '150', 54, 5, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (417, 67, '15', 15, 5, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (418, 67, '15', 170, 5, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (419, 67, '8', 204, 17, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (420, 67, '50', 203, 4, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (421, 67, NULL, 114, 9, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (422, 67, '1', 81, 1, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (423, 67, '1', 189, 17, 0, 1, 12);
INSERT INTO `recipe_ingredient` VALUES (424, 67, '1', 32, 1, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (425, 67, NULL, 22, 9, 0, 0, 14);
INSERT INTO `recipe_ingredient` VALUES (426, 67, NULL, 73, 9, 0, 0, 15);
INSERT INTO `recipe_ingredient` VALUES (427, 67, NULL, 164, NULL, 0, 0, 16);
INSERT INTO `recipe_ingredient` VALUES (428, 68, '250', 46, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (429, 68, '7', 205, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (430, 68, '6', 22, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (431, 68, '6', 33, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (432, 68, '125', 26, 5, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (433, 68, '30', 73, 5, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (434, 68, '20', 15, 5, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (435, 68, NULL, 83, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (436, 26, '2', 141, 1, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (437, 69, '1', 19, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (438, 69, NULL, 73, 9, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (439, 69, NULL, 22, 8, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (440, 69, NULL, 125, 10, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (441, 69, '1', 26, 6, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (442, 70, '2', 207, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (443, 70, '2', 74, 1, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (444, 70, '1', 19, NULL, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (445, 70, NULL, 73, 9, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (446, 70, NULL, 22, 9, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (447, 70, NULL, 9, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (448, 71, '250', 208, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (449, 71, '1', 108, NULL, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (450, 71, '0.5', 20, 11, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (451, 71, '3', 209, 7, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (452, 71, '2', 11, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (453, 71, '1', 2, 10, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (454, 71, NULL, 22, 9, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (455, 72, '500', 106, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (456, 72, '2', 20, 11, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (457, 72, '1', 38, 2, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (458, 72, '1', 39, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (459, 72, '1', 22, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (460, 72, NULL, 9, 9, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (461, 72, '70', 210, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (462, 72, '70', 211, 4, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (463, 72, '6', 211, 16, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (464, 72, '6', 141, 1, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (465, 72, '400', 212, 4, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (466, 72, '0.5', 80, NULL, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (467, 72, '1', 213, 2, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (468, 73, '2', 214, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (469, 73, '25', 216, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (470, 73, '25', 20, 4, 1, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (471, 73, '1', 48, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (472, 73, '1', 34, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (473, 73, '2', 11, 2, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (474, 73, '0.25', 68, 3, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (475, 73, '0.25', 64, 3, 0, 1, 8);
INSERT INTO `recipe_ingredient` VALUES (476, 73, '25', 73, 5, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (477, 73, '150', 215, 4, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (478, 73, '5', 7, 4, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (479, 73, '10', 24, 4, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (480, 73, NULL, 22, 9, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (481, 73, NULL, 9, 9, 0, 0, 14);
INSERT INTO `recipe_ingredient` VALUES (482, 74, '2', 217, 1, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (483, 75, '1000', 218, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (484, 75, '340', 219, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (485, 75, '10', 220, 1, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (486, 75, '100', 206, 4, 0, 1, 4);
INSERT INTO `recipe_ingredient` VALUES (487, 75, '2', 20, 11, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (488, 75, '750', 221, 5, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (489, 75, '750', 180, 5, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (490, 75, NULL, 22, 9, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (491, 75, NULL, 73, 9, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (492, 76, '1500', 222, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (493, 76, '0.3', 223, 19, 0, 1, 2);
INSERT INTO `recipe_ingredient` VALUES (494, 76, '0.25', 224, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (495, 76, '0.5', 226, 2, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (496, 76, '1', 225, 2, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (497, 76, '0.5', 228, 2, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (498, 76, '1.5', 39, 3, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (499, 76, '1', 22, 8, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (500, 76, '650', 208, 4, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (501, 76, NULL, 73, 10, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (502, 76, '4', 20, 11, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (503, 76, '3', 229, NULL, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (504, 76, '2', 163, 2, 0, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (505, 76, NULL, 230, 14, 0, 0, 14);
INSERT INTO `recipe_ingredient` VALUES (506, 76, NULL, 231, 14, 0, 0, 15);
INSERT INTO `recipe_ingredient` VALUES (507, 76, NULL, 174, 9, 0, 0, 16);
INSERT INTO `recipe_ingredient` VALUES (508, 76, NULL, 3, 9, 0, 0, 17);
INSERT INTO `recipe_ingredient` VALUES (509, 76, NULL, 232, 9, 0, 0, 18);
INSERT INTO `recipe_ingredient` VALUES (510, 76, '4', 101, 7, 0, 0, 19);
INSERT INTO `recipe_ingredient` VALUES (511, 76, '6', 233, 1, 0, 0, 20);
INSERT INTO `recipe_ingredient` VALUES (512, 76, NULL, 124, NULL, 0, 0, 21);
INSERT INTO `recipe_ingredient` VALUES (513, 76, NULL, 227, NULL, 0, 0, 22);
INSERT INTO `recipe_ingredient` VALUES (514, 4, '0.5', 115, 3, 1, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (515, 77, '175', 47, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (516, 77, '200', 187, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (517, 77, '115', 33, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (518, 77, '1', 234, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (519, 77, '1', 32, 1, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (520, 77, '1', 113, 1, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (521, 77, '300', 46, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (522, 77, '0.5', 235, 3, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (523, 77, '0.5', 22, 3, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (524, 77, '300', 236, 4, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (525, 78, '3', 20, 18, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (526, 78, '30', 237, 1, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (527, 78, '300', 4, 4, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (528, 78, NULL, 73, 14, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (529, 78, '2', 53, 7, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (530, 78, '0.5', 192, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (531, 78, NULL, 73, 14, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (532, 79, '500', 13, 4, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (533, 79, '1', 32, 1, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (534, 79, '1', 21, 3, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (535, 79, '1', 9, 3, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (536, 79, '1', 143, 3, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (537, 79, '0.5', 22, 3, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (538, 79, '4', 163, 2, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (539, 79, '2', 20, 11, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (540, 79, '1', 68, 3, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (541, 79, '0.25', 34, 6, 0, 0, 10);
INSERT INTO `recipe_ingredient` VALUES (542, 79, '0.5', 187, 6, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (543, 79, '1', 26, 2, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (544, 79, NULL, 83, 9, 0, 1, 15);
INSERT INTO `recipe_ingredient` VALUES (545, 79, NULL, 73, 14, 0, 0, 14);
INSERT INTO `recipe_ingredient` VALUES (546, 79, NULL, 238, 9, 0, 1, 16);
INSERT INTO `recipe_ingredient` VALUES (547, 80, '1', 80, NULL, 0, 0, 1);
INSERT INTO `recipe_ingredient` VALUES (548, 80, '320', 198, 4, 0, 0, 2);
INSERT INTO `recipe_ingredient` VALUES (549, 80, '1000', 145, 5, 0, 0, 3);
INSERT INTO `recipe_ingredient` VALUES (550, 80, '150', 18, 4, 0, 0, 4);
INSERT INTO `recipe_ingredient` VALUES (551, 80, NULL, 7, NULL, 0, 0, 5);
INSERT INTO `recipe_ingredient` VALUES (552, 80, '200', 2, 5, 0, 0, 6);
INSERT INTO `recipe_ingredient` VALUES (553, 80, '50', 57, 4, 0, 0, 7);
INSERT INTO `recipe_ingredient` VALUES (554, 80, '1', 176, 1, 0, 0, 8);
INSERT INTO `recipe_ingredient` VALUES (555, 80, '150', 93, 4, 0, 0, 9);
INSERT INTO `recipe_ingredient` VALUES (556, 80, NULL, 22, 9, 0, 0, 11);
INSERT INTO `recipe_ingredient` VALUES (557, 80, NULL, 73, 9, 0, 0, 12);
INSERT INTO `recipe_ingredient` VALUES (558, 80, NULL, 47, 9, 1, 0, 13);
INSERT INTO `recipe_ingredient` VALUES (559, 80, '1', 89, 1, 1, 0, 10);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

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
INSERT INTO `recipe_lang` VALUES (149, 75, 1, 'Arrós de \"chuletón\"', 'arros-de-chuleton', NULL);
INSERT INTO `recipe_lang` VALUES (150, 75, 2, 'Arroz de chuletón', 'arroz-de-chuleton', NULL);
INSERT INTO `recipe_lang` VALUES (151, 76, 1, 'Kebab de pollastre', 'kebab-de-pollastre', NULL);
INSERT INTO `recipe_lang` VALUES (152, 76, 2, 'Kebab de pollo', 'kebab-de-pollo', NULL);
INSERT INTO `recipe_lang` VALUES (153, 77, 1, 'Cookies', 'cookies', NULL);
INSERT INTO `recipe_lang` VALUES (154, 77, 2, 'Cookies', 'cookies', NULL);
INSERT INTO `recipe_lang` VALUES (155, 78, 1, 'Tapa d\'olives i alls confitats', 'tapa-dolives-i-alls-confitats', NULL);
INSERT INTO `recipe_lang` VALUES (156, 78, 2, 'Tapa de aceitunas y ajos confitados', 'tapa-de-aceitunas-y-ajos-confitados', NULL);
INSERT INTO `recipe_lang` VALUES (157, 79, 1, 'Pollastre al sèsam', 'pollastre-al-sesam', NULL);
INSERT INTO `recipe_lang` VALUES (158, 79, 2, 'Pollo al sésamo', 'pollo-al-sesamo', NULL);
INSERT INTO `recipe_lang` VALUES (159, 80, 1, 'Risotto d\'ànec, pesto i burrata', 'risotto-danec-pesto-i-burrata', NULL);
INSERT INTO `recipe_lang` VALUES (160, 80, 2, 'Risotto de pato, pesto y burrata', 'risotto-de-pato-pesto-y-burrata', NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;

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
INSERT INTO `recipe_step` VALUES (258, 76, NULL, 1);
INSERT INTO `recipe_step` VALUES (259, 76, NULL, 2);
INSERT INTO `recipe_step` VALUES (260, 76, NULL, 3);
INSERT INTO `recipe_step` VALUES (261, 76, NULL, 4);
INSERT INTO `recipe_step` VALUES (262, 76, NULL, 5);
INSERT INTO `recipe_step` VALUES (263, 76, NULL, 6);
INSERT INTO `recipe_step` VALUES (264, 76, 213, 7);
INSERT INTO `recipe_step` VALUES (265, 76, 214, 8);
INSERT INTO `recipe_step` VALUES (266, 78, NULL, 1);
INSERT INTO `recipe_step` VALUES (267, 78, NULL, 2);
INSERT INTO `recipe_step` VALUES (268, 78, NULL, 3);
INSERT INTO `recipe_step` VALUES (269, 79, NULL, 1);
INSERT INTO `recipe_step` VALUES (270, 79, NULL, 2);
INSERT INTO `recipe_step` VALUES (271, 79, NULL, 3);
INSERT INTO `recipe_step` VALUES (272, 80, NULL, 1);
INSERT INTO `recipe_step` VALUES (273, 80, NULL, 2);
INSERT INTO `recipe_step` VALUES (274, 80, NULL, 3);
INSERT INTO `recipe_step` VALUES (275, 80, NULL, 4);
INSERT INTO `recipe_step` VALUES (276, 80, NULL, 4);
INSERT INTO `recipe_step` VALUES (277, 80, NULL, 5);
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
) ENGINE=InnoDB AUTO_INCREMENT=555 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe_step_lang
-- ----------------------------
BEGIN;
INSERT INTO `recipe_step_lang` VALUES (1, 1, 1, '<p>Aquest pas es pot ometre si utilitzem $oilDryTomatoes.</p><p>Hidratem els $dryTomatoes en aigua molt calenta durant 30 min. Passat aquest temps els escorrem.</p>');
INSERT INTO `recipe_step_lang` VALUES (2, 1, 2, '<p>Este paso se puede omitir si utilizamos $oilDryTomatoes.</p><p>Hidratamos los $dryTomatoes en agua muy caliente durante 30 min. Pasado este tiempo los escurrimos.</p>');
INSERT INTO `recipe_step_lang` VALUES (3, 2, 1, '<p>Mentrestant, podem treure l\'os de les $blackOlives.</p>');
INSERT INTO `recipe_step_lang` VALUES (4, 2, 2, '<p>Mientras tanto, podemos sacar el hueso de las $blackOlives.</p>');
INSERT INTO `recipe_step_lang` VALUES (5, 3, 1, '<p>Afegim tots els ingredients a un robot de cuina o vas de batidora:</p><ul><li>els tomàquets</li><li>les olives negres</li><li>$virginOliveOil</li><li>$goatRollCheese</li><li>$creamCheese</li><li>$lemonJuice</li><li>$basil</li><li>$provencalHerbs</li><li>$pepper</li></ul><p> Ho triturem fins a obtenir una pasta més aviat densa. Ho tastem i rectifiquem afegint qualsevol dels ingredients perquè quedi al teu gust.</p>');
INSERT INTO `recipe_step_lang` VALUES (6, 3, 2, '<p>Añadimos todos los ingredientes a un robot de cocina o vaso de batidora:</p>\r\n<ul><li>los tomates</li><li>las olivas negras</li><li>$virginOliveOil</li><li>$goatRollCheese</li><li>$creamCheese</li><li>$lemonJuice</li><li>$basil</li><li>$provencalHerbs</li><li>$pepper</li></ul><p>Trituramos hasta obtener una pasta más bien densa. Probamos y rectificamos añadiendo cualquiera de los ingredientes para que quede a tu gusto.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (26, 13, 2, '<p>Lavamos el arroz para sacarle el almidón.</p><p>Llenamos un bol grande de agua, añadimos el $sushiRice y con la mano (en posición como si tuviéramos una pelota de tenis dentro) damos unas 20 vueltas aproximadamente. </p><p>Colamos el arroz para descartar este agua y repetimos el proceso 3 o 4 veces.</p>');
INSERT INTO `recipe_step_lang` VALUES (27, 14, 1, '<p>Deixem reposar l\'$sushiRice cobrint-lo d\'aigua en el bol durant 30 minuts perquè el gra l\'absorbeixi.</p>');
INSERT INTO `recipe_step_lang` VALUES (28, 14, 2, '<p>Dejamos reposar el $sushiRice cubriéndolo con agua en el bol durante 30 minutos para que el grano la absorba.</p>');
INSERT INTO `recipe_step_lang` VALUES (29, 15, 1, '<p>Afegim en una cassola gruixuda i que tingui tapa (millor si és de vidre per veure quan comença a bullir) l\'$sushiRice escorregut i l\'$water.</p><p>Posem la cassola a foc fort i quan comença a bullir el baixem al mínim i el deixarem així durant 10 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (30, 15, 2, '<p>Añadimos en una cacerola gruesa y que tenga tapa (mejor si es de vidrio para ver cuando empieza a hervir) el $sushiRice escurrido y el $water.</p><p>Ponemos la cazuela a fuego fuerte y cuando empieza a hervir lo bajamos al mínimo. Tenemos que dejarlo así durante 10 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (31, 16, 1, '<p>Apaguem el foc i deixem reposar 10 minuts més <b>sense treure la tapa</b> i llest.</p>');
INSERT INTO `recipe_step_lang` VALUES (32, 16, 2, '<p>Apagamos el fuego y dejamos reposar 10 minutos más <b>sin quitar la tapa</b> y listo.</p>');
INSERT INTO `recipe_step_lang` VALUES (33, 17, 1, '<p>Posar el $kombu en remull en una cassola amb l\'$water durant almenys 30 minuts (poden ser hores o la nit abans).</p>');
INSERT INTO `recipe_step_lang` VALUES (34, 17, 2, '<p>Poner el $kombu en remojo en una cazuela con el $water durante al menos 30 minutos (pueden ser horas o la noche antes).</p>');
INSERT INTO `recipe_step_lang` VALUES (35, 18, 1, '<p>Passat aquest temps, escalfem la cassola a foc lent i abans que comenci a bullir retirem el $kombu (aproximadament 15 minuts).</p><p>Pugem a foc mitjà i hi afegim el $katsuobushi. En el moment que arrenca el bull: apaguem el foc i ho deixem reposar 10 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (36, 18, 2, '<p>Pasado este tiempo, calentamos la cazuela a fuego lento y antes de que empiece a hervir retiramos el $kombu (aproximadamente 15 minutos).</p><p>Subimos a fuego medio y añadimos el $katsuobushi. En el momento que empieza a hervir: apagamos el fuego y lo dejamos reposar 10 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (37, 19, 1, '<p>Colem el caldo i comprimim el $katsuobushi perquè deixi anar tot el caldo que ha absorbit.</p>');
INSERT INTO `recipe_step_lang` VALUES (38, 19, 2, '<p>Colar el caldo y comprimimos el $katsuobushi para que suelte todo el caldo que ha absorbido.</p>');
INSERT INTO `recipe_step_lang` VALUES (39, 20, 1, '<p>Preparem $gohan.</p><p>Tallem:</p><ul><li>el $chickenBreasts en daus d\'aproximadament 2 cm</li><li>el $leek en diagonal en trossos de 1 cm de gruix</li><li>l\'alga $nori en quadrats.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (40, 20, 2, '<p>Preparamos $gohan.</p><p>Cortamos:</p><ul><li>la $chickenBreasts en dados de aproximadamente 2 cm</li><li>el $leek en diagonal en trozos de 1 cm de espesor</li><li>la alga $nori en cuadrados.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (41, 21, 1, '<p>Portem a ebullició el $dashi amb el $leek a foc mitjà.</p><p>Quan arrenqui el bull afegim el $chickenBreasts, $sugar, $mirin y $soySauce i ho cuinem fins que el pollastre estigui cuit (uns 5-10 minuts).</p>');
INSERT INTO `recipe_step_lang` VALUES (42, 21, 2, '<p>Llevamos a ebullición el $dashi con el $leek a fuego medio.</p><p>Cuando rompa a hervir añadimos el $chickenBreasts, $sugar, $mirin y $soySauce y lo cocinamos hasta que el pollo esté cocido (unos 5-10 minutos).</p>');
INSERT INTO `recipe_step_lang` VALUES (43, 22, 1, '<p>Comencem a preparar el plat, ja que això anirà de pressa: repartim l\'arròs en bols individuals que cobrirem amb una <i>truita</i> individual de <b>2</b> <b>ous</b> per comensal.</p><p>En una paella prèviament escalfada, afegim la part proporcional de la sopa amb els seus ingredients. Incorporem els ous batuts.</p><p>Quan la clara comenci a quallar: tapem la paella durant 30 segons i finalment tapem l\'arròs amb la <i>truita</i> que ha quedat no gaire feta i cremosa.</p>');
INSERT INTO `recipe_step_lang` VALUES (44, 22, 2, '<p>Empezamos a preparar el plato, ya que esto irá deprisa: repartimos el arroz en cuencos individuales que cubriremos con una <i>tortilla</i> individual de <b>2 huevos</b> por cada uno de los comensales.</p><p>En una sartén previamente calentada, añadimos la parte proporcional de la sopa con sus ingredientes. Incorporamos los huevos batidos.</p><p>Cuando la clara empiece a cuajar: tapamos la sartén durante 30 segundos y finalmente tapamos el arroz con la <i>tortilla</i> que ha quedado no muy hecha y cremosa.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (55, 28, 1, '<p>Enfornar fins que comencin a daurar i llest! No patiu, després d\'una estona de sortir del forn, quedaran ben cruixents.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (73, 37, 1, '<p>Un cop pastat estenem la massa a la taula, d\'1 cm de gruix, i tallem amb un motlle.</p>');
INSERT INTO `recipe_step_lang` VALUES (74, 37, 2, '<p>Una vez amasado extendemos la masa en la mesa, de 1 cm de grosor, y cortamos con un molde.</p>');
INSERT INTO `recipe_step_lang` VALUES (75, 38, 1, '<p>Ara posem les galetes en una safata de forn. Les introduïm al form durant 10 minuts més o menys. Si no estan daurades: deixar-les uns minuts més.</p>');
INSERT INTO `recipe_step_lang` VALUES (76, 38, 2, '<p>Ahora ponemos las galletas en una bandeja de horno. Las introducimos al horno durante 10 minutos mas o menos. Si no están doradas: dejarlas unos minutos más.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (113, 57, 1, '<p>Preparem la $caramelizedOnion.</p>');
INSERT INTO `recipe_step_lang` VALUES (114, 57, 2, '<p>Preparamos la $caramelizedOnion.</p>');
INSERT INTO `recipe_step_lang` VALUES (115, 58, 1, '<p>Si ho cuinem amb nyoquis: no cal fer aquest pas.</p><p>Preparem les $potato, les tallem a daus no gaire petits i salpebrem. Deixem reposar 15 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (116, 58, 2, '<p>Si lo cocinamos con ñoquis: no es necesario dar este paso.</p><p>Preparamos las $potato, las cortamos en dados no muy pequeños y salpimentamos. Dejar reposar 15 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (117, 59, 1, '<p>Mentrestant, podem preparar l\'allioli ràpid: al túrmix afegim l\'$sunflowerOil, $garlic, $egg i la $salt i ho batem a velocitat baixa mantenint el braç a l\'inferior del vas. Quan hagi començat a emulsionar, podem fer petits moviments a dalt i a baix per acabar d\'integrar-ho tot i triturar l\'all per complet.</p>');
INSERT INTO `recipe_step_lang` VALUES (118, 59, 2, '<p>Mientras tanto, podemos preparar el alioli rápido: al túrmix añadimos el $sunflowerOil, $garlic, $egg y la $salt y lo batimos a velocidad baja manteniendo el brazo en el inferior del vaso. Cuando haya empezado a emulsionar, podemos realizar pequeños movimientos arriba y abajo para acabar de integrarlo todo y triturar el ajo por completo.</p>');
INSERT INTO `recipe_step_lang` VALUES (119, 60, 1, '<p>També podem anar preparant la salsa vermella.</p><p>En un bol afegim tots els ingredients:</p><ul><li>$spicyOil, </li><li>$tomatoSauce, </li><li>$espinalerSauce, </li><li>$vermut, </li><li>$pepper, </li><li>$rasElHanout, </li><li>$spicyPaprika </li><li>ceba caramel·litzada</li></ul><p>Els barregem bé i ho deixem reposar un mínim de 10 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (120, 60, 2, '<p>También podemos ir preparando la salsa roja.</p><p>En un cuenco añadimos todos los ingredientes:</p><ul><li>$spicyOil, </li><li>$tomatoSauce, </li><li>$espinalerSauce, </li><li>$vermut, </li><li>$pepper, </li><li>$rasElHanout, </li><li>$spicyPaprika</li><li>cebolla caramelizada</li></ul><p>Los mezclamos bien y lo dejamos reposar un mínimo de 10 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (121, 61, 1, '<p>Si ho cuinem amb nyoquis: no cal fer aquest pas.</p><p>Passats els minuts, eliminem l\'excés d\'aigua de les patates i les fregim durant 5 minuts <b>a 150ºC</b>.<br></p><p>Les colem, les escorrem i les col·loquem en un bol que taparem amb paper d\'alumini 15 minuts més perquè s\'acabin d\'estovar per dins.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (122, 61, 2, '<p>Si lo cocinamos con ñoquis: no es necesario dar este paso.</p><p>Pasados los minutos, eliminamos el exceso de agua de las patatas y freímos durante 5 minutos <b>a 150ºC</b>.</p><p>Las colamos, las escurrimos y las colocamos en un cuenco que taparemos con papel de aluminio 15 minutos más para que se acaben de ablandar por dentro.</p>');
INSERT INTO `recipe_step_lang` VALUES (123, 62, 1, '<p>Tornem a eliminar l\'excés de líquid i fem la segona fregida de les patates (o els $gnocchi)  <b>a 190ºC, com a mínim, </b>durant uns 4 minuts o fins que les patates quedin daurades al nostre gust.</p>');
INSERT INTO `recipe_step_lang` VALUES (124, 62, 2, '<p>Volvemos a eliminar el exceso de líquido y hacemos la segunda fritura de las patatas (o los $gnocchi) <b>a 190ºC, como mínimo,</b> durante unos 4 minutos o hasta que las patatas queden doradas a nuestro gusto.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (197, 99, 1, '<p>Afegim els $eggYolk i la $dijonMustard al vas de la batedora i ho processem durant 20 segons.</p>');
INSERT INTO `recipe_step_lang` VALUES (198, 99, 2, '<p>Añadimos los $eggYolk y la $dijonMustard al vaso de la batidora y lo procesamos durante 20 segundos.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (232, 116, 2, '<p>Pochamos el $leek cortado en juliana con $butter y $salt.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (335, 168, 1, '<p>Desembolica la massa. Empolvora una mica de $cornStarch a la superfície de treball i talla cada tronc en 2 trossos.</p><p>És molt important cobrir la massa amb un drap de cuina humit en tot moment per evitar que s\'assequi.</p><p>Amb un $rollingPin, estira la massa. Gira-la 90 graus i repeteix fins a tenir una massa fina d\'1mm de gruix.</p>');
INSERT INTO `recipe_step_lang` VALUES (336, 168, 2, '<p>Desenvuelve la masa. Espolvorea un poco de $cornStarch en la superficie de trabajo y corta cada tronco en 2 trozos.</p><p>Es muy importante cubrir la masa con un paño de cocina húmedo en todo momento para evitar que se seque.</p><p>Con un $rollingPin, estira la masa. Gira 90 grados y repite hasta tener una masa fina de 1mm de espesor.</p>');
INSERT INTO `recipe_step_lang` VALUES (337, 169, 1, '<p>Amb el $8cmMold, talla la massa per formar les rodones.</p><p>Empolvora cada masa amb $cornStarch i apila-les. Assegura\'t de cobrir la massa amb un drap de cuina humit fins que estiguis llest per utilitzar-les.</p>');
INSERT INTO `recipe_step_lang` VALUES (338, 169, 2, '<p>Con el $8cmMold, corta la masa para formar las redondas.</p><p>Espolvorea cada masa con $cornStarch y apilalas. Asegúrate de cubrir la masa con un paño de cocina húmedo hasta que estés listo para utilizarlas.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (351, 176, 1, '<p>Podem servir-lo així i acompanyar-lo amb unes torradetes.</p><p>També podem pelar i tallar en daus d\'$avocado. El salpebrem i, en el moment d\'emplatat fem un llit d\'alvocat i a sobre col·loquem el tàrtar de salmó.</p>');
INSERT INTO `recipe_step_lang` VALUES (352, 176, 2, '<p>Podemos servirlo así y acompañarlo con unas tostaditas.</p><p>También podemos pelar y cortar en dados de $avocado. Lo salpimentamos y, en el momento de emplatado hacemos una cama de aguacate y encima colocamos el tártaro de salmón.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (380, 190, 2, '<p>Preparamos los ingredientes:</p><ul><li>cortar la $onion en trozos grandes</li><li>cortar el $ginger en láminas</li><li>aplastar al $garlic</li><li>condimentar $porkLoin con $salt y $pepper por todos los lados</li></ul>');
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
INSERT INTO `recipe_step_lang` VALUES (395, 198, 1, '<p>Barregem en un bol els espinacs picats, la ceba tendra, els $egg lleugerament batuts i la $milk.</p><p>Esmicolar el formatge feta per sobre i barrejar el just per incorporar-lo.</p><p>Salpebrem al gust.</p>');
INSERT INTO `recipe_step_lang` VALUES (396, 198, 2, '<p>Mezclamos en un cuenco las espinacas picadas, la cebolleta, los $egg ligeramente batidos y la $milk.</p><p>Desmenuzar el queso hecha por encima y mezclar lo justo para incorporarlo.</p><p>Salpimentamos al gusto.</p>');
INSERT INTO `recipe_step_lang` VALUES (397, 199, 1, '<p>Preescalfar el forn a 180ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (398, 199, 2, '<p>Precalentar el horno a 180ºC.</p>');
INSERT INTO `recipe_step_lang` VALUES (399, 200, 1, '<p>Pintem amb $oliveOil un motlle de forn.</p><p><b style=\"\"><u>Atenció</u></b> perquè la pasta fil·lo no es pot mantenir molt de temps a l\'aire: obrir el paquet just quan es faci servir.</p><p>Estenem la meitat de làmines de $filo(0.5) sobre el motlle, pintant amb una capa fina d\'oli cadascuna de les capes.</p><p>Col·loquem la barreja d\'espinacs i feta i estenem la resta de làmines de la mateixa manera que les capes anteriors.</p>');
INSERT INTO `recipe_step_lang` VALUES (400, 200, 2, '<p>Pintamos con $oliveOil un molde de horno.</p><p><b><u>Atención</u></b> porque la pasta filo no puede mantenerse mucho tiempo en el aire: abrir el paquete justo cuando se utilice.</p><p>Extendemos la mitad de las láminas de $filo(0.5) sobre el molde, pintando con una capa fina de aceite cada una de las capas.</p><p>Colocamos la mezcla de espinacas y feta y extendemos el resto de láminas al igual que las capas anteriores.</p>');
INSERT INTO `recipe_step_lang` VALUES (401, 201, 1, '<p>Amb les mans mullades:</p><ul><li>enrotllem la pasta que sobresurti del motlle per tancar la spanakopita</li><li>humitegem la capa superficial.<br></li></ul>');
INSERT INTO `recipe_step_lang` VALUES (402, 201, 2, '<p>Con las manos mojadas:</p><ul><li>enrollamos la pasta que sobresalga del molde para cerrar la spanakopita</li><li>humedecemos la capa superficial.</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (403, 202, 1, '<p>Ho coem al forn 1 hora fins que estigui daurat i cruixent.</p><p>Servir temperat o a temperatura ambient.</p>');
INSERT INTO `recipe_step_lang` VALUES (404, 202, 2, '<p>Cocemos en el horno 1 hora hasta que esté dorado y crujiente.</p><p>Servir templado oa temperatura ambiente.</p>');
INSERT INTO `recipe_step_lang` VALUES (405, 203, 1, '<p>Posem l\'$water a bullir.</p>');
INSERT INTO `recipe_step_lang` VALUES (406, 203, 2, '<p>Ponemos el $water a hervir.</p>');
INSERT INTO `recipe_step_lang` VALUES (407, 204, 1, '<p>Mentrestant, tallem la ceba vermella en juliana a capes molt fines i la col·loquem dins del $glassJar.</p>');
INSERT INTO `recipe_step_lang` VALUES (408, 204, 2, '<p>Mientras, cortamos la cebolla roja en juliana en capas muy finas y la colocamos dentro del $glassJar.</p>');
INSERT INTO `recipe_step_lang` VALUES (409, 205, 1, '<p>Treiem l\'aigua del foc i afegim el $appleVinegar, la $salt, el $sugar i la $grainBlackPepper i ho barregen molt bé perquè es dissolgui tot.</p>');
INSERT INTO `recipe_step_lang` VALUES (410, 205, 2, '<p>Sacamos el agua del fuego y añadimos el $appleVinegar, la $salt, el $sugar y la $grainBlackPepper y lo mezclan muy bien para que se disuelva todo.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (422, 211, 2, '<p>Cortamos la $onion en juliana y la sofreímos con un poco de $oliveOil y $salt.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (446, 223, 2, '<p>En otra paella: picamos la $onion muy pequeña y la pochamos con un chorro de $oliveOil y un poco de $salt.</p>');
INSERT INTO `recipe_step_lang` VALUES (447, 224, 1, '<p>Mentrestant, netegem i piquem els $mushrooms i els afegim a la paella quan la ceba ja tingui un color daurat.</p>');
INSERT INTO `recipe_step_lang` VALUES (448, 224, 2, '<p>Mientras, limpiamos y picamos los $mushrooms y los añadimos a la sartén cuando la cebolla ya tenga un color dorado.</p>');
INSERT INTO `recipe_step_lang` VALUES (449, 225, 1, '<p>Afegim el $whiteWine, la $milk i esperem que s\'evaporin bé tots els líquids.</p><p>Afegim la $worcestershireSauce i cuinem durant 2 minuts més.</p><p>Ho reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (450, 225, 2, '<p>Añadimos $whiteWine, $milk y esperamos que se evaporen bien todos los líquidos.</p><p>Añadimos la $worcestershireSauce y cocinamos durante 2 minutos más.</p><p>Reservamos.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (451, 226, 1, '<p>Estenem un bon tros de $plasticWrap i hi repartim horitzontalment (però superposant-les) làmines de $serranoHam. Sobre hi estendrem la salsa de ceba i xampinyons i, finalment, el $foie tallat en daus.</p><p>Salem una mica el filet i el pintem amb $dijonMustard.</p><p>Col·loquem el filet sobre el llit que hem preparat anteriorment, i l\'emboliquem com si fos un caramel amb l\'ajuda del film transparent, de manera que quedi ben pressionant i tancat.</p><p>Ho deixem reposar un mínim de <b>2 hores</b> a la nevera. Si ho pots deixar tota la nit: millor.</p>');
INSERT INTO `recipe_step_lang` VALUES (452, 226, 2, '<p>Extendemos un trozo de $plasticWrap y repartimos horizontalmente (pero superponiéndolas) láminas de $serranoHam. Extenderemos sobre ella la salsa de cebolla y champiñones y, finalmente, el $foie cortado en dados.</p><p>Salemos un poco el solomillo y lo pintamos con $dijonMustard.</p><p>Colocamos el solomillo encima de la cama que hemos preparado anteriormente, y lo envolvemos como si fuera un caramelo con la ayuda del film transparente, de forma que quede bien presionante y cerrado.</p><p>Dejar reposar un mínimo de <b>2 horas</b> en la nevera. Si puedes dejarlo toda la noche: mejor.</p>');
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
INSERT INTO `recipe_step_lang` VALUES (504, 252, 2, '<p>Cortamos el $eggplant por la mitad, y estas mitades las cortamos en 6-8 gajos, en forma de cuña.</p><p>Condimentamos los gajos con $salt, $pepper y un buen chorro de aceite de oliva y lo integramos todo muy bien.</p>');
INSERT INTO `recipe_step_lang` VALUES (505, 253, 1, '<p>Col·loquem l\'albergínia en una safata de forn amb la pell cap per avall i deixant espai entre cada tros.</p><p>Les escalivem al forn durant 40 minuts. En acabar: ho deixem refredar durant al menys 30 minuts.<br></p>');
INSERT INTO `recipe_step_lang` VALUES (506, 253, 2, '<p>Colocamos la berenjena en una bandeja de horno con la piel boca abajo y dejando espacio entre cada trozo.</p><p>Las escalivamos en el horno durante 40 minutos. Al terminar: lo dejamos enfriar durante al menos 30 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (507, 254, 1, '<p>Mentrestant, preparem l\'amanit. En un processador petit:</p><ul><li>$blackGarlic o $garlic</li><li>$thyme</li><li>$soySauce</li><li>$lemonJuice</li><li>$cayennePowder</li><li>$pureCocoaPowder</li><li>$oliveOil</li></ul><p>Ho triturem tot fins a integrar tots els ingredients en una salsa una mica densa.</p>');
INSERT INTO `recipe_step_lang` VALUES (508, 254, 2, '<p>Mientras, preparamos el aliño. En un procesador pequeño:</p><ul><li>$blackGarlic o $garlic</li><li>$thyme</li><li>$soySauce</li><li>$lemonJuice</li><li>$cayennePowder</li><li>$pureCocoaPowder</li><li>$oliveOil</li></ul><p>Trituramos todo hasta integrar todos los ingredientes en una salsa algo densa.</p>');
INSERT INTO `recipe_step_lang` VALUES (509, 255, 1, '<p>Quan l\'albergínia s\'hagi refredat, la col·loquem en un bol gran i ho mesclem bé amb la salsa amb compte de no trencar l\'albergínia.</p><p>Si pots, deixa-ho reposar durant una hora.</p>');
INSERT INTO `recipe_step_lang` VALUES (510, 255, 2, '<p>Cuando la berenjena se haya enfriado, la colocamos en un cuenco grande y lo mezclamos bien con la salsa con cuidado de no romper la berenjena.</p><p>Si puedes, déjalo reposar durante una hora.</p>');
INSERT INTO `recipe_step_lang` VALUES (511, 256, 1, '<p>Per emplatar: en un plat fem un llit de $yogurt i posem les albergínies a sobre. Decorem amb l\'$basil tallada en trossos, els $pineNut i un raig d\'oli d\'oliva.</p>');
INSERT INTO `recipe_step_lang` VALUES (512, 256, 2, '<p>Para emplatar: en un plato hacemos una cama de yogur y ponemos las berenjenas encima. Decoramos con el $basil cortada en trozos, los $pineNut y un chorro de aceite de oliva.</p>');
INSERT INTO `recipe_step_lang` VALUES (513, 257, 1, '<p>No llencis l\'escorça que sempre costa més de ratllar!</p><p>Rasca amb un ganivet una mica l’$parmesanCrust per eliminar la part més superficial.</p><p>Talla-la en petits daus i col·loca\'ls en un plat sobre paper vegetal, procura que quedin ben repartits i espaiats.<br></p><p>Escalfa-ho al microones a màxima potència durant 4-5 minuts: et quedaran unes perletes de parmesà ben cruixents.</p>');
INSERT INTO `recipe_step_lang` VALUES (514, 257, 2, '<p>¡No tires la corteza que siempre cuesta más de rayar!</p><p>Rasca con un cuchillo un poco la $parmesanCrust para eliminar la parte más superficial.</p><p>Córtala en pequeños dados y colócalos en un plato sobre papel vegetal, procura que queden bien repartidos y espaciados.</p><p>Caliéntalo en el microondas a máxima potencia durante 4-5 minutos: te quedarán unas perlitas de parmesano bien crujientes.</p>');
INSERT INTO `recipe_step_lang` VALUES (515, 258, 1, '<p>Demaneu que us desossin les $chickenThighs i que us separin la pell. Sobretot que us la guardin perquè formaran una part important de la recepta.</p><p>Talleu cada cuixa en 3-4 trossos i ho col·loquem en un bol ben gran que us hi càpiga a la nevera.</p>');
INSERT INTO `recipe_step_lang` VALUES (516, 258, 2, '<p>Pedid que os deshuesen las $chickenThighs y que le separen la piel. Sobre todo que os la guarden porque formarán una parte importante de la receta.</p><p>Cortar cada muslo en 3-4 trozos y lo colocamos en un cuenco bien grande que os quepa en la nevera.</p>');
INSERT INTO `recipe_step_lang` VALUES (517, 259, 1, '<p>Torrem el  $saffron. Fem un sobre amb $aluminumFoil i ho col·loquem sobre del foc fins que comenci a treure una mica de fum. Amb compte que es crema de pressa.</p>');
INSERT INTO `recipe_step_lang` VALUES (518, 259, 2, '<p>Tostamos el $saffron. Hacemos un sobre con $aluminumFoil y lo colocamos encima del fuego hasta que empiece a echar un poco de humo. Con cuidado que se quema deprisa.</p>');
INSERT INTO `recipe_step_lang` VALUES (519, 260, 1, '<p>Afegim al pollastre els ingredients de la marinada:</p><ul><li>el safrà torrat</li><li>$groundClove</li><li>$nutmeg</li><li>$cumin</li><li>$cinnamon</li><li>$sweetPaprika</li><li>$salt gran</li><li>$greekYogurt(0.25)</li><li>$garlic ratllat molt fi</li><li>ratlladura de pell de 1/2 llima</li><li>el suc de les $lime(0.66)</li><li>$cornStarch</li></ul><p>Ho mesclem tot bé i ho deixem marinar a la nevera durant 3-4 hores.</p>');
INSERT INTO `recipe_step_lang` VALUES (520, 260, 2, '<p>Añadimos al pollo los ingredientes de la marinada:</p><ul><li>el azafrán tostado</li><li>$groundClove</li><li>$nutmeg</li><li>$cumin</li><li>$cinnamon</li><li>$sweetPaprika</li><li>$salt grande</li><li>$greekYogurt(0.25)</li><li>$garlic rallado muy fino</li><li>ralladura de piel de media lima</li><li>el zumo de las $lime(0.66)</li><li>$cornStarch</li></ul><p>Mezclamos todo bien y dejamos marinar en la nevera durante 3-4 horas.</p>');
INSERT INTO `recipe_step_lang` VALUES (521, 261, 1, '<p>Mentrestant, farem un oli de pollastre i unes crostes de pell de pollastre amb les pells que teníem reservades.</p><p>En una cassola petita les escalfem a foc baix i ja veureu com comencen a deixar tot l\'oli i s\'acaben quedant unes crostes ben cruixents, que deixarem reposar sobre paper absorbent.</p>');
INSERT INTO `recipe_step_lang` VALUES (522, 261, 2, '<p>Mientras, haremos un aceite de pollo y unas cortezas de piel de pollo con las pieles que teníamos reservadas.</p><p>En una cazuela pequeña las calentamos a fuego bajo y ya veréis cómo empiezan a dejar todo el aceite y se acaban quedando unas cortezas bien crujientes, que dejaremos reposar sobre papel absorbente.</p>');
INSERT INTO `recipe_step_lang` VALUES (523, 262, 1, '<p>També podem preparar la salsa blanca mesclant els següents ingredients:</p><ul><li>$greekYogurt(0.75)</li><li>$salt</li><li>una mica de ratlladura de pell de llima</li><li>el suc de les $lime(0.33)</li><li>$peppermint picada</li><li>$coriander picat</li></ul><p>Ho reservem a la nevera.</p>');
INSERT INTO `recipe_step_lang` VALUES (524, 262, 2, '<p>También podemos preparar la salsa blanca mezclando los siguientes ingredientes:</p><ul><li>$greekYogurt(0.75)</li><li>$salt</li><li>un poco de ralladura de piel de limón</li><li>el zumo de las $lime(0.33)</li><li>$peppermint picada</li><li>$coriander picado</li></ul><p>Reservamos en la nevera.</p>');
INSERT INTO `recipe_step_lang` VALUES (525, 263, 1, '<p>Passades les hores del marinat, preparem les $aluminumSkewers punxant bé el pollastre (si cal més d\'una vegada per tros) perquè quedi tot compacte i, més o menys, del mateix diàmetre.</p><p>Ho deixem reposar de nou a la nevera tota la nit.</p>');
INSERT INTO `recipe_step_lang` VALUES (526, 263, 2, '<p>Pasadas las horas del marinado, preparamos las $aluminumSkewers pinchando bien el pollo (si es necesario más de una vez por trozo) para que quede todo compacto y, más o menos, del mismo diámetro.</p><p>Lo dejamos reposar de nuevo en la nevera toda la noche.</p>');
INSERT INTO `recipe_step_lang` VALUES (527, 264, 1, '<p>Passades de nou les hores del marinat, preescalfem el forn amb l\'opció grill a màxima potència.</p><p>Col·loquem les broquetes a una safata de forn de manera que quedin flotant, i les cuinem 20 minuts per cada costat. En el moment de donar-los la volta, les pintem amb l\'oli de pollastre que teníem reservat.</p><p>Una vegada cuinat (ha de quedar alguna part torrada), el deixem reposar uns minuts i després el podem tallar de dalt a baix per fer els trossos característics del kebab.</p>');
INSERT INTO `recipe_step_lang` VALUES (528, 264, 2, '<p>Pasadas de nuevo las horas del marinado, precalentamos el horno con la opción grill a máxima potencia.</p><p>Colocamos las brochetas en una bandeja de horno de forma que queden flotando, y las cocinamos 20 minutos por cada lado. En el momento de darles la vuelta, las pintamos con el aceite de pollo que teníamos reservado.</p><p>Una vez cocinado (debe quedar alguna parte tostada), lo dejamos reposar unos minutos y después lo podemos cortar de arriba abajo para hacer los trozos característicos del kebab.</p>');
INSERT INTO `recipe_step_lang` VALUES (529, 265, 1, '<p>Per preparar el kebab tenim a mà:</p><ul><li>$wheatTortitas</li><li>salsa blanca</li><li>salsa picant (en el nostre cas $valentinaSauce)</li><li>el pollastre tallat en trossets</li><li>$feta a daus</li><li>$lettuce picat</li><li>$blackOlives sense os i picades<br></li><li>les crostes de la pell de pollastre picades</li></ul><p>Emplatem: una capa de les dues salses, el pollastre, el feta, l\'enciam, les olives, més sales (si volem) i les crostes de pollastre.</p><p>Enrotllem com si fos un burrito i ho escalfem a la planxa o sandvitxera <span style=\"-webkit-text-size-adjust: 100%;\">per segellar el kebab.</span></p>');
INSERT INTO `recipe_step_lang` VALUES (530, 265, 2, '<p>Para preparar el kebab tenemos a mano:</p><ul><li>$wheatTortitas</li><li>salsa blanca</li><li>salsa picante (en nuestro caso $valentinaSauce)</li><li>el pollo cortado en trocitos</li><li>$feta a dados</li><li>$lettuce picado</li><li>$blackOlives sin hueso y picadas</li><li>las cortezas de la piel de pollo picadas</li></ul><p>Emplatamos: una capa de las dos salsas, el pollo, el feta, la lechuga, las aceitunas, más salas (si queremos) y las costras de pollo.</p><p>Enrollamos como si fuera un burrito y lo calentamos a la plancha o sándwichera para sellar el kebab.</p>');
INSERT INTO `recipe_step_lang` VALUES (531, 266, 1, '<p>Per aquesta recepta, és molt important que els <b>ingredients siguin de qualitat</b>: compreu les olives al mercat o a granel i el millor formatge de rul·lo cabra de la xarcuteria.</p><p>En una cassola afegiu tots els dents d\'$garlic pelats i, aproximadament, una $stuffedGreenOlives per cada dent. Cobri-ho amb $oliveOil i afegiu les  $bayLeaf i els $grainBlackPepper.</p><p>Cuineu-ho durant 45 minuts a foc baix o fins que els alls estiguin tant tous que sembli que es vagin a desfer.</p>');
INSERT INTO `recipe_step_lang` VALUES (532, 266, 2, '<p>Para esta receta, es muy importante que los<b> ingredientes sean de calidad</b>: compre las aceitunas en el mercado o a granel y el mejor queso de rulo cabra de la charcutería.</p><p>En una cazuela añadid todos los dientes de $garlic pelados y, aproximadamente, una $stuffedGreenOlives por cada diente. Cubra con $oliveOil y añada $bayLeaf y $grainBlackPepper.</p><p>Cocínelo durante 45 minutos a fuego bajo o hasta que los ajos estén tan blandos que parezca que se vayan a deshacer.</p>');
INSERT INTO `recipe_step_lang` VALUES (533, 267, 1, '<p>Coleu l\'oli i deixeu refredar les olives i l\'all.</p><p>L\'oli el podeu guardar per cuinar, per amanides, per pa amb tomàquet... té un gust d\'all molt suau súper bo.</p>');
INSERT INTO `recipe_step_lang` VALUES (534, 267, 2, '<p>Colad el aceite y dejad enfriar las aceitunas y el ajo.</p><p>El aceite se puede guardar para cocinar, para ensaladas, para pan con tomate... tiene un sabor de ajo muy suave súper bueno.</p>');
INSERT INTO `recipe_step_lang` VALUES (535, 268, 1, '<p>A l\'hora de servir-ho: sobre d\'una $toast fica-hi una mica de $goatRollCheese i a sobre alls i olives confitades.</p>');
INSERT INTO `recipe_step_lang` VALUES (536, 268, 2, '<p>A la hora de servirlo: encima de una $toast mete un poco de $goatRollCheese y encima ajos y aceitunas confitadas.</p>');
INSERT INTO `recipe_step_lang` VALUES (537, 269, 1, '<p>Preparem el pollastre: tallem en daus el $chickenBreasts i el marinem amb:</p><ul><li>$egg</li><li>$garlicPowder</li><li>$pepper</li><li>$chiliPowder</li><li>$salt</li><li>$cornStarch(0.75)</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (538, 269, 2, '<p>Preparamos el pollo: cortamos en dados el $chickenBreasts y lo marinamos con:</p>\r\n<ul><li>$egg</li><li>$garlicPowder</li><li>$pepper</li><li>$chiliPowder</li><li>$salt</li><li>$cornStarch(0.75)</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (539, 270, 1, '<p>Preparem la salsa mesclant:</p><ul><li>$garlic picat</li><li>$cayennePowder</li><li>$soySauce</li><li>$brownSugar</li><li>afegim també una mescla d\'$water i  $cornStarch(0.25) perquè la salsa espesseixi</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (540, 270, 2, '<p>Preparamos la salsa mezclando:</p><ul><li>$garlic picado</li><li>$cayennePowder</li><li>$soySauce</li><li>$brownSugar</li><li>añadimos también una mezcla de $water y $cornStarch(0.25) para que la salsa espese</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (541, 271, 1, '<p>Fregim el pollastre en $oliveOil ben calent fins que el pollastre agafi color daurat. El reservem sobre paper absorbent per eliminar l\'excés d\'oli.</p><p>Mentrestant, en una cassola hi afegim tota la salsa i l\'escalfem a foc mitjà fins que espesseixi.</p><p>Finalment, incorporem el pollastre a la salsa i ho mesclem tot per integrar-ho bé. Podem afegir $whiteSesameSeeds i $chive per decorar.</p>');
INSERT INTO `recipe_step_lang` VALUES (542, 271, 2, '<p>Freímos el pollo en $oliveOil bien caliente hasta que el pollo coja color dorado. Lo reservamos sobre papel absorbente para eliminar el exceso de aceite.</p><p>Mientras, en una cazuela añadimos toda la salsa y la calentamos a fuego medio hasta que espese.</p><p>Por último, incorporamos el pollo a la salsa y lo mezclamos todo para integrarlo bien. Podemos añadir $whiteSesameSeeds y $chive para decorar.</p>');
INSERT INTO `recipe_step_lang` VALUES (543, 272, 1, '<p>Amb un ganivet, fem uns talls en forma de quadrícula a la pell del $duckBreast.</p><p>En una paella a foc mitjà-alt, segellem el magret començant per la banda de la pell. Quan deixi anar l\'oli del greix: li donem la volta i, amb l\'ajuda d\'una cullera, banyem la carn amb aquest oli.</p><p>Retirem i reservem.</p>');
INSERT INTO `recipe_step_lang` VALUES (544, 272, 2, '<p>Con un cuchillo, hacemos unos cortes en forma de cuadrícula en la piel del $duckBreast.</p><p>En una sartén a fuego medio-alto, sellamos el magret empezando por el lado de la piel. Cuando suelte el aceite de la grasa,:le damos la vuelta y, con la ayuda de una cuchara, bañamos la carne con este aceite.</p><p>Retiramos y reservamos.</p>');
INSERT INTO `recipe_step_lang` VALUES (545, 273, 1, '<p>Preparem el pesto de festucs triturant en un processador:</p><ul><li>$basil</li><li>$virginOliveOil</li><li>$pistachios</li><li>$parmesan(0.666)</li><li>$chickenBroth(0.03)</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (546, 273, 2, '<p>Preparamos el pesto de pistachos triturando en un procesador:</p><ul><li>$basil</li><li>$virginOliveOil</li><li>$pistachios</li><li>$parmesan(0.666)</li><li>$chickenBroth(0.03)</li></ul>');
INSERT INTO `recipe_step_lang` VALUES (547, 274, 1, '<p>En una cassola, posem a bullir la resta del $chickenBroth(0.97).</p>');
INSERT INTO `recipe_step_lang` VALUES (548, 274, 2, '<p>En una cazuela, ponemos a hervir el resto del $chickenBroth(0.97).</p>');
INSERT INTO `recipe_step_lang` VALUES (549, 275, 1, '<p>Tallem el $zucchini en daus petits i el sofregim a la cassola diferent amb raig d\'$oliveOil i $salt.</p><p>Quan comenci a estovar-se, afegim l\'$rice i ho removem durant 3 minuts.</p>');
INSERT INTO `recipe_step_lang` VALUES (550, 275, 2, '<p>Cortamos el $zucchini en dados pequeños y lo sofreímos en la cazuela diferente con chorro de $oliveOil y $salt.</p><p>Cuando empiece a ablandarse, añadimos el $rice y lo removemos durante 3 minutos.</p>');
INSERT INTO `recipe_step_lang` VALUES (551, 276, 1, '<p>Quan el caldo estigui bullint, anem afegint-lo de mica en mica a l\'arròs i ho anem removent constantment amb el foc mitjà-alt. Mai ha d\'haver-hi massa caldo ni massa poc: a mesura que s\'evapori, n\'afegim més.</p><p>Passats uns 18 minuts, l\'arròs hauria d\'estar cuit.</p><p>Afegim el pesto i ho continuem removent fins que s\'integrin tots els ingredients.</p>');
INSERT INTO `recipe_step_lang` VALUES (552, 276, 2, '<p>Cuando el caldo esté hirviendo, lo vamos añadiendo paulatinamente al arroz y lo vamos removiendo constantemente con el fuego medio-alto. Nunca debe haber demasiado caldo ni demasiado poco: a medida que se evapore, añadimos más.</p><p>Pasados unos 18 minutos, el arroz debería estar cocido.</p><p>Añadimos el pesto y lo continuamos removiendo hasta que se integren todos los ingredientes.</p>');
INSERT INTO `recipe_step_lang` VALUES (553, 277, 1, '<p>Emplatem en un plat fondo: al fons el risotto, sobre d\'aquest unes cullerades de $bufalaStracciatella, $parmesan(0.33) ratllat i uns trossos de magret.</p>');
INSERT INTO `recipe_step_lang` VALUES (554, 277, 2, '<p>Emplatamos en un plato hondo: al fondo el risotto, encima de éste unas cucharadas de $bufalaStracciatella, $parmesan(0.33) rallado y unos trozos de magret.</p>');
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
INSERT INTO `recipe_tag` VALUES (1, 18);
INSERT INTO `recipe_tag` VALUES (1, 20);
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
INSERT INTO `recipe_tag` VALUES (9, 20);
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
INSERT INTO `recipe_tag` VALUES (14, 20);
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
INSERT INTO `recipe_tag` VALUES (23, 2);
INSERT INTO `recipe_tag` VALUES (23, 3);
INSERT INTO `recipe_tag` VALUES (23, 4);
INSERT INTO `recipe_tag` VALUES (24, 2);
INSERT INTO `recipe_tag` VALUES (24, 3);
INSERT INTO `recipe_tag` VALUES (24, 4);
INSERT INTO `recipe_tag` VALUES (24, 13);
INSERT INTO `recipe_tag` VALUES (24, 18);
INSERT INTO `recipe_tag` VALUES (24, 20);
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
INSERT INTO `recipe_tag` VALUES (38, 13);
INSERT INTO `recipe_tag` VALUES (38, 16);
INSERT INTO `recipe_tag` VALUES (39, 2);
INSERT INTO `recipe_tag` VALUES (39, 3);
INSERT INTO `recipe_tag` VALUES (39, 13);
INSERT INTO `recipe_tag` VALUES (39, 18);
INSERT INTO `recipe_tag` VALUES (39, 20);
INSERT INTO `recipe_tag` VALUES (40, 2);
INSERT INTO `recipe_tag` VALUES (40, 3);
INSERT INTO `recipe_tag` VALUES (40, 13);
INSERT INTO `recipe_tag` VALUES (40, 18);
INSERT INTO `recipe_tag` VALUES (40, 20);
INSERT INTO `recipe_tag` VALUES (41, 1);
INSERT INTO `recipe_tag` VALUES (41, 6);
INSERT INTO `recipe_tag` VALUES (41, 11);
INSERT INTO `recipe_tag` VALUES (41, 13);
INSERT INTO `recipe_tag` VALUES (41, 18);
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
INSERT INTO `recipe_tag` VALUES (72, 11);
INSERT INTO `recipe_tag` VALUES (72, 13);
INSERT INTO `recipe_tag` VALUES (73, 3);
INSERT INTO `recipe_tag` VALUES (73, 11);
INSERT INTO `recipe_tag` VALUES (73, 13);
INSERT INTO `recipe_tag` VALUES (73, 18);
INSERT INTO `recipe_tag` VALUES (74, 4);
INSERT INTO `recipe_tag` VALUES (74, 13);
INSERT INTO `recipe_tag` VALUES (74, 18);
INSERT INTO `recipe_tag` VALUES (74, 20);
INSERT INTO `recipe_tag` VALUES (75, 1);
INSERT INTO `recipe_tag` VALUES (75, 11);
INSERT INTO `recipe_tag` VALUES (75, 13);
INSERT INTO `recipe_tag` VALUES (76, 1);
INSERT INTO `recipe_tag` VALUES (76, 13);
INSERT INTO `recipe_tag` VALUES (76, 15);
INSERT INTO `recipe_tag` VALUES (77, 12);
INSERT INTO `recipe_tag` VALUES (78, 11);
INSERT INTO `recipe_tag` VALUES (78, 13);
INSERT INTO `recipe_tag` VALUES (78, 20);
INSERT INTO `recipe_tag` VALUES (79, 1);
INSERT INTO `recipe_tag` VALUES (79, 13);
INSERT INTO `recipe_tag` VALUES (79, 19);
INSERT INTO `recipe_tag` VALUES (80, 1);
INSERT INTO `recipe_tag` VALUES (80, 11);
INSERT INTO `recipe_tag` VALUES (80, 13);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of restaurant
-- ----------------------------
BEGIN;
INSERT INTO `restaurant` VALUES (1, 'Chamako', 67, 'C/ de Margarit 18, 08004 Barcelona', 41.373810, 2.163590, '2023-05-23');
INSERT INTO `restaurant` VALUES (2, 'Chez Planes', 68, 'Pl/ de Cerdagne 6, 66800 Saillagouse, França', 42.459430, 2.039250, '2023-04-01');
INSERT INTO `restaurant` VALUES (3, 'BelleBuòn', 70, 'Travessera de Gràcia 441, 08025 Barcelona', 41.411370, 2.173410, '2023-04-25');
INSERT INTO `restaurant` VALUES (4, 'Dr. Beer & Mr. Fried', 69, 'C/ de la Riera Alta 33, 08001 Barcelona', 41.380390, 2.165730, '2023-02-24');
INSERT INTO `restaurant` VALUES (5, 'Gringa All Day', 119, 'C/ de Trafalgar 39, 08010 Barcelona', 41.390520, 2.178630, '2022-09-22');
INSERT INTO `restaurant` VALUES (6, 'Obrador DelaCrem', NULL, 'Pg/ de St. Joan 59, 08009 Barcelona', 41.396830, 2.172540, '2023-02-11');
INSERT INTO `restaurant` VALUES (7, 'Restaurante El Puerto', 77, 'R/ da República Arxentina 15, 36201 Vigo, Pontevedra', 42.119840, -8.854170, '2022-01-05');
INSERT INTO `restaurant` VALUES (8, 'Gastro Burger', 72, 'C/ d\'Enric Prat de la Riba 150, 08901 L\'Hospitalet de Llobregat', 41.363220, 2.110770, '2022-10-23');
INSERT INTO `restaurant` VALUES (9, 'Grado Sushi', 71, 'C/ de Vilamarí, 29, 08015 Barcelona', 41.375370, 2.154340, '2023-04-21');
INSERT INTO `restaurant` VALUES (10, 'Tasca Japonesa WAKASA 3.0', 73, 'C/ de Nàpols 287, 08025 Barcelona', 41.402830, 2.169370, '2021-10-14');
INSERT INTO `restaurant` VALUES (11, 'La Sala de l\'Isaac', NULL, 'C/ Barceloneta 44, 17124 Llofriu, Girona', 41.938200, 3.131020, '2022-08-13');
INSERT INTO `restaurant` VALUES (12, 'Indian Restaurant Shanti', NULL, 'C/ d\'Agustina Saragossa 3, 5, 08017 Barcelona', 41.391230, 2.134230, '2018-02-07');
INSERT INTO `restaurant` VALUES (13, 'Yoi Yoi Gion', 117, 'Av/ Diagonal 383, 08008 Barcelona', 41.396550, 2.160620, '2023-06-21');
INSERT INTO `restaurant` VALUES (14, 'Pulpeira de Lola ~ La Antigua de Melide', 118, 'Rda de Outeiro 135, 15007 A Coruña', 43.355000, -8.411860, '2022-01-09');
INSERT INTO `restaurant` VALUES (15, 'Carlota Akaneya', 120, 'C/ del Pintor Fortuny 32, 08001 Barcelona', 41.382320, 2.168610, '2017-09-17');
INSERT INTO `restaurant` VALUES (16, 'La Bella Napoli', 76, 'C/ de Villarroel 101, 08011 Barcelona', 41.385060, 2.156800, '2019-03-17');
INSERT INTO `restaurant` VALUES (17, 'Soul Coffee Beer', 75, 'C/ Sant Pasqual 12, 46200 Paiporta, Valencia', 39.491800, -0.458260, '2020-10-25');
INSERT INTO `restaurant` VALUES (18, 'Can Roca', NULL, 'Ctra. de Taialà, 42, 17007 Girona', 41.994290, 2.806300, '2021-08-16');
INSERT INTO `restaurant` VALUES (19, 'Parking Pizza', 74, 'Pg/ de St. Joan 56, 08009 Barcelona', 41.396380, 2.174020, '2019-07-27');
INSERT INTO `restaurant` VALUES (20, 'Restaurant Can Dolç', NULL, 'Plaça Esglèsia s/n, 17256 Sant Feliu de Boada, Girona', 41.973750, 3.125150, '2023-05-27');
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
  PRIMARY KEY (`id_restaurant_lang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

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
INSERT INTO `restaurant_lang` VALUES (11, 6, 1, '<p>Gelateria.</p>');
INSERT INTO `restaurant_lang` VALUES (12, 6, 2, '<p>Heladería.</p>');
INSERT INTO `restaurant_lang` VALUES (13, 7, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (14, 7, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (15, 8, 1, '<p>Hamburgueses espectaculars.</p>');
INSERT INTO `restaurant_lang` VALUES (16, 8, 2, '<p>Hamburguesas espectaculares.</p>');
INSERT INTO `restaurant_lang` VALUES (17, 9, 1, '<p>El millor sushi de la ciutat.</p>');
INSERT INTO `restaurant_lang` VALUES (18, 9, 2, '<p>El mejor sushi de la ciudad.</p>');
INSERT INTO `restaurant_lang` VALUES (19, 10, 1, '<p>Heu d\'anar-hi sí o sí per una ocasió especial! És com viatjar al Japó: el menjar espectacular i els propietaris molt amables.</p>');
INSERT INTO `restaurant_lang` VALUES (20, 10, 2, '<p>¡Tenéis que ir sí o sí en una ocasión especial! Es como viajar al Japón: la comida espectacular y los propietarios muy amables.</p>');
INSERT INTO `restaurant_lang` VALUES (21, 11, 1, '<p>Ens encanta el menú Tradició i els seus musclos de roca a la brasa d’olivera.</p>');
INSERT INTO `restaurant_lang` VALUES (22, 11, 2, '<p>Nos encanta el menú Tradición y sus mejillones de roca a la brasa de olivo.</p>');
INSERT INTO `restaurant_lang` VALUES (23, 12, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (24, 12, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (25, 13, 1, '<p>Els millors udon de la ciutat. Un lloc super autèntic on fan els fideus a mà.</p>');
INSERT INTO `restaurant_lang` VALUES (26, 13, 2, '<p>Los mejores udon de la ciudad. Un lugar super auténtico en el que hacen los fideos a mano.</p>');
INSERT INTO `restaurant_lang` VALUES (27, 14, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (28, 14, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (29, 15, 1, '<p>Japonès per una ocasió especial. Opció de menú de 55€ o 90€.</p>');
INSERT INTO `restaurant_lang` VALUES (30, 15, 2, '<p>Japonés por una ocasión especial. Opción de menú de 55€ o 90€.</p>');
INSERT INTO `restaurant_lang` VALUES (31, 16, 1, '<p>Trattoría Napolitana</p>');
INSERT INTO `restaurant_lang` VALUES (32, 16, 2, '<p>Trattoría Napolitana</p>');
INSERT INTO `restaurant_lang` VALUES (33, 17, 1, '<p>Les millors hamburgueses que hem provat mai! Si passeu per València: val la pena desviar-se una mica per dinar aquí.</p>');
INSERT INTO `restaurant_lang` VALUES (34, 17, 2, '<p>¡Las mejores hamburguesas que hemos probado nunca! Si pasáis por Valencia: vale la pena desviarse un poco para comer aquí.</p>');
INSERT INTO `restaurant_lang` VALUES (35, 18, 1, '<p>Cuina tradicional catalana. Menú del migdia increïble a molt bon preu. Reserveu!</p>');
INSERT INTO `restaurant_lang` VALUES (36, 18, 2, '<p>Cocina tradicional catalana. Menú del mediodía increíble a muy buen precio. ¡Reservad!</p>');
INSERT INTO `restaurant_lang` VALUES (37, 19, 1, NULL);
INSERT INTO `restaurant_lang` VALUES (38, 19, 2, NULL);
INSERT INTO `restaurant_lang` VALUES (39, 20, 1, '<p>Cuina tradicional boníssima i a bon preu.</p>');
INSERT INTO `restaurant_lang` VALUES (40, 20, 2, '<p>Cocina tradicional buenísima y a buen precio.</p>');
INSERT INTO `restaurant_lang` VALUES (41, 21, 1, '<p>Heu de provar el steak tartare!</p>');
INSERT INTO `restaurant_lang` VALUES (42, 21, 2, '<p>¡Tenéis que probar el steak tartare!</p>');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

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
INSERT INTO `tag` VALUES (20, 0, 2);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

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
INSERT INTO `tag_lang` VALUES (39, 20, 1, 'Aperitiu', 'aperitiu');
INSERT INTO `tag_lang` VALUES (40, 20, 2, 'Aperitivo', 'aperitivo');
COMMIT;

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `id_unit` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `is_unitary` tinyint(1) unsigned DEFAULT 0,
  PRIMARY KEY (`id_unit`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit
-- ----------------------------
BEGIN;
INSERT INTO `unit` VALUES (1, 1);
INSERT INTO `unit` VALUES (2, 0);
INSERT INTO `unit` VALUES (3, 0);
INSERT INTO `unit` VALUES (4, 1);
INSERT INTO `unit` VALUES (5, 1);
INSERT INTO `unit` VALUES (6, 0);
INSERT INTO `unit` VALUES (7, 1);
INSERT INTO `unit` VALUES (8, 1);
INSERT INTO `unit` VALUES (9, 0);
INSERT INTO `unit` VALUES (10, 1);
INSERT INTO `unit` VALUES (11, 1);
INSERT INTO `unit` VALUES (12, 0);
INSERT INTO `unit` VALUES (13, 1);
INSERT INTO `unit` VALUES (14, 0);
INSERT INTO `unit` VALUES (15, 1);
INSERT INTO `unit` VALUES (16, 1);
INSERT INTO `unit` VALUES (17, 1);
INSERT INTO `unit` VALUES (18, 0);
INSERT INTO `unit` VALUES (19, 0);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit_lang
-- ----------------------------
BEGIN;
INSERT INTO `unit_lang` VALUES (1, 1, 1, '', NULL);
INSERT INTO `unit_lang` VALUES (2, 1, 2, '', NULL);
INSERT INTO `unit_lang` VALUES (3, 2, 1, 'cullerada (tbsp)', 'cullerades (tbsp)');
INSERT INTO `unit_lang` VALUES (4, 2, 2, 'cucharada (tbsp)', 'cucharadas (tbsp)');
INSERT INTO `unit_lang` VALUES (5, 3, 1, 'culleradeta (tsp)', 'culleradetes (tsp)');
INSERT INTO `unit_lang` VALUES (6, 3, 2, 'cucharadita (tsp)', 'cucharaditas (tsp)');
INSERT INTO `unit_lang` VALUES (7, 4, 1, 'gram', 'grams');
INSERT INTO `unit_lang` VALUES (8, 4, 2, 'gramo', 'gramos');
INSERT INTO `unit_lang` VALUES (9, 5, 1, 'mililitre', 'mililitres');
INSERT INTO `unit_lang` VALUES (10, 5, 2, 'mililitro', 'mililitros');
INSERT INTO `unit_lang` VALUES (11, 6, 1, 'tassa (cup)', 'tasses (cup)');
INSERT INTO `unit_lang` VALUES (12, 6, 2, 'taza (cup)', 'tazas (cup)');
INSERT INTO `unit_lang` VALUES (13, 7, 1, 'fulla', 'fulles');
INSERT INTO `unit_lang` VALUES (14, 7, 2, 'hoja', 'hojas');
INSERT INTO `unit_lang` VALUES (15, 8, 1, 'pessic', 'pessics');
INSERT INTO `unit_lang` VALUES (16, 8, 2, 'pellizco', 'pellizcos');
INSERT INTO `unit_lang` VALUES (17, 9, 1, 'al gust', NULL);
INSERT INTO `unit_lang` VALUES (18, 9, 2, 'al gusto', NULL);
INSERT INTO `unit_lang` VALUES (19, 10, 1, 'raig', 'raigs');
INSERT INTO `unit_lang` VALUES (20, 10, 2, 'chorro', 'chorros');
INSERT INTO `unit_lang` VALUES (21, 11, 1, 'dent', 'dents');
INSERT INTO `unit_lang` VALUES (22, 11, 2, 'diente', 'dientes');
INSERT INTO `unit_lang` VALUES (23, 12, 1, 'branca', 'branques');
INSERT INTO `unit_lang` VALUES (24, 12, 2, 'rama', 'ramas');
INSERT INTO `unit_lang` VALUES (25, 13, 1, 'gota', 'gotes');
INSERT INTO `unit_lang` VALUES (26, 13, 2, 'gota', 'gotas');
INSERT INTO `unit_lang` VALUES (27, 14, 1, 'abundant', 'abundant');
INSERT INTO `unit_lang` VALUES (28, 14, 2, 'abundante', 'abundante');
INSERT INTO `unit_lang` VALUES (29, 15, 1, 'rodanxa', 'rodanxes');
INSERT INTO `unit_lang` VALUES (30, 15, 2, 'rodaja', 'rodajas');
INSERT INTO `unit_lang` VALUES (31, 16, 1, 'llesca', 'llesques');
INSERT INTO `unit_lang` VALUES (32, 16, 2, 'rebanada', 'rebanadas');
INSERT INTO `unit_lang` VALUES (33, 17, 1, 'làmina', 'làmines');
INSERT INTO `unit_lang` VALUES (34, 17, 2, 'lámina', 'laminas');
INSERT INTO `unit_lang` VALUES (35, 18, 2, 'cabeça', 'cabeces');
INSERT INTO `unit_lang` VALUES (36, 18, 1, 'cabeza', 'cabezas');
INSERT INTO `unit_lang` VALUES (37, 19, 1, 'gram', 'grams');
INSERT INTO `unit_lang` VALUES (38, 19, 2, 'gramo', 'gramos');
COMMIT;

-- ----------------------------
-- Triggers structure for table brava
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_brava`;
delimiter ;;
CREATE TRIGGER `delete_brava` AFTER DELETE ON `brava` FOR EACH ROW BEGIN

DELETE FROM brava_lang WHERE id_brava = OLD.id_brava;
DELETE FROM brava_review WHERE id_brava = OLD.id_brava;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table brava_review
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_reviews`;
delimiter ;;
CREATE TRIGGER `delete_reviews` AFTER DELETE ON `brava_review` FOR EACH ROW BEGIN

DELETE FROM brava_review_lang WHERE id_brava_review = OLD.id_brava_review;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table recipe
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_recipe`;
delimiter ;;
CREATE TRIGGER `delete_recipe` AFTER DELETE ON `recipe` FOR EACH ROW BEGIN

DELETE FROM recipe_appacman_user WHERE recipe_appacman_user.id_recipe = OLD.id_recipe;
DELETE FROM recipe_ingredient WHERE recipe_ingredient.id_recipe = OLD.id_recipe;
DELETE FROM recipe_lang WHERE recipe_lang.id_recipe = OLD.id_recipe;
DELETE FROM recipe_step WHERE recipe_step.id_recipe = OLD.id_recipe;
DELETE FROM recipe_tag WHERE recipe_tag.id_recipe = OLD.id_recipe;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table recipe_step
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_step`;
delimiter ;;
CREATE TRIGGER `delete_step` AFTER DELETE ON `recipe_step` FOR EACH ROW BEGIN

DELETE FROM recipe_step_lang WHERE recipe_step_lang.id_recipe_step = OLD.id_recipe_step;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
