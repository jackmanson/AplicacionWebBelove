-- -----------------------------------------------------
-- Schema db_belove_modelo_1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_belove_modelo_1` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `db_belove_modelo_1` ;


-- -----------------------------------------------------
-- Table `db_belove_modelo_1`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_belove_modelo_1`.`usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `pass` VARCHAR(100) NOT NULL,
  `fecha_alta_usuario` TIMESTAMP,
  `fecha_baja_usuario` DATETIME NULL,
  PRIMARY KEY (`id_usuario`),
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_belove_modelo_1`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_belove_modelo_1`.`clientes` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NULL,
  `celular` VARCHAR(25) NULL,
  `cumpleanos` DATE NULL,
  `nombreColaborador` VARCHAR(50) NULL,
  `fecha_alta_usuario` DATETIME NULL,
  `fecha_baja_usuario` DATETIME NULL,
  `tiempoRegistroStart` DATETIME NULL,
  `tiempoRegistroEnd` DATETIME NULL,
  PRIMARY KEY (`id_usuario`)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_belove_modelo_1`.`citas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_belove_modelo_1`.`citas` (
  `id_cita` INT NOT NULL AUTO_INCREMENT,
  `fecha_cita` DATE NULL,
  `hora_cita` TIME NULL,
  `nombre` VARCHAR(60) NULL,
  `servicio_elegido` VARCHAR(100) NULL,
  `celular` VARCHAR(25) NULL,
  `personal_atiende` VARCHAR(60) NULL,
  `estado` VARCHAR(20) NULL,
  `fecha_alta_usuario` DATETIME NULL,
  `fecha_baja_usuario` DATETIME NULL,
  `tiempoRegistroStart` TIMESTAMP NULL,
  `tiempoRegistroEnd` TIMESTAMP NULL,
  PRIMARY KEY (`id_cita`)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_belove_modelo_1`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_belove_modelo_1`.`empleados` (
  `id_empleado` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  `email` VARCHAR(45) NULL,
  `cargo` VARCHAR(45) NOT NULL,
  `fecha_alta_usuario` TIMESTAMP NOT NULL,
  `fecha_baja_usuario` DATETIME NULL,
  `tiempoRegistroStart` DATETIME NULL,
  `tiempoRegistroEnd` DATETIME NULL,
  PRIMARY KEY (`id_empleado`)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_belove_modelo_1`.`servicios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_belove_modelo_1`.`servicios` (
  `id_servicio` INT NOT NULL AUTO_INCREMENT,
  `nombre_servicio` VARCHAR(60) NOT NULL,
  `precio_base` DECIMAL(2) NULL,
  `usuario_registra` VARCHAR(60) NOT NULL,
  `fecha_alta_usuario` TIMESTAMP NULL,
  `fecha_baja_usuario` DATETIME NULL,
  `tiempoRegistroStart` DATETIME NULL,
  `tiempoRegistroEnd` DATETIME NULL,
  PRIMARY KEY (`id_servicio`)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;




