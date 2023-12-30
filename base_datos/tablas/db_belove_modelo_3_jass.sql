SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `db_belove_modelo_3_1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `db_belove_modelo_3_1` ;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Paises`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Paises` (
  `idPais` INT NOT NULL AUTO_INCREMENT ,
  `NombrePais` VARCHAR(45) NULL ,
  `Nacionalidad` VARCHAR(45) NULL ,
  `Idioma` VARCHAR(45) NULL ,
  PRIMARY KEY (`idPais`) ,
  UNIQUE INDEX `NombrePais_UNIQUE` (`NombrePais` ASC) )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Distritos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Distritos` (
  `idDistrito` INT NOT NULL AUTO_INCREMENT ,
  `NombreDistrito` VARCHAR(30) NULL ,
  PRIMARY KEY (`idDistrito`) )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Provincias`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Provincias` (
  `idProvincia` INT NOT NULL AUTO_INCREMENT ,
  `NombreProvincia` VARCHAR(30) NULL ,
  PRIMARY KEY (`idProvincia`) )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Departamentos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Departamentos` (
  `idDepartamentos` INT NOT NULL AUTO_INCREMENT ,
  `Departamento` VARCHAR(20) NULL ,
  PRIMARY KEY (`idDepartamentos`) )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`TipoIdentificacion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`TipoIdentificacion` (
  `idTipoDocIdentificacion` INT NOT NULL AUTO_INCREMENT ,
  `NombreDoc` VARCHAR(20) NULL ,
  `Descripcion` VARCHAR(250) NULL ,
  PRIMARY KEY (`idTipoDocIdentificacion`) )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Sexo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Sexo` (
  `idSexo` INT NOT NULL AUTO_INCREMENT ,
  `NombreSexo` VARCHAR(15) NULL ,
  PRIMARY KEY (`idSexo`) )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Estados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Estados` (
  `idEstado` INT NOT NULL AUTO_INCREMENT ,
  `NombreEstado` VARCHAR(20) NULL ,
  `DescripcionEstado` VARCHAR(45) NULL ,
  PRIMARY KEY (`idEstado`) )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`TiposReservas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`TiposReservas` (
  `idTipoReserva` INT NOT NULL AUTO_INCREMENT ,
  `NombreReserva` VARCHAR(45) NULL ,
  PRIMARY KEY (`idTipoReserva`) )
ENGINE = InnoDB;






-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Sedes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Sedes` (
  `idSede` INT NOT NULL AUTO_INCREMENT ,
  `NombreSede` VARCHAR(45) NULL ,
  `IdEstado` INT NULL ,
  PRIMARY KEY (`idSede`) ,
  INDEX `fkEstado` (`IdEstado` ASC) ,
  CONSTRAINT `fkEstado`
    FOREIGN KEY (`IdEstado` )
    REFERENCES `db_belove_modelo_3_1`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Roles`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Roles` (
  `idRole` INT NOT NULL AUTO_INCREMENT ,
  `NombreRol` VARCHAR(45) NULL ,
  `DescripcionRol` VARCHAR(45) NULL ,
  `FechaCreacion` TIMESTAMP NULL ,
  `idEstadoRol` INT NULL ,
  PRIMARY KEY (`idRole`) ,
  INDEX `fkIdEstadoRol` (`idEstadoRol` ASC) ,
  CONSTRAINT `fkIdEstadoRol`
    FOREIGN KEY (`idEstadoRol` )
    REFERENCES `db_belove_modelo_3_1`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`CargosEmpleados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`CargosEmpleados` (
  `idCargo` INT NOT NULL AUTO_INCREMENT ,
  `NombreCargo` VARCHAR(45) NULL ,
  `idEstadoCargo` INT NULL ,
  PRIMARY KEY (`idCargo`) ,
  INDEX `fkIdEstadoCargo` (`idEstadoCargo` ASC) ,
  CONSTRAINT `fkIdEstadoCargo`
    FOREIGN KEY (`idEstadoCargo` )
    REFERENCES `db_belove_modelo_3_1`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Direcciones`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Direcciones` (
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
    REFERENCES `db_belove_modelo_3_1`.`Paises` (`idPais` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdDepartamento`
    FOREIGN KEY (`idDepartamento` )
    REFERENCES `db_belove_modelo_3_1`.`Departamentos` (`idDepartamentos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdProvincia`
    FOREIGN KEY (`idProvincia` )
    REFERENCES `db_belove_modelo_3_1`.`Provincias` (`idProvincia` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdDistrito`
    FOREIGN KEY (`idDistrito` )
    REFERENCES `db_belove_modelo_3_1`.`Distritos` (`idDistrito` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Personas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Personas` (
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
  `FechaModifica` DATETIME NULL ,
  PRIMARY KEY (`idPersona`) ,
  UNIQUE INDEX `NumIdentificacion_UNIQUE` (`NumIdentificacion` ASC) ,
  INDEX `fkTipoIdentificacion` (`idTipoIdentificacion` ASC) ,
  INDEX `fkIdSexo` (`IdSexo` ASC) ,
  INDEX `fkIdDireccion` (`IdDireccion` ASC) ,
  CONSTRAINT `fkTipoIdentificacion`
    FOREIGN KEY (`idTipoIdentificacion` )
    REFERENCES `db_belove_modelo_3_1`.`TipoIdentificacion` (`idTipoDocIdentificacion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdSexo`
    FOREIGN KEY (`IdSexo` )
    REFERENCES `db_belove_modelo_3_1`.`Sexo` (`idSexo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdDireccion`
    FOREIGN KEY (`IdDireccion` )
    REFERENCES `db_belove_modelo_3_1`.`Direcciones` (`idDireccion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Empleados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Empleados` (
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
    REFERENCES `db_belove_modelo_3_1`.`Personas` (`idPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstado`
    FOREIGN KEY (`idEstado` )
    REFERENCES `db_belove_modelo_3_1`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdCargoEmpleado`
    FOREIGN KEY (`idCargoEmpleado` )
    REFERENCES `db_belove_modelo_3_1`.`CargosEmpleados` (`idCargo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdSede`
    FOREIGN KEY (`idSede` )
    REFERENCES `db_belove_modelo_3_1`.`Sedes` (`idSede` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Usuarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT ,
  `idEmpleado` INT NULL ,
  `Email` VARCHAR(45) NULL ,
  `pass` VARCHAR(200) NULL ,
  `idRol` INT NULL ,
  `FechaAlta` TIMESTAMP NULL ,
  `FechaBaja` DATETIME NULL ,
  `idEstadoUsuario` INT NULL ,
  PRIMARY KEY (`idUsuario`) ,
  INDEX `fkRol` (`idRol` ASC) ,
  INDEX `fkEstadoUsuario` (`idEstadoUsuario` ASC) ,
  INDEX `fkEmpleado` (`idEmpleado` ASC) ,
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) ,
  CONSTRAINT `fkRol`
    FOREIGN KEY (`idRol` )
    REFERENCES `db_belove_modelo_3_1`.`Roles` (`idRole` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEstadoUsuario`
    FOREIGN KEY (`idEstadoUsuario` )
    REFERENCES `db_belove_modelo_3_1`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEmpleado`
    FOREIGN KEY (`idEmpleado` )
    REFERENCES `db_belove_modelo_3_1`.`Empleados` (`idEmpleados` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`HorarioEmpleados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`HorarioEmpleados` (
  `idHorarioEmpleado` INT NOT NULL AUTO_INCREMENT ,
  `idEmpleado` INT NULL ,
  `Dia` VARCHAR(10) NULL ,
  `HoraIngreso` TIME NULL ,
  `HoraSalida` TIME NULL ,
  `FechaQueAsiste` DATE NULL ,
  `idUsuarioRegistra` INT NULL ,
  `FechaUsuarioRegistra` TIMESTAMP NULL ,
  PRIMARY KEY (`idHorarioEmpleado`) ,
  INDEX `fkIdEmpleado` (`idEmpleado` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkIdEmpleado`
    FOREIGN KEY (`idEmpleado` )
    REFERENCES `db_belove_modelo_3_1`.`Personas` (`idPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;





-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Clientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Clientes` (
  `idClientes` INT NOT NULL AUTO_INCREMENT ,
  `idPersona` INT NULL ,
  `Celular` VARCHAR(25) NULL ,
  `idEstado` INT NULL ,
  `idUsuarioRegistra` INT NULL ,
  `FechaUsuarioRegistra` TIMESTAMP NULL ,
  PRIMARY KEY (`idClientes`) ,
  INDEX `fkIdPersona` (`idPersona` ASC) ,
  INDEX `fkIdEstado` (`idEstado` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkIdPersona`
    FOREIGN KEY (`idPersona` )
    REFERENCES `db_belove_modelo_3_1`.`Personas` (`idPersona` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstado`
    FOREIGN KEY (`idEstado` )
    REFERENCES `db_belove_modelo_3_1`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;






































-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`Productos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`Productos` (
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
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  INDEX `fkIdUsuarioModifica` (`idUsuarioModifica` ASC) ,
  INDEX `fkIdEstado` (`idEstadoProducto` ASC) ,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModifica`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstado`
    FOREIGN KEY (`idEstadoProducto` )
    REFERENCES `db_belove_modelo_3_1`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`VentasProductosClientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`VentasProductosClientes` (
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
  INDEX `fkEstadoCompra` (`idEstadoCompra` ASC) ,
  INDEX `fkIdProducto` (`idProducto` ASC) ,
  INDEX `fkIdCliente` (`idCliente` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkEstadoCompra`
    FOREIGN KEY (`idEstadoCompra` )
    REFERENCES `db_belove_modelo_3_1`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdProducto`
    FOREIGN KEY (`idProducto` )
    REFERENCES `db_belove_modelo_3_1`.`Productos` (`idProducto` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdCliente`
    FOREIGN KEY (`idCliente` )
    REFERENCES `db_belove_modelo_3_1`.`Clientes` (`idClientes` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`TiposServicios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`TiposServicios` (
  `idTipoServicio` INT NOT NULL AUTO_INCREMENT ,
  `NombreServicio` VARCHAR(45) NULL ,
  `PrecioServicioBase` DECIMAL(2) NULL ,
  `DescripcionServicio` VARCHAR(100) NULL ,
  `idUsuarioRegistra` INT NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `idUsuarioModifica` INT NULL ,
  `FechaModifica` DATETIME NULL ,
  PRIMARY KEY (`idTipoServicio`) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  INDEX `fkIdUsuarioModifica` (`idUsuarioModifica` ASC) ,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModifica`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`ReservasServicios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`ReservasServicios` (
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
  INDEX `fkIdTipoReserva` (`idTipoReserva` ASC) ,
  INDEX `fkIdTipoServicio` (`idTipoServicio` ASC) ,
  INDEX `fkIdEstadoReserva` (`idEstadoReserva` ASC) ,
  INDEX `fkIdCliente` (`idCliente` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  INDEX `fkIdUsuarioModifica` (`idUsuarioModifica` ASC) ,
  INDEX `fkIdEmpleadoOpera` (`idEmpleadoOperaServicio` ASC) ,
  CONSTRAINT `fkIdTipoReserva`
    FOREIGN KEY (`idTipoReserva` )
    REFERENCES `db_belove_modelo_3_1`.`TiposReservas` (`idTipoReserva` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdTipoServicio`
    FOREIGN KEY (`idTipoServicio` )
    REFERENCES `db_belove_modelo_3_1`.`TiposServicios` (`idTipoServicio` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoReserva`
    FOREIGN KEY (`idEstadoReserva` )
    REFERENCES `db_belove_modelo_3_1`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdCliente`
    FOREIGN KEY (`idCliente` )
    REFERENCES `db_belove_modelo_3_1`.`Clientes` (`idClientes` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModifica`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEmpleadoOpera`
    FOREIGN KEY (`idEmpleadoOperaServicio` )
    REFERENCES `db_belove_modelo_3_1`.`Empleados` (`idEmpleados` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`VentasGeneralesClientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`VentasGeneralesClientes` (
  `idCompra` INT NOT NULL AUTO_INCREMENT ,
  `idReservaServicio` INT NULL ,
  `idVentaProductoCliente` INT NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `idUsuarioRegistra` INT NULL ,
  PRIMARY KEY (`idCompra`) ,
  INDEX `fkIdReservaServicio` (`idReservaServicio` ASC) ,
  INDEX `fkIdVentaProductoCliente` (`idVentaProductoCliente` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistra` ASC) ,
  CONSTRAINT `fkIdReservaServicio`
    FOREIGN KEY (`idReservaServicio` )
    REFERENCES `db_belove_modelo_3_1`.`ReservasServicios` (`idReservaServicio` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdVentaProductoCliente`
    FOREIGN KEY (`idVentaProductoCliente` )
    REFERENCES `db_belove_modelo_3_1`.`VentasProductosClientes` (`idVentaProducto` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistra` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `db_belove_modelo_3_1`.`OrdenTurnosAtencion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_3_1`.`OrdenTurnosAtencion` (
  `idOrdenTurnoAtencion` INT NOT NULL AUTO_INCREMENT ,
  `idHorarioEmpleado` INT NULL ,
  `OrdenTurnoAtencion` INT NULL ,
  `HoraAsignacionCliente` TIME NULL ,
  `FechaAsignacionCliente` DATE NULL ,
  `idUsuarioAsignaCliente` INT NULL ,
  `idEstado` INT NULL ,
  PRIMARY KEY (`idOrdenTurnoAtencion`) ,
  INDEX `fkIdHorarioEmpleado` (`idHorarioEmpleado` ASC) ,
  INDEX `fkIdEstado` (`idEstado` ASC) ,
  INDEX `fkIdUsuarioAsignaCliente` (`idUsuarioAsignaCliente` ASC) ,
  CONSTRAINT `fkIdHorarioEmpleado`
    FOREIGN KEY (`idHorarioEmpleado` )
    REFERENCES `db_belove_modelo_3_1`.`HorarioEmpleados` (`idHorarioEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstado`
    FOREIGN KEY (`idEstado` )
    REFERENCES `db_belove_modelo_3_1`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioAsignaCliente`
    FOREIGN KEY (`idUsuarioAsignaCliente` )
    REFERENCES `db_belove_modelo_3_1`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
