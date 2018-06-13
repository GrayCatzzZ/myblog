/*
SQLyog Trial v11.01 (32 bit)
MySQL - 5.7.17-log : Database - myblog
*********************************************************************
*/


CREATE DATABASE `myblog` ;

USE `myblog`;

DROP TABLE IF EXISTS `t_article`;

CREATE TABLE `t_article` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `art_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`art_id`),
  KEY `FK_ARTICLE_CATEGORY` (`cat_id`),
  CONSTRAINT `FK_ARTICLE_CATEGORY` FOREIGN KEY (`cat_id`) REFERENCES `t_categroy` (`cat_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `t_categroy`;

CREATE TABLE `t_categroy` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(32) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `art_id` int(11) NOT NULL,
  `com_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `comment` text,
  PRIMARY KEY (`com_id`),
  KEY `FK_COMMENT_USER` (`user_id`),
  KEY `FK_COMMENT_ARTICLE` (`art_id`),
  CONSTRAINT `FK_COMMENT_ARTICLE` FOREIGN KEY (`art_id`) REFERENCES `t_article` (`art_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_COMMENT_USER` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `state` int(1) DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

