CREATE SCHEMA jics DEFAULT CHARACTER SET utf8 ;
USE `jiccs` ;

-- -----------------------------------------------------
-- Table `jiccs`.`Aluno`
-- -----------------------------------------------------
CREATE TABLE  jics.Aluno (
  `nome` VARCHAR(120) NULL,
  `email` VARCHAR(120) NULL,
  `turno` VARCHAR(45) NULL,
  `serie` VARCHAR(45) NULL,
  `curso` VARCHAR(45) NULL,
  `numero_camisa` INT(3) NULL,
  `data_nascimento` DATE NULL,
  `matricula` INT NOT NULL,
  `Capitao` TINYINT NULL,
  PRIMARY KEY (`matricula`));


-- -----------------------------------------------------
-- Table `jiccs`.`Professor`
-- -----------------------------------------------------
CREATE TABLE  jics.Professor (
  `matricula` INT NOT NULL,
  `senha` VARCHAR(45) NULL,
  `telefone` INT(20) NULL,
  `nome` VARCHAR(120) NULL,
  `email` VARCHAR(120) NULL,
  PRIMARY KEY (`matricula`));


-- -----------------------------------------------------
-- Table `jiccs`.`Equipe`
-- -----------------------------------------------------
CREATE TABLE jics.Equipe (
  `nome` VARCHAR(120) NULL,
  `idEquipe` INT NOT NULL,
  `Professor_matricula` INT NOT NULL,
  PRIMARY KEY (`idEquipe`),
  FOREIGN KEY (`Professor_matricula`)
  REFERENCES jiccs.Professor (`matricula`));


-- -----------------------------------------------------
-- Table `jiccs`.`Aluno_has_Equipe`
-- -----------------------------------------------------
CREATE TABLE  jics.Aluno_has_Equipe (
  `Aluno_matricula` INT NOT NULL,
  `Equipe_idEquipe` INT NOT NULL,
  PRIMARY KEY (`Aluno_matricula`, `Equipe_idEquipe`),
  FOREIGN KEY (`Aluno_matricula`)
    REFERENCES jiccs.Aluno (`matricula`),
    FOREIGN KEY (`Equipe_idEquipe`)
    REFERENCES jiccs.Equipe (`idEquipe`));

USE `jiccs` ;
