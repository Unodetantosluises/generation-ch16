-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema consultorio_dental
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema consultorio_dental
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `consultorio_dental` DEFAULT CHARACTER SET utf8 ;
USE `consultorio_dental` ;

-- -----------------------------------------------------
-- Table `consultorio_dental`.`invitado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `consultorio_dental`.`invitado` (
  `idinvitado` INT NOT NULL AUTO_INCREMENT,
  `nombreI` VARCHAR(45) NOT NULL,
  `apellidoI` VARCHAR(45) NOT NULL,
  `correoI` VARCHAR(45) NOT NULL,
  `fecha_nacimientoI` DATE NOT NULL,
  `telefonoI` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`idinvitado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `consultorio_dental`.`pacienteR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `consultorio_dental`.`pacienteR` (
  `idpacienteR` INT NOT NULL AUTO_INCREMENT,
  `nombreP` VARCHAR(45) NOT NULL,
  `apellidoP` VARCHAR(45) NOT NULL,
  `correoP` VARCHAR(45) NOT NULL,
  `fecha_nacimientoP` DATE NOT NULL,
  `telefonoP` VARCHAR(15) NOT NULL,
  `contrasenaP` VARCHAR(18) NOT NULL,
  `iconoP` INT NOT NULL,
  PRIMARY KEY (`idpacienteR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `consultorio_dental`.`odontologos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `consultorio_dental`.`odontologos` (
  `idodontologos` INT NOT NULL AUTO_INCREMENT,
  `nombreO` VARCHAR(45) NOT NULL,
  `apellidoO` VARCHAR(45) NOT NULL,
  `telefonoO` VARCHAR(15) NOT NULL,
  `correoO` VARCHAR(45) NOT NULL,
  `idconsultorio` INT NOT NULL,
  `idespecialidad` INT NOT NULL,
  PRIMARY KEY (`idodontologos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `consultorio_dental`.`administrador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `consultorio_dental`.`administrador` (
  `idadministrador` INT NOT NULL AUTO_INCREMENT,
  `usuarioA` VARCHAR(45) NOT NULL,
  `contrasena` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`idadministrador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `consultorio_dental`.`cita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `consultorio_dental`.`cita` (
  `idcita` INT NOT NULL,
  `fechaC` DATE NOT NULL,
  `horaC` TIME NOT NULL DEFAULT 'HH:MM',
  `idPaciente` INT NULL AUTO_INCREMENT,
  `servicio` VARCHAR(45) NOT NULL,
  `idinvitado` INT NULL,
  `invitado_idinvitado` INT NOT NULL,
  `pacienteR_idpacienteR` INT NOT NULL,
  `odontologos_idodontologos` INT NOT NULL,
  `administrador_idadministrador` INT NOT NULL,
  PRIMARY KEY (`idcita`),
  INDEX `fk_cita_invitado_idx` (`invitado_idinvitado` ASC) VISIBLE,
  INDEX `fk_cita_pacienteR1_idx` (`pacienteR_idpacienteR` ASC) VISIBLE,
  INDEX `fk_cita_odontologos1_idx` (`odontologos_idodontologos` ASC) VISIBLE,
  INDEX `fk_cita_administrador1_idx` (`administrador_idadministrador` ASC) VISIBLE,
  CONSTRAINT `fk_cita_invitado`
    FOREIGN KEY (`invitado_idinvitado`)
    REFERENCES `consultorio_dental`.`invitado` (`idinvitado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cita_pacienteR1`
    FOREIGN KEY (`pacienteR_idpacienteR`)
    REFERENCES `consultorio_dental`.`pacienteR` (`idpacienteR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cita_odontologos1`
    FOREIGN KEY (`odontologos_idodontologos`)
    REFERENCES `consultorio_dental`.`odontologos` (`idodontologos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cita_administrador1`
    FOREIGN KEY (`administrador_idadministrador`)
    REFERENCES `consultorio_dental`.`administrador` (`idadministrador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `consultorio_dental`.`especialidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `consultorio_dental`.`especialidad` (
  `idespecialidad` INT NOT NULL AUTO_INCREMENT,
  `nombreE` VARCHAR(45) NOT NULL,
  `odontologos_idodontologos` INT NOT NULL,
  PRIMARY KEY (`idespecialidad`),
  INDEX `fk_especialidad_odontologos1_idx` (`odontologos_idodontologos` ASC) VISIBLE,
  CONSTRAINT `fk_especialidad_odontologos1`
    FOREIGN KEY (`odontologos_idodontologos`)
    REFERENCES `consultorio_dental`.`odontologos` (`idodontologos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `consultorio_dental`.`comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `consultorio_dental`.`comentario` (
  `idcomentario` INT NOT NULL AUTO_INCREMENT,
  `texto` TEXT(51) NOT NULL,
  `administrador_idadministrador` INT NOT NULL,
  `pacienteR_idpacienteR` INT NOT NULL,
  PRIMARY KEY (`idcomentario`),
  INDEX `fk_comentario_administrador1_idx` (`administrador_idadministrador` ASC) VISIBLE,
  INDEX `fk_comentario_pacienteR1_idx` (`pacienteR_idpacienteR` ASC) VISIBLE,
  CONSTRAINT `fk_comentario_administrador1`
    FOREIGN KEY (`administrador_idadministrador`)
    REFERENCES `consultorio_dental`.`administrador` (`idadministrador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentario_pacienteR1`
    FOREIGN KEY (`pacienteR_idpacienteR`)
    REFERENCES `consultorio_dental`.`pacienteR` (`idpacienteR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
