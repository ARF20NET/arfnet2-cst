CREATE DATABASE arfnet2;

CREATE TABLE `arfnet2`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `username` VARCHAR(31) NOT NULL ,
    `password` VARCHAR(255) NOT NULL ,
    `email` VARCHAR(127) NOT NULL ,
    `verifycode` VARCHAR(31) NOT NULL ,
    `type` ENUM('client','helpdesk','accountant','admin') NOT NULL ,
    `regdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    `status` ENUM('verified','unverified') NOT NULL DEFAULT 'unverified' ,
    PRIMARY KEY (`id`)
);

CREATE TABLE `arfnet2`.`services` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `name` VARCHAR(255) NOT NULL ,
    `type` ENUM('free','standard','premium') NOT NULL ,
    `billing` VARCHAR(255) NOT NULL ,
    `description` TEXT NOT NULL ,
    PRIMARY KEY (`id`)
);

CREATE TABLE `arfnet2`.`orders` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `service` INT NOT NULL ,
    `name` VARCHAR(255) NOT NULL ,
    `client` INT NOT NULL ,
    `billing` VARCHAR(255) NOT NULL ,
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    `status` ENUM('active','inactive') NOT NULL ,
    `comments` TEXT NOT NULL ,
    PRIMARY KEY (`id`)
);
