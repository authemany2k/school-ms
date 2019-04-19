/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : sms_db

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-01-21 15:56:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about_contents
-- ----------------------------
DROP TABLE IF EXISTS `about_contents`;
CREATE TABLE `about_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `why_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `key_point_1_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_point_1_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `key_point_2_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_2_content` longtext COLLATE utf8_unicode_ci,
  `key_point_3_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_3_content` longtext COLLATE utf8_unicode_ci,
  `key_point_4_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_4_content` longtext COLLATE utf8_unicode_ci,
  `key_point_5_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_5_content` longtext COLLATE utf8_unicode_ci,
  `about_us` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `who_we_are` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `intro_video_embed_code` text COLLATE utf8_unicode_ci NOT NULL,
  `video_site_link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `about_contents_created_by_index` (`created_by`),
  KEY `about_contents_updated_by_index` (`updated_by`),
  KEY `about_contents_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of about_contents
-- ----------------------------
INSERT INTO `about_contents` VALUES ('1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.', 'Key point 1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock', 'Key point 2', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock', null, null, null, null, null, null, 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '<iframe src=\"https://www.youtube.com/embed/6sa1G_9jCb0\" frameborder=\"0\"  allowfullscreen></iframe>', 'https://www.youtube.com', '2019-01-21 20:49:12', '2019-01-21 20:49:12', '0', '0', null);

-- ----------------------------
-- Table structure for about_sliders
-- ----------------------------
DROP TABLE IF EXISTS `about_sliders`;
CREATE TABLE `about_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `about_sliders_created_by_index` (`created_by`),
  KEY `about_sliders_updated_by_index` (`updated_by`),
  KEY `about_sliders_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of about_sliders
-- ----------------------------
INSERT INTO `about_sliders` VALUES ('1', '1.jpg', '1', '2019-01-21 20:49:12', '2019-01-21 20:49:12', '0', '0', null);
INSERT INTO `about_sliders` VALUES ('2', '2.jpg', '2', '2019-01-21 20:49:12', '2019-01-21 20:49:12', '0', '0', null);

-- ----------------------------
-- Table structure for academic_years
-- ----------------------------
DROP TABLE IF EXISTS `academic_years`;
CREATE TABLE `academic_years` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academic_years_created_by_index` (`created_by`),
  KEY `academic_years_updated_by_index` (`updated_by`),
  KEY `academic_years_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of academic_years
-- ----------------------------

-- ----------------------------
-- Table structure for app_metas
-- ----------------------------
DROP TABLE IF EXISTS `app_metas`;
CREATE TABLE `app_metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_metas_created_by_index` (`created_by`),
  KEY `app_metas_updated_by_index` (`updated_by`),
  KEY `app_metas_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of app_metas
-- ----------------------------

-- ----------------------------
-- Table structure for class_profiles
-- ----------------------------
DROP TABLE IF EXISTS `class_profiles`;
CREATE TABLE `class_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image_sm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_lg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `shift` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `outline` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_profiles_created_by_index` (`created_by`),
  KEY `class_profiles_updated_by_index` (`updated_by`),
  KEY `class_profiles_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of class_profiles
-- ----------------------------
INSERT INTO `class_profiles` VALUES ('1', 'Class Three', 'class-three', '1-sm.jpg', '1-lg.jpg', 'MC Smith', 'R301-R302', '60', 'Morning', 'Lorem ipsum text', null, null, '2019-01-21 20:49:13', '2019-01-21 20:49:13', null, '0', '0', null);
INSERT INTO `class_profiles` VALUES ('2', 'Class Four', 'class-four', '2-sm.jpg', '2-lg.jpg', 'Jhon Doe', 'R401-R402', '70', 'Morning', 'Lorem ipsum text', null, null, '2019-01-21 20:49:14', '2019-01-21 20:49:14', null, '0', '0', null);

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `emp_type` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `id_card` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `religion` enum('1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_id_card_unique` (`id_card`),
  KEY `employees_user_id_foreign` (`user_id`),
  KEY `employees_created_by_index` (`created_by`),
  KEY `employees_updated_by_index` (`updated_by`),
  KEY `employees_deleted_by_index` (`deleted_by`),
  CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of employees
-- ----------------------------

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_time` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slider_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_created_by_index` (`created_by`),
  KEY `events_updated_by_index` (`updated_by`),
  KEY `events_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES ('1', '2018-12-04 13:36:00', 'Annual function 2018', 'annual-function-2018', '1.jpg', '', 'annual,function', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '11.jpg', '22.jpg', '33.jpg', '2019-01-21 20:49:15', '2019-01-21 20:49:15', null, '0', '0', null);
INSERT INTO `events` VALUES ('2', '2018-12-20 15:00:00', 'Farewell Party', 'farewell-party', null, '<iframe src=\"https://www.youtube.com/embed/pXfqbimmBhE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'farewell,party', '<p><b>Details:</b><br><ul><li><p>What restrooms are available prior to gates opening?</p><div>Angel Stadium restrooms are available prior to the gates opening; they are located in the parking lot near the Orangewood entrance.</div></li><li><div>Can I bring food or drinks into the stadium?</div><div>You can bring one unopened bottle of water per person into the stadium. No other food or drinks are permitted.</div></li><li><div>Will food be available for sale inside the stadium?</div><div>Yes. Concession stands will be open until Greg Laurie speaks. Alcohol will not be available.</div></li><li><div>Can I reserve or save seats?</div><div>No. Seating is first-come, first-served.</div></li></ul><br></p>', '11.jpg', '22.jpg', '33.jpg', '2019-01-21 20:49:16', '2019-01-21 20:49:16', null, '0', '0', null);

-- ----------------------------
-- Table structure for i_classes
-- ----------------------------
DROP TABLE IF EXISTS `i_classes`;
CREATE TABLE `i_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numeric_value` int(11) NOT NULL,
  `group` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_classes_created_by_index` (`created_by`),
  KEY `i_classes_updated_by_index` (`updated_by`),
  KEY `i_classes_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of i_classes
-- ----------------------------

-- ----------------------------
-- Table structure for i_class_history
-- ----------------------------
DROP TABLE IF EXISTS `i_class_history`;
CREATE TABLE `i_class_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numeric_value` int(11) NOT NULL,
  `group` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`,`revision`),
  KEY `i_classes_created_by_index` (`created_by`),
  KEY `i_classes_updated_by_index` (`updated_by`),
  KEY `i_classes_deleted_by_index` (`deleted_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of i_class_history
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2018_03_04_000000_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('2', '2018_03_05_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_03_05_000001_create_user_roles_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_03_05_000002_create_permissions_table', '1');
INSERT INTO `migrations` VALUES ('5', '2018_03_05_000003_create_users_permissions_table', '1');
INSERT INTO `migrations` VALUES ('6', '2018_03_05_000004_create_roles_permissions_table', '1');
INSERT INTO `migrations` VALUES ('7', '2018_03_05_000005_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('8', '2018_06_09_065945_create_sliders_table', '1');
INSERT INTO `migrations` VALUES ('9', '2018_07_06_103920_create_about_content_tables', '1');
INSERT INTO `migrations` VALUES ('10', '2018_07_08_110923_create_site_metas_table', '1');
INSERT INTO `migrations` VALUES ('11', '2018_07_11_035714_create_testimonials_table', '1');
INSERT INTO `migrations` VALUES ('12', '2018_07_14_115139_create_class_profiles_table', '1');
INSERT INTO `migrations` VALUES ('13', '2018_07_14_155755_create_teacher_profiles_table', '1');
INSERT INTO `migrations` VALUES ('14', '2018_07_14_180514_create_events_table', '1');
INSERT INTO `migrations` VALUES ('15', '2018_08_11_092832_create_app_metas_table', '1');
INSERT INTO `migrations` VALUES ('16', '2018_08_11_121754_create_academic_years_table', '1');
INSERT INTO `migrations` VALUES ('17', '2018_08_14_052209_create_employees_table', '1');
INSERT INTO `migrations` VALUES ('18', '2018_08_14_055151_create_i_classes_table', '1');
INSERT INTO `migrations` VALUES ('19', '2018_08_14_064130_create_sections_table', '1');
INSERT INTO `migrations` VALUES ('20', '2018_08_14_064556_create_students_table', '1');
INSERT INTO `migrations` VALUES ('21', '2018_08_15_105155_create_registrations_table', '1');
INSERT INTO `migrations` VALUES ('22', '2018_11_20_013140_create_notifications_table', '1');

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'change_password', 'Change Password', 'Common', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('2', 'user.dashboard', 'Dashboard', 'Common', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('3', 'lockscreen', 'Lock Screen', 'Common', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('4', 'logout', 'Logout', 'Common', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('5', 'profile', 'Profile', 'Common', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('6', 'user.notification_unread', 'Notification View', 'Common', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('7', 'user.notification_read', 'Notification View', 'Common', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('8', 'user.notification_all', 'Notification View', 'Common', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('9', 'user.store', 'User Create', 'Administration', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('10', 'user.index', 'User View', 'Administration', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('11', 'user.create', 'User Create', 'Administration', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('12', 'user.status', 'User Edit', 'Administration', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('13', 'user.show', 'User View', 'Administration', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('14', 'user.update', 'User Edit', 'Administration', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('15', 'user.destroy', 'User Delete', 'Administration', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('16', 'user.edit', 'User Edit', 'Administration', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('17', 'user.permission', 'User Edit', 'Administration', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('18', 'administrator.academic_year_destroy', 'Academic Year Delete', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('19', 'administrator.academic_year', 'Academic Year View', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('20', 'administrator.academic_year_store', 'Academic Year Create', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('21', 'administrator.academic_year_create', 'Academic Year Create', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('22', 'administrator.academic_year_edit', 'Academic Year Edit', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('23', 'administrator.academic_year_status', 'Academic Year Edit', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('24', 'administrator.academic_year_update', 'Academic Year Edit', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('25', 'settings.institute', 'Institute Edit', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('26', 'user.role_index', 'Role View', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('27', 'user.role_destroy', 'Role Delete', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('28', 'user.role_create', 'Role Create', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('29', 'user.role_store', 'Role Create', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('30', 'user.role_update', 'Role Edit', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('31', 'administrator.user_index', 'System Admin View', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('32', 'administrator.user_create', 'System Admin Create', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('33', 'administrator.user_status', 'System Admin Edit', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('34', 'administrator.user_store', 'System Admin Create', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('35', 'administrator.user_update', 'System Admin Edit', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('36', 'administrator.user_destroy', 'System Admin Delete', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('37', 'administrator.user_edit', 'System Admin Edit', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('38', 'administrator.user_password_reset', 'User Password Reset', 'Admin Only', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('39', 'academic.class_destroy', 'Class Delete', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('40', 'academic.class', 'Class View', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('41', 'academic.class_store', 'Class Create', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('42', 'academic.class_create', 'Class Create', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('43', 'academic.class_edit', 'Class Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('44', 'academic.class_status', 'Class Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('45', 'academic.class_update', 'Class Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('46', 'academic.section_destroy', 'Section Delete', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('47', 'academic.section', 'Section View', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('48', 'academic.section_store', 'Section Create', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('49', 'academic.section_create', 'Section Create', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('50', 'academic.section_edit', 'Section Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('51', 'academic.section_status', 'Section Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('52', 'academic.section_update', 'Section Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('53', 'student.store', 'Student Create', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('54', 'student.index', 'Student View', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('55', 'student.create', 'Student Create', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('56', 'student.status', 'Student Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('57', 'student.destroy', 'Student Delete', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('58', 'student.update', 'Student Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('59', 'student.show', 'Student View', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('60', 'student.edit', 'Student Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('61', 'teacher.index', 'Teacher View', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('62', 'teacher.store', 'Teacher Create', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('63', 'teacher.create', 'Teacher Create', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('64', 'teacher.status', 'Teacher Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('65', 'teacher.destroy', 'Teacher Delete', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('66', 'teacher.update', 'Teacher Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('67', 'teacher.show', 'Teacher View', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('68', 'teacher.edit', 'Teacher Edit', 'Academic', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('69', 'class_profile.index', 'Class Profile View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('70', 'class_profile.store', 'Class Profile Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('71', 'class_profile.create', 'Class Profile Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('72', 'class_profile.show', 'Class Profile View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('73', 'class_profile.update', 'Class Profile Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('74', 'class_profile.destroy', 'Class Profile Delete', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('75', 'class_profile.edit', 'Class Profile Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('76', 'event.index', 'Event View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('77', 'event.store', 'Event Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('78', 'event.create', 'Event Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('79', 'event.destroy', 'Event Delete', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('80', 'event.show', 'Event View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('81', 'event.update', 'Event Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('82', 'event.edit', 'Event Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('83', 'teacher_profile.index', 'Teacher Profile View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('84', 'teacher_profile.store', 'Teacher Profile Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('85', 'teacher_profile.create', 'Teacher Profile Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('86', 'teacher_profile.update', 'Teacher Profile Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('87', 'teacher_profile.show', 'Teacher Profile View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('88', 'teacher_profile.destroy', 'Teacher Profile Delete', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('89', 'teacher_profile.edit', 'Teacher Profile Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('90', 'site.about_content', 'Site About Content Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('91', 'site.about_content', 'Site About Content Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('92', 'site.about_content_image', 'Site About Content Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('93', 'site.about_content_image', 'Site About Content Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('94', 'site.about_content_image_delete', 'Site About Content Delete', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('95', 'site.analytics', 'Site Analytics Setting Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('96', 'site.analytics', 'Site Analytics Setting Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('97', 'site.contact_us', 'Site Contact Us Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('98', 'site.contact_us', 'Site Contact Us Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('99', 'site.dashboard', 'Site Dashboard View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('100', 'site.faq_delete', 'Site FAQ Delete', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('101', 'site.faq', 'Site FAQ Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('102', 'site.faq', 'Site FAQ Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('103', 'site.gallery', 'Site Gallery View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('104', 'site.gallery_image', 'Site Gallery Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('105', 'site.gallery_image', 'Site Gallery Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('106', 'site.gallery_image_delete', 'Site Gallery Delete', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('107', 'site.service', 'Site Service Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('108', 'site.service', 'Site Service Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('109', 'site.settings', 'Site Settings Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('110', 'site.settings', 'Site Settings Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('111', 'site.statistic', 'Site Statistic Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('112', 'site.statistic', 'Site Statistic Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('113', 'site.subscribe', 'Site Subscriber View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('114', 'site.testimonial', 'Site Testimonial View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('115', 'site.testimonial_delete', 'Site Testimonial Delete', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('116', 'site.testimonial_create', 'Site Testimonial Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('117', 'site.testimonial_create', 'Site Testimonial Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('118', 'site.timeline', 'Site Timeline Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('119', 'site.timeline', 'Site Timeline Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('120', 'site.timeline_delete', 'Site Timeline Delete', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('121', 'slider.index', 'Slider View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('122', 'slider.store', 'Slider Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('123', 'slider.create', 'Slider Create', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('124', 'slider.destroy', 'Slider Delete', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('125', 'slider.update', 'Slider Edit', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('126', 'slider.show', 'Slider View', 'Website', '2019-01-21 15:47:16');
INSERT INTO `permissions` VALUES ('127', 'slider.edit', 'Slider Edit', 'Website', '2019-01-21 15:47:16');

-- ----------------------------
-- Table structure for registrations
-- ----------------------------
DROP TABLE IF EXISTS `registrations`;
CREATE TABLE `registrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regi_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(10) unsigned NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `academic_year_id` int(10) unsigned NOT NULL,
  `roll_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shift` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_regi_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fourth_subject` int(10) unsigned NOT NULL DEFAULT '0',
  `alt_fourth_subject` int(10) unsigned NOT NULL DEFAULT '0',
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `registrations_regi_no_unique` (`regi_no`),
  KEY `registrations_student_id_foreign` (`student_id`),
  KEY `registrations_class_id_foreign` (`class_id`),
  KEY `registrations_section_id_foreign` (`section_id`),
  KEY `registrations_academic_year_id_foreign` (`academic_year_id`),
  KEY `registrations_regi_no_index` (`regi_no`),
  KEY `registrations_created_by_index` (`created_by`),
  KEY `registrations_updated_by_index` (`updated_by`),
  KEY `registrations_deleted_by_index` (`deleted_by`),
  CONSTRAINT `registrations_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `registrations_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  CONSTRAINT `registrations_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  CONSTRAINT `registrations_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of registrations
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deletable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`),
  KEY `roles_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Admin', '0', '2019-01-21 20:47:14', '2019-01-21 20:47:14', null, '0', '0', null);
INSERT INTO `roles` VALUES ('2', 'Teacher', '0', '2019-01-21 20:47:14', '2019-01-21 20:47:14', null, '0', '0', null);
INSERT INTO `roles` VALUES ('3', 'Student', '0', '2019-01-21 20:47:15', '2019-01-21 20:47:15', null, '0', '0', null);
INSERT INTO `roles` VALUES ('4', 'Parents', '0', '2019-01-21 20:47:15', '2019-01-21 20:47:15', null, '0', '0', null);
INSERT INTO `roles` VALUES ('5', 'Accountant', '0', '2019-01-21 20:47:15', '2019-01-21 20:47:15', null, '0', '0', null);
INSERT INTO `roles` VALUES ('6', 'Librarian', '0', '2019-01-21 20:47:16', '2019-01-21 20:47:16', null, '0', '0', null);
INSERT INTO `roles` VALUES ('7', 'Receptionist', '0', '2019-01-21 20:47:16', '2019-01-21 20:47:16', null, '0', '0', null);

-- ----------------------------
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  KEY `roles_permissions_role_id_foreign` (`role_id`),
  KEY `roles_permissions_permission_id_foreign` (`permission_id`),
  KEY `roles_permissions_created_by_index` (`created_by`),
  KEY `roles_permissions_updated_by_index` (`updated_by`),
  KEY `roles_permissions_deleted_by_index` (`deleted_by`),
  CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------
INSERT INTO `roles_permissions` VALUES ('1', '1', '2019-01-21 20:47:17', '2019-01-21 20:47:17', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '2', '2019-01-21 20:47:17', '2019-01-21 20:47:17', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '3', '2019-01-21 20:47:17', '2019-01-21 20:47:17', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '4', '2019-01-21 20:47:17', '2019-01-21 20:47:17', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '5', '2019-01-21 20:47:17', '2019-01-21 20:47:17', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '6', '2019-01-21 20:47:18', '2019-01-21 20:47:18', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '7', '2019-01-21 20:47:18', '2019-01-21 20:47:18', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '8', '2019-01-21 20:47:18', '2019-01-21 20:47:18', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '9', '2019-01-21 20:47:19', '2019-01-21 20:47:19', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '10', '2019-01-21 20:47:19', '2019-01-21 20:47:19', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '11', '2019-01-21 20:47:19', '2019-01-21 20:47:19', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '12', '2019-01-21 20:47:20', '2019-01-21 20:47:20', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '13', '2019-01-21 20:47:20', '2019-01-21 20:47:20', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '14', '2019-01-21 20:47:20', '2019-01-21 20:47:20', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '15', '2019-01-21 20:47:21', '2019-01-21 20:47:21', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '16', '2019-01-21 20:47:21', '2019-01-21 20:47:21', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '17', '2019-01-21 20:47:21', '2019-01-21 20:47:21', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '18', '2019-01-21 20:47:22', '2019-01-21 20:47:22', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '19', '2019-01-21 20:47:22', '2019-01-21 20:47:22', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '20', '2019-01-21 20:47:23', '2019-01-21 20:47:23', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '21', '2019-01-21 20:47:23', '2019-01-21 20:47:23', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '22', '2019-01-21 20:47:23', '2019-01-21 20:47:23', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '23', '2019-01-21 20:47:24', '2019-01-21 20:47:24', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '24', '2019-01-21 20:47:24', '2019-01-21 20:47:24', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '25', '2019-01-21 20:47:24', '2019-01-21 20:47:24', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '26', '2019-01-21 20:47:24', '2019-01-21 20:47:24', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '27', '2019-01-21 20:47:25', '2019-01-21 20:47:25', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '28', '2019-01-21 20:47:25', '2019-01-21 20:47:25', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '29', '2019-01-21 20:47:25', '2019-01-21 20:47:25', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '30', '2019-01-21 20:47:25', '2019-01-21 20:47:25', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '31', '2019-01-21 20:47:26', '2019-01-21 20:47:26', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '32', '2019-01-21 20:47:26', '2019-01-21 20:47:26', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '33', '2019-01-21 20:47:26', '2019-01-21 20:47:26', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '34', '2019-01-21 20:47:26', '2019-01-21 20:47:26', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '35', '2019-01-21 20:47:27', '2019-01-21 20:47:27', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '36', '2019-01-21 20:47:27', '2019-01-21 20:47:27', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '37', '2019-01-21 20:47:27', '2019-01-21 20:47:27', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '38', '2019-01-21 20:47:28', '2019-01-21 20:47:28', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '39', '2019-01-21 20:47:28', '2019-01-21 20:47:28', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '40', '2019-01-21 20:47:28', '2019-01-21 20:47:28', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '41', '2019-01-21 20:47:28', '2019-01-21 20:47:28', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '42', '2019-01-21 20:47:29', '2019-01-21 20:47:29', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '43', '2019-01-21 20:47:29', '2019-01-21 20:47:29', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '44', '2019-01-21 20:47:29', '2019-01-21 20:47:29', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '45', '2019-01-21 20:47:29', '2019-01-21 20:47:29', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '46', '2019-01-21 20:47:29', '2019-01-21 20:47:29', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '47', '2019-01-21 20:47:30', '2019-01-21 20:47:30', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '48', '2019-01-21 20:47:30', '2019-01-21 20:47:30', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '49', '2019-01-21 20:47:30', '2019-01-21 20:47:30', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '50', '2019-01-21 20:47:31', '2019-01-21 20:47:31', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '51', '2019-01-21 20:47:31', '2019-01-21 20:47:31', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '52', '2019-01-21 20:47:31', '2019-01-21 20:47:31', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '53', '2019-01-21 20:47:32', '2019-01-21 20:47:32', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '54', '2019-01-21 20:47:32', '2019-01-21 20:47:32', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '55', '2019-01-21 20:47:32', '2019-01-21 20:47:32', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '56', '2019-01-21 20:47:33', '2019-01-21 20:47:33', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '57', '2019-01-21 20:47:33', '2019-01-21 20:47:33', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '58', '2019-01-21 20:47:33', '2019-01-21 20:47:33', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '59', '2019-01-21 20:47:33', '2019-01-21 20:47:33', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '60', '2019-01-21 20:47:34', '2019-01-21 20:47:34', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '61', '2019-01-21 20:47:34', '2019-01-21 20:47:34', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '62', '2019-01-21 20:47:34', '2019-01-21 20:47:34', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '63', '2019-01-21 20:47:34', '2019-01-21 20:47:34', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '64', '2019-01-21 20:47:35', '2019-01-21 20:47:35', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '65', '2019-01-21 20:47:35', '2019-01-21 20:47:35', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '66', '2019-01-21 20:47:35', '2019-01-21 20:47:35', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '67', '2019-01-21 20:47:35', '2019-01-21 20:47:35', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '68', '2019-01-21 20:47:36', '2019-01-21 20:47:36', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '69', '2019-01-21 20:47:36', '2019-01-21 20:47:36', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '70', '2019-01-21 20:47:36', '2019-01-21 20:47:36', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '71', '2019-01-21 20:47:36', '2019-01-21 20:47:36', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '72', '2019-01-21 20:47:37', '2019-01-21 20:47:37', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '73', '2019-01-21 20:47:37', '2019-01-21 20:47:37', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '74', '2019-01-21 20:47:37', '2019-01-21 20:47:37', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '75', '2019-01-21 20:47:37', '2019-01-21 20:47:37', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '76', '2019-01-21 20:47:38', '2019-01-21 20:47:38', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '77', '2019-01-21 20:47:38', '2019-01-21 20:47:38', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '78', '2019-01-21 20:47:39', '2019-01-21 20:47:39', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '79', '2019-01-21 20:47:39', '2019-01-21 20:47:39', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '80', '2019-01-21 20:47:39', '2019-01-21 20:47:39', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '81', '2019-01-21 20:47:40', '2019-01-21 20:47:40', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '82', '2019-01-21 20:47:40', '2019-01-21 20:47:40', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '83', '2019-01-21 20:47:40', '2019-01-21 20:47:40', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '84', '2019-01-21 20:47:40', '2019-01-21 20:47:40', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '85', '2019-01-21 20:47:41', '2019-01-21 20:47:41', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '86', '2019-01-21 20:47:41', '2019-01-21 20:47:41', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '87', '2019-01-21 20:47:41', '2019-01-21 20:47:41', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '88', '2019-01-21 20:47:41', '2019-01-21 20:47:41', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '89', '2019-01-21 20:47:42', '2019-01-21 20:47:42', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '90', '2019-01-21 20:47:42', '2019-01-21 20:47:42', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '91', '2019-01-21 20:47:42', '2019-01-21 20:47:42', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '92', '2019-01-21 20:47:42', '2019-01-21 20:47:42', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '93', '2019-01-21 20:47:43', '2019-01-21 20:47:43', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '94', '2019-01-21 20:47:43', '2019-01-21 20:47:43', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '95', '2019-01-21 20:47:43', '2019-01-21 20:47:43', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '96', '2019-01-21 20:47:43', '2019-01-21 20:47:43', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '97', '2019-01-21 20:47:44', '2019-01-21 20:47:44', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '98', '2019-01-21 20:47:44', '2019-01-21 20:47:44', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '99', '2019-01-21 20:47:44', '2019-01-21 20:47:44', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '100', '2019-01-21 20:47:45', '2019-01-21 20:47:45', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '101', '2019-01-21 20:47:45', '2019-01-21 20:47:45', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '102', '2019-01-21 20:47:45', '2019-01-21 20:47:45', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '103', '2019-01-21 20:47:46', '2019-01-21 20:47:46', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '104', '2019-01-21 20:47:46', '2019-01-21 20:47:46', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '105', '2019-01-21 20:47:46', '2019-01-21 20:47:46', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '106', '2019-01-21 20:47:47', '2019-01-21 20:47:47', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '107', '2019-01-21 20:47:47', '2019-01-21 20:47:47', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '108', '2019-01-21 20:47:47', '2019-01-21 20:47:47', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '109', '2019-01-21 20:47:47', '2019-01-21 20:47:47', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '110', '2019-01-21 20:47:48', '2019-01-21 20:47:48', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '111', '2019-01-21 20:47:48', '2019-01-21 20:47:48', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '112', '2019-01-21 20:47:48', '2019-01-21 20:47:48', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '113', '2019-01-21 20:47:49', '2019-01-21 20:47:49', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '114', '2019-01-21 20:47:49', '2019-01-21 20:47:49', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '115', '2019-01-21 20:47:49', '2019-01-21 20:47:49', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '116', '2019-01-21 20:47:50', '2019-01-21 20:47:50', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '117', '2019-01-21 20:47:50', '2019-01-21 20:47:50', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '118', '2019-01-21 20:47:50', '2019-01-21 20:47:50', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '119', '2019-01-21 20:47:50', '2019-01-21 20:47:50', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '120', '2019-01-21 20:47:51', '2019-01-21 20:47:51', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '121', '2019-01-21 20:47:51', '2019-01-21 20:47:51', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '122', '2019-01-21 20:47:52', '2019-01-21 20:47:52', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '123', '2019-01-21 20:47:52', '2019-01-21 20:47:52', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '124', '2019-01-21 20:47:52', '2019-01-21 20:47:52', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '125', '2019-01-21 20:47:52', '2019-01-21 20:47:52', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '126', '2019-01-21 20:47:52', '2019-01-21 20:47:52', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('1', '127', '2019-01-21 20:47:52', '2019-01-21 20:47:52', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('5', '1', '2019-01-21 20:47:53', '2019-01-21 20:47:53', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('5', '2', '2019-01-21 20:47:53', '2019-01-21 20:47:53', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('5', '3', '2019-01-21 20:47:53', '2019-01-21 20:47:53', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('5', '4', '2019-01-21 20:47:53', '2019-01-21 20:47:53', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('5', '5', '2019-01-21 20:47:53', '2019-01-21 20:47:53', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('5', '6', '2019-01-21 20:47:53', '2019-01-21 20:47:53', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('5', '7', '2019-01-21 20:47:54', '2019-01-21 20:47:54', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('5', '8', '2019-01-21 20:47:54', '2019-01-21 20:47:54', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('6', '1', '2019-01-21 20:47:54', '2019-01-21 20:47:54', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('6', '2', '2019-01-21 20:47:54', '2019-01-21 20:47:54', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('6', '3', '2019-01-21 20:47:54', '2019-01-21 20:47:54', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('6', '4', '2019-01-21 20:47:54', '2019-01-21 20:47:54', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('6', '5', '2019-01-21 20:47:55', '2019-01-21 20:47:55', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('6', '6', '2019-01-21 20:47:55', '2019-01-21 20:47:55', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('6', '7', '2019-01-21 20:47:55', '2019-01-21 20:47:55', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('6', '8', '2019-01-21 20:47:55', '2019-01-21 20:47:55', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('4', '1', '2019-01-21 20:47:55', '2019-01-21 20:47:55', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('4', '2', '2019-01-21 20:47:56', '2019-01-21 20:47:56', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('4', '3', '2019-01-21 20:47:56', '2019-01-21 20:47:56', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('4', '4', '2019-01-21 20:47:56', '2019-01-21 20:47:56', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('4', '5', '2019-01-21 20:47:56', '2019-01-21 20:47:56', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('4', '6', '2019-01-21 20:47:56', '2019-01-21 20:47:56', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('4', '7', '2019-01-21 20:47:57', '2019-01-21 20:47:57', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('4', '8', '2019-01-21 20:47:57', '2019-01-21 20:47:57', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('7', '1', '2019-01-21 20:47:57', '2019-01-21 20:47:57', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('7', '2', '2019-01-21 20:47:57', '2019-01-21 20:47:57', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('7', '3', '2019-01-21 20:47:57', '2019-01-21 20:47:57', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('7', '4', '2019-01-21 20:47:58', '2019-01-21 20:47:58', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('7', '5', '2019-01-21 20:47:58', '2019-01-21 20:47:58', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('7', '6', '2019-01-21 20:47:58', '2019-01-21 20:47:58', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('7', '7', '2019-01-21 20:47:58', '2019-01-21 20:47:58', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('7', '8', '2019-01-21 20:47:58', '2019-01-21 20:47:58', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('3', '1', '2019-01-21 20:47:58', '2019-01-21 20:47:58', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('3', '2', '2019-01-21 20:47:59', '2019-01-21 20:47:59', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('3', '3', '2019-01-21 20:47:59', '2019-01-21 20:47:59', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('3', '4', '2019-01-21 20:47:59', '2019-01-21 20:47:59', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('3', '5', '2019-01-21 20:47:59', '2019-01-21 20:47:59', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('3', '6', '2019-01-21 20:47:59', '2019-01-21 20:47:59', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('3', '7', '2019-01-21 20:47:59', '2019-01-21 20:47:59', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('3', '8', '2019-01-21 20:48:00', '2019-01-21 20:48:00', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('2', '1', '2019-01-21 20:48:00', '2019-01-21 20:48:00', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('2', '2', '2019-01-21 20:48:00', '2019-01-21 20:48:00', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('2', '3', '2019-01-21 20:48:00', '2019-01-21 20:48:00', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('2', '4', '2019-01-21 20:48:00', '2019-01-21 20:48:00', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('2', '5', '2019-01-21 20:48:00', '2019-01-21 20:48:00', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('2', '6', '2019-01-21 20:48:01', '2019-01-21 20:48:01', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('2', '7', '2019-01-21 20:48:01', '2019-01-21 20:48:01', null, null, null, null);
INSERT INTO `roles_permissions` VALUES ('2', '8', '2019-01-21 20:48:01', '2019-01-21 20:48:01', null, null, null, null);

-- ----------------------------
-- Table structure for sections
-- ----------------------------
DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `teacher_id` int(10) unsigned NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sections_class_id_foreign` (`class_id`),
  KEY `sections_teacher_id_foreign` (`teacher_id`),
  KEY `sections_created_by_index` (`created_by`),
  KEY `sections_updated_by_index` (`updated_by`),
  KEY `sections_deleted_by_index` (`deleted_by`),
  CONSTRAINT `sections_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  CONSTRAINT `sections_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sections
-- ----------------------------

-- ----------------------------
-- Table structure for section_history
-- ----------------------------
DROP TABLE IF EXISTS `section_history`;
CREATE TABLE `section_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `teacher_id` int(10) unsigned NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`,`revision`),
  KEY `sections_class_id_foreign` (`class_id`),
  KEY `sections_teacher_id_foreign` (`teacher_id`),
  KEY `sections_created_by_index` (`created_by`),
  KEY `sections_updated_by_index` (`updated_by`),
  KEY `sections_deleted_by_index` (`deleted_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of section_history
-- ----------------------------

-- ----------------------------
-- Table structure for site_metas
-- ----------------------------
DROP TABLE IF EXISTS `site_metas`;
CREATE TABLE `site_metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_metas_created_by_index` (`created_by`),
  KEY `site_metas_updated_by_index` (`updated_by`),
  KEY `site_metas_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of site_metas
-- ----------------------------
INSERT INTO `site_metas` VALUES ('1', 'settings', '{\"logo\":\"logo.png\",\"logo2x\":\"logo@2x.png\",\"favicon\":\"favicon.png\",\"name\":\"Cloud School\",\"short_name\":\"CloudSchool\",\"facebook\":\"#\",\"google\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\"}', '2019-01-21 20:49:07', '2019-01-21 20:49:07', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('2', 'timeline', '{\"t\":\"We Start Here\",\"d\":\"Lorem ipsum\",\"y\":\"2006\"}', '2019-01-21 20:49:08', '2019-01-21 20:49:08', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('3', 'timeline', '{\"t\":\"Top Score\",\"d\":\"We achive top result score in the state\",\"y\":\"2010\"}', '2019-01-21 20:49:08', '2019-01-21 20:49:08', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('4', 'faq', '{\"q\":\"How to apply for adminission?\",\"a\":\"Just e-mail us, or contact on hot line.\"}', '2019-01-21 20:49:08', '2019-01-21 20:49:08', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('5', 'contact_address', 'Dhaka-1207', '2019-01-21 20:49:08', '2019-01-21 20:49:08', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('6', 'contact_phone', '+880258685', '2019-01-21 20:49:09', '2019-01-21 20:49:09', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('7', 'contact_email', 'contact@cloudschoolbd.com', '2019-01-21 20:49:09', '2019-01-21 20:49:09', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('8', 'contact_latlong', '23.7340076,90.3841824', '2019-01-21 20:49:09', '2019-01-21 20:49:09', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('9', 'gallery', '1.jpg', '2019-01-21 20:49:09', '2019-01-21 20:49:09', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('10', 'gallery', '2.jpg', '2019-01-21 20:49:10', '2019-01-21 20:49:10', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('11', 'gallery', '3.jpg', '2019-01-21 20:49:10', '2019-01-21 20:49:10', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('12', 'statistic', '4000,150,18000,9800', '2019-01-21 20:49:11', '2019-01-21 20:49:11', null, '0', '0', null);
INSERT INTO `site_metas` VALUES ('13', 'our_service_text', 'Lorem ipsum', '2019-01-21 20:49:11', '2019-01-21 20:49:11', null, '0', '0', null);

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sliders_created_by_index` (`created_by`),
  KEY `sliders_updated_by_index` (`updated_by`),
  KEY `sliders_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES ('1', 'First slider image', 'This is subtitle 1', '1.jpg', '1', '2019-01-21 20:49:12', '2019-01-21 20:49:12', null, '0', '0', null);
INSERT INTO `sliders` VALUES ('2', 'Second slider image', 'This is subtitle 2', '2.jpg', '2', '2019-01-21 20:49:13', '2019-01-21 20:49:13', null, '0', '0', null);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_created_by_index` (`created_by`),
  KEY `students_updated_by_index` (`updated_by`),
  KEY `students_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of students
-- ----------------------------

-- ----------------------------
-- Table structure for student_info_log
-- ----------------------------
DROP TABLE IF EXISTS `student_info_log`;
CREATE TABLE `student_info_log` (
  `student_id` int(10) unsigned NOT NULL,
  `academic_year_id` int(10) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  KEY `student_info_log_student_id_foreign` (`student_id`),
  KEY `student_info_log_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `student_info_log_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `student_info_log_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of student_info_log
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_profiles
-- ----------------------------
DROP TABLE IF EXISTS `teacher_profiles`;
CREATE TABLE `teacher_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `qualification` longtext COLLATE utf8_unicode_ci,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_profiles_created_by_index` (`created_by`),
  KEY `teacher_profiles_updated_by_index` (`updated_by`),
  KEY `teacher_profiles_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of teacher_profiles
-- ----------------------------
INSERT INTO `teacher_profiles` VALUES ('1', 'Fakir Chand', 'Head Master', '1.jpg', 'Super cool boy!', 'M.A in English', '#', '#', '#', '2019-01-21 20:49:14', '2019-01-21 20:49:14', null, '0', '0', null);
INSERT INTO `teacher_profiles` VALUES ('2', 'Nosimon Beagum', 'Class Teacher', '2.jpg', '', 'Hons in English', '#', '#', '#', '2019-01-21 20:49:14', '2019-01-21 20:49:14', null, '0', '0', null);

-- ----------------------------
-- Table structure for testimonials
-- ----------------------------
DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `writer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `testimonials_created_by_index` (`created_by`),
  KEY `testimonials_updated_by_index` (`updated_by`),
  KEY `testimonials_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of testimonials
-- ----------------------------
INSERT INTO `testimonials` VALUES ('1', 'Shadhin', 'Awesome Academy', null, '1', '2019-01-21 20:49:11', '2019-01-21 20:49:11', null, '0', '0', null);
INSERT INTO `testimonials` VALUES ('2', 'HRS', 'Great school', null, '2', '2019-01-21 20:49:11', '2019-01-21 20:49:11', null, '0', '0', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `force_logout` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_created_by_index` (`created_by`),
  KEY `users_updated_by_index` (`updated_by`),
  KEY `users_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Mr. admin', 'admin', 'admin@sms.com', '$2y$10$WvLsvelpJjnYFQfWj.VJsezAbOeafN28oeffU6XgvplhK49x7zFEq', 'gYcRIZ9B2IEuipJ7gtFXEjaVvtYKhF2qPSZS3sNjD4DEb6rn5CzfH63CfvbS', '0', '1', '2019-01-21 20:48:01', '2019-01-21 20:48:01', null, '0', '1', null);

-- ----------------------------
-- Table structure for users_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_permissions`;
CREATE TABLE `users_permissions` (
  `user_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  KEY `users_permissions_user_id_foreign` (`user_id`),
  KEY `users_permissions_permission_id_foreign` (`permission_id`),
  KEY `users_permissions_created_by_index` (`created_by`),
  KEY `users_permissions_updated_by_index` (`updated_by`),
  KEY `users_permissions_deleted_by_index` (`deleted_by`),
  CONSTRAINT `users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_role_id_foreign` (`role_id`),
  KEY `user_roles_created_by_index` (`created_by`),
  KEY `user_roles_updated_by_index` (`updated_by`),
  KEY `user_roles_deleted_by_index` (`deleted_by`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('1', '1', '2019-01-21 20:48:01', '2019-01-21 20:48:01', null, '0', '0', null);
DROP TRIGGER IF EXISTS `i_class__ai`;
DELIMITER ;;
CREATE TRIGGER `i_class__ai` AFTER INSERT ON `i_classes` FOR EACH ROW INSERT INTO i_class_history SELECT 'insert', NULL, d.* 
    FROM i_classes AS d WHERE d.id = NEW.id
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `i_class__au`;
DELIMITER ;;
CREATE TRIGGER `i_class__au` AFTER UPDATE ON `i_classes` FOR EACH ROW INSERT INTO i_class_history SELECT 'update', NULL, d.*
    FROM i_classes AS d WHERE d.id = NEW.id
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `section__ai`;
DELIMITER ;;
CREATE TRIGGER `section__ai` AFTER INSERT ON `sections` FOR EACH ROW INSERT INTO section_history SELECT 'insert', NULL, d.* 
    FROM sections AS d WHERE d.id = NEW.id
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `section__au`;
DELIMITER ;;
CREATE TRIGGER `section__au` AFTER UPDATE ON `sections` FOR EACH ROW INSERT INTO section_history SELECT 'update', NULL, d.*
    FROM sections AS d WHERE d.id = NEW.id
;;
DELIMITER ;
