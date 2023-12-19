SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `db_belove_modelo_3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `db_belove_modelo_3` ;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Estados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Estados` (
  `idEstado` INT NOT NULL AUTO_INCREMENT ,
  `NombreEstado` VARCHAR(20) NOT NULL ,
  `DescripcionEstado` VARCHAR(45) NULL ,
  PRIMARY KEY (`idEstado`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Roles`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Roles` (
  `idRole` INT NOT NULL AUTO_INCREMENT ,
  `NombreRol` VARCHAR(45) NULL ,
  `DescripcionRol` VARCHAR(45) NULL ,
  `FechaCreacion` TIMESTAMP NULL ,
  `idUsuarioRegistraRol` INT NULL ,
  `idEstadoRol` INT NULL ,
  PRIMARY KEY (`idRole`) ,
  INDEX `fkIdUsuarioRegistraRol` (`idUsuarioRegistraRol` ASC) ,
  INDEX `fkIdEstadoRol` (`idEstadoRol` ASC) ,
  CONSTRAINT `fkIdUsuarioRegistraRol`
    FOREIGN KEY (`idUsuarioRegistraRol` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoRol`
    FOREIGN KEY (`idEstadoRol` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`TipoIdentificacion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`TipoIdentificacion` (
  `idTipoDocIdentificacion` INT NOT NULL AUTO_INCREMENT ,
  `NombreDoc` VARCHAR(20) NOT NULL ,
  `Descripcion` VARCHAR(250) NULL ,
  PRIMARY KEY (`idTipoDocIdentificacion`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Sexo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Sexo` (
  `idSexo` INT NOT NULL AUTO_INCREMENT ,
  `NombreSexo` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`idSexo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Paises`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Paises` (
  `idPais` INT NOT NULL AUTO_INCREMENT ,
  `NombrePais` VARCHAR(45) NOT NULL ,
  `Nacionalidad` VARCHAR(45) NULL ,
  `Idioma` VARCHAR(45) NULL ,
  PRIMARY KEY (`idPais`) ,
  UNIQUE INDEX `NombrePais_UNIQUE` (`NombrePais` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Departamentos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Departamentos` (
  `Departamento` VARCHAR(20) NULL ,
  `idDepartamentos` INT NOT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`idDepartamentos`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Provincias`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Provincias` (
  `idProvincia` INT NOT NULL AUTO_INCREMENT ,
  `NombreProvincia` VARCHAR(30) NULL ,
  PRIMARY KEY (`idProvincia`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Distritos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Distritos` (
  `idDistrito` INT NOT NULL AUTO_INCREMENT ,
  `NombreDistrito` VARCHAR(30) NULL ,
  PRIMARY KEY (`idDistrito`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Direcciones`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Direcciones` (
  `idDireccion` INT NOT NULL AUTO_INCREMENT ,
  `idPais` INT NULL ,
  `idDepartamento` INT NULL ,
  `idProvincia` INT NULL ,
  `idDistrito` INT NULL ,
  `Referencia` VARCHAR(100) NULL ,
  PRIMARY KEY (`idDireccion`) ,
  INDEX `fkIdPais` (`idPais` ASC) ,
  INDEX `fkIdDepartamento` (`idDepartamento` ASC) ,
  INDEX `fkIdProvincia` (`idProvincia` ASC) ,
  INDEX `fkIdDistrito` (`idDistrito` ASC) ,
  CONSTRAINT `fkIdPais`
    FOREIGN KEY (`idPais` )
    REFERENCES `db_belove_modelo_3`.`Paises` (`idPais` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdDepartamento`
    FOREIGN KEY (`idDepartamento` )
    REFERENCES `db_belove_modelo_3`.`Departamentos` (`idDepartamentos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdProvincia`
    FOREIGN KEY (`idProvincia` )
    REFERENCES `db_belove_modelo_3`.`Provincias` (`idProvincia` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdDistrito`
    FOREIGN KEY (`idDistrito` )
    REFERENCES `db_belove_modelo_3`.`Distritos` (`idDistrito` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Sedes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Sedes` (
  `idSede` INT NOT NULL AUTO_INCREMENT ,
  `NombreSede` VARCHAR(45) NULL ,
  `IdEstado` INT NULL ,
  PRIMARY KEY (`idSede`) ,
  INDEX `fkEstado` (`IdEstado` ASC) ,
  CONSTRAINT `fkEstado`
    FOREIGN KEY (`IdEstado` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Cargos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Cargos` (
  `idCargo` INT NOT NULL AUTO_INCREMENT ,
  `NombreCargo` VARCHAR(45) NOT NULL ,
  `idEstadoCargo` INT NOT NULL ,
  `idUsuarioCreacionCargo` INT NOT NULL ,
  `FechaCreacionCargo` TIMESTAMP NOT NULL ,
  `idUsuarioModificaCargo` INT NULL ,
  `FechaModificaCargo` DATETIME NULL ,
  PRIMARY KEY (`idCargo`) ,
  INDEX `fkIdUsuarioCreacionCargo` (`idUsuarioCreacionCargo` ASC) ,
  INDEX `fkIdUsuarioModificaCargo` (`idUsuarioModificaCargo` ASC) ,
  INDEX `fkIdEstadoCargo` (`idEstadoCargo` ASC) ,
  CONSTRAINT `fkIdUsuarioCreacionCargo`
    FOREIGN KEY (`idUsuarioCreacionCargo` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModificaCargo`
    FOREIGN KEY (`idUsuarioModificaCargo` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoCargo`
    FOREIGN KEY (`idEstadoCargo` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`TipoPersona`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`TipoPersona` (
  `idTipoPersona` INT NOT NULL AUTO_INCREMENT ,
  `TipoPersona` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idTipoPersona`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Personas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Personas` (
  `idPersona` INT NOT NULL AUTO_INCREMENT ,
  `idTipoIdentificacion` INT NOT NULL ,
  `NumIdentificacion` VARCHAR(15) NOT NULL ,
  `NombrePersona` VARCHAR(45) NOT NULL ,
  `ApellidoPaterno` VARCHAR(45) NOT NULL ,
  `ApellidoMaterno` VARCHAR(45) NOT NULL ,
  `IdSexo` INT NOT NULL ,
  `IdDireccion` INT NOT NULL ,
  `FechaNacimiento` DATE NOT NULL ,
  `idEstado` INT NOT NULL ,
  `idTipoPersonal` INT NOT NULL ,
  `Celular` VARCHAR(20) NOT NULL ,
  `Email` VARCHAR(45) NOT NULL ,
  `idSede` INT NOT NULL ,
  `idCargo` INT NOT NULL ,
  `idUsuarioRegistra` INT NOT NULL ,
  `FechaRegistra` TIMESTAMP NULL ,
  `idUsuarioModifica` INT NULL ,
  `FechaModifica` DATETIME NULL ,
  PRIMARY KEY (`idPersona`) ,
  UNIQUE INDEX `NumIdentificacion_UNIQUE` (`NumIdentificacion` ASC) ,
  INDEX `fkTipoIdentificacion` (`idTipoIdentificacion` ASC) ,
  INDEX `fkEstado` (`idEstado` ASC) ,
  INDEX `fkIdSexo` (`IdSexo` ASC) ,
  INDEX `fkIdDireccion` (`IdDireccion` ASC) ,
  INDEX `fkIdSedePertenece` (`idSede` ASC) ,
  INDEX `fkIdCargo` (`idCargo` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  INDEX `fkIdUsuarioModifica` (`idUsuarioModifica` ASC) ,
  INDEX `fkIdTipoPersona` (`idTipoPersonal` ASC) ,
  CONSTRAINT `fkTipoIdentificacion`
    FOREIGN KEY (`idTipoIdentificacion` )
    REFERENCES `db_belove_modelo_3`.`TipoIdentificacion` (`idTipoDocIdentificacion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEstado`
    FOREIGN KEY (`idEstado` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdSexo`
    FOREIGN KEY (`IdSexo` )
    REFERENCES `db_belove_modelo_3`.`Sexo` (`idSexo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdDireccion`
    FOREIGN KEY (`IdDireccion` )
    REFERENCES `db_belove_modelo_3`.`Direcciones` (`idDireccion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdSedePertenece`
    FOREIGN KEY (`idSede` )
    REFERENCES `db_belove_modelo_3`.`Sedes` (`idSede` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdCargo`
    FOREIGN KEY (`idCargo` )
    REFERENCES `db_belove_modelo_3`.`Cargos` (`idCargo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModifica`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdTipoPersona`
    FOREIGN KEY (`idTipoPersonal` )
    REFERENCES `db_belove_modelo_3`.`TipoPersona` (`idTipoPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Usuarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT ,
  `idEmpleado` INT NOT NULL ,
  `Email` VARCHAR(45) NOT NULL ,
  `pass` VARCHAR(200) NOT NULL ,
  `idRol` INT NOT NULL ,
  `FechaAlta` TIMESTAMP NOT NULL ,
  `FechaBaja` DATETIME NULL ,
  `idEstadoUsuario` INT NULL ,
  PRIMARY KEY (`idUsuario`) ,
  INDEX `fkRol` (`idRol` ASC) ,
  INDEX `fkEstadoUsuario` (`idEstadoUsuario` ASC) ,
  INDEX `fkEmpleado` (`idEmpleado` ASC) ,
  CONSTRAINT `fkRol`
    FOREIGN KEY (`idRol` )
    REFERENCES `db_belove_modelo_3`.`Roles` (`idRole` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEstadoUsuario`
    FOREIGN KEY (`idEstadoUsuario` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEmpleado`
    FOREIGN KEY (`idEmpleado` )
    REFERENCES `db_belove_modelo_3`.`Personas` (`idPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Productos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Productos` (
  `idProducto` INT NOT NULL AUTO_INCREMENT ,
  `NombreProducto` VARCHAR(45) NOT NULL ,
  `CantidadStock` DECIMAL(2) NOT NULL ,
  `PrecioProducto` DECIMAL(2) NOT NULL ,
  `idUsuarioRegistra` INT NOT NULL ,
  `FechaRegistra` TIMESTAMP NULL ,
  `idUsuarioModifica` INT NULL ,
  `FechaModifica` DATETIME NULL ,
  `idEstadoProducto` INT NOT NULL ,
  PRIMARY KEY (`idProducto`) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  INDEX `fkIdUsuarioModifica` (`idUsuarioModifica` ASC) ,
  INDEX `fkIdEstado` (`idEstadoProducto` ASC) ,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModifica`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstado`
    FOREIGN KEY (`idEstadoProducto` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`VentasProductosClientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`VentasProductosClientes` (
  `idVentaProducto` INT NOT NULL AUTO_INCREMENT ,
  `idProducto` INT NOT NULL ,
  `idCliente` INT NOT NULL ,
  `CantidadProducto` DECIMAL(2) NOT NULL ,
  `PrecioUnitario` DECIMAL(2) NOT NULL ,
  `PrecioTotal` DECIMAL(2) NULL ,
  `idUsuarioRegistra` INT NOT NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `idEstadoCompra` INT NOT NULL ,
  PRIMARY KEY (`idVentaProducto`) ,
  INDEX `fkEstadoCompra` (`idEstadoCompra` ASC) ,
  INDEX `fkIdProducto` (`idProducto` ASC) ,
  INDEX `fkIdCliente` (`idCliente` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkEstadoCompra`
    FOREIGN KEY (`idEstadoCompra` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdProducto`
    FOREIGN KEY (`idProducto` )
    REFERENCES `db_belove_modelo_3`.`Productos` (`idProducto` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdCliente`
    FOREIGN KEY (`idCliente` )
    REFERENCES `db_belove_modelo_3`.`Personas` (`idPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`TiposServicios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`TiposServicios` (
  `idTipoServicio` INT NOT NULL AUTO_INCREMENT ,
  `NombreServicio` VARCHAR(45) NOT NULL ,
  `PrecioServicioBase` DECIMAL(2) NULL ,
  `DescripcionServicio` VARCHAR(100) NULL ,
  `idUsuarioRegistra` INT NOT NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `idUsuarioModifica` INT NULL ,
  `FechaModifica` DATETIME NULL ,
  PRIMARY KEY (`idTipoServicio`) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  INDEX `fkIdUsuarioModifica` (`idUsuarioModifica` ASC) ,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModifica`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`TiposReservas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`TiposReservas` (
  `idTipoReserva` INT NOT NULL AUTO_INCREMENT ,
  `NombreReserva` VARCHAR(45) NULL ,
  PRIMARY KEY (`idTipoReserva`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`EmpleadoEspecialidad`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`EmpleadoEspecialidad` (
  `idEmpleadoEspecialidad` INT NOT NULL AUTO_INCREMENT ,
  `idEmpleado` INT NOT NULL ,
  `idCargo` INT NOT NULL ,
  `idTipoServicio` INT NOT NULL ,
  PRIMARY KEY (`idEmpleadoEspecialidad`) ,
  INDEX `fkIdeCargo` (`idCargo` ASC) ,
  INDEX `fkIdTipoServicio` (`idTipoServicio` ASC) ,
  INDEX `fkIdEmpleado` (`idEmpleado` ASC) ,
  CONSTRAINT `fkIdeCargo`
    FOREIGN KEY (`idCargo` )
    REFERENCES `db_belove_modelo_3`.`Cargos` (`idCargo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdTipoServicio`
    FOREIGN KEY (`idTipoServicio` )
    REFERENCES `db_belove_modelo_3`.`TiposServicios` (`idTipoServicio` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEmpleado`
    FOREIGN KEY (`idEmpleado` )
    REFERENCES `db_belove_modelo_3`.`Personas` (`idPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`ReservasServicios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`ReservasServicios` (
  `idReservaServicio` INT NOT NULL AUTO_INCREMENT ,
  `idCliente` INT NOT NULL ,
  `idTipoReserva` INT NOT NULL ,
  `idTipoServicio` INT NOT NULL ,
  `idEmpleadoOperaServicio` INT NOT NULL ,
  `CelularParaCita` VARCHAR(20) NOT NULL ,
  `Precio` DECIMAL(2) NOT NULL ,
  `FechaReserva` DATETIME NOT NULL ,
  `idUsuarioRegistra` INT NOT NULL ,
  `FechaRegistra` TIMESTAMP NULL ,
  `idUsuarioModifica` INT NULL ,
  `FechaModifica` DATETIME NULL ,
  `idEstadoReserva` INT NOT NULL ,
  PRIMARY KEY (`idReservaServicio`) ,
  INDEX `fkIdTipoReserva` (`idTipoReserva` ASC) ,
  INDEX `fkIdTipoServicio` (`idTipoServicio` ASC) ,
  INDEX `fkIdEmpleadoOpera` (`idEmpleadoOperaServicio` ASC) ,
  INDEX `fkIdEstadoReserva` (`idEstadoReserva` ASC) ,
  INDEX `fkIdCliente` (`idCliente` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  INDEX `fkIdUsuarioModifica` (`idUsuarioModifica` ASC) ,
  CONSTRAINT `fkIdTipoReserva`
    FOREIGN KEY (`idTipoReserva` )
    REFERENCES `db_belove_modelo_3`.`TiposReservas` (`idTipoReserva` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdTipoServicio`
    FOREIGN KEY (`idTipoServicio` )
    REFERENCES `db_belove_modelo_3`.`TiposServicios` (`idTipoServicio` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEmpleadoOpera`
    FOREIGN KEY (`idEmpleadoOperaServicio` )
    REFERENCES `db_belove_modelo_3`.`EmpleadoEspecialidad` (`idEmpleadoEspecialidad` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoReserva`
    FOREIGN KEY (`idEstadoReserva` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdCliente`
    FOREIGN KEY (`idCliente` )
    REFERENCES `db_belove_modelo_3`.`Personas` (`idPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModifica`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`VentasGeneralesClientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`VentasGeneralesClientes` (
  `idCompra` INT NOT NULL AUTO_INCREMENT ,
  `idReservaServicio` INT NULL ,
  `idVentaProductoCliente` INT NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `idUsuarioRegistra` INT NOT NULL ,
  PRIMARY KEY (`idCompra`) ,
  INDEX `fkIdReservaServicio` (`idReservaServicio` ASC) ,
  INDEX `fkIdVentaProductoCliente` (`idVentaProductoCliente` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkIdReservaServicio`
    FOREIGN KEY (`idReservaServicio` )
    REFERENCES `db_belove_modelo_3`.`ReservasServicios` (`idReservaServicio` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdVentaProductoCliente`
    FOREIGN KEY (`idVentaProductoCliente` )
    REFERENCES `db_belove_modelo_3`.`VentasProductosClientes` (`idVentaProducto` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`HorarioEmpleados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`HorarioEmpleados` (
  `idHorarioEmpleado` INT NOT NULL AUTO_INCREMENT ,
  `idEmpleado` INT NOT NULL ,
  `Dia` VARCHAR(10) NULL ,
  `HoraIngreso` TIME NULL ,
  `HoraSalida` TIME NULL ,
  `FechaQueAsiste` DATE NULL ,
  `idUsuarioRegistra` INT NOT NULL ,
  `FechaUsuarioRegistra` TIMESTAMP NULL ,
  PRIMARY KEY (`idHorarioEmpleado`) ,
  INDEX `fkIdEmpleado` (`idEmpleado` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkIdEmpleado`
    FOREIGN KEY (`idEmpleado` )
    REFERENCES `db_belove_modelo_3`.`Personas` (`idPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`OrdenTurnosAtencion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`OrdenTurnosAtencion` (
  `idOrdenTurnoAtencion` INT NOT NULL AUTO_INCREMENT ,
  `idHorarioEmpleado` INT NOT NULL ,
  `OrdenTurnoAtencion` INT NOT NULL ,
  `HoraAsignacionCliente` TIME NOT NULL ,
  `FechaAsignacionCliente` DATE NOT NULL ,
  `idUsuarioAsignaCliente` INT NOT NULL ,
  `idEstado` INT NOT NULL ,
  PRIMARY KEY (`idOrdenTurnoAtencion`) ,
  INDEX `fkIdHorarioEmpleado` (`idHorarioEmpleado` ASC) ,
  INDEX `fkIdEstado` (`idEstado` ASC) ,
  INDEX `fkIdUsuarioAsignaCliente` (`idUsuarioAsignaCliente` ASC) ,
  CONSTRAINT `fkIdHorarioEmpleado`
    FOREIGN KEY (`idHorarioEmpleado` )
    REFERENCES `db_belove_modelo_3`.`HorarioEmpleados` (`idHorarioEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstado`
    FOREIGN KEY (`idEstado` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioAsignaCliente`
    FOREIGN KEY (`idUsuarioAsignaCliente` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
