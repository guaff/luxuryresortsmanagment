CREATE TABLE `cities` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `location_id` varchar(255) default NULL,
  `image_file_name` varchar(255) default NULL,
  `image_content_type` varchar(255) default NULL,
  `image_file_size` int(11) default NULL,
  `image_updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

CREATE TABLE `locations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `image_file_name` varchar(255) default NULL,
  `image_content_type` varchar(255) default NULL,
  `image_file_size` int(11) default NULL,
  `image_updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

CREATE TABLE `mailinglists` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `resorts` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `city_id` int(11) default NULL,
  `description` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_main_file_name` varchar(255) default NULL,
  `photo_main_content_type` varchar(255) default NULL,
  `photo_main_file_size` int(11) default NULL,
  `photo_main_updated_at` datetime default NULL,
  `photo1_file_name` varchar(255) default NULL,
  `photo1_content_type` varchar(255) default NULL,
  `photo1_file_size` int(11) default NULL,
  `photo1_updated_at` datetime default NULL,
  `photo2_file_name` varchar(255) default NULL,
  `photo2_content_type` varchar(255) default NULL,
  `photo2_file_size` int(11) default NULL,
  `photo2_updated_at` datetime default NULL,
  `photo3_file_name` varchar(255) default NULL,
  `photo3_content_type` varchar(255) default NULL,
  `photo3_file_size` int(11) default NULL,
  `photo3_updated_at` datetime default NULL,
  `photo4_file_name` varchar(255) default NULL,
  `photo4_content_type` varchar(255) default NULL,
  `photo4_file_size` int(11) default NULL,
  `photo4_updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=581 DEFAULT CHARSET=utf8;

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) default NULL,
  `availability` varchar(255) default NULL,
  `sale_or_rent` varchar(255) default NULL,
  `price` int(11) default NULL,
  `owner_name` varchar(255) default NULL,
  `unit_size_id` int(11) default NULL,
  `resort_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `image_file_name` varchar(255) default NULL,
  `image_content_type` varchar(255) default NULL,
  `image_file_size` int(11) default NULL,
  `image_updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `unit_sizes` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(40) default NULL,
  `name` varchar(100) default '',
  `email` varchar(100) default NULL,
  `crypted_password` varchar(40) default NULL,
  `salt` varchar(40) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `remember_token` varchar(40) default NULL,
  `remember_token_expires_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO schema_migrations (version) VALUES ('20090202134223');

INSERT INTO schema_migrations (version) VALUES ('20090202150833');

INSERT INTO schema_migrations (version) VALUES ('20090202150912');

INSERT INTO schema_migrations (version) VALUES ('20090202193430');

INSERT INTO schema_migrations (version) VALUES ('20090203021150');

INSERT INTO schema_migrations (version) VALUES ('20090203021358');

INSERT INTO schema_migrations (version) VALUES ('20090203160136');

INSERT INTO schema_migrations (version) VALUES ('20090203160339');

INSERT INTO schema_migrations (version) VALUES ('20090203163652');

INSERT INTO schema_migrations (version) VALUES ('20090204171321');

INSERT INTO schema_migrations (version) VALUES ('20090204223551');

INSERT INTO schema_migrations (version) VALUES ('20090207174221');

INSERT INTO schema_migrations (version) VALUES ('20090207194124');

INSERT INTO schema_migrations (version) VALUES ('20090207204901');