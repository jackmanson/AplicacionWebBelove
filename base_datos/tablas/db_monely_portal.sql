/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  jackmanson
 * Created: 8 abr. 2020
 */

-- -----------------------------------------------------
-- Schema db_monely
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_monely_portal` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `db_monely_portal` ;


-- -----------------------------------------------------
-- Table `db_monely_portal`.`suscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely_portal`.`suscripcion` (
  `id_suscripcion` INT NOT NULL AUTO_INCREMENT,
  `email` TEXT(45) NULL,
  `fecha_suscripcion` TIMESTAMP,
  PRIMARY KEY (`id_suscripcion`),
  CONSTRAINT uq_email UNIQUE (email))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely_portal`.`contacto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely_portal`.`contacto` (
  `id_contacto` INT NOT NULL AUTO_INCREMENT,
  `nombre` TEXT(45) NULL,
  `email` TEXT(50) NULL,
  `comentario` TEXT(400) NULL,
  `fecha_registro` TIMESTAMP,
  PRIMARY KEY (`id_contacto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;

-- -----------------------------------------------------
-- Table `db_monely_portal`.`contacto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely_portal`.`principal` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `navegador_menu` TEXT(300) NULL,
  `buscador` TEXT(300) NULL,
  `about_empresa` TEXT(300) NULL,
  `valores_empresa` TEXT(300) NULL,
  `procesos_produccion` TEXT(300) NULL,
  `areas_produccion` TEXT(300) NULL,
  `clientes_comentarios` TEXT(300) NULL,
  `oferta_tienda` TEXT(300) NULL,
  `contacto` TEXT(300) NULL,
  `fecha_actualizacion` TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;