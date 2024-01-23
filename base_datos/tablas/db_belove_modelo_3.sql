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
  `NombreEstado` VARCHAR(20) NULL ,
  `DescripcionEstado` VARCHAR(45) NULL ,
  PRIMARY KEY (`idEstado`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Roles`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Roles` (
  `idRol` INT NOT NULL AUTO_INCREMENT ,
  `NombreRol` VARCHAR(45) NULL ,
  `DescripcionRol` VARCHAR(45) NULL ,
  `FechaCreacion` TIMESTAMP NULL ,
  `idEstadoRol` INT NULL ,
  PRIMARY KEY (`idRol`) ,
  INDEX `fkIdEstadoRol` (`idEstadoRol` ASC) ,
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
  `NombreDoc` VARCHAR(20) NULL ,
  `Descripcion` VARCHAR(250) NULL ,
  PRIMARY KEY (`idTipoDocIdentificacion`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Sexo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Sexo` (
  `idSexo` INT NOT NULL AUTO_INCREMENT ,
  `NombreSexo` VARCHAR(15) NULL ,
  PRIMARY KEY (`idSexo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Paises`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Paises` (
  `idPais` INT NOT NULL AUTO_INCREMENT ,
  `NombrePais` VARCHAR(45) NULL ,
  `Nacionalidad` VARCHAR(45) NULL ,
  `Idioma` VARCHAR(45) NULL ,
  PRIMARY KEY (`idPais`) ,
  UNIQUE INDEX `NombrePais_UNIQUE` (`NombrePais` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Departamentos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Departamentos` (
  `idDepartamentos` INT NOT NULL AUTO_INCREMENT ,
  `Departamento` VARCHAR(20) NULL ,
  `idPaies` INT NULL ,
  PRIMARY KEY (`idDepartamentos`) ,
  INDEX `fkIdPais_1` (`idPaies` ASC) ,
  CONSTRAINT `fkIdPais_1`
    FOREIGN KEY (`idPaies` )
    REFERENCES `db_belove_modelo_3`.`Paises` (`idPais` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Provincias`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Provincias` (
  `idProvincia` INT NOT NULL AUTO_INCREMENT ,
  `NombreProvincia` VARCHAR(30) NULL ,
  `idDepartamento` INT NULL ,
  PRIMARY KEY (`idProvincia`) ,
  INDEX `fkIdDepartamento_Pro` (`idDepartamento` ASC) ,
  CONSTRAINT `fkIdDepartamento_Pro`
    FOREIGN KEY (`idDepartamento` )
    REFERENCES `db_belove_modelo_3`.`Departamentos` (`idDepartamentos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Distritos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Distritos` (
  `idDistrito` INT NOT NULL AUTO_INCREMENT ,
  `NombreDistrito` VARCHAR(30) NULL ,
  `idProvincia` INT NULL ,
  PRIMARY KEY (`idDistrito`) ,
  INDEX `fkIdProvincia_Dis` (`idProvincia` ASC) ,
  CONSTRAINT `fkIdProvincia_Dis`
    FOREIGN KEY (`idProvincia` )
    REFERENCES `db_belove_modelo_3`.`Provincias` (`idProvincia` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
-- Table `db_belove_modelo_3`.`Personas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Personas` (
  `idPersona` INT NOT NULL AUTO_INCREMENT ,
  `idTipoIdentificacion` INT NULL ,
  `NumIdentificacion` VARCHAR(15) NULL ,
  `NombrePersona` VARCHAR(45) NULL ,
  `ApellidoPaterno` VARCHAR(45) NULL ,
  `ApellidoMaterno` VARCHAR(45) NULL ,
  `IdSexo` INT NULL ,
  `IdDireccion` INT NULL ,
  `FechaNacimiento` DATE NULL ,
  `FechaRegistra` TIMESTAMP NULL ,
  PRIMARY KEY (`idPersona`) ,
  UNIQUE INDEX `NumIdentificacion_UNIQUE` (`NumIdentificacion` ASC) ,
  INDEX `fkTipoIdentificacion` (`idTipoIdentificacion` ASC) ,
  INDEX `fkIdSexo` (`IdSexo` ASC) ,
  INDEX `fkIdDireccion` (`IdDireccion` ASC) ,
  CONSTRAINT `fkTipoIdentificacion`
    FOREIGN KEY (`idTipoIdentificacion` )
    REFERENCES `db_belove_modelo_3`.`TipoIdentificacion` (`idTipoDocIdentificacion` )
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
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`CargosEmpleados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`CargosEmpleados` (
  `idCargo` INT NOT NULL AUTO_INCREMENT ,
  `NombreCargo` VARCHAR(45) NULL ,
  `idEstadoCargo` INT NULL ,
  PRIMARY KEY (`idCargo`) ,
  INDEX `fkIdEstadoCargo` (`idEstadoCargo` ASC) ,
  CONSTRAINT `fkIdEstadoCargo`
    FOREIGN KEY (`idEstadoCargo` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
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
-- Table `db_belove_modelo_3`.`Empleados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Empleados` (
  `idEmpleados` INT NOT NULL ,
  `idPersona` INT NULL ,
  `idEstado` INT NULL ,
  `idCargoEmpleado` INT NULL ,
  `idSede` INT NULL ,
  `Celular` VARCHAR(25) NULL ,
  `Email` VARCHAR(45) NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `FechaModifica` DATETIME NULL ,
  PRIMARY KEY (`idEmpleados`) ,
  INDEX `fkIdPersona` (`idPersona` ASC) ,
  INDEX `fkIdEstado` (`idEstado` ASC) ,
  INDEX `fkIdCargoEmpleado` (`idCargoEmpleado` ASC) ,
  INDEX `fkIdSede` (`idSede` ASC) ,
  CONSTRAINT `fkIdPersona`
    FOREIGN KEY (`idPersona` )
    REFERENCES `db_belove_modelo_3`.`Personas` (`idPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstado`
    FOREIGN KEY (`idEstado` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdCargoEmpleado`
    FOREIGN KEY (`idCargoEmpleado` )
    REFERENCES `db_belove_modelo_3`.`CargosEmpleados` (`idCargo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdSede`
    FOREIGN KEY (`idSede` )
    REFERENCES `db_belove_modelo_3`.`Sedes` (`idSede` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Usuarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT ,
  `idEmpleado` INT NULL ,
  `Email` VARCHAR(45) NULL ,
  `pass` VARCHAR(200) NULL ,
  `idRolUsuario` INT NULL ,
  `FechaAlta` TIMESTAMP NULL ,
  `FechaBaja` DATETIME NULL ,
  `idEstadoUsuario` INT NULL ,
  PRIMARY KEY (`idUsuario`) ,
  INDEX `fkRolUsuario` (`idRolUsuario` ASC) ,
  INDEX `fkEstadoUsuario` (`idEstadoUsuario` ASC) ,
  INDEX `fkEmpleado1` (`idEmpleado` ASC) ,
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) ,
  CONSTRAINT `fkRolUsuario`
    FOREIGN KEY (`idRolUsuario` )
    REFERENCES `db_belove_modelo_3`.`Roles` (`idRol` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEstadoUsuario`
    FOREIGN KEY (`idEstadoUsuario` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEmpleado1`
    FOREIGN KEY (`idEmpleado` )
    REFERENCES `db_belove_modelo_3`.`Empleados` (`idEmpleados` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Productos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Productos` (
  `idProducto` INT NOT NULL AUTO_INCREMENT ,
  `NombreProducto` VARCHAR(45) NULL ,
  `CantidadStock` DECIMAL(2) NULL ,
  `PrecioProducto` DECIMAL(2) NULL ,
  `idUsuarioRegistra` INT NULL ,
  `FechaRegistra` TIMESTAMP NULL ,
  `idUsuarioModifica` INT NULL ,
  `FechaModifica` DATETIME NULL ,
  `idEstadoProducto` INT NULL ,
  PRIMARY KEY (`idProducto`) ,
  INDEX `fkIdUsuarioRegistraP` (`idUsuarioRegistra` ASC) ,
  INDEX `fkIdUsuarioModificaP` (`idUsuarioModifica` ASC) ,
  INDEX `fkIdEstadoP` (`idEstadoProducto` ASC) ,
  CONSTRAINT `fkIdUsuarioRegistraP`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModificaP`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoP`
    FOREIGN KEY (`idEstadoProducto` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`Clientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`Clientes` (
  `idClientes` INT NOT NULL AUTO_INCREMENT ,
  `idPersona` INT NULL ,
  `Celular` VARCHAR(25) NULL ,
  `idEstado` INT NULL ,
  `idUsuarioRegistra` INT NULL ,
  `FechaUsuarioRegistra` TIMESTAMP NULL ,
  PRIMARY KEY (`idClientes`) ,
  INDEX `fkIdPersonaC` (`idPersona` ASC) ,
  INDEX `fkIdEstadoC` (`idEstado` ASC) ,
  INDEX `fkIdUsuarioRegistraC` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkIdPersonaC`
    FOREIGN KEY (`idPersona` )
    REFERENCES `db_belove_modelo_3`.`Personas` (`idPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoC`
    FOREIGN KEY (`idEstado` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistraC`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3`.`VentasProductosClientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`VentasProductosClientes` (
  `idVentaProducto` INT NOT NULL AUTO_INCREMENT ,
  `idProducto` INT NULL ,
  `idCliente` INT NULL ,
  `CantidadProducto` DECIMAL(2) NULL ,
  `PrecioUnitario` DECIMAL(2) NULL ,
  `PrecioTotal` DECIMAL(2) NULL ,
  `idUsuarioRegistra` INT NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `idEstadoCompra` INT NULL ,
  PRIMARY KEY (`idVentaProducto`) ,
  INDEX `fkEstadoCompraVPC` (`idEstadoCompra` ASC) ,
  INDEX `fkIdProductoVPC` (`idProducto` ASC) ,
  INDEX `fkIdClienteVPC` (`idCliente` ASC) ,
  INDEX `fkIdUsuarioRegistraVPC` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkEstadoCompraVPC`
    FOREIGN KEY (`idEstadoCompra` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdProductoVPC`
    FOREIGN KEY (`idProducto` )
    REFERENCES `db_belove_modelo_3`.`Productos` (`idProducto` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdClienteVPC`
    FOREIGN KEY (`idCliente` )
    REFERENCES `db_belove_modelo_3`.`Clientes` (`idClientes` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistraVPC`
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
  `NombreServicio` VARCHAR(45) NULL ,
  `PrecioServicioBase` DECIMAL(2) NULL ,
  `DescripcionServicio` VARCHAR(100) NULL ,
  `idUsuarioRegistra` INT NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `idUsuarioModifica` INT NULL ,
  `FechaModifica` DATETIME NULL ,
  PRIMARY KEY (`idTipoServicio`) ,
  INDEX `fkIdUsuarioRegistraTS` (`idUsuarioRegistra` ASC) ,
  INDEX `fkIdUsuarioModificaTS` (`idUsuarioModifica` ASC) ,
  CONSTRAINT `fkIdUsuarioRegistraTS`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModificaTS`
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
-- Table `db_belove_modelo_3`.`ReservasServicios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3`.`ReservasServicios` (
  `idReservaServicio` INT NOT NULL AUTO_INCREMENT ,
  `idCliente` INT NULL ,
  `idTipoReserva` INT NULL ,
  `idTipoServicio` INT NULL ,
  `idEmpleadoOperaServicio` INT NULL ,
  `CelularClienteCita` VARCHAR(20) NULL ,
  `Precio` DECIMAL(2) NULL ,
  `FechaReserva` DATETIME NULL ,
  `idUsuarioRegistra` INT NULL ,
  `FechaRegistra` TIMESTAMP NULL ,
  `idUsuarioModifica` INT NULL ,
  `FechaModifica` DATETIME NULL ,
  `idEstadoReserva` INT NULL ,
  PRIMARY KEY (`idReservaServicio`) ,
  INDEX `fkIdTipoReservaRS` (`idTipoReserva` ASC) ,
  INDEX `fkIdTipoServicioRS` (`idTipoServicio` ASC) ,
  INDEX `fkIdEstadoReservaRS` (`idEstadoReserva` ASC) ,
  INDEX `fkIdClienteRS` (`idCliente` ASC) ,
  INDEX `fkIdUsuarioRegistraRS` (`idUsuarioRegistra` ASC) ,
  INDEX `fkIdUsuarioModificaRS` (`idUsuarioModifica` ASC) ,
  INDEX `fkIdEmpleadoOperaRS` (`idEmpleadoOperaServicio` ASC) ,
  CONSTRAINT `fkIdTipoReservaRS`
    FOREIGN KEY (`idTipoReserva` )
    REFERENCES `db_belove_modelo_3`.`TiposReservas` (`idTipoReserva` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdTipoServicioRS`
    FOREIGN KEY (`idTipoServicio` )
    REFERENCES `db_belove_modelo_3`.`TiposServicios` (`idTipoServicio` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoReservaRS`
    FOREIGN KEY (`idEstadoReserva` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdClienteRS`
    FOREIGN KEY (`idCliente` )
    REFERENCES `db_belove_modelo_3`.`Clientes` (`idClientes` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistraRS`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModificaRS`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEmpleadoOperaRS`
    FOREIGN KEY (`idEmpleadoOperaServicio` )
    REFERENCES `db_belove_modelo_3`.`Empleados` (`idEmpleados` )
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
  `idUsuarioRegistra` INT NULL ,
  PRIMARY KEY (`idCompra`) ,
  INDEX `fkIdReservaServicioVGC` (`idReservaServicio` ASC) ,
  INDEX `fkIdVentaProductoClienteVGC` (`idVentaProductoCliente` ASC) ,
  INDEX `fkIdUsuarioRegistraVGC` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkIdReservaServicioVGC`
    FOREIGN KEY (`idReservaServicio` )
    REFERENCES `db_belove_modelo_3`.`ReservasServicios` (`idReservaServicio` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdVentaProductoClienteVGC`
    FOREIGN KEY (`idVentaProductoCliente` )
    REFERENCES `db_belove_modelo_3`.`VentasProductosClientes` (`idVentaProducto` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistraVGC`
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
  `idEmpleado` INT NULL ,
  `Dia` VARCHAR(10) NULL ,
  `HoraIngreso` TIME NULL ,
  `HoraSalida` TIME NULL ,
  `FechaQueAsiste` DATE NULL ,
  `idUsuarioRegistra` INT NULL ,
  `FechaUsuarioRegistra` TIMESTAMP NULL ,
  PRIMARY KEY (`idHorarioEmpleado`) ,
  INDEX `fkIdEmpleado1` (`idEmpleado` ASC) ,
  INDEX `fkIdUsuarioRegistraHE` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkIdEmpleado1`
    FOREIGN KEY (`idEmpleado` )
    REFERENCES `db_belove_modelo_3`.`Empleados` (`idEmpleados` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistraHE`
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
  `idHorarioEmpleado` INT NULL ,
  `OrdenTurnoAtencion` INT NULL ,
  `HoraAsignacionCliente` TIME NULL ,
  `FechaAsignacionCliente` DATE NULL ,
  `idUsuarioAsignaCliente` INT NULL ,
  `idEstado` INT NULL ,
  PRIMARY KEY (`idOrdenTurnoAtencion`) ,
  INDEX `fkIdHorarioEmpleadoOTA` (`idHorarioEmpleado` ASC) ,
  INDEX `fkIdEstadoOTA` (`idEstado` ASC) ,
  INDEX `fkIdUsuarioAsignaClienteOTA` (`idUsuarioAsignaCliente` ASC) ,
  CONSTRAINT `fkIdHorarioEmpleadoOTA`
    FOREIGN KEY (`idHorarioEmpleado` )
    REFERENCES `db_belove_modelo_3`.`HorarioEmpleados` (`idHorarioEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoOTA`
    FOREIGN KEY (`idEstado` )
    REFERENCES `db_belove_modelo_3`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioAsignaClienteOTA`
    FOREIGN KEY (`idUsuarioAsignaCliente` )
    REFERENCES `db_belove_modelo_3`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
