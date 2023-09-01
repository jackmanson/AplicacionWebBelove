-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema db_monely
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_monely
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_monely` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `db_monely` ;

-- -----------------------------------------------------
-- Table `db_monely`.`departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`departamento` (
  `id_departamento` INT NOT NULL AUTO_INCREMENT,
  `nombre_departamento` VARCHAR(45) NULL,
  PRIMARY KEY (`id_departamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`provincia` (
  `id_provincia` INT NOT NULL AUTO_INCREMENT,
  `nombre_provincia` VARCHAR(45) NULL,
  `fk_id_departamento_1` INT NULL,
  PRIMARY KEY (`id_provincia`),
  INDEX `fk_departamento_1_idx` (`fk_id_departamento_1` ASC),
  CONSTRAINT `fk_departamento_1`
    FOREIGN KEY (`fk_id_departamento_1`)
    REFERENCES `db_monely`.`departamento` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`distrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`distrito` (
  `id_distrito` INT NOT NULL AUTO_INCREMENT,
  `nombre_distrito` VARCHAR(45) NULL,
  `fk_id_provincia_1` INT NULL,
  PRIMARY KEY (`id_distrito`),
  INDEX `fk_provincia_1_idx` (`fk_id_provincia_1` ASC),
  CONSTRAINT `fk_provincia_1`
    FOREIGN KEY (`fk_id_provincia_1`)
    REFERENCES `db_monely`.`provincia` (`id_provincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`paises`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`paises` (
  `id_pais` INT NOT NULL AUTO_INCREMENT,
  `nombre_pais` VARCHAR(45) NULL,
  `nacionalidad` VARCHAR(45) NULL,
  `idioma` VARCHAR(45) NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`estado_civil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`estado_civil` (
  `id_estado_civil` INT NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(20) NULL,
  PRIMARY KEY (`id_estado_civil`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`estados_actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`estados_actividad` (
  `id_estados_actividad` INT NOT NULL AUTO_INCREMENT,
  `nombre_estado` VARCHAR(45) NULL,
  PRIMARY KEY (`id_estados_actividad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`personas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`personas` (
  `id_persona` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(45) NULL,
  `apellido_paterno` VARCHAR(45) NULL,
  `apellido_materno` VARCHAR(45) NULL,
  `foto` VARCHAR(100) NULL,
  `direccion` VARCHAR(100) NULL,
  `numero_hijos` INT NULL,
  `fecha_nacimiento` DATE NULL,
  `fecha_registro` DATETIME  NULL,
  `fk_id_departamento_4` INT NULL,
  `fk_id_provincia_4` INT NULL,
  `fk_id_distrito_4` INT NULL,
  `fk_id_nacionalidad_3` INT NULL,
  `fk_id_estado_civil_1` INT NULL,
  `fk_id_estado_actividad_1` INT NULL,
  PRIMARY KEY (`id_persona`),
  INDEX `fk_departamento_4_idx` (`fk_id_departamento_4` ASC),
  INDEX `fk_provincia_4_idx` (`fk_id_provincia_4` ASC),
  INDEX `fk_distrito_4_idx` (`fk_id_distrito_4` ASC),
  INDEX `fk_estadoCivil_1_idx` (`fk_id_estado_civil_1` ASC),
  INDEX `fk_estadoActividad_1_idx` (`fk_id_estado_actividad_1` ASC),
  INDEX `fk_nacionalidad_3_idx` (`fk_id_nacionalidad_3` ASC),
  CONSTRAINT `fk_departamento_4`
    FOREIGN KEY (`fk_id_departamento_4`)
    REFERENCES `db_monely`.`departamento` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_provincia_4`
    FOREIGN KEY (`fk_id_provincia_4`)
    REFERENCES `db_monely`.`provincia` (`id_provincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_distrito_4`
    FOREIGN KEY (`fk_id_distrito_4`)
    REFERENCES `db_monely`.`distrito` (`id_distrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_nacionalidad_3`
    FOREIGN KEY (`fk_id_nacionalidad_3`)
    REFERENCES `db_monely`.`paises` (`id_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoCivil_1`
    FOREIGN KEY (`fk_id_estado_civil_1`)
    REFERENCES `db_monely`.`estado_civil` (`id_estado_civil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_1`
    FOREIGN KEY (`fk_id_estado_actividad_1`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`perfil_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`perfil_usuario` (
  `id_perfil_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombre_ perfil_usuario` VARCHAR(45) NULL,
  PRIMARY KEY (`id_perfil_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`usuarios` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nickname` VARCHAR(45) NULL,
  `pass` VARCHAR(100) NULL,
  `fk_id_perfil_usuario_1` INT NULL,
  `fk_id_persona_1` INT NULL,
  `fk_id_estado_actividad_3` INT NULL,
  `fecha_alta_usuario` DATETIME NULL,
  `fecha_baja_usuario` DATETIME NULL,
  `fk_id_usuario_asignaAlta_46` INT NULL,
  `fk_id_usuario_asignaBaja_47` INT NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id_usuario`),
  INDEX `fk_perfilUsuario_1_idx` (`fk_id_perfil_usuario_1` ASC),
  INDEX `fk_persona_1_idx` (`fk_id_persona_1` ASC),
  INDEX `fk_estadoActividad_3_idx` (`fk_id_estado_actividad_3` ASC),
  INDEX `fk_usuarioAsignaAlta_46_idx` (`fk_id_usuario_asignaAlta_46` ASC),
  INDEX `fk_usuarioAsignaBaja_47_idx` (`fk_id_usuario_asignaBaja_47` ASC),
  CONSTRAINT `fk_perfilUsuario_1`
    FOREIGN KEY (`fk_id_perfil_usuario_1`)
    REFERENCES `db_monely`.`perfil_usuario` (`id_perfil_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_1`
    FOREIGN KEY (`fk_id_persona_1`)
    REFERENCES `db_monely`.`personas` (`id_persona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_3`
    FOREIGN KEY (`fk_id_estado_actividad_3`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioAsignaAlta_46`
    FOREIGN KEY (`fk_id_usuario_asignaAlta_46`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioAsignaBaja_47`
    FOREIGN KEY (`fk_id_usuario_asignaBaja_47`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`clientes` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `razon_social_cliente` VARCHAR(45) NULL,
  `ruc_cliente` VARCHAR(45) NULL,
  `fk_id_departamento_5` INT NULL,
  `fk_id_provincia_5` INT NULL,
  `fk_id_distrito_5` INT NULL,
  `fk_id_calle_4` VARCHAR(60) NULL,
  `fk_id_usuario_registra_2` INT NULL,
  `fk_id_estado_actividad_5` INT NULL,
  `fecha_registro_cliente` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_usuario_actualiza_48` INT NULL,
  PRIMARY KEY (`id_cliente`),
  INDEX `fk_departamento_5_idx` (`fk_id_departamento_5` ASC),
  INDEX `fk_provincia_5_idx` (`fk_id_provincia_5` ASC),
  INDEX `fk_usuario_2_idx` (`fk_id_usuario_registra_2` ASC),
  INDEX `fk_estado_5_idx` (`fk_id_estado_actividad_5` ASC),
  INDEX `fk_usuario_48_idx` (`fk_id_usuario_actualiza_48` ASC),
  INDEX `fk_distrito_5_idx` (`fk_id_distrito_5` ASC),
  CONSTRAINT `fk_departamento_5`
    FOREIGN KEY (`fk_id_departamento_5`)
    REFERENCES `db_monely`.`departamento` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_provincia_5`
    FOREIGN KEY (`fk_id_provincia_5`)
    REFERENCES `db_monely`.`provincia` (`id_provincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_distrito_5`
    FOREIGN KEY (`fk_id_distrito_5`)
    REFERENCES `db_monely`.`distrito` (`id_distrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_2`
    FOREIGN KEY (`fk_id_usuario_registra_2`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estado_5`
    FOREIGN KEY (`fk_id_estado_actividad_5`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_48`
    FOREIGN KEY (`fk_id_usuario_actualiza_48`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`ordenes_produccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`ordenes_produccion` (
  `id_ordenes_produccion` INT NOT NULL AUTO_INCREMENT,
  `numero_orden` VARCHAR(45) NULL,
  `cantidad_total_prendas` INT NULL,
  `observaciones_orden_produccion` VARCHAR(500) NULL,
  `fecha_registro_orden_produccion` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_cliente_7` INT NULL,
  `fk_id_estado_actividad_4` INT NULL,
  `fk_id_usuario_registra_1` INT NULL,
  `fk_id_usuario_actualiza_61` INT NULL,
  PRIMARY KEY (`id_ordenes_produccion`),
  INDEX `fk_cliente_7_idx` (`fk_id_cliente_7` ASC),
  INDEX `fk_estadoActividad_4_idx` (`fk_id_estado_actividad_4` ASC),
  INDEX `fk_usuarioRegistra_1_idx` (`fk_id_usuario_registra_1` ASC),
  INDEX `fk_usuarioActualiza_61_idx` (`fk_id_usuario_actualiza_61` ASC),
  CONSTRAINT `fk_cliente_7`
    FOREIGN KEY (`fk_id_cliente_7`)
    REFERENCES `db_monely`.`clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_4`
    FOREIGN KEY (`fk_id_estado_actividad_4`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_1`
    FOREIGN KEY (`fk_id_usuario_registra_1`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_61`
    FOREIGN KEY (`fk_id_usuario_actualiza_61`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`tipo_prenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`tipo_prenda` (
  `id_tipo_prenda` INT NOT NULL AUTO_INCREMENT,
  `nombre_tipo_prenda` VARCHAR(45) NULL,
  `descripcion_tipo_prenda` VARCHAR(300) NULL,
  `fecha_registro` DATETIME NULL,
  PRIMARY KEY (`id_tipo_prenda`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`tipo_telefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`tipo_telefono` (
  `id_tipo_telefono` INT NOT NULL AUTO_INCREMENT,
  `nombre_tipo_telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_telefono`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`personas_tipoTelefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`personas_tipoTelefono` (
  `fk_id_persona_2` INT NULL,
  `fk_id_tipo_telefono_1` INT NULL,
  `numero_telefono` VARCHAR(45) NULL,
  INDEX `fk_personas_2_idx` (`fk_id_persona_2` ASC),
  INDEX `fk_tipoTelefono_1_idx` (`fk_id_tipo_telefono_1` ASC),
  CONSTRAINT `fk_personas_2`
    FOREIGN KEY (`fk_id_persona_2`)
    REFERENCES `db_monely`.`personas` (`id_persona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoTelefono_1`
    FOREIGN KEY (`fk_id_tipo_telefono_1`)
    REFERENCES `db_monely`.`tipo_telefono` (`id_tipo_telefono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`nacionalidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`nacionalidad` (
  `id_nacionalidad` INT NOT NULL AUTO_INCREMENT,
  `nombre_nacionalidad` VARCHAR(45) NULL,
  PRIMARY KEY (`id_nacionalidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`area_trabajo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`area_trabajo` (
  `id_area_trabajo` INT NOT NULL AUTO_INCREMENT,
  `nombre_area_trabajo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_area_trabajo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`empresas_empleadoras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`empresas_empleadoras` (
  `id_empleador` INT NOT NULL AUTO_INCREMENT,
  `razon_social` VARCHAR(45) NULL,
  `ruc` VARCHAR(45) NULL,
  `fecha_constitucion` DATETIME NULL,
  `tipo_contitucion` VARCHAR(45) NULL,
  `fecha_registro` DATETIME NULL,
  `fecha_actualizacion` DATETIME NULL,
  `direccion` VARCHAR(100) NULL,
  `fk_id_departamento_2` INT NULL,
  `fk_id_provincia_2` INT NULL,
  `fk_id_distrito_2` INT NULL,
  `fk_id_nacionalidad_1` INT NULL,
  `fk_id_estado_actividad_2` INT NULL,
  `fk_id_usuario_registra_42` INT NULL,
  `fk_id_usuario_actualiza_43` INT NULL,
  PRIMARY KEY (`id_empleador`),
  INDEX `fk_departamento_2_idx` (`fk_id_departamento_2` ASC),
  INDEX `fk_provincia_2_idx` (`fk_id_provincia_2` ASC),
  INDEX `fk_distrito_2_idx` (`fk_id_distrito_2` ASC),
  INDEX `fk_estaActividad_2_idx` (`fk_id_estado_actividad_2` ASC),
  INDEX `fk_usuarioRegistra_42_idx` (`fk_id_usuario_registra_42` ASC),
  INDEX `fk_usuarioActualiza_43_idx` (`fk_id_usuario_actualiza_43` ASC),
  INDEX `fk_nacionalidad_1_idx` (`fk_id_nacionalidad_1` ASC),
  CONSTRAINT `fk_departamento_2`
    FOREIGN KEY (`fk_id_departamento_2`)
    REFERENCES `db_monely`.`departamento` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_provincia_2`
    FOREIGN KEY (`fk_id_provincia_2`)
    REFERENCES `db_monely`.`provincia` (`id_provincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_distrito_2`
    FOREIGN KEY (`fk_id_distrito_2`)
    REFERENCES `db_monely`.`distrito` (`id_distrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_nacionalidad_1`
    FOREIGN KEY (`fk_id_nacionalidad_1`)
    REFERENCES `db_monely`.`paises` (`id_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estaActividad_2`
    FOREIGN KEY (`fk_id_estado_actividad_2`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_42`
    FOREIGN KEY (`fk_id_usuario_registra_42`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_43`
    FOREIGN KEY (`fk_id_usuario_actualiza_43`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`empresasEmpleadoras_tipoTelefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`empresasEmpleadoras_tipoTelefono` (
  `fk_id_empleador_1` INT NULL,
  `fk_id_tipo_telefono_2` INT NULL,
  `numero_telefono` VARCHAR(45) NULL,
  INDEX `fk_empleador_1_idx` (`fk_id_empleador_1` ASC),
  INDEX `fk_tipoTelefono_2_idx` (`fk_id_tipo_telefono_2` ASC),
  CONSTRAINT `fk_empleador_1`
    FOREIGN KEY (`fk_id_empleador_1`)
    REFERENCES `db_monely`.`empresas_empleadoras` (`id_empleador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoTelefono_2`
    FOREIGN KEY (`fk_id_tipo_telefono_2`)
    REFERENCES `db_monely`.`tipo_telefono` (`id_tipo_telefono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`trabajadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`trabajadores` (
  `id_trabajador` INT NOT NULL AUTO_INCREMENT,
  `seguro_social` VARCHAR(45) NULL,
  `grado_instruccion` VARCHAR(45) NULL,
  `especialidad_carrera` VARCHAR(45) NULL,
  `fecha_ingreso_labores` DATE NULL,
  `fecha_finaliza_labores` DATE NULL,
  `fk_id_area_trabajo_1` INT NULL,
  `fk_id_empleador_2` INT NULL,
  `fk_id_persona_3` INT NULL,
  `fk_id_usuario_registra_44` INT NULL,
  `fk_id_usuario_actualiza_45` INT NULL,
  PRIMARY KEY (`id_trabajador`),
  INDEX `fk_areaTrabajo_1_idx` (`fk_id_area_trabajo_1` ASC),
  INDEX `fk_empleador_2_idx` (`fk_id_empleador_2` ASC),
  INDEX `fk_persona_3_idx` (`fk_id_persona_3` ASC),
  INDEX `fk_usuarioRegistra_44_idx` (`fk_id_usuario_registra_44` ASC),
  INDEX `fk_usuarioActualiza_45_idx` (`fk_id_usuario_actualiza_45` ASC),
  CONSTRAINT `fk_areaTrabajo_1`
    FOREIGN KEY (`fk_id_area_trabajo_1`)
    REFERENCES `db_monely`.`area_trabajo` (`id_area_trabajo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleador_2`
    FOREIGN KEY (`fk_id_empleador_2`)
    REFERENCES `db_monely`.`empresas_empleadoras` (`id_empleador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_3`
    FOREIGN KEY (`fk_id_persona_3`)
    REFERENCES `db_monely`.`personas` (`id_persona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_44`
    FOREIGN KEY (`fk_id_usuario_registra_44`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_45`
    FOREIGN KEY (`fk_id_usuario_actualiza_45`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`tecnicas_estampado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`tecnicas_estampado` (
  `id_tecnica_estampado` INT NOT NULL AUTO_INCREMENT,
  `nombre_tecnica` VARCHAR(45) NULL,
  `descripcion_tecnica` VARCHAR(45) NULL,
  `foto_tecnica` VARCHAR(45) NULL,
  `fecha_registro_tecnica_estampado` DATETIME NULL,
  `fk_id_usuario_registra_63` INT NULL,
  `fk_id_usuario_actualiza_64` INT NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  PRIMARY KEY (`id_tecnica_estampado`),
  INDEX `fk_usuarioRegistra_63_idx` (`fk_id_usuario_registra_63` ASC),
  INDEX `fk_usuarioActualiza_64_idx` (`fk_id_usuario_actualiza_64` ASC),
  CONSTRAINT `fk_usuarioRegistra_63`
    FOREIGN KEY (`fk_id_usuario_registra_63`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_64`
    FOREIGN KEY (`fk_id_usuario_actualiza_64`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`tipoPrenda_tecnicasEstampado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`tipoPrenda_tecnicasEstampado` (
  `fk_id_tipo_prenda_1` INT NULL,
  `fk_id_tecnica_estampado_1` INT NULL,
  INDEX `fk_tipoPrenda_1_idx` (`fk_id_tipo_prenda_1` ASC),
  INDEX `fk_tecnicasEstampado_1_idx` (`fk_id_tecnica_estampado_1` ASC),
  CONSTRAINT `fk_tipoPrenda_1`
    FOREIGN KEY (`fk_id_tipo_prenda_1`)
    REFERENCES `db_monely`.`tipo_prenda` (`id_tipo_prenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tecnicasEstampado_1`
    FOREIGN KEY (`fk_id_tecnica_estampado_1`)
    REFERENCES `db_monely`.`tecnicas_estampado` (`id_tecnica_estampado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`tipo_genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`tipo_genero` (
  `id_tipo_genero` INT NOT NULL AUTO_INCREMENT,
  `genero` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_genero`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`hangtags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`hangtags` (
  `id_hangtag` INT NOT NULL AUTO_INCREMENT,
  `nombre_hangtag` VARCHAR(45) NULL,
  `imagen_hangtag` VARCHAR(100) NULL,
  `ancho_hangtag` INT NULL,
  `largo_hangtag` INT NULL,
  `descripcion_hangtag` VARCHAR(200) NULL,
  `cargar_archivo_hangtag` VARCHAR(100) NULL,
  `fecha_registro_hangtag` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_cliente_3` INT NULL,
  `fk_id_usuario_registra_53` INT NULL,
  `fk_id_usuario_actualiza_54` INT NULL,
  PRIMARY KEY (`id_hangtag`),
  INDEX `fk_cliente_3_idx` (`fk_id_cliente_3` ASC),
  INDEX `fk_usuarioRegistra_53_idx` (`fk_id_usuario_registra_53` ASC),
  INDEX `fk_usuarioActualiza_54_idx` (`fk_id_usuario_actualiza_54` ASC),
  CONSTRAINT `fk_cliente_3`
    FOREIGN KEY (`fk_id_cliente_3`)
    REFERENCES `db_monely`.`clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_53`
    FOREIGN KEY (`fk_id_usuario_registra_53`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_54`
    FOREIGN KEY (`fk_id_usuario_actualiza_54`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`estilos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`estilos` (
  `id_estilos` INT NOT NULL AUTO_INCREMENT,
  `nombre_estilo` VARCHAR(45) NULL,
  `fk_id_tipo_genero_1` INT NULL,
  `descripcion_` VARCHAR(300) NULL,
  `cantidad_prendas` INT NULL,
  `fk_id_tipo_prenda_2` INT NULL,
  `fk_id_tecnica_estampado_2` INT NULL,
  `fk_id_orden_produccion_16` INT NULL,
  `fk_id_hangtag_1` INT NULL,
  `fecha_registro` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_usuario_registra_49` INT NULL,
  `fk_id_usuario_actualiza_50` INT NULL,
  PRIMARY KEY (`id_estilos`),
  INDEX `fk_tipoGenero_1_idx` (`fk_id_tipo_genero_1` ASC),
  INDEX `fk_tipoPrenda_2_idx` (`fk_id_tipo_prenda_2` ASC),
  INDEX `fk_tecnicaEstampado_2_idx` (`fk_id_tecnica_estampado_2` ASC),
  INDEX `fk_ordenProduccio_16_idx` (`fk_id_orden_produccion_16` ASC),
  INDEX `fk_hangtag_1_idx` (`fk_id_hangtag_1` ASC),
  INDEX `fk_usuarioRegistra_49_idx` (`fk_id_usuario_registra_49` ASC),
  INDEX `fk_usuarioActualiza_50_idx` (`fk_id_usuario_actualiza_50` ASC),
  CONSTRAINT `fk_tipoGenero_1`
    FOREIGN KEY (`fk_id_tipo_genero_1`)
    REFERENCES `db_monely`.`tipo_genero` (`id_tipo_genero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoPrenda_2`
    FOREIGN KEY (`fk_id_tipo_prenda_2`)
    REFERENCES `db_monely`.`tipo_prenda` (`id_tipo_prenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tecnicaEstampado_2`
    FOREIGN KEY (`fk_id_tecnica_estampado_2`)
    REFERENCES `db_monely`.`tecnicas_estampado` (`id_tecnica_estampado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProduccio_16`
    FOREIGN KEY (`fk_id_orden_produccion_16`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_hangtag_1`
    FOREIGN KEY (`fk_id_hangtag_1`)
    REFERENCES `db_monely`.`hangtags` (`id_hangtag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_49`
    FOREIGN KEY (`fk_id_usuario_registra_49`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_50`
    FOREIGN KEY (`fk_id_usuario_actualiza_50`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `db_monely`.`tallas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`tallas` (
  `id_talla` INT NOT NULL AUTO_INCREMENT,
  `talla` VARCHAR(15) NULL,
  PRIMARY KEY (`id_talla`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`codigos_prenda_produccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`codigos_prenda_produccion` (
  `id_codigo_prenda_produccion` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(500) NULL,
  `contenido_plano_JSON` VARCHAR(500) NULL,
  `fecha_registro_codigoPrendaProduccion` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_usuario_registra_24` INT NULL,
  `fk_id_usuario_actualiza_78` INT NULL,
  `fk_id_orden_produccion_14` INT NULL,
  `fk_id_estilo_13` INT NULL,
  `fk_id_estado_actividad_24` INT NULL,
  PRIMARY KEY (`id_codigo_prenda_produccion`),
  INDEX `fk_usuario_24_idx` (`fk_id_usuario_registra_24` ASC),
  INDEX `fk_usuario_78_idx` (`fk_id_usuario_actualiza_78` ASC),
  INDEX `fk_ordenProduccion_14_idx` (`fk_id_orden_produccion_14` ASC),
  INDEX `fk_estilo_13_idx` (`fk_id_estilo_13` ASC),
  INDEX `fk_estadoActividad_24_idx` (`fk_id_estado_actividad_24` ASC),
  CONSTRAINT `fk_usuario_24`
    FOREIGN KEY (`fk_id_usuario_registra_24`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_78`
    FOREIGN KEY (`fk_id_usuario_actualiza_78`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProduccion_14`
    FOREIGN KEY (`fk_id_orden_produccion_14`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estilo_13`
    FOREIGN KEY (`fk_id_estilo_13`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_24`
    FOREIGN KEY (`fk_id_estado_actividad_24`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`estilos_tallas_codigos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`estilos_tallas_codigos` (
  `fk_id_estilo_1` INT NULL,
  `fk_id_talla_1` INT NULL,
  `fk_id_codigo_prenda_produccion_1` INT NULL,
  `curva_talla` INT NULL,
  INDEX `fk_estilos_1_idx` (`fk_id_estilo_1` ASC),
  INDEX `fk_tallas_1_idx` (`fk_id_talla_1` ASC),
  INDEX `fk_codigoPrendaProduccion_1_idx` (`fk_id_codigo_prenda_produccion_1` ASC),
  CONSTRAINT `fk_estilos_1`
    FOREIGN KEY (`fk_id_estilo_1`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tallas_1`
    FOREIGN KEY (`fk_id_talla_1`)
    REFERENCES `db_monely`.`tallas` (`id_talla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_codigoPrendaProduccion_1`
    FOREIGN KEY (`fk_id_codigo_prenda_produccion_1`)
    REFERENCES `db_monely`.`codigos_prenda_produccion` (`id_codigo_prenda_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = ucs2
COLLATE = ucs2_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`fechas_embarque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`fechas_embarque` (
  `id_fecha_embarque` INT NOT NULL AUTO_INCREMENT,
  `fecha_embarque` DATETIME NULL,
  `fk_id_orden_produccion_1` INT NULL,
  PRIMARY KEY (`id_fecha_embarque`),
  INDEX `fk_ordenProduccion_1_idx` (`fk_id_orden_produccion_1` ASC),
  CONSTRAINT `fk_ordenProduccion_1`
    FOREIGN KEY (`fk_id_orden_produccion_1`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`marcas` (
  `id_marca` INT NOT NULL AUTO_INCREMENT,
  `nombre_marca` VARCHAR(45) NULL,
  `logo_marca` VARCHAR(100) NULL,
  `fecha_registro_marca` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_usuario_registra_3` INT NULL,
  `fk_id_estado_actividad_6` INT NULL,
  `fk_id_usuario_actualiza_39` INT NULL,
  PRIMARY KEY (`id_marca`),
  INDEX `fk_usuarioRegistra_3_idx` (`fk_id_usuario_registra_3` ASC),
  INDEX `fk_estadoActivadad_6_idx` (`fk_id_estado_actividad_6` ASC),
  INDEX `fk_usuarioActualiza_39_idx` (`fk_id_usuario_actualiza_39` ASC),
  CONSTRAINT `fk_usuarioRegistra_3`
    FOREIGN KEY (`fk_id_usuario_registra_3`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActivadad_6`
    FOREIGN KEY (`fk_id_estado_actividad_6`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_39`
    FOREIGN KEY (`fk_id_usuario_actualiza_39`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`color`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`color` (
  `id_color` INT NOT NULL AUTO_INCREMENT,
  `color` VARCHAR(45) NULL,
  `codigo_hex` VARCHAR(45) NULL,
  PRIMARY KEY (`id_color`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`etiquetas_lavado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`etiquetas_lavado` (
  `id_etiqueta_lavado` INT NOT NULL AUTO_INCREMENT,
  `descripcion_etiqueta_lavado` VARCHAR(45) NULL,
  `imagen_etiqueta_lavado` VARCHAR(100) NULL,
  `ancho_etiqueta_lavado` INT NULL,
  `largo_etiqueta_lavado` INT NULL,
  `fecha_registro_etiqueta` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_tipo_genero_2` INT NULL,
  `fk_id_usuario_registra_5` INT NULL,
  `fk_id_usuario_actualiza_4` INT NULL,
  `fk_id_marca_1` INT NULL,
  `fk_id_cliente_8` INT NULL,
  `fk_id_color_1` INT NULL,
  PRIMARY KEY (`id_etiqueta_lavado`),
  INDEX `fk_tipoGenero_2_idx` (`fk_id_tipo_genero_2` ASC),
  INDEX `fk_usuarioRegistra_5_idx` (`fk_id_usuario_registra_5` ASC),
  INDEX `fk_usuarioActualiza_4_idx` (`fk_id_usuario_actualiza_4` ASC),
  INDEX `fk_marca_1_idx` (`fk_id_marca_1` ASC),
  INDEX `fk_cliente_8_idx` (`fk_id_cliente_8` ASC),
  INDEX `fk_color_1_idx` (`fk_id_color_1` ASC),
  CONSTRAINT `fk_tipoGenero_2`
    FOREIGN KEY (`fk_id_tipo_genero_2`)
    REFERENCES `db_monely`.`tipo_genero` (`id_tipo_genero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_5`
    FOREIGN KEY (`fk_id_usuario_registra_5`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_4`
    FOREIGN KEY (`fk_id_usuario_actualiza_4`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_marca_1`
    FOREIGN KEY (`fk_id_marca_1`)
    REFERENCES `db_monely`.`marcas` (`id_marca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_8`
    FOREIGN KEY (`fk_id_cliente_8`)
    REFERENCES `db_monely`.`clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_color_1`
    FOREIGN KEY (`fk_id_color_1`)
    REFERENCES `db_monely`.`color` (`id_color`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = ucs2
COLLATE = ucs2_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`control_envios_recepcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`control_envios_recepcion` (
  `id_control_envios_recepcion` INT NOT NULL AUTO_INCREMENT,
  `descripcion_` VARCHAR(500) NULL,
  `fecha_registro_quienEnvia` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_orden_produccion_18` INT NULL,
  `fk_id_usuario_queEnvia_21` INT NULL,
  `fk_id_area_trabajo_envia_2` INT NULL,
  `fk_id_usuario_queRecibe_22` INT NULL,
  `fk_id_area_trabajo_recibe_3` INT NULL,
  `fk_id_estado_actividad_producto_21` INT NULL,
  `fk_id_estado_actividad_confirmacion_22` INT NULL,
  PRIMARY KEY (`id_control_envios_recepcion`),
  INDEX `fk_ordenProduccion_8_idx` (`fk_id_orden_produccion_18` ASC),
  INDEX `fk_usuarioEnvia_21_idx` (`fk_id_usuario_queEnvia_21` ASC),
  INDEX `fk_areaTrabajoEnvia_2_idx` (`fk_id_area_trabajo_envia_2` ASC),
  INDEX `fk_usuarioQueRecibe_22_idx` (`fk_id_usuario_queRecibe_22` ASC),
  INDEX `fk_areaTrabajoRecibe_3_idx` (`fk_id_area_trabajo_recibe_3` ASC),
  INDEX `fk_estadoActividadProducto_21_idx` (`fk_id_estado_actividad_producto_21` ASC),
  INDEX `fk_estadoActividadConfirmacion_22_idx` (`fk_id_estado_actividad_confirmacion_22` ASC),
  CONSTRAINT `fk_ordenProduccion_8`
    FOREIGN KEY (`fk_id_orden_produccion_18`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioEnvia_21`
    FOREIGN KEY (`fk_id_usuario_queEnvia_21`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_areaTrabajoEnvia_2`
    FOREIGN KEY (`fk_id_area_trabajo_envia_2`)
    REFERENCES `db_monely`.`area_trabajo` (`id_area_trabajo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioQueRecibe_22`
    FOREIGN KEY (`fk_id_usuario_queRecibe_22`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_areaTrabajoRecibe_3`
    FOREIGN KEY (`fk_id_area_trabajo_recibe_3`)
    REFERENCES `db_monely`.`area_trabajo` (`id_area_trabajo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividadProducto_21`
    FOREIGN KEY (`fk_id_estado_actividad_producto_21`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividadConfirmacion_22`
    FOREIGN KEY (`fk_id_estado_actividad_confirmacion_22`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`envios_etiquetaLavado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`envios_etiquetaLavado` (
  `fk_id_control_envio_1` INT NULL,
  `fk_id_etiqueta_lavado_2` INT NULL,
  `cantidad_enviada` INT NULL,
  INDEX `fk_controlEnvio_1_idx` (`fk_id_control_envio_1` ASC),
  INDEX `fk_etiquetaLavado_2_idx` (`fk_id_etiqueta_lavado_2` ASC),
  CONSTRAINT `fk_controlEnvio_1`
    FOREIGN KEY (`fk_id_control_envio_1`)
    REFERENCES `db_monely`.`control_envios_recepcion` (`id_control_envios_recepcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_etiquetaLavado_2`
    FOREIGN KEY (`fk_id_etiqueta_lavado_2`)
    REFERENCES `db_monely`.`etiquetas_lavado` (`id_etiqueta_lavado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`etiquetaLavado_estilo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`etiquetaLavado_estilo` (
  `fk_id_estilo_2` INT NULL,
  `fk_id_etiqueta_lavado_1` INT NULL,
  INDEX `fk_estilo_2_idx` (`fk_id_estilo_2` ASC),
  INDEX `fk_etiquetaLavado_1_idx` (`fk_id_etiqueta_lavado_1` ASC),
  CONSTRAINT `fk_estilo_2`
    FOREIGN KEY (`fk_id_estilo_2`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_etiquetaLavado_1`
    FOREIGN KEY (`fk_id_etiqueta_lavado_1`)
    REFERENCES `db_monely`.`envios_etiquetaLavado` (`fk_id_control_envio_1`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`ordenProduccion_hangtags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`ordenProduccion_hangtags` (
  `fk_id_orden_produccion_2` INT NULL,
  `fk_id_hangtag_2` INT NULL,
  INDEX `fk_ordenProduccion_2_idx` (`fk_id_orden_produccion_2` ASC),
  INDEX `fk_hangtags_2_idx` (`fk_id_hangtag_2` ASC),
  CONSTRAINT `fk_ordenProduccion_2`
    FOREIGN KEY (`fk_id_orden_produccion_2`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_hangtags_2`
    FOREIGN KEY (`fk_id_hangtag_2`)
    REFERENCES `db_monely`.`hangtags` (`id_hangtag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`avios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`avios` (
  `id_avios` INT NOT NULL AUTO_INCREMENT,
  `nombre_avios` VARCHAR(45) NULL,
  `imagen_avio` VARCHAR(100) NULL,
  `fecha_registro_avio` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_cliente_2` INT NULL,
  `fk_id_usuario_registra_51` INT NULL,
  `fk_id_usuario_actualiza_52` INT NULL,
  PRIMARY KEY (`id_avios`),
  INDEX `fk_cliente_2_idx` (`fk_id_cliente_2` ASC),
  INDEX `fk_usuario_51_idx` (`fk_id_usuario_registra_51` ASC),
  INDEX `fk_usuario_52_idx` (`fk_id_usuario_actualiza_52` ASC),
  CONSTRAINT `fk_cliente_2`
    FOREIGN KEY (`fk_id_cliente_2`)
    REFERENCES `db_monely`.`clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_51`
    FOREIGN KEY (`fk_id_usuario_registra_51`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_52`
    FOREIGN KEY (`fk_id_usuario_actualiza_52`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`ordenProduccion_avios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`ordenProduccion_avios` (
  `fk_id_orden_produccion_3` INT NULL,
  `fk_id_avios_4` INT NULL,
  INDEX `fk_ordenProduccion_3_idx` (`fk_id_orden_produccion_3` ASC),
  INDEX `fk_avios_4_idx` (`fk_id_avios_4` ASC),
  CONSTRAINT `fk_ordenProduccion_3`
    FOREIGN KEY (`fk_id_orden_produccion_3`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avios_4`
    FOREIGN KEY (`fk_id_avios_4`)
    REFERENCES `db_monely`.`avios` (`id_avios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`proveedores` (
  `id_proveedor` INT NOT NULL AUTO_INCREMENT,
  `razon_social_proveedor` VARCHAR(45) NULL,
  `ruc_proveedor` VARCHAR(45) NULL,
  `rubro_proveedor` VARCHAR(45) NULL,
  `producto_servicio` VARCHAR(45) NULL,
  `fecha_registro_proveedor` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `direccion` VARCHAR(100) NULL,
  `fk_id_departamento_3` INT NULL,
  `fk_id_provincia_3` INT NULL,
  `fk_id_distrito_3` INT NULL,
  `fk_id_usuario_registra_8` INT NULL,
  `fk_id_usuario_representante_9` INT NULL,
  `fk_id_estado_actividad_8` INT NULL,
  PRIMARY KEY (`id_proveedor`),
  INDEX `fk_provincia_3_idx` (`fk_id_provincia_3` ASC),
  INDEX `fk_distrito_3_idx` (`fk_id_distrito_3` ASC),
  INDEX `fk_usuarioRepresentante_9_idx` (`fk_id_usuario_representante_9` ASC),
  INDEX `fk_usuarioRegistra_8_idx` (`fk_id_usuario_registra_8` ASC),
  INDEX `fk_estadoActividad_8_idx` (`fk_id_estado_actividad_8` ASC),
  INDEX `fk_departamento_3_idx` (`fk_id_departamento_3` ASC),
  CONSTRAINT `fk_departamento_3`
    FOREIGN KEY (`fk_id_departamento_3`)
    REFERENCES `db_monely`.`departamento` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_provincia_3`
    FOREIGN KEY (`fk_id_provincia_3`)
    REFERENCES `db_monely`.`provincia` (`id_provincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_distrito_3`
    FOREIGN KEY (`fk_id_distrito_3`)
    REFERENCES `db_monely`.`distrito` (`id_distrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_8`
    FOREIGN KEY (`fk_id_usuario_registra_8`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRepresentante_9`
    FOREIGN KEY (`fk_id_usuario_representante_9`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_8`
    FOREIGN KEY (`fk_id_estado_actividad_8`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`hangtag_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`hangtag_pedido` (
  `id_hangtag_pedido` INT NOT NULL AUTO_INCREMENT,
  `cantidad_hangtags` INT NULL,
  `observaciones_pedido_hangtag` VARCHAR(200) NULL,
  `fecha_registro_pedido` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_cliente_4` INT NULL,
  `fk_id_usuario_registra_7` INT NULL,
  `fk_id_usuario_actualiza_55` INT NULL,
  `fk_id_proveedor_1` INT NULL,
  `fk_id_hangtag_3` INT NULL,
  `fk_id_estado_actividad_7` INT NULL,
  PRIMARY KEY (`id_hangtag_pedido`),
  INDEX `fk_cliente_4_idx` (`fk_id_cliente_4` ASC),
  INDEX `fk_usuarioRegistra_7_idx` (`fk_id_usuario_registra_7` ASC),
  INDEX `fk_usuarioActualiza_55_idx` (`fk_id_usuario_actualiza_55` ASC),
  INDEX `fk_proveedor_1_idx` (`fk_id_proveedor_1` ASC),
  INDEX `fk_hangtag_3_idx` (`fk_id_hangtag_3` ASC),
  INDEX `fk_estadoActividad_7_idx` (`fk_id_estado_actividad_7` ASC),
  CONSTRAINT `fk_cliente_4`
    FOREIGN KEY (`fk_id_cliente_4`)
    REFERENCES `db_monely`.`clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_7`
    FOREIGN KEY (`fk_id_usuario_registra_7`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_55`
    FOREIGN KEY (`fk_id_usuario_actualiza_55`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proveedor_1`
    FOREIGN KEY (`fk_id_proveedor_1`)
    REFERENCES `db_monely`.`proveedores` (`id_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_hangtag_3`
    FOREIGN KEY (`fk_id_hangtag_3`)
    REFERENCES `db_monely`.`hangtags` (`id_hangtag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_7`
    FOREIGN KEY (`fk_id_estado_actividad_7`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`proveedores_tipoTelefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`proveedores_tipoTelefono` (
  `fk_id_proveedor_2` INT NULL,
  `fk_id_tipo_telefono_3` INT NULL,
  `numero_telefono` VARCHAR(45) NULL,
  INDEX `fk_proveedores_2_idx` (`fk_id_proveedor_2` ASC),
  INDEX `fk_tipoTelefono_3_idx` (`fk_id_tipo_telefono_3` ASC),
  CONSTRAINT `fk_proveedores_2`
    FOREIGN KEY (`fk_id_proveedor_2`)
    REFERENCES `db_monely`.`proveedores` (`id_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoTelefono_3`
    FOREIGN KEY (`fk_id_tipo_telefono_3`)
    REFERENCES `db_monely`.`tipo_telefono` (`id_tipo_telefono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`hangtags_proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`hangtags_proveedores` (
  `fk_id_hangtag_4` INT NULL,
  `fk_id_proveedor_3` INT NULL,
  INDEX `fk_hangtags_4_idx` (`fk_id_hangtag_4` ASC),
  INDEX `fk_proveedores_3_idx` (`fk_id_proveedor_3` ASC),
  CONSTRAINT `fk_hangtags_4`
    FOREIGN KEY (`fk_id_hangtag_4`)
    REFERENCES `db_monely`.`hangtags` (`id_hangtag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proveedores_3`
    FOREIGN KEY (`fk_id_proveedor_3`)
    REFERENCES `db_monely`.`proveedores` (`id_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`tipo_tejidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`tipo_tejidos` (
  `id_tipo_tejido` INT NOT NULL AUTO_INCREMENT,
  `tipo_tejido` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_tejido`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`tipo_telas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`tipo_telas` (
  `id_tipo_tela` INT NOT NULL,
  `tipo_tela` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_tela`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`tipo_rollo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`tipo_rollo` (
  `id_tipo_rollo` INT NOT NULL AUTO_INCREMENT,
  `tipo_rollo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_rollo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`colores_telas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`colores_telas` (
  `id_color_tela` INT NOT NULL AUTO_INCREMENT,
  `codigo_tela` VARCHAR(45) NULL,
  `partida_tela` VARCHAR(45) NULL,
  `color_tela_interno` VARCHAR(45) NULL,
  `nombre_color_tela_proveedor` VARCHAR(45) NULL,
  `porcentaje_componentes` VARCHAR(45) NULL,
  `fecha_registro_tela` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_tipo_tejido_1` INT NULL,
  `fk_id_tipo_tela_1` INT NULL,
  `fk_id_tipo_rollo_1` INT NULL,
  `fk_id_proveedor_4` INT NULL,
  `fk_id_usuario_registra_10` INT NULL,
  `fk_id_usuario_actualiza_56` INT NULL,
  `fk_id_estado_actividad_9` INT NULL,
  PRIMARY KEY (`id_color_tela`),
  INDEX `fk_tipoTejido_1_idx` (`fk_id_tipo_tejido_1` ASC),
  INDEX `fk_tipoTela_1_idx` (`fk_id_tipo_tela_1` ASC),
  INDEX `fk_tipoRollo_1_idx` (`fk_id_tipo_rollo_1` ASC),
  INDEX `fk_tipoProveedor_4_idx` (`fk_id_proveedor_4` ASC),
  INDEX `fk_usuario_10_idx` (`fk_id_usuario_registra_10` ASC),
  INDEX `fk_usuario_56_idx` (`fk_id_usuario_actualiza_56` ASC),
  INDEX `fk_estadoActividad_9_idx` (`fk_id_estado_actividad_9` ASC),
  CONSTRAINT `fk_tipoTejido_1`
    FOREIGN KEY (`fk_id_tipo_tejido_1`)
    REFERENCES `db_monely`.`tipo_tejidos` (`id_tipo_tejido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoTela_1`
    FOREIGN KEY (`fk_id_tipo_tela_1`)
    REFERENCES `db_monely`.`tipo_telas` (`id_tipo_tela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoRollo_1`
    FOREIGN KEY (`fk_id_tipo_rollo_1`)
    REFERENCES `db_monely`.`tipo_rollo` (`id_tipo_rollo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoProveedor_4`
    FOREIGN KEY (`fk_id_proveedor_4`)
    REFERENCES `db_monely`.`proveedores` (`id_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_10`
    FOREIGN KEY (`fk_id_usuario_registra_10`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_56`
    FOREIGN KEY (`fk_id_usuario_actualiza_56`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_9`
    FOREIGN KEY (`fk_id_estado_actividad_9`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`estilos_coloresTelas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`estilos_coloresTelas` (
  `fk_id_estilo_3` INT NULL,
  `fk_id_color_tela_1` INT NULL,
  INDEX `fk_estilos_3_idx` (`fk_id_estilo_3` ASC),
  INDEX `fk_coloresTelas_1_idx` (`fk_id_color_tela_1` ASC),
  CONSTRAINT `fk_estilos_3`
    FOREIGN KEY (`fk_id_estilo_3`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_coloresTelas_1`
    FOREIGN KEY (`fk_id_color_tela_1`)
    REFERENCES `db_monely`.`colores_telas` (`id_color_tela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`colores_rip`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`colores_rip` (
  `id_color_rip` INT NOT NULL AUTO_INCREMENT COMMENT '	',
  `codigo_rip` VARCHAR(45) NULL,
  `partida_rip` VARCHAR(45) NULL,
  `nombrecolor_rip_interno` VARCHAR(45) NULL,
  `nombreColor_rip_proveedor` VARCHAR(45) NULL,
  `porcentaje_componentes` VARCHAR(45) NULL,
  `fecha_registro_rip` DATETIME NULL,
  `fecha_actualizacion` DATETIME NULL,
  `fk_id_tipo_tejido_2` INT NULL,
  `fk_id_tipo_rip_tela_2` INT NULL,
  `fk_id_tipo_rollo_2` INT NULL,
  `fk_id_proveedor_5` INT NULL,
  `fk_id_usuario_registra_11` INT NULL,
  `fk_id_usuario_actualiza_57` INT NULL,
  `fk_id_estado_actividad_10` INT NULL,
  PRIMARY KEY (`id_color_rip`),
  INDEX `fk_tipoTejido_2_idx` (`fk_id_tipo_tejido_2` ASC),
  INDEX `fk_tipoRollo_2_idx` (`fk_id_tipo_rollo_2` ASC),
  INDEX `fk_proveedor_5_idx` (`fk_id_proveedor_5` ASC),
  INDEX `fk_usuario_11_idx` (`fk_id_usuario_registra_11` ASC),
  INDEX `fk_usuario_57_idx` (`fk_id_usuario_actualiza_57` ASC),
  INDEX `fk_estadoActividad_10_idx` (`fk_id_estado_actividad_10` ASC),
  CONSTRAINT `fk_tipoTejido_2`
    FOREIGN KEY (`fk_id_tipo_tejido_2`)
    REFERENCES `db_monely`.`tipo_tejidos` (`id_tipo_tejido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoRipTela_2`
    FOREIGN KEY (`fk_id_tipo_rip_tela_2`)
    REFERENCES `db_monely`.`tipo_telas` (`id_tipo_tela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoRollo_2`
    FOREIGN KEY (`fk_id_tipo_rollo_2`)
    REFERENCES `db_monely`.`tipo_rollo` (`id_tipo_rollo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proveedor_5`
    FOREIGN KEY (`fk_id_proveedor_5`)
    REFERENCES `db_monely`.`proveedores` (`id_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_11`
    FOREIGN KEY (`fk_id_usuario_registra_11`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_57`
    FOREIGN KEY (`fk_id_usuario_actualiza_57`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_10`
    FOREIGN KEY (`fk_id_estado_actividad_10`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`estilos_coloresRip`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`estilos_coloresRip` (
  `fk_id_estilo_4` INT NULL,
  `fk_id_color_rip_1` INT NULL,
  INDEX `fk_estilos_4_idx` (`fk_id_estilo_4` ASC),
  INDEX `fk_colorRip_1_idx` (`fk_id_color_rip_1` ASC),
  CONSTRAINT `fk_estilos_4`
    FOREIGN KEY (`fk_id_estilo_4`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_colorRip_1`
    FOREIGN KEY (`fk_id_color_rip_1`)
    REFERENCES `db_monely`.`colores_rip` (`id_color_rip`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`ordenes_guias_cortes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`ordenes_guias_cortes` (
  `id_orden_guia_corte` INT NOT NULL AUTO_INCREMENT,
  `numero_guia` INT NULL,
  `descripcion_orden_guia_corte` VARCHAR(500) NULL,
  `fecha_registro_guia_corte` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_usuario_registra_13` INT NULL,
  `fk_id_usuario_actualiza_59` INT NULL,
  `fk_id_estado_actividad_12` INT NULL,
  PRIMARY KEY (`id_orden_guia_corte`),
  INDEX `fk_usuarioRegistra_13_idx` (`fk_id_usuario_registra_13` ASC),
  INDEX `fk_estadoActividad_12_idx` (`fk_id_estado_actividad_12` ASC),
  INDEX `fk_usuarioActualiza_59_idx` (`fk_id_usuario_actualiza_59` ASC),
  CONSTRAINT `fk_usuarioRegistra_13`
    FOREIGN KEY (`fk_id_usuario_registra_13`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_59`
    FOREIGN KEY (`fk_id_usuario_actualiza_59`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_12`
    FOREIGN KEY (`fk_id_estado_actividad_12`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`pedido_telas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`pedido_telas` (
  `id_pedido_tela` INT NOT NULL AUTO_INCREMENT,
  `consumo_prenda` INT NULL,
  `pedido_rollo` INT NULL,
  `fecha_llegada_almacen_tela` DATETIME NULL,
  `fecha_registro_pedido` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `observaciones_pedido_tela` VARCHAR(500) NULL,
  `fk_id_usuario_registra_12` INT NULL,
  `fk_id_usuario_actualiza_58` INT NULL,
  `fk_id_estilo_14` INT NULL,
  `fk_id_orden_produccion_4` INT NULL,
  `fk_id_orden_guia_corte_2` INT NULL,
  `fk_id_estado_actividad_11` INT NULL,
  PRIMARY KEY (`id_pedido_tela`),
  INDEX `fk_usuarioRegistro_12_idx` (`fk_id_usuario_registra_12` ASC),
  INDEX `fk_ordenProduccion_4_idx` (`fk_id_orden_produccion_4` ASC),
  INDEX `fk_estilo_14_idx` (`fk_id_estilo_14` ASC),
  INDEX `fk_estadoActividad_11_idx` (`fk_id_estado_actividad_11` ASC),
  INDEX `fk_usuarioActualiza_58_idx` (`fk_id_usuario_actualiza_58` ASC),
  INDEX `fk_ordenGuiaCorte_2_idx` (`fk_id_orden_guia_corte_2` ASC),
  CONSTRAINT `fk_usuarioRegistro_12`
    FOREIGN KEY (`fk_id_usuario_registra_12`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_58`
    FOREIGN KEY (`fk_id_usuario_actualiza_58`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProduccion_4`
    FOREIGN KEY (`fk_id_orden_produccion_4`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenGuiaCorte_2`
    FOREIGN KEY (`fk_id_orden_guia_corte_2`)
    REFERENCES `db_monely`.`ordenes_guias_cortes` (`id_orden_guia_corte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estilo_14`
    FOREIGN KEY (`fk_id_estilo_14`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_11`
    FOREIGN KEY (`fk_id_estado_actividad_11`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`ordenesGuias_ordenesProduccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`ordenesGuias_ordenesProduccion` (
  `fk_id_orden_guia_corte_1` INT NULL,
  `fk_id_orden_produccion_17` INT NULL,
  `numero_ordinal_asignado` INT NULL,
  `fecha_registro_creacion` DATETIME NULL,
  INDEX `fk_ordeneGuiaCorte_1_idx` (`fk_id_orden_guia_corte_1` ASC),
  INDEX `fk_ordenesProduccion_17_idx` (`fk_id_orden_produccion_17` ASC),
  CONSTRAINT `fk_ordeneGuiaCorte_1`
    FOREIGN KEY (`fk_id_orden_guia_corte_1`)
    REFERENCES `db_monely`.`ordenes_guias_cortes` (`id_orden_guia_corte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenesProduccion_17`
    FOREIGN KEY (`fk_id_orden_produccion_17`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`mesa_tendido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`mesa_tendido` (
  `id_mesa_tendido` INT NOT NULL AUTO_INCREMENT,
  `nombre_mesa` VARCHAR(45) NULL,
  PRIMARY KEY (`id_mesa_tendido`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`corte_orden_telas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`corte_orden_telas` (
  `id_corte_orden_tela` INT NOT NULL AUTO_INCREMENT,
  `capas_minimas` INT NULL,
  `capas_maximas` INT NULL,
  `corte_fallados` INT NULL,
  `ancho_rollo_tendido` INT NULL,
  `largo_rollo_tendido` INT NULL,
  `observaciones_` VARCHAR(500) NULL,
  `fecha_ingreso_corteOrdenTela` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_tipo_rollo_3` INT NULL,
  `fk_id_mesa_tendido_1` INT NULL,
  `fk_id_estilo_5` INT NULL,
  `fk_id_orden_produccion_5` INT NULL,
  `fk_id_orden_guia_corte_3` INT NULL,
  `fk_id_usuario_registra_14` INT NULL,
  `fk_id_usuario_actualiza_60` INT NULL,
  `fk_id_estado_actividad_13` INT NULL,
  PRIMARY KEY (`id_corte_orden_tela`),
  INDEX `fk_aparienciaRollo_3_idx` (`fk_id_tipo_rollo_3` ASC),
  INDEX `fk_mesaTendido_1_idx` (`fk_id_mesa_tendido_1` ASC),
  INDEX `fk_estilo_5_idx` (`fk_id_estilo_5` ASC),
  INDEX `fk_ordenProduccion__5_idx` (`fk_id_orden_produccion_5` ASC),
  INDEX `fk_ordenGuiaCorte_3_idx` (`fk_id_orden_guia_corte_3` ASC),
  INDEX `fk_usuarioRegistra_14_idx` (`fk_id_usuario_registra_14` ASC),
  INDEX `fk_usuarioActualiza_60_idx` (`fk_id_usuario_actualiza_60` ASC),
  INDEX `fk_estadoActividad_13_idx` (`fk_id_estado_actividad_13` ASC),
  CONSTRAINT `fk_aparienciaRollo_3`
    FOREIGN KEY (`fk_id_tipo_rollo_3`)
    REFERENCES `db_monely`.`tipo_rollo` (`id_tipo_rollo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mesaTendido_1`
    FOREIGN KEY (`fk_id_mesa_tendido_1`)
    REFERENCES `db_monely`.`mesa_tendido` (`id_mesa_tendido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estilo_5`
    FOREIGN KEY (`fk_id_estilo_5`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProduccion__5`
    FOREIGN KEY (`fk_id_orden_produccion_5`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenGuiaCorte_3`
    FOREIGN KEY (`fk_id_orden_guia_corte_3`)
    REFERENCES `db_monely`.`ordenes_guias_cortes` (`id_orden_guia_corte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_14`
    FOREIGN KEY (`fk_id_usuario_registra_14`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_60`
    FOREIGN KEY (`fk_id_usuario_actualiza_60`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_13`
    FOREIGN KEY (`fk_id_estado_actividad_13`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`corteTelas_tallas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`corteTelas_tallas` (
  `fk_id_corte_orden_tela_1` INT NULL,
  `fk_id_talla_2` INT NULL,
  `cantidad` INT NULL,
  INDEX `fk_corteTelas_1_idx` (`fk_id_corte_orden_tela_1` ASC),
  INDEX `fk_tallas_2_idx` (`fk_id_talla_2` ASC),
  CONSTRAINT `fk_corteOrdenTelas_1`
    FOREIGN KEY (`fk_id_corte_orden_tela_1`)
    REFERENCES `db_monely`.`colores_telas` (`id_color_tela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tallas_2`
    FOREIGN KEY (`fk_id_talla_2`)
    REFERENCES `db_monely`.`tallas` (`id_talla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`impresoras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`impresoras` (
  `id_impresora` INT NOT NULL AUTO_INCREMENT,
  `tipo_impresora` VARCHAR(45) NULL,
  `marca_impresora` VARCHAR(45) NULL,
  `serie_impresora` VARCHAR(45) NULL,
  `formato_impresion` VARCHAR(45) NULL,
  `ancho_bandeja` INT NULL,
  `material_impresion` VARCHAR(45) NULL,
  `tipo_impresion` VARCHAR(45) NULL,
  `descripcion` VARCHAR(230) NULL,
  `fecha_compra` DATETIME NULL,
  `fk_id_estado_actividad_25` INT NULL,
  PRIMARY KEY (`id_impresora`),
  INDEX `fk_estadoActividad_25_idx` (`fk_id_estado_actividad_25` ASC),
  CONSTRAINT `fk_estadoActividad_25`
    FOREIGN KEY (`fk_id_estado_actividad_25`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`diseno_micas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`diseno_micas` (
  `id_diseno_mica` INT NOT NULL AUTO_INCREMENT,
  `nombre_referencia_diseno` VARCHAR(45) NULL,
  `colores_separacion` INT NULL,
  `lineaje_impresion` VARCHAR(4) NULL,
  `ancho_mica_usada_impresion` INT NULL,
  `largo_mica_usada_impresion` INT NULL,
  `veces_de_impresiones` INT NULL,
  `imagen_diseno` VARCHAR(100) NULL,
  `cambios_para_produccion` VARCHAR(500) NULL,
  `observaciones_diesno` VARCHAR(500) NULL,
  `fecha_impresion` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_usuario_registra_62` INT NULL,
  `fk_id_usuario_actualiza_68` INT NULL,
  `fk_id_impresora_1` INT NULL,
  `fk_id_orden_produccion_6` INT NULL,
  `fk_id_estilo_6` INT NULL,
  `fk_id_estado_actividad_14` INT NULL,
  PRIMARY KEY (`id_diseno_mica`),
  INDEX `fk_usuarioRegistra_62_idx` (`fk_id_usuario_registra_62` ASC),
  INDEX `fk_usuarioActualiza_68_idx` (`fk_id_usuario_actualiza_68` ASC),
  INDEX `fk_impresora_1_idx` (`fk_id_impresora_1` ASC),
  INDEX `fk_ordenProduccion_6_idx` (`fk_id_orden_produccion_6` ASC),
  INDEX `fk_estilo_6_idx` (`fk_id_estilo_6` ASC),
  INDEX `fk_estadoActividad_14_idx` (`fk_id_estado_actividad_14` ASC),
  CONSTRAINT `fk_usuarioRegistra_62`
    FOREIGN KEY (`fk_id_usuario_registra_62`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_68`
    FOREIGN KEY (`fk_id_usuario_actualiza_68`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_impresora_1`
    FOREIGN KEY (`fk_id_impresora_1`)
    REFERENCES `db_monely`.`impresoras` (`id_impresora`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProduccion_6`
    FOREIGN KEY (`fk_id_orden_produccion_6`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estilo_6`
    FOREIGN KEY (`fk_id_estilo_6`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_14`
    FOREIGN KEY (`fk_id_estado_actividad_14`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`etiquetas_estampadas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`etiquetas_estampadas` (
  `id_etiqueta_estampada` INT NOT NULL AUTO_INCREMENT,
  `descripcion_etiqueta` VARCHAR(45) NULL,
  `imagen_etiqueta_estampada` VARCHAR(45) NULL,
  `ancho_etiqueta` INT NULL,
  `largo_etiqueta` INT NULL,
  `fecha_registro_etiqueta` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_tipo_genero_3` INT NULL,
  `fk_id_usuario_registra_69` INT NULL,
  `fk_id_usuario_actualiza_70` INT NULL,
  `fk_id_marca_2` INT NULL,
  `fk_id_cliente_9` INT NULL,
  `fk_id_color_2` INT NULL,
  PRIMARY KEY (`id_etiqueta_estampada`),
  INDEX `fk_tipoGnero_3_idx` (`fk_id_tipo_genero_3` ASC),
  INDEX `fk_usuarioRegistra_69_idx` (`fk_id_usuario_registra_69` ASC),
  INDEX `fk_usuarioActualiza_70_idx` (`fk_id_usuario_actualiza_70` ASC),
  INDEX `fk_marca_2_idx` (`fk_id_marca_2` ASC),
  INDEX `fk_cliente_9_idx` (`fk_id_cliente_9` ASC),
  INDEX `fk_color_2_idx` (`fk_id_color_2` ASC),
  CONSTRAINT `fk_tipoGnero_3`
    FOREIGN KEY (`fk_id_tipo_genero_3`)
    REFERENCES `db_monely`.`tipo_genero` (`id_tipo_genero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_69`
    FOREIGN KEY (`fk_id_usuario_registra_69`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_70`
    FOREIGN KEY (`fk_id_usuario_actualiza_70`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_marca_2`
    FOREIGN KEY (`fk_id_marca_2`)
    REFERENCES `db_monely`.`marcas` (`id_marca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_9`
    FOREIGN KEY (`fk_id_cliente_9`)
    REFERENCES `db_monely`.`clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_color_2`
    FOREIGN KEY (`fk_id_color_2`)
    REFERENCES `db_monely`.`color` (`id_color`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`maquinas_estampado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`maquinas_estampado` (
  `id_maquinas_estampado` INT NOT NULL AUTO_INCREMENT,
  `nombre_maquina` VARCHAR(45) NULL,
  `descripcion_maquina` VARCHAR(45) NULL,
  `produccion_aprox_dia` VARCHAR(45) NULL,
  `brazos_maquina` INT NULL,
  `ancho_plato` INT NULL,
  `largo_plato` INT NULL,
  `fecha_registro_maquina` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_usuario_registra_71` INT NULL,
  `fk_id_usuario_actualiza_72` INT NULL,
  `fk_id_estado_actividad_16` INT NULL,
  PRIMARY KEY (`id_maquinas_estampado`),
  INDEX `fk_usuarioRegistra_71_idx` (`fk_id_usuario_registra_71` ASC),
  INDEX `fk_usuarioActualiza_72_idx` (`fk_id_usuario_actualiza_72` ASC),
  INDEX `fk_estadoActividad_16_idx` (`fk_id_estado_actividad_16` ASC),
  CONSTRAINT `fk_usuarioRegistra_71`
    FOREIGN KEY (`fk_id_usuario_registra_71`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_72`
    FOREIGN KEY (`fk_id_usuario_actualiza_72`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_16`
    FOREIGN KEY (`fk_id_estado_actividad_16`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`patronaje_moldes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`patronaje_moldes` (
  `id_patronaje_molde` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(500) NULL,
  `fecha_registro_patronaje` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_usuario_registra_23` INT NULL,
  `fk_id_orden_guia_corte_4` INT NULL,
  `fk_id_orden_produccion_11` INT NULL,
  `fk_id_estilo_11` INT NULL,
  `fk_id_etiqueta_lavado_3` INT NULL,
  `fk_id_etiqueta_estampada_2` INT NULL,
  `fk_id_tipo_prenda_3` INT NULL,
  `fk_id_cliente_6` INT NULL,
  `fk_id_pais_1` INT NULL,
  `fk_id_marca_3` INT NULL,
  `fk_id_usuario_actualiza_78` INT NULL,
  `fk_id_estado_actividad_producto_23` INT NULL,
  PRIMARY KEY (`id_patronaje_molde`),
  INDEX `fk_usuarioRegistra_23_idx` (`fk_id_usuario_registra_23` ASC),
  INDEX `fk_ordenGuiaCorte_4_idx` (`fk_id_orden_guia_corte_4` ASC),
  INDEX `fk_ordenProduccion_11_idx` (`fk_id_orden_produccion_11` ASC),
  INDEX `fk_estilo_11_idx` (`fk_id_estilo_11` ASC),
  INDEX `fk_etiquetaLavado_3_idx` (`fk_id_etiqueta_lavado_3` ASC),
  INDEX `fk_etiquetaEstampada_2_idx` (`fk_id_etiqueta_estampada_2` ASC),
  INDEX `fk_tipoPrenda_3_idx` (`fk_id_tipo_prenda_3` ASC),
  INDEX `fk_cliente_6_idx` (`fk_id_cliente_6` ASC),
  INDEX `fk_pais_1_idx` (`fk_id_pais_1` ASC),
  INDEX `fk_marca_3_idx` (`fk_id_marca_3` ASC),
  INDEX `fk_usuarioActualiza_78_idx` (`fk_id_usuario_actualiza_78` ASC),
  INDEX `fk_estadoActividad_23_idx` (`fk_id_estado_actividad_producto_23` ASC),
  CONSTRAINT `fk_usuarioRegistra_23`
    FOREIGN KEY (`fk_id_usuario_registra_23`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenGuiaCorte_4`
    FOREIGN KEY (`fk_id_orden_guia_corte_4`)
    REFERENCES `db_monely`.`ordenes_guias_cortes` (`id_orden_guia_corte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProduccion_11`
    FOREIGN KEY (`fk_id_orden_produccion_11`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estilo_11`
    FOREIGN KEY (`fk_id_estilo_11`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_etiquetaLavado_3`
    FOREIGN KEY (`fk_id_etiqueta_lavado_3`)
    REFERENCES `db_monely`.`etiquetas_lavado` (`id_etiqueta_lavado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_etiquetaEstampada_2`
    FOREIGN KEY (`fk_id_etiqueta_estampada_2`)
    REFERENCES `db_monely`.`etiquetas_estampadas` (`id_etiqueta_estampada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoPrenda_3`
    FOREIGN KEY (`fk_id_tipo_prenda_3`)
    REFERENCES `db_monely`.`tipo_prenda` (`id_tipo_prenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_6`
    FOREIGN KEY (`fk_id_cliente_6`)
    REFERENCES `db_monely`.`clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pais_1`
    FOREIGN KEY (`fk_id_pais_1`)
    REFERENCES `db_monely`.`paises` (`id_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_marca_3`
    FOREIGN KEY (`fk_id_marca_3`)
    REFERENCES `db_monely`.`marcas` (`id_marca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_78`
    FOREIGN KEY (`fk_id_usuario_actualiza_78`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_23`
    FOREIGN KEY (`fk_id_estado_actividad_producto_23`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`revelado_estampado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`revelado_estampado` (
  `id_revelado_estampado` INT NOT NULL AUTO_INCREMENT,
  `cantidad_cuadros` INT NULL,
  `emulsion_usada_kg` INT NULL,
  `fecha_registro_revelado` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_maquina_estampado_1` INT NULL,
  `fk_id_estilo_7` INT NULL,
  `fk_id_diseno_mica_1` INT NULL,
  `fk_id_patronaje_molde_1` INT NULL,
  `fk_id_orden_produccion_7` INT NULL,
  `fk_id_etiqueta_estampada_1` INT NULL,
  `fk_id_estado_actividad_17` INT NULL,
  `fk_id_usuario_registra_17` INT NULL,
  `fk_id_usuario_actualiza_73` INT NULL,
  PRIMARY KEY (`id_revelado_estampado`),
  INDEX `fk_maquinaEstampado_1_idx` (`fk_id_maquina_estampado_1` ASC),
  INDEX `fk_estilo_7_idx` (`fk_id_estilo_7` ASC),
  INDEX `fk_disenoMica_1_idx` (`fk_id_diseno_mica_1` ASC),
  INDEX `fk_patronajeMolde_1_idx` (`fk_id_patronaje_molde_1` ASC),
  INDEX `fk_ordenProduccion_7_idx` (`fk_id_orden_produccion_7` ASC),
  INDEX `fk_etiquetaEstampada_1_idx` (`fk_id_etiqueta_estampada_1` ASC),
  INDEX `fk_estadoActividad_17_idx` (`fk_id_estado_actividad_17` ASC),
  INDEX `fk_usuarioRegistra_17_idx` (`fk_id_usuario_registra_17` ASC),
  INDEX `fk_usuarioActualiza_73_idx` (`fk_id_usuario_actualiza_73` ASC),
  CONSTRAINT `fk_maquinaEstampado_1`
    FOREIGN KEY (`fk_id_maquina_estampado_1`)
    REFERENCES `db_monely`.`maquinas_estampado` (`id_maquinas_estampado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estilo_7`
    FOREIGN KEY (`fk_id_estilo_7`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disenoMica_1`
    FOREIGN KEY (`fk_id_diseno_mica_1`)
    REFERENCES `db_monely`.`diseno_micas` (`id_diseno_mica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patronajeMolde_1`
    FOREIGN KEY (`fk_id_patronaje_molde_1`)
    REFERENCES `db_monely`.`patronaje_moldes` (`id_patronaje_molde`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProduccion_7`
    FOREIGN KEY (`fk_id_orden_produccion_7`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_etiquetaEstampada_1`
    FOREIGN KEY (`fk_id_etiqueta_estampada_1`)
    REFERENCES `db_monely`.`etiquetas_estampadas` (`id_etiqueta_estampada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_17`
    FOREIGN KEY (`fk_id_estado_actividad_17`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_17`
    FOREIGN KEY (`fk_id_usuario_registra_17`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_73`
    FOREIGN KEY (`fk_id_usuario_actualiza_73`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`muestras_estampado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`muestras_estampado` (
  `id_muestras_estampado` INT NOT NULL AUTO_INCREMENT,
  `comentarios_muestra` VARCHAR(500) NULL,
  `imagen_muestra` VARCHAR(100) NULL,
  `fecha_registro_muestra` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_estilo_8` INT NULL,
  `fk_id_patronaje_molde_2` INT NULL,
  `fk_id_usuario_registra_74` INT NULL,
  `fk_id_usuario_actualiza_75` INT NULL,
  `fk_id_estado_actividad_18` INT NULL,
  PRIMARY KEY (`id_muestras_estampado`),
  INDEX `fk_estilo_8_idx` (`fk_id_estilo_8` ASC),
  INDEX `fk_patronajeMolde_2_idx` (`fk_id_patronaje_molde_2` ASC),
  INDEX `fk_usuarioRegistra_74_idx` (`fk_id_usuario_registra_74` ASC),
  INDEX `fk_usuarioActualiza_75_idx` (`fk_id_usuario_actualiza_75` ASC),
  INDEX `fk_estadoActividad_18_idx` (`fk_id_estado_actividad_18` ASC),
  CONSTRAINT `fk_estilo_8`
    FOREIGN KEY (`fk_id_estilo_8`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patronajeMolde_2`
    FOREIGN KEY (`fk_id_patronaje_molde_2`)
    REFERENCES `db_monely`.`patronaje_moldes` (`id_patronaje_molde`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_74`
    FOREIGN KEY (`fk_id_usuario_registra_74`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_75`
    FOREIGN KEY (`fk_id_usuario_actualiza_75`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_18`
    FOREIGN KEY (`fk_id_estado_actividad_18`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`planchado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`planchado` (
  `id_planchado` INT NOT NULL AUTO_INCREMENT,
  `cantidad_planchado` INT NULL,
  `temperatura_plancha` VARCHAR(45) NULL,
  `tiempo_plancha` VARCHAR(45) NULL,
  `material_paraPlanchar` VARCHAR(45) NULL,
  `observaciones` VARCHAR(200) NULL,
  `fk_id_estilo_9` INT NULL,
  `fk_id_orden_produccion_9` INT NULL,
  `fk_id_patronaje_molde_3` INT NULL,
  `fk_id_usuario_registra_75` INT NULL,
  `fk_id_usuario_actualiza_76` INT NULL,
  `fk_id_estado_actividad_19` INT NULL,
  PRIMARY KEY (`id_planchado`),
  INDEX `fk_estilo_9_idx` (`fk_id_estilo_9` ASC),
  INDEX `fk_patronajeMolde_3_idx` (`fk_id_patronaje_molde_3` ASC),
  INDEX `fk_usuarioRegistra_75_idx` (`fk_id_usuario_registra_75` ASC),
  INDEX `fk_usuarioActualiza_76_idx` (`fk_id_usuario_actualiza_76` ASC),
  INDEX `fk_estadoActividad_19_idx` (`fk_id_estado_actividad_19` ASC),
  INDEX `fk_odenProduccion_9_idx` (`fk_id_orden_produccion_9` ASC),
  CONSTRAINT `fk_estilo_9`
    FOREIGN KEY (`fk_id_estilo_9`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_odenProduccion_9`
    FOREIGN KEY (`fk_id_orden_produccion_9`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patronajeMolde_3`
    FOREIGN KEY (`fk_id_patronaje_molde_3`)
    REFERENCES `db_monely`.`patronaje_moldes` (`id_patronaje_molde`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioRegistra_75`
    FOREIGN KEY (`fk_id_usuario_registra_75`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_76`
    FOREIGN KEY (`fk_id_usuario_actualiza_76`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_19`
    FOREIGN KEY (`fk_id_estado_actividad_19`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`nivel_prioridad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`nivel_prioridad` (
  `id_nivel_prioridad` INT NOT NULL AUTO_INCREMENT,
  `nivel_prioridad` VARCHAR(20) NULL,
  PRIMARY KEY (`id_nivel_prioridad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`orden_estampado_programacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`orden_estampado_programacion` (
  `id_orden_estampado_programacion` INT NOT NULL AUTO_INCREMENT,
  `observaciones_programacion` VARCHAR(500) NULL,
  `fecha_registro_programacion` DATETIME NULL,
  `fk_id_nivel_prioridad` INT NULL,
  `fk_id_estilo_10` INT NULL,
  `fk_id_maquina_estampado_2` INT NULL,
  `fk_id_estado_actividad_20` INT NULL,
  PRIMARY KEY (`id_orden_estampado_programacion`),
  INDEX `fk_estilo_10_idx` (`fk_id_estilo_10` ASC),
  INDEX `fk_nivel_prioridad_1_idx` (`fk_id_nivel_prioridad` ASC),
  INDEX `fk_maquinaEstampado_2_idx` (`fk_id_maquina_estampado_2` ASC),
  INDEX `fk_estadoActividad_20_idx` (`fk_id_estado_actividad_20` ASC),
  CONSTRAINT `fk_estilo_10`
    FOREIGN KEY (`fk_id_estilo_10`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_nivel_prioridad_1`
    FOREIGN KEY (`fk_id_nivel_prioridad`)
    REFERENCES `db_monely`.`nivel_prioridad` (`id_nivel_prioridad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_maquinaEstampado_2`
    FOREIGN KEY (`fk_id_maquina_estampado_2`)
    REFERENCES `db_monely`.`maquinas_estampado` (`id_maquinas_estampado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estadoActividad_20`
    FOREIGN KEY (`fk_id_estado_actividad_20`)
    REFERENCES `db_monely`.`estados_actividad` (`id_estados_actividad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`programacion_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`programacion_usuario` (
  `fk_id_orden_estampado_programacion_2` INT NULL,
  `fk_id_usuarioActualiza_19` INT NULL,
  `fecha_hora_inicio` DATETIME NULL,
  `fecha_hora_fin` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  INDEX `fk_ordenEstampadoProgramacion_2_idx` (`fk_id_orden_estampado_programacion_2` ASC),
  INDEX `fk_usuarioActualiza_19_idx` (`fk_id_usuarioActualiza_19` ASC),
  CONSTRAINT `fk_ordenEstampadoProgramacion_2`
    FOREIGN KEY (`fk_id_orden_estampado_programacion_2`)
    REFERENCES `db_monely`.`orden_estampado_programacion` (`id_orden_estampado_programacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarioActualiza_19`
    FOREIGN KEY (`fk_id_usuarioActualiza_19`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`envios_avios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`envios_avios` (
  `fk_id_control_envio_2` INT NULL,
  `fk_id_avios_2` INT NULL,
  `cantidad_enviada` INT NULL,
  INDEX `fk_controlEnvios_2_idx` (`fk_id_control_envio_2` ASC),
  INDEX `fk_avios_2_idx` (`fk_id_avios_2` ASC),
  CONSTRAINT `fk_controlEnvios_2`
    FOREIGN KEY (`fk_id_control_envio_2`)
    REFERENCES `db_monely`.`control_envios_recepcion` (`id_control_envios_recepcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avios_2`
    FOREIGN KEY (`fk_id_avios_2`)
    REFERENCES `db_monely`.`avios` (`id_avios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`envios_hangtags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`envios_hangtags` (
  `fk_id_control_envio_3` INT NULL,
  `fk_id_hangtag_5` INT NULL,
  `cantidad_enviada` INT NULL,
  INDEX `fk_controlEnvio_3_idx` (`fk_id_control_envio_3` ASC),
  INDEX `fk_hangtags_5_idx` (`fk_id_hangtag_5` ASC),
  CONSTRAINT `fk_controlEnvio_3`
    FOREIGN KEY (`fk_id_control_envio_3`)
    REFERENCES `db_monely`.`control_envios_recepcion` (`id_control_envios_recepcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_hangtags_5`
    FOREIGN KEY (`fk_id_hangtag_5`)
    REFERENCES `db_monely`.`hangtags` (`id_hangtag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`envios_corteOrdenTela`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`envios_corteOrdenTela` (
  `fk_id_control_envio_4` INT NULL,
  `fk_id_corte_orden_tela_2` INT NULL,
  `fk_id_patronaje_molde_4` INT NULL,
  `cantidad_enviada` INT NULL,
  INDEX `fk_controlEnvio_4_idx` (`fk_id_control_envio_4` ASC),
  INDEX `fk_corteOrdenTela_2_idx` (`fk_id_corte_orden_tela_2` ASC),
  INDEX `fk_patronajeMolde_4_idx` (`fk_id_patronaje_molde_4` ASC),
  CONSTRAINT `fk_controlEnvio_4`
    FOREIGN KEY (`fk_id_control_envio_4`)
    REFERENCES `db_monely`.`control_envios_recepcion` (`id_control_envios_recepcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_corteOrdenTela_2`
    FOREIGN KEY (`fk_id_corte_orden_tela_2`)
    REFERENCES `db_monely`.`corte_orden_telas` (`id_corte_orden_tela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patronajeMolde_4`
    FOREIGN KEY (`fk_id_patronaje_molde_4`)
    REFERENCES `db_monely`.`patronaje_moldes` (`id_patronaje_molde`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`envios_disenoMicas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`envios_disenoMicas` (
  `fk_id_control_envio_5` INT NULL,
  `fk_id_diseno_mica_2` INT NULL,
  `cantidad_enviada` INT NULL,
  INDEX `fk_controlEnvio_5_idx` (`fk_id_control_envio_5` ASC),
  INDEX `fk_disenoMica_5_idx` (`fk_id_diseno_mica_2` ASC),
  CONSTRAINT `fk_controlEnvio_5`
    FOREIGN KEY (`fk_id_control_envio_5`)
    REFERENCES `db_monely`.`control_envios_recepcion` (`id_control_envios_recepcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disenoMica_5`
    FOREIGN KEY (`fk_id_diseno_mica_2`)
    REFERENCES `db_monely`.`diseno_micas` (`id_diseno_mica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`envios_reveladoEstampado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`envios_reveladoEstampado` (
  `fk_id_control_envio_6` INT NULL,
  `fk_id_revelado_estampado_1` INT NULL,
  `cantidad_enviada` INT NULL,
  INDEX `fk_controlEnvio_6_idx` (`fk_id_control_envio_6` ASC),
  INDEX `fk_reveladoEstampado_1_idx` (`fk_id_revelado_estampado_1` ASC),
  CONSTRAINT `fk_controlEnvio_6`
    FOREIGN KEY (`fk_id_control_envio_6`)
    REFERENCES `db_monely`.`control_envios_recepcion` (`id_control_envios_recepcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reveladoEstampado_1`
    FOREIGN KEY (`fk_id_revelado_estampado_1`)
    REFERENCES `db_monely`.`revelado_estampado` (`id_revelado_estampado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`envios_muestraEstampado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`envios_muestraEstampado` (
  `fk_id_control_envio_7` INT NULL,
  `fk_id_muestra_estampado_2` INT NULL,
  `cantidad_enviada` INT NULL,
  INDEX `fk_controlEnvio_7_idx` (`fk_id_control_envio_7` ASC),
  INDEX `fk_muestraEstampado_2_idx` (`fk_id_muestra_estampado_2` ASC),
  CONSTRAINT `fk_controlEnvio_7`
    FOREIGN KEY (`fk_id_control_envio_7`)
    REFERENCES `db_monely`.`control_envios_recepcion` (`id_control_envios_recepcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestraEstampado_2`
    FOREIGN KEY (`fk_id_muestra_estampado_2`)
    REFERENCES `db_monely`.`muestras_estampado` (`id_muestras_estampado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`envios_planchado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`envios_planchado` (
  `fk_id_control_envio_8` INT NULL,
  `fk_id_planchado_1` INT NULL,
  `cantidad_enviada` INT NULL,
  INDEX `fk_controlEnvio_8_idx` (`fk_id_control_envio_8` ASC),
  INDEX `fk_planchado_1_idx` (`fk_id_planchado_1` ASC),
  CONSTRAINT `fk_controlEnvio_8`
    FOREIGN KEY (`fk_id_control_envio_8`)
    REFERENCES `db_monely`.`control_envios_recepcion` (`id_control_envios_recepcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_planchado_1`
    FOREIGN KEY (`fk_id_planchado_1`)
    REFERENCES `db_monely`.`planchado` (`id_planchado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`patronajeMoldes_tallas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`patronajeMoldes_tallas` (
  `fk_id_patronaje_molde_5` INT NOT NULL AUTO_INCREMENT,
  `fk_id_talla_3` INT NULL,
  `curva_talla` INT NULL,
  PRIMARY KEY (`fk_id_patronaje_molde_5`),
  INDEX `fk_tallas_3_idx` (`fk_id_talla_3` ASC),
  CONSTRAINT `fk_patronajeMoldes_5`
    FOREIGN KEY (`fk_id_patronaje_molde_5`)
    REFERENCES `db_monely`.`patronaje_moldes` (`id_patronaje_molde`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tallas_3`
    FOREIGN KEY (`fk_id_talla_3`)
    REFERENCES `db_monely`.`tallas` (`id_talla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`medidas_prenda_confeccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`medidas_prenda_confeccion` (
  `id_medidas_prenda_confeccion` INT NOT NULL AUTO_INCREMENT,
  `numero_molde` VARCHAR(45) NULL,
  `proceso` VARCHAR(45) NULL,
  `imagen_referencia` VARCHAR(100) NULL,
  `fecha_registro` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_patronaje_molde_6` INT NULL,
  PRIMARY KEY (`id_medidas_prenda_confeccion`),
  INDEX `fk_patronajeMolde_6_idx` (`fk_id_patronaje_molde_6` ASC),
  CONSTRAINT `fk_patronajeMolde_6`
    FOREIGN KEY (`fk_id_patronaje_molde_6`)
    REFERENCES `db_monely`.`patronaje_moldes` (`id_patronaje_molde`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`medidaPrendas_tallas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`medidaPrendas_tallas` (
  `fk_id_medida_prenda_confeccion_1` INT NULL,
  `fk_id_talla_4` INT NULL,
  `medida` DECIMAL NULL,
  INDEX `fk_medidaPrendasConfeccion_1_idx` (`fk_id_medida_prenda_confeccion_1` ASC),
  INDEX `fk_tallas_4_idx` (`fk_id_talla_4` ASC),
  CONSTRAINT `fk_medidaPrendasConfeccion_1`
    FOREIGN KEY (`fk_id_medida_prenda_confeccion_1`)
    REFERENCES `db_monely`.`medidas_prenda_confeccion` (`id_medidas_prenda_confeccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tallas_4`
    FOREIGN KEY (`fk_id_talla_4`)
    REFERENCES `db_monely`.`tallas` (`id_talla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`codigo_medidas_patronaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`codigo_medidas_patronaje` (
  `id_codigo_medidas_patronaje` INT NOT NULL AUTO_INCREMENT,
  `codigo_nombre` VARCHAR(5) NULL,
  PRIMARY KEY (`id_codigo_medidas_patronaje`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`medidasPrendas_codigoMedida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`medidasPrendas_codigoMedida` (
  `fk_id_medida_prenda_confeccion_2` INT NULL,
  `fk_id_codigo_medidas_1` INT NULL,
  `descripcion_medidas` VARCHAR(100) NULL,
  `tolerancia` DECIMAL NULL,
  INDEX `fk_medidasPrendaConfeccion_2_idx` (`fk_id_medida_prenda_confeccion_2` ASC),
  INDEX `fk_codigoMedida_1_idx` (`fk_id_codigo_medidas_1` ASC),
  CONSTRAINT `fk_medidasPrendaConfeccion_2`
    FOREIGN KEY (`fk_id_medida_prenda_confeccion_2`)
    REFERENCES `db_monely`.`medidas_prenda_confeccion` (`id_medidas_prenda_confeccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_codigoMedida_1`
    FOREIGN KEY (`fk_id_codigo_medidas_1`)
    REFERENCES `db_monely`.`codigo_medidas_patronaje` (`id_codigo_medidas_patronaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`construccion_prendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`construccion_prendas` (
  `id_construccion_prendas` INT NOT NULL AUTO_INCREMENT,
  `observaciones` VARCHAR(500) NULL,
  `fecha_registro` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_etiqueta_lavado_4` INT NULL,
  `fk_id_medidas_prenda_confeccion_3` INT NULL,
  `fk_id_orden_produccion_12` INT NULL,
  PRIMARY KEY (`id_construccion_prendas`),
  INDEX `fk_etiquetaLavado_4_idx` (`fk_id_etiqueta_lavado_4` ASC),
  INDEX `fk_mediaPrendaCofeccion_3_idx` (`fk_id_medidas_prenda_confeccion_3` ASC),
  INDEX `fk_ordenProduccion_12_idx` (`fk_id_orden_produccion_12` ASC),
  CONSTRAINT `fk_etiquetaLavado_4`
    FOREIGN KEY (`fk_id_etiqueta_lavado_4`)
    REFERENCES `db_monely`.`etiquetas_lavado` (`id_etiqueta_lavado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mediaPrendaCofeccion_3`
    FOREIGN KEY (`fk_id_medidas_prenda_confeccion_3`)
    REFERENCES `db_monely`.`medidas_prenda_confeccion` (`id_medidas_prenda_confeccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProduccion_12`
    FOREIGN KEY (`fk_id_orden_produccion_12`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`construccionPrenda_etiquetaLavado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`construccionPrenda_etiquetaLavado` (
  `fk_id_contruccion_prendas_1` INT NOT NULL,
  `fk_id_etiqueta_lavado_5` INT NULL,
  `comentario_ubicacion` VARCHAR(500) NULL,
  PRIMARY KEY (`fk_id_contruccion_prendas_1`),
  INDEX `fk_etiquetaLavado_5_idx` (`fk_id_etiqueta_lavado_5` ASC),
  CONSTRAINT `fk_construccionPrenda_1`
    FOREIGN KEY (`fk_id_contruccion_prendas_1`)
    REFERENCES `db_monely`.`construccion_prendas` (`id_construccion_prendas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_etiquetaLavado_5`
    FOREIGN KEY (`fk_id_etiqueta_lavado_5`)
    REFERENCES `db_monely`.`etiquetas_lavado` (`id_etiqueta_lavado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`vistas_prenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`vistas_prenda` (
  `id_vistas_prenda` INT NOT NULL AUTO_INCREMENT,
  `vista_prenda` VARCHAR(45) NULL,
  PRIMARY KEY (`id_vistas_prenda`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`construccionPrenda_tipoPrenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`construccionPrenda_tipoPrenda` (
  `fk_id construccion_prendas_2` INT NULL,
  `fk_id_vista_prenda_1` INT NULL,
  `imagen_referencia` VARCHAR(100) NULL,
  INDEX `fk_construccionPrenda_2_idx` (`fk_id construccion_prendas_2` ASC),
  INDEX `fk_vistaPrenda_1_idx` (`fk_id_vista_prenda_1` ASC),
  CONSTRAINT `fk_construccionPrenda_2`
    FOREIGN KEY (`fk_id construccion_prendas_2`)
    REFERENCES `db_monely`.`construccion_prendas` (`id_construccion_prendas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vistaPrenda_1`
    FOREIGN KEY (`fk_id_vista_prenda_1`)
    REFERENCES `db_monely`.`vistas_prenda` (`id_vistas_prenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`piezas_prendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`piezas_prendas` (
  `id_piezas_prendas` INT NOT NULL AUTO_INCREMENT,
  `pieza_prenda` VARCHAR(45) NULL,
  PRIMARY KEY (`id_piezas_prendas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`construccionPrenda_piezas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`construccionPrenda_piezas` (
  `fk_id_construccion_prendas_3` INT NULL,
  `fk_id_pieza_prenda_1` INT NULL,
  `fk_id_tipo_tela_3` INT NULL,
  `fk_id_color_tela_2` INT NULL,
  `descripcion_construccion` VARCHAR(500) NULL,
  `consumo_metros` VARCHAR(500) NULL,
  `cantidad_piezas` VARCHAR(500) NULL,
  INDEX `fk_construccionPrenda_3_idx` (`fk_id_construccion_prendas_3` ASC),
  INDEX `fk_piezasPrenda_1_idx` (`fk_id_pieza_prenda_1` ASC),
  INDEX `fk_tipoTela_3_idx` (`fk_id_tipo_tela_3` ASC),
  INDEX `fk_colorTela_2_idx` (`fk_id_color_tela_2` ASC),
  CONSTRAINT `fk_construccionPrenda_3`
    FOREIGN KEY (`fk_id_construccion_prendas_3`)
    REFERENCES `db_monely`.`construccion_prendas` (`id_construccion_prendas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_piezasPrenda_1`
    FOREIGN KEY (`fk_id_pieza_prenda_1`)
    REFERENCES `db_monely`.`piezas_prendas` (`id_piezas_prendas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoTela_3`
    FOREIGN KEY (`fk_id_tipo_tela_3`)
    REFERENCES `db_monely`.`tipo_telas` (`id_tipo_tela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_colorTela_2`
    FOREIGN KEY (`fk_id_color_tela_2`)
    REFERENCES `db_monely`.`colores_telas` (`id_color_tela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`telaComplemento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`telaComplemento` (
  `id_telaComplemento` INT NOT NULL AUTO_INCREMENT,
  `nombre_telacomplemento` VARCHAR(45) NULL,
  PRIMARY KEY (`id_telaComplemento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`construccionPrenda_telacomplemento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`construccionPrenda_telacomplemento` (
  `fk_id_construccion_prendas_4` INT NULL,
  `fk_id_telaComplemento_1` INT NULL,
  `fk_id_tipo_tela_4` INT NULL,
  `fk_id_color_rip_2` INT NULL,
  `descripcion_construccion` VARCHAR(500) NULL,
  `consumo_metros` VARCHAR(500) NULL,
  `cantidad_piezas` VARCHAR(500) NULL,
  INDEX `fk_construccionPrenda_4_idx` (`fk_id_construccion_prendas_4` ASC),
  INDEX `fk_telacomplemento_1_idx` (`fk_id_telaComplemento_1` ASC),
  INDEX `fk_tipoTela_4_idx` (`fk_id_tipo_tela_4` ASC),
  INDEX `fk_colorRip_2_idx` (`fk_id_color_rip_2` ASC),
  CONSTRAINT `fk_construccionPrenda_4`
    FOREIGN KEY (`fk_id_construccion_prendas_4`)
    REFERENCES `db_monely`.`construccion_prendas` (`id_construccion_prendas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_telacomplemento_1`
    FOREIGN KEY (`fk_id_telaComplemento_1`)
    REFERENCES `db_monely`.`telaComplemento` (`id_telaComplemento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoTela_4`
    FOREIGN KEY (`fk_id_tipo_tela_4`)
    REFERENCES `db_monely`.`tipo_telas` (`id_tipo_tela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_colorRip_2`
    FOREIGN KEY (`fk_id_color_rip_2`)
    REFERENCES `db_monely`.`colores_rip` (`id_color_rip`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`costuras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`costuras` (
  `id_costuras` INT NOT NULL AUTO_INCREMENT,
  `costura_nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id_costuras`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`construccionPrenda_costuras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`construccionPrenda_costuras` (
  `fk_id_construccion_prendas_5` INT NULL,
  `fk_id_costuras_1` INT NULL,
  `puntada` VARCHAR(45) NULL,
  INDEX `fk_construccionPrenda_prensa_5_idx` (`fk_id_construccion_prendas_5` ASC),
  INDEX `fk_construccionPrenda_costuras_1_idx` (`fk_id_costuras_1` ASC),
  CONSTRAINT `fk_prendas_5`
    FOREIGN KEY (`fk_id_construccion_prendas_5`)
    REFERENCES `db_monely`.`construccion_prendas` (`id_construccion_prendas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_costuras_1`
    FOREIGN KEY (`fk_id_costuras_1`)
    REFERENCES `db_monely`.`costuras` (`id_costuras`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`construccionPrenda_avios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`construccionPrenda_avios` (
  `fk_id_construccion_prendas_6` INT NULL,
  `fk_id_avios_3` INT NULL,
  `descripcion` VARCHAR(500) NULL,
  `medida_cantidad` VARCHAR(500) NULL,
  INDEX `fk_construccionPrenda_avios_6_idx` (`fk_id_construccion_prendas_6` ASC),
  INDEX `fk_construccionPrenda_avios_3_idx` (`fk_id_avios_3` ASC),
  CONSTRAINT `fk_prendas_6`
    FOREIGN KEY (`fk_id_construccion_prendas_6`)
    REFERENCES `db_monely`.`construccion_prendas` (`id_construccion_prendas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avios_3`
    FOREIGN KEY (`fk_id_avios_3`)
    REFERENCES `db_monely`.`avios` (`id_avios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`categorias_pantone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`categorias_pantone` (
  `id_categoria_pantone` INT NOT NULL AUTO_INCREMENT,
  `nombre_categoria` VARCHAR(45) NULL,
  PRIMARY KEY (`id_categoria_pantone`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`colores_pantone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`colores_pantone` (
  `id_color_pantone` INT NOT NULL AUTO_INCREMENT,
  `nombre_pantone` VARCHAR(45) NULL,
  `valor_exadecimal` VARCHAR(45) NULL,
  `fk_id_categoria_pantone_1` INT NULL,
  `fk_id_color_3` INT NULL,
  PRIMARY KEY (`id_color_pantone`),
  INDEX `fk_categoriaPantone_1_idx` (`fk_id_categoria_pantone_1` ASC),
  INDEX `fk_colores_3_idx` (`fk_id_color_3` ASC),
  CONSTRAINT `fk_categoriaPantone_1`
    FOREIGN KEY (`fk_id_categoria_pantone_1`)
    REFERENCES `db_monely`.`categorias_pantone` (`id_categoria_pantone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_colores_3`
    FOREIGN KEY (`fk_id_color_3`)
    REFERENCES `db_monely`.`color` (`id_color`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`ubicacion_artes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`ubicacion_artes` (
  `id_ubicacion_artes` INT NOT NULL AUTO_INCREMENT,
  `imagen_referencial` VARCHAR(500) NULL,
  `observaciones_etiqueta` VARCHAR(500) NULL,
  `fecha_registro` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_etiqueta_lavado_6` INT NULL,
  `fk_id_etiqueta_estampada_3` INT NULL,
  `fk_id_construccion_prendas_7` INT NULL,
  `fk_id_orden_produccion_13` INT NULL,
  `fk_id_color_pantone_1` INT NULL,
  PRIMARY KEY (`id_ubicacion_artes`),
  INDEX `fk_etiquetaLavado_6_idx` (`fk_id_etiqueta_lavado_6` ASC),
  INDEX `fk_etiquetaEstampada_3_idx` (`fk_id_etiqueta_estampada_3` ASC),
  INDEX `fk_construccionPrendas_7_idx` (`fk_id_construccion_prendas_7` ASC),
  INDEX `fk_ordenProduccion_13_idx` (`fk_id_orden_produccion_13` ASC),
  INDEX `fk_colorPantone_1_idx` (`fk_id_color_pantone_1` ASC),
  CONSTRAINT `fk_etiquetaLavado_6`
    FOREIGN KEY (`fk_id_etiqueta_lavado_6`)
    REFERENCES `db_monely`.`etiquetas_lavado` (`id_etiqueta_lavado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_etiquetaEstampada_3`
    FOREIGN KEY (`fk_id_etiqueta_estampada_3`)
    REFERENCES `db_monely`.`etiquetas_estampadas` (`id_etiqueta_estampada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_construccionPrendas_7`
    FOREIGN KEY (`fk_id_construccion_prendas_7`)
    REFERENCES `db_monely`.`construccion_prendas` (`id_construccion_prendas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProduccion_13`
    FOREIGN KEY (`fk_id_orden_produccion_13`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_colorPantone_1`
    FOREIGN KEY (`fk_id_color_pantone_1`)
    REFERENCES `db_monely`.`colores_pantone` (`id_color_pantone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`medidas_acabados_confeccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`medidas_acabados_confeccion` (
  `id_medidas_acabados_confeccion` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(500) NULL,
  `fecha_registro` DATETIME NULL,
  `fecha_ultima_actualizacion` DATETIME NULL,
  `fk_id_medida_prenda_confeccion_4` INT NULL,
  PRIMARY KEY (`id_medidas_acabados_confeccion`),
  INDEX `fk_medidas_prenda_confeccion_4_idx` (`fk_id_medida_prenda_confeccion_4` ASC),
  CONSTRAINT `fk_medidas_prenda_confeccion_4`
    FOREIGN KEY (`fk_id_medida_prenda_confeccion_4`)
    REFERENCES `db_monely`.`medidas_prenda_confeccion` (`id_medidas_prenda_confeccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`medidasAcabadas_tallas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`medidasAcabadas_tallas` (
  `fk_id_medidas_acabadas_confeccion_1` INT NULL,
  `fk_id_tallas_5` INT NULL,
  `medida` DECIMAL NULL,
  INDEX `fk_medidasAcabadas_1_idx` (`fk_id_medidas_acabadas_confeccion_1` ASC),
  INDEX `fk_tallas_5_idx` (`fk_id_tallas_5` ASC),
  CONSTRAINT `fk_medidasAcabadas_1`
    FOREIGN KEY (`fk_id_medidas_acabadas_confeccion_1`)
    REFERENCES `db_monely`.`medidas_acabados_confeccion` (`id_medidas_acabados_confeccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tallas_5`
    FOREIGN KEY (`fk_id_tallas_5`)
    REFERENCES `db_monely`.`tallas` (`id_talla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`medidasAcabadas_codigoMedida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`medidasAcabadas_codigoMedida` (
  `fk_id_medidas_acabadas_confeccion_2` INT NULL,
  `fk_id_codigo_medidas_2` INT NULL,
  `descripcion` VARCHAR(500) NULL,
  `tolerancia` DECIMAL NULL,
  INDEX `fk_medidaAcabadasConfeccion_2_idx` (`fk_id_medidas_acabadas_confeccion_2` ASC),
  INDEX `fk_codigoMedida_2_idx` (`fk_id_codigo_medidas_2` ASC),
  CONSTRAINT `fk_medidaAcabadasConfeccion_2`
    FOREIGN KEY (`fk_id_medidas_acabadas_confeccion_2`)
    REFERENCES `db_monely`.`medidas_acabados_confeccion` (`id_medidas_acabados_confeccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_codigoMedida_2`
    FOREIGN KEY (`fk_id_codigo_medidas_2`)
    REFERENCES `db_monely`.`codigo_medidas_patronaje` (`id_codigo_medidas_patronaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_estilos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_estilos` (
  `id_comentarios_estilos` INT NOT NULL AUTO_INCREMENT,
  `comentarios` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_25` INT NULL,
  `fk_id_estilo_12` INT NULL,
  PRIMARY KEY (`id_comentarios_estilos`),
  INDEX `fk_usuario_25_idx` (`fk_id_usuario_25` ASC),
  INDEX `fk_estilo_12_idx` (`fk_id_estilo_12` ASC),
  CONSTRAINT `fk_usuario_25`
    FOREIGN KEY (`fk_id_usuario_25`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estilo_12`
    FOREIGN KEY (`fk_id_estilo_12`)
    REFERENCES `db_monely`.`estilos` (`id_estilos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_ordenProduccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_ordenProduccion` (
  `id_comentarios_ordenProduccion` INT NOT NULL AUTO_INCREMENT,
  `comentarios_ordenProduccion` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_26` INT NULL,
  `fk_id_orden_produccion_15` INT NULL,
  PRIMARY KEY (`id_comentarios_ordenProduccion`),
  INDEX `fk_usuario_26_idx` (`fk_id_usuario_26` ASC),
  INDEX `fk_ordenProduccion_15_idx` (`fk_id_orden_produccion_15` ASC),
  CONSTRAINT `fk_usuario_26`
    FOREIGN KEY (`fk_id_usuario_26`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProduccion_15`
    FOREIGN KEY (`fk_id_orden_produccion_15`)
    REFERENCES `db_monely`.`ordenes_produccion` (`id_ordenes_produccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_pedidoHangtags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_pedidoHangtags` (
  `id_comentarios_pedidoHangtags` INT NOT NULL AUTO_INCREMENT,
  `comentarios_pedidoHangtags` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_27` INT NULL,
  `fk_id_pedido_hangtag_1` INT NULL,
  PRIMARY KEY (`id_comentarios_pedidoHangtags`),
  INDEX `fk_comentarios_usuario_27_idx` (`fk_id_usuario_27` ASC),
  INDEX `fk_comentarios_pedidoHangtags_1_idx` (`fk_id_pedido_hangtag_1` ASC),
  CONSTRAINT `fk_comentarios_usuario_27`
    FOREIGN KEY (`fk_id_usuario_27`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentarios_pedidoHangtags_1`
    FOREIGN KEY (`fk_id_pedido_hangtag_1`)
    REFERENCES `db_monely`.`hangtag_pedido` (`id_hangtag_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_pedidoTelas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_pedidoTelas` (
  `id_comentarios_pedidoTelas` INT NOT NULL AUTO_INCREMENT,
  `comentarios_pedidoTelascol` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_28` INT NULL,
  `fk_id_pedido_tela_1` INT NULL,
  PRIMARY KEY (`id_comentarios_pedidoTelas`),
  INDEX `fk_comentarios_usuario_28_idx` (`fk_id_usuario_28` ASC),
  INDEX `fk_comentarios_pedidoTelas_1_idx` (`fk_id_pedido_tela_1` ASC),
  CONSTRAINT `fk_comentarios_usuario_28`
    FOREIGN KEY (`fk_id_usuario_28`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentarios_pedidoTelas_1`
    FOREIGN KEY (`fk_id_pedido_tela_1`)
    REFERENCES `db_monely`.`pedido_telas` (`id_pedido_tela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_ordenGuiaCorte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_ordenGuiaCorte` (
  `id_comentarios_ordenGuiaCorte` INT NOT NULL AUTO_INCREMENT,
  `comentarios_ordenGuiaCorte` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_29` INT NULL,
  `fk_id_orden_guia_corte_5` INT NULL,
  PRIMARY KEY (`id_comentarios_ordenGuiaCorte`),
  INDEX `fk_usuario_29_idx` (`fk_id_usuario_29` ASC),
  INDEX `fk_ordenGuiaCorte_5_idx` (`fk_id_orden_guia_corte_5` ASC),
  CONSTRAINT `fk_usuario_29`
    FOREIGN KEY (`fk_id_usuario_29`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenGuiaCorte_5`
    FOREIGN KEY (`fk_id_orden_guia_corte_5`)
    REFERENCES `db_monely`.`ordenes_guias_cortes` (`id_orden_guia_corte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comenarios_corteOrdenTela`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comenarios_corteOrdenTela` (
  `id_comenarios_corteOrdenTela` INT NOT NULL AUTO_INCREMENT,
  `comenarios_corteOrdenTela` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_30` INT NULL,
  `fk_id_corte_orden_tela_3` INT NULL,
  PRIMARY KEY (`id_comenarios_corteOrdenTela`),
  INDEX `fk_usuario_30_idx` (`fk_id_usuario_30` ASC),
  INDEX `fk_corteOrdenTela_3_idx` (`fk_id_corte_orden_tela_3` ASC),
  CONSTRAINT `fk_usuario_30`
    FOREIGN KEY (`fk_id_usuario_30`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_corteOrdenTela_3`
    FOREIGN KEY (`fk_id_corte_orden_tela_3`)
    REFERENCES `db_monely`.`corte_orden_telas` (`id_corte_orden_tela`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_disenoMica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_disenoMica` (
  `id_comentarios_disenoMica` INT NOT NULL AUTO_INCREMENT,
  `comentarios_disenoMica` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_31` INT NULL,
  `fk_id_diseno_mica_3` INT NULL,
  PRIMARY KEY (`id_comentarios_disenoMica`),
  INDEX `fk_usuario_31_idx` (`fk_id_usuario_31` ASC),
  INDEX `fk_disenoMica_3_idx` (`fk_id_diseno_mica_3` ASC),
  CONSTRAINT `fk_usuario_31`
    FOREIGN KEY (`fk_id_usuario_31`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disenoMica_3`
    FOREIGN KEY (`fk_id_diseno_mica_3`)
    REFERENCES `db_monely`.`diseno_micas` (`id_diseno_mica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_reveladoEstampado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_reveladoEstampado` (
  `id_comentarios_reveladoEstampado` INT NOT NULL AUTO_INCREMENT,
  `comentarios_reveladoEstampado` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_31` INT NULL,
  `fk_id_revelado_estampado_2` INT NULL,
  PRIMARY KEY (`id_comentarios_reveladoEstampado`),
  INDEX `fk_comentarios_usuario_31_idx` (`fk_id_usuario_31` ASC),
  INDEX `fk_comentarios_reveladoEstampado_2_idx` (`fk_id_revelado_estampado_2` ASC),
  CONSTRAINT `fk_comentarios_usuario_31`
    FOREIGN KEY (`fk_id_usuario_31`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentarios_reveladoEstampado_2`
    FOREIGN KEY (`fk_id_revelado_estampado_2`)
    REFERENCES `db_monely`.`revelado_estampado` (`id_revelado_estampado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_muestraEstampado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_muestraEstampado` (
  `id_comentarios_muestraEstampado` INT NOT NULL AUTO_INCREMENT,
  `comentarios_muestraEstampado` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_33` INT NULL,
  `fk_id_muestra_estampado_3` INT NULL,
  PRIMARY KEY (`id_comentarios_muestraEstampado`),
  INDEX `fk_usuario_33_idx` (`fk_id_usuario_33` ASC),
  INDEX `fk_muestraEstampado_3_idx` (`fk_id_muestra_estampado_3` ASC),
  CONSTRAINT `fk_usuario_33`
    FOREIGN KEY (`fk_id_usuario_33`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestraEstampado_3`
    FOREIGN KEY (`fk_id_muestra_estampado_3`)
    REFERENCES `db_monely`.`muestras_estampado` (`id_muestras_estampado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentario_planchado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentario_planchado` (
  `id_comentario_planchado` INT NOT NULL AUTO_INCREMENT,
  `comentario_planchado` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_34` INT NULL,
  `fk_id_planchado_2` INT NULL,
  PRIMARY KEY (`id_comentario_planchado`),
  INDEX `fk_usuario_34_idx` (`fk_id_usuario_34` ASC),
  INDEX `fk_planchado_2_idx` (`fk_id_planchado_2` ASC),
  CONSTRAINT `fk_usuario_34`
    FOREIGN KEY (`fk_id_usuario_34`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_planchado_2`
    FOREIGN KEY (`fk_id_planchado_2`)
    REFERENCES `db_monely`.`planchado` (`id_planchado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_ordenProgramacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_ordenProgramacion` (
  `id_comentarios_ordenProgramacion` INT NOT NULL AUTO_INCREMENT,
  `comentarios_ordenProgramacion` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_35` INT NULL,
  `fk_id_orden_estampado_programacion_3` INT NULL,
  PRIMARY KEY (`id_comentarios_ordenProgramacion`),
  INDEX `fk_usuario_35_idx` (`fk_id_usuario_35` ASC),
  INDEX `fk_ordenProgramacion_3_idx` (`fk_id_orden_estampado_programacion_3` ASC),
  CONSTRAINT `fk_usuario_35`
    FOREIGN KEY (`fk_id_usuario_35`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordenProgramacion_3`
    FOREIGN KEY (`fk_id_orden_estampado_programacion_3`)
    REFERENCES `db_monely`.`orden_estampado_programacion` (`id_orden_estampado_programacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_patronajeMolde`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_patronajeMolde` (
  `id_comentarios_patronajeMolde` INT NOT NULL AUTO_INCREMENT,
  `comentarios_patronajeMolde` VARCHAR(500) NULL,
  `fecha_registro_comentario` DATETIME NULL,
  `fk_id_usuario_36` INT NULL,
  `fk_id_patronaje_molde_7` INT NULL,
  PRIMARY KEY (`id_comentarios_patronajeMolde`),
  INDEX `fk_usuario_36_idx` (`fk_id_usuario_36` ASC),
  INDEX `fk_patronajeMolde_7_idx` (`fk_id_patronaje_molde_7` ASC),
  CONSTRAINT `fk_usuario_36`
    FOREIGN KEY (`fk_id_usuario_36`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patronajeMolde_7`
    FOREIGN KEY (`fk_id_patronaje_molde_7`)
    REFERENCES `db_monely`.`patronaje_moldes` (`id_patronaje_molde`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`comentarios_controlEnvios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`comentarios_controlEnvios` (
  `id_comentarios_controlEnvios` INT NOT NULL AUTO_INCREMENT,
  `comentarios_controlEnvios` VARCHAR(45) NULL,
  `fecha_registro_comentario` VARCHAR(500) NULL,
  `fk_id_usuario_37` INT NULL,
  `fk_id_control_envio_9` INT NULL,
  PRIMARY KEY (`id_comentarios_controlEnvios`),
  INDEX `fk_usuario_37_idx` (`fk_id_usuario_37` ASC),
  INDEX `fk_controlEnvio_9_idx` (`fk_id_control_envio_9` ASC),
  CONSTRAINT `fk_usuario_37`
    FOREIGN KEY (`fk_id_usuario_37`)
    REFERENCES `db_monely`.`usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_controlEnvio_9`
    FOREIGN KEY (`fk_id_control_envio_9`)
    REFERENCES `db_monely`.`control_envios_recepcion` (`id_control_envios_recepcion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`tipo_documento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`tipo_documento` (
  `id_tipo_documento` INT NOT NULL,
  `nombre_tipo_documento` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_documento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely`.`personas_tipoDocumento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely`.`personas_tipoDocumento` (
  `fk_id_persona_4` INT NULL,
  `fk_id_tipo_documento_1` INT NULL,
  `numero_documento` VARCHAR(45) NULL,
  INDEX `fk_personas_1_idx` (`fk_id_persona_4` ASC),
  INDEX `fk_tipoDocumento_2_idx` (`fk_id_tipo_documento_1` ASC),
  CONSTRAINT `fk_personas_1`
    FOREIGN KEY (`fk_id_persona_4`)
    REFERENCES `db_monely`.`personas` (`id_persona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoDocumento_2`
    FOREIGN KEY (`fk_id_tipo_documento_1`)
    REFERENCES `db_monely`.`tipo_documento` (`id_tipo_documento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
