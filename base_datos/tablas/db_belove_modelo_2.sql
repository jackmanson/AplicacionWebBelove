


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
  
CREATE SCHEMA IF NOT EXISTS `db_belove_modelo_2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `db_belove_modelo_2` ;

-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`TipoIdentificacion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`TipoIdentificacion` (
  `idTipoDocIdentificacion` INT NOT NULL AUTO_INCREMENT ,
  `NombreDoc` VARCHAR(20) NOT NULL ,
  `Descripcion` VARCHAR(250) NULL ,
  PRIMARY KEY (`idTipoDocIdentificacion`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Estados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Estados` (
  `idEstado` INT NOT NULL AUTO_INCREMENT ,
  `NombreEstado` VARCHAR(20) NOT NULL ,
  `DescripcionEstado` VARCHAR(45) NULL ,
  PRIMARY KEY (`idEstado`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Sexo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Sexo` (
  `idSexo` INT NOT NULL AUTO_INCREMENT ,
  `NombreSexo` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`idSexo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Paises`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Paises` (
  `idPais` INT NOT NULL AUTO_INCREMENT ,
  `NombrePais` VARCHAR(45) NOT NULL ,
  `Nacionalidad` VARCHAR(45) NULL ,
  `Idioma` VARCHAR(45) NULL ,
  PRIMARY KEY (`idPais`) ,
  UNIQUE INDEX `NombrePais_UNIQUE` (`NombrePais` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Departamentos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Departamentos` (
  `Departamento` VARCHAR(20) NULL ,
  `idDepartamentos` INT NOT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`idDepartamentos`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Provincias`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Provincias` (
  `idProvincia` INT NOT NULL AUTO_INCREMENT ,
  `NombreProvincia` VARCHAR(30) NULL ,
  PRIMARY KEY (`idProvincia`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Distritos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Distritos` (
  `idDistrito` INT NOT NULL AUTO_INCREMENT ,
  `NombreDistrito` VARCHAR(30) NULL ,
  PRIMARY KEY (`idDistrito`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Direccion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Direccion` (
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
    REFERENCES `db_belove_modelo_2`.`Paises` (`idPais` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdDepartamento`
    FOREIGN KEY (`idDepartamento` )
    REFERENCES `db_belove_modelo_2`.`Departamentos` (`idDepartamentos` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdProvincia`
    FOREIGN KEY (`idProvincia` )
    REFERENCES `db_belove_modelo_2`.`Provincias` (`idProvincia` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdDistrito`
    FOREIGN KEY (`idDistrito` )
    REFERENCES `db_belove_modelo_2`.`Distritos` (`idDistrito` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`PersonaIdentificacion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`PersonaIdentificacion` (
  `idIdentificacion` INT NOT NULL AUTO_INCREMENT ,
  `idTipoIdentificacion` INT NOT NULL ,
  `NumIdentificacion` VARCHAR(15) NOT NULL ,
  `NombrePersona` VARCHAR(45) NOT NULL ,
  `ApellidoPaterno` VARCHAR(45) NOT NULL ,
  `ApellidoMaterno` VARCHAR(45) NOT NULL ,
  `IdSexo` INT NULL ,
  `IdDireccion` INT NULL ,
  `FechaNacimiento` DATE NULL ,
  `idEstadoDocumento` INT NULL ,
  PRIMARY KEY (`idIdentificacion`) ,
  UNIQUE INDEX `NumIdentificacion_UNIQUE` (`NumIdentificacion` ASC) ,
  INDEX `fkTipoIdentificacion` (`idTipoIdentificacion` ASC) ,
  INDEX `fkEstadoDocumento` (`idEstadoDocumento` ASC) ,
  INDEX `fkIdSexo` (`IdSexo` ASC) ,
  INDEX `fkIdDireccion` (`IdDireccion` ASC) ,
  CONSTRAINT `fkTipoIdentificacion`
    FOREIGN KEY (`idTipoIdentificacion` )
    REFERENCES `db_belove_modelo_2`.`TipoIdentificacion` (`idTipoDocIdentificacion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEstadoDocumento`
    FOREIGN KEY (`idEstadoDocumento` )
    REFERENCES `db_belove_modelo_2`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdSexo`
    FOREIGN KEY (`IdSexo` )
    REFERENCES `db_belove_modelo_2`.`Sexo` (`idSexo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdDireccion`
    FOREIGN KEY (`IdDireccion` )
    REFERENCES `db_belove_modelo_2`.`Direccion` (`idDireccion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Cargos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Cargos` (
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
    REFERENCES `db_belove_modelo_2`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModificaCargo`
    FOREIGN KEY (`idUsuarioModificaCargo` )
    REFERENCES `db_belove_modelo_2`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoCargo`
    FOREIGN KEY (`idEstadoCargo` )
    REFERENCES `db_belove_modelo_2`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Empleados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Empleados` (
  `idEmpleado` INT NOT NULL AUTO_INCREMENT ,
  `idDatosPersona` INT NOT NULL ,
  `Email` VARCHAR(45) NULL ,
  `idCargo` INT NOT NULL ,
  `Celular` VARCHAR(20) NULL ,
  `idEstadoDisponibilidad` INT NULL ,
  `idEstadoLaboral` INT NULL ,
  `FechaRegistroEmpleado` TIMESTAMP NULL ,
  `idUsuarioRegistraEmpleado` INT NULL ,
  `FechaModificaEmpleado` DATETIME NULL ,
  `idUsuarioModificaEmpleado` INT NULL ,
  PRIMARY KEY (`idEmpleado`) ,
  INDEX `fkIdDatosPersona` (`idDatosPersona` ASC) ,
  INDEX `fkIdCargo` (`idCargo` ASC) ,
  INDEX `fkIdEstadoDisponibilidad` (`idEstadoDisponibilidad` ASC) ,
  INDEX `fkIdEstadoLaboral` (`idEstadoLaboral` ASC) ,
  INDEX `fkIdUsuarioRegistra` (`idUsuarioRegistraEmpleado` ASC) ,
  INDEX `fkIdUsuarioModifica` (`idUsuarioModificaEmpleado` ASC) ,
  CONSTRAINT `fkIdDatosPersona`
    FOREIGN KEY (`idDatosPersona` )
    REFERENCES `db_belove_modelo_2`.`PersonaIdentificacion` (`idIdentificacion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdCargo`
    FOREIGN KEY (`idCargo` )
    REFERENCES `db_belove_modelo_2`.`Cargos` (`idCargo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoDisponibilidad`
    FOREIGN KEY (`idEstadoDisponibilidad` )
    REFERENCES `db_belove_modelo_2`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoLaboral`
    FOREIGN KEY (`idEstadoLaboral` )
    REFERENCES `db_belove_modelo_2`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioRegistra`
    FOREIGN KEY (`idUsuarioRegistraEmpleado` )
    REFERENCES `db_belove_modelo_2`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModifica`
    FOREIGN KEY (`idUsuarioModificaEmpleado` )
    REFERENCES `db_belove_modelo_2`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Roles`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Roles` (
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
    REFERENCES `db_belove_modelo_2`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoRol`
    FOREIGN KEY (`idEstadoRol` )
    REFERENCES `db_belove_modelo_2`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Usuarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT ,
  `idEmpleado` INT NOT NULL ,
  `Email` VARCHAR(45) NOT NULL ,
  `pass` VARCHAR(200) NOT NULL ,
  `idRol` INT NOT NULL ,
  `FechaAlta` TIMESTAMP NOT NULL ,
  `FechaBaja` DATETIME NULL ,
  `idEstadoUsuario` INT NULL ,
  PRIMARY KEY (`idUsuario`) ,
  INDEX `fkIdEmpleado` (`idEmpleado` ASC) ,
  INDEX `fkRol` (`idRol` ASC) ,
  INDEX `fkEstadoUsuario` (`idEstadoUsuario` ASC) ,
  CONSTRAINT `fkIdEmpleado`
    FOREIGN KEY (`idEmpleado` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkRol`
    FOREIGN KEY (`idRol` )
    REFERENCES `db_belove_modelo_2`.`Roles` (`idRole` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEstadoUsuario`
    FOREIGN KEY (`idEstadoUsuario` )
    REFERENCES `db_belove_modelo_2`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Clientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Clientes` (
  `idCliente` INT NOT NULL AUTO_INCREMENT ,
  `idDatosPersona` INT NOT NULL ,
  `CelularCliente` VARCHAR(20) NULL ,
  `Email` VARCHAR(45) NULL ,
  `idEmpleadoRegistra` INT NOT NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `idEmpleadoModifica` INT NULL ,
  `FechaModifica` DATETIME NULL ,
  `idCuentaUsuario` INT NULL ,
  PRIMARY KEY (`idCliente`) ,
  INDEX `fkDatosPersona` (`idCliente` ASC) ,
  INDEX `fkEmpleadoRegistra` (`idEmpleadoRegistra` ASC) ,
  INDEX `fkEmpleadoModifica` (`idEmpleadoModifica` ASC) ,
  INDEX `fkCuentaUsuario` (`idCuentaUsuario` ASC) ,
  CONSTRAINT `fkDatosPersona`
    FOREIGN KEY (`idCliente` )
    REFERENCES `db_belove_modelo_2`.`PersonaIdentificacion` (`idIdentificacion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEmpleadoRegistra`
    FOREIGN KEY (`idEmpleadoRegistra` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEmpleadoModifica`
    FOREIGN KEY (`idEmpleadoModifica` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkCuentaUsuario`
    FOREIGN KEY (`idCuentaUsuario` )
    REFERENCES `db_belove_modelo_2`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`Productos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`Productos` (
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
    REFERENCES `db_belove_modelo_2`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModifica`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_2`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstado`
    FOREIGN KEY (`idEstadoProducto` )
    REFERENCES `db_belove_modelo_2`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`VentasProductosClientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`VentasProductosClientes` (
  `idVentaProducto` INT NOT NULL AUTO_INCREMENT ,
  `idProducto` INT NOT NULL ,
  `idCliente` INT NOT NULL ,
  `CantidadProducto` DECIMAL(2) NOT NULL ,
  `PrecioUnitario` DECIMAL(2) NOT NULL ,
  `PrecioTotal` DECIMAL(2) NULL ,
  `idEmpleadoRegistra` INT NOT NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `idEstadoCompra` INT NOT NULL ,
  PRIMARY KEY (`idVentaProducto`) ,
  INDEX `fkIdEmpleadoRegistra` (`idEmpleadoRegistra` ASC) ,
  INDEX `fkEstadoCompra` (`idEstadoCompra` ASC) ,
  INDEX `fkIdProducto` (`idProducto` ASC) ,
  INDEX `fkIdCliente` (`idCliente` ASC) ,
  CONSTRAINT `fkIdEmpleadoRegistra`
    FOREIGN KEY (`idEmpleadoRegistra` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkEstadoCompra`
    FOREIGN KEY (`idEstadoCompra` )
    REFERENCES `db_belove_modelo_2`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdProducto`
    FOREIGN KEY (`idProducto` )
    REFERENCES `db_belove_modelo_2`.`Productos` (`idProducto` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdCliente`
    FOREIGN KEY (`idCliente` )
    REFERENCES `db_belove_modelo_2`.`Clientes` (`idCliente` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`TiposServicios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`TiposServicios` (
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
    REFERENCES `db_belove_modelo_2`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdUsuarioModifica`
    FOREIGN KEY (`idUsuarioModifica` )
    REFERENCES `db_belove_modelo_2`.`Usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`TiposReservas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`TiposReservas` (
  `idTipoReserva` INT NOT NULL AUTO_INCREMENT ,
  `NombreReserva` VARCHAR(45) NULL ,
  PRIMARY KEY (`idTipoReserva`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`ReservasServicios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`ReservasServicios` (
  `idReservaServicio` INT NOT NULL AUTO_INCREMENT ,
  `idCliente` INT NOT NULL ,
  `idTipoReserva` INT NOT NULL ,
  `idTipoServicio` INT NOT NULL ,
  `idEmpleadoOperaServicio` INT NOT NULL ,
  `CelularParaCita` VARCHAR(20) NOT NULL ,
  `Precio` DECIMAL(2) NOT NULL ,
  `FechaReserva` DATETIME NOT NULL ,
  `idEmpleadoRegistra` INT NOT NULL ,
  `FechaRegistra` TIMESTAMP NULL ,
  `idEmpleadoModifica` INT NULL ,
  `FechaModifica` DATETIME NULL ,
  `idEstadoReserva` INT NOT NULL ,
  PRIMARY KEY (`idReservaServicio`) ,
  INDEX `fkidCliente` (`idCliente` ASC) ,
  INDEX `fkIdTipoReserva` (`idTipoReserva` ASC) ,
  INDEX `fkIdTipoServicio` (`idTipoServicio` ASC) ,
  INDEX `fkIdEmpleadoOpera` (`idEmpleadoOperaServicio` ASC) ,
  INDEX `fkIdEmpleadoRegistra` (`idEmpleadoRegistra` ASC) ,
  INDEX `fkIdEmpleadoModifica` (`idEmpleadoModifica` ASC) ,
  INDEX `fkIdEstadoReserva` (`idEstadoReserva` ASC) ,
  CONSTRAINT `fkidCliente`
    FOREIGN KEY (`idCliente` )
    REFERENCES `db_belove_modelo_2`.`Clientes` (`idCliente` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdTipoReserva`
    FOREIGN KEY (`idTipoReserva` )
    REFERENCES `db_belove_modelo_2`.`TiposReservas` (`idTipoReserva` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdTipoServicio`
    FOREIGN KEY (`idTipoServicio` )
    REFERENCES `db_belove_modelo_2`.`TiposServicios` (`idTipoServicio` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEmpleadoOpera`
    FOREIGN KEY (`idEmpleadoOperaServicio` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEmpleadoRegistra`
    FOREIGN KEY (`idEmpleadoRegistra` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEmpleadoModifica`
    FOREIGN KEY (`idEmpleadoModifica` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstadoReserva`
    FOREIGN KEY (`idEstadoReserva` )
    REFERENCES `db_belove_modelo_2`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`VentasGeneralesClientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`VentasGeneralesClientes` (
  `idCompra` INT NOT NULL AUTO_INCREMENT ,
  `idReservaServicio` INT NULL ,
  `idVentaProductoCliente` INT NULL ,
  `FechaRegistro` TIMESTAMP NULL ,
  `idEmpleadoRegistra` INT NOT NULL ,
  PRIMARY KEY (`idCompra`) ,
  INDEX `fkIdReservaServicio` (`idReservaServicio` ASC) ,
  INDEX `fkIdVentaProductoCliente` (`idVentaProductoCliente` ASC) ,
  INDEX `fkIdEmpleadoRegistra` (`idEmpleadoRegistra` ASC) ,
  CONSTRAINT `fkIdReservaServicio`
    FOREIGN KEY (`idReservaServicio` )
    REFERENCES `db_belove_modelo_2`.`ReservasServicios` (`idReservaServicio` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdVentaProductoCliente`
    FOREIGN KEY (`idVentaProductoCliente` )
    REFERENCES `db_belove_modelo_2`.`VentasProductosClientes` (`idVentaProducto` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEmpleadoRegistra`
    FOREIGN KEY (`idEmpleadoRegistra` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`HorarioEmpleados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`HorarioEmpleados` (
  `idHorarioEmpleado` INT NOT NULL AUTO_INCREMENT ,
  `idEmpleado` INT NOT NULL ,
  `Dia` VARCHAR(10) NULL ,
  `HoraIngreso` TIME NULL ,
  `HoraSalida` TIME NULL ,
  `FechaQueAsiste` DATE NULL ,
  `idEmpleadoRegistra` INT NOT NULL ,
  `FechaEmpleadoRegistra` TIMESTAMP NULL ,
  PRIMARY KEY (`idHorarioEmpleado`) ,
  INDEX `fkIdEmpleado` (`idEmpleado` ASC) ,
  INDEX `fkIdEmpleadoRegistra` (`idEmpleadoRegistra` ASC) ,
  CONSTRAINT `fkIdEmpleado`
    FOREIGN KEY (`idEmpleado` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEmpleadoRegistra`
    FOREIGN KEY (`idEmpleadoRegistra` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_belove_modelo_2`.`OrdenTurnosAtencion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_belove_modelo_2`.`OrdenTurnosAtencion` (
  `idOrdenTurnoAtencion` INT NOT NULL AUTO_INCREMENT ,
  `idHorarioEmpleado` INT NOT NULL ,
  `OrdenTurnoAtencion` INT NOT NULL ,
  `HoraAsignacionCliente` TIME NOT NULL ,
  `FechaAsignacionCliente` DATE NOT NULL ,
  `idEmpleadoAsignaCliente` INT NOT NULL ,
  `idEstado` INT NOT NULL ,
  PRIMARY KEY (`idOrdenTurnoAtencion`) ,
  INDEX `fkIdHorarioEmpleado` (`idHorarioEmpleado` ASC) ,
  INDEX `fkIdEmpleadoAsignaCliente` (`idEmpleadoAsignaCliente` ASC) ,
  INDEX `fkIdEstado` (`idEstado` ASC) ,
  CONSTRAINT `fkIdHorarioEmpleado`
    FOREIGN KEY (`idHorarioEmpleado` )
    REFERENCES `db_belove_modelo_2`.`HorarioEmpleados` (`idHorarioEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEmpleadoAsignaCliente`
    FOREIGN KEY (`idEmpleadoAsignaCliente` )
    REFERENCES `db_belove_modelo_2`.`Empleados` (`idEmpleado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkIdEstado`
    FOREIGN KEY (`idEstado` )
    REFERENCES `db_belove_modelo_2`.`Estados` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
