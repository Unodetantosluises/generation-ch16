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


CREATE TABLE cita (
idcita INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
fechaC DATE NOT NULL,
horaC TIME NOT NULL,
idPaciente INT NOT NULL,
servicio VARCHAR(45) NOT NULL,
idinvitado INT NOT NULL
);

CREATE TABLE especialidad (
idespecialidad INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombreE VARCHAR(45)
);


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

-- Cita

INSERT INTO cita (fechaC, horaC, idPaciente, servicio, idInvitado)
VALUES ( '20220909', '14:00', 3 , 'amalgamas ', 0);

INSERT INTO cita (fechaC, horaC, idPaciente, servicio, idInvitado)
VALUES ( '20220910', '14:10', 0 , 'resinas ', 4);

INSERT INTO cita (fechaC, horaC, idPaciente, servicio, idInvitado)
VALUES ( '20220911', '14:20', 5 , 'extraccion ', 0);

INSERT INTO cita (fechaC, horaC, idPaciente, servicio, idInvitado)
VALUES ( '20220913', '14:30', 1 , 'cirugía ', 5);

INSERT INTO cita (fechaC, horaC, idPaciente, servicio, idInvitado)
VALUES ( '20220914', '14:40', 6 , 'limpieza ', 0);

INSERT INTO cita (fechaC, horaC, idPaciente, servicio, idInvitado)
VALUES ( '20220914', '14:40', 6 , 'limpieza ', 0);
-- Pacientes

INSERT INTO pacienteR (nombreP, apellidoP, correoP, fecha_nacimientoP, telefonoP, contrasenaP, iconoP)
VALUES ('Veronica', 'Marquez', 'veroMar@gmail.com', '19970502', '54345221', 'veronica97', 2),
('Vannesa', 'Ruiz', 'vaneeee@gmail.com', '19970901', '587114221', 'vanessssssA', 7),
('Martin', 'Naguera', 'MARTIN@gmail.com', '19971202', '51144442', 'NAGUERA78', 5),
('Nicolas', 'Diaz', 'NicoDiaz@gmail.com', '19971116', '997145821', 'Nicode9797', 1),
('Aline', 'Ortiz', 'ALIENort@gmail.com', '19971212', '541111211', 'ALIENort', 1);

INSERT INTO pacienteR (nombreP, apellidoP, correoP, fecha_nacimientoP, telefonoP, contrasenaP, iconoP) 
 VALUES (' Karina', 'Sanchez', 'karinaconK@gmail.com', '19960709', '55669988', 'patitoscuak', 6),
('Alejandro', 'Hernandez', 'alecbtis@gmail.com', '19900725','56780123', 'azul9079', 3),
('Ana', 'Olvera', 'anadoblea@outlook.com', '20000423', '5677220044', 'dobleaaaaa0', 6),
('Victor', 'Alvarado', 'alvahidalgo@gmail.com', '19930830', '5522345566', 'jajejijoju',2),
('Andrea', 'Benitez', 'anbeto_67@hotmail.com', '20040101', '5546765342', 'gatitosconfiltros', 1);

-- Odontologos

INSERT INTO odontologos (nombreO, apellidoO, telefonoO, correoO, idconsultorio, idespecialidad)
VALUES('Laura','Gomez' ,5512433245, 'laura26@gmial.com ' , 4 ,4),
('Efren','Lopez' ,5534548932 ,'EfrenLopez@hotmail.com',2 ,1),
('Enrique','Martinez', 5598780912,' EnriqueMar@gmail.com' ,5 ,2),
('Brandom','Romero ' ,5587324589 ,'BrandomRom@hotmail.com ', 1 ,2),
('Mauricio','Hernandes',5514683956 ,' MauricioHer@gmail.com ',3,2);

-- Invitado

INSERT INTO invitado (nombreI, apellidoI, correoI, fecha_nacimientoI, telefonoI)
VALUES ('Pedro', 'Pérez','AONH230992HMCV@GMAIL.COM', '1999-12-12', '5578175624'),
 ('Toño', 'Gómez','ldjksfhss@GMAIL.COM', '2000-12-22', '5567922498'),
 ('Samuel', 'Pedraza','jjdgtdlkl@GMAIL.COM', '2001-01-12', '5587236494'),
 ('Mario', 'Nosé','ksieis97@GMAIL.COM', '1978-05-12', '5524973568'),
 ('Miguel', 'Cañas','hhsleue633@GMAIL.COM', '1985-07-22', '5578175624');

INSERT INTO invitado ( nombreI, apellidoI, correoI, fecha_nacimientoI, telefonoI)
VALUES ('Diana','Ramirez','dramirez@aol.com','1990-11-15','55566778'),
('Joselo','Ramos','jramos@aol.com','1991-09-17','1234567'),
('Janaina','Tez','jtez@aol.com','1987-11-19','55898765'),
('Isabel','Ricotta','iricota@aol.com','1965-01-15','123876'),
('Gerardo','Ramirez','gerardor@aol.com','1990-11-15','3456789');

SELECT * FROM cita WHERE idPaciente = 3; /* traer todas las citas del id del paciente que se la pasa de parametro*/

SELECT * FROM comentario; /*ver comentarios*/