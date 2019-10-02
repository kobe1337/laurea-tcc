SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Schema laurea
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `laurea` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `laurea` ;

-- -----------------------------------------------------
-- Table `laurea`.`perfil`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`perfil` (
  `idperfil` INT NOT NULL AUTO_INCREMENT ,
  `perfil` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idperfil`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(100) NOT NULL ,
  `login` VARCHAR(15) NOT NULL ,
  `senha` VARCHAR(10) NOT NULL ,
  `status` INT NOT NULL ,
  `idperfil` INT NOT NULL ,
  PRIMARY KEY (`idusuario`) ,
  INDEX `fk_usuario_perfil_idx` (`idperfil` ASC) ,
  CONSTRAINT `fk_usuario_perfil`
    FOREIGN KEY (`idperfil` )
    REFERENCES `laurea`.`perfil` (`idperfil` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`menu`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`menu` (
  `idmenu` INT NOT NULL AUTO_INCREMENT ,
  `menu` VARCHAR(45) NOT NULL ,
  `link` VARCHAR(100) NOT NULL ,
  `icone` VARCHAR(45) NULL ,
  `exibir` INT NOT NULL ,
  PRIMARY KEY (`idmenu`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`menu_perfil`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`menu_perfil` (
  `idmenu` INT NOT NULL ,
  `idperfil` INT NOT NULL ,
  PRIMARY KEY (`idmenu`, `idperfil`) ,
  INDEX `fk_menu_has_perfil_perfil1_idx` (`idperfil` ASC) ,
  INDEX `fk_menu_has_perfil_menu1_idx` (`idmenu` ASC) ,
  CONSTRAINT `fk_menu_has_perfil_menu1`
    FOREIGN KEY (`idmenu` )
    REFERENCES `laurea`.`menu` (`idmenu` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_menu_has_perfil_perfil1`
    FOREIGN KEY (`idperfil` )
    REFERENCES `laurea`.`perfil` (`idperfil` )
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`responsavel`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`responsavel` (
  `idresponsavel` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `cpf` VARCHAR(15) NOT NULL ,
  `rg` VARCHAR(15) NULL ,
  `idusuario` INT NOT NULL ,
  PRIMARY KEY (`idresponsavel`) ,
  INDEX `fk_responsavel_usuario1_idx` (`idusuario` ASC) ,
  CONSTRAINT `fk_responsavel_usuario1`
    FOREIGN KEY (`idusuario` )
    REFERENCES `laurea`.`usuario` (`idusuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`aluno`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`aluno` (
  `idaluno` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `datanasc` DATE NULL ,
  `cpf` VARCHAR(15) NULL ,
  `rg` VARCHAR(15) NULL ,
  `idresponsavel` INT NOT NULL ,
  `idusuario` INT NOT NULL ,
  PRIMARY KEY (`idaluno`) ,
  INDEX `fk_aluno_responsavel1_idx` (`idresponsavel` ASC) ,
  INDEX `fk_aluno_usuario1_idx` (`idusuario` ASC) ,
  CONSTRAINT `fk_aluno_responsavel1`
    FOREIGN KEY (`idresponsavel` )
    REFERENCES `laurea`.`responsavel` (`idresponsavel` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_usuario1`
    FOREIGN KEY (`idusuario` )
    REFERENCES `laurea`.`usuario` (`idusuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`disciplina`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`disciplina` (
  `iddisciplina` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`iddisciplina`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`professor`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`professor` (
  `idprofessor` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `iddisciplina` INT NOT NULL ,
  `idusuario` INT NOT NULL ,
  PRIMARY KEY (`idprofessor`) ,
  INDEX `fk_professor_disciplina1_idx` (`iddisciplina` ASC) ,
  INDEX `fk_professor_usuario1_idx` (`idusuario` ASC) ,
  CONSTRAINT `fk_professor_disciplina1`
    FOREIGN KEY (`iddisciplina` )
    REFERENCES `laurea`.`disciplina` (`iddisciplina` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_professor_usuario1`
    FOREIGN KEY (`idusuario` )
    REFERENCES `laurea`.`usuario` (`idusuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`turma`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`turma` (
  `idturma` INT NOT NULL AUTO_INCREMENT ,
  `datahora` DATETIME NOT NULL ,
  `diasemana` VARCHAR(25) NOT NULL ,
  `idprofessor` INT NOT NULL ,
  PRIMARY KEY (`idturma`) ,
  INDEX `fk_turma_professor1_idx` (`idprofessor` ASC) ,
  CONSTRAINT `fk_turma_professor1`
    FOREIGN KEY (`idprofessor` )
    REFERENCES `laurea`.`professor` (`idprofessor` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`aluno_turma`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`aluno_turma` (
  `idaluno` INT NOT NULL ,
  `idturma` INT NOT NULL ,
  `frequencia` VARCHAR(5) NOT NULL ,
  PRIMARY KEY (`idaluno`, `idturma`) ,
  INDEX `fk_aluno_has_horario_horario1_idx` (`idturma` ASC) ,
  INDEX `fk_aluno_has_horario_aluno1_idx` (`idaluno` ASC) ,
  CONSTRAINT `fk_aluno_has_horario_aluno1`
    FOREIGN KEY (`idaluno` )
    REFERENCES `laurea`.`aluno` (`idaluno` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_has_horario_horario1`
    FOREIGN KEY (`idturma` )
    REFERENCES `laurea`.`turma` (`idturma` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`contrato`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`contrato` (
  `idcontrato` INT NOT NULL AUTO_INCREMENT ,
  `datacontrato` DATE NOT NULL ,
  `preco` DOUBLE NOT NULL ,
  `parcela` INT NOT NULL ,
  `status` INT NOT NULL ,
  `serie` VARCHAR(30) NOT NULL ,
  `escola` VARCHAR(45) NULL ,
  `idaluno` INT NOT NULL ,
  PRIMARY KEY (`idcontrato`) ,
  INDEX `fk_contrato_aluno1_idx` (`idaluno` ASC) ,
  CONSTRAINT `fk_contrato_aluno1`
    FOREIGN KEY (`idaluno` )
    REFERENCES `laurea`.`aluno` (`idaluno` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`mensalidade`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`mensalidade` (
  `idmensalidade` INT NOT NULL AUTO_INCREMENT ,
  `idcontrato` INT NOT NULL ,
  `mes` VARCHAR(15) NOT NULL ,
  `valor` DOUBLE NOT NULL ,
  `datav` DATE NOT NULL ,
  `datap` DATE NOT NULL ,
  `multa` DOUBLE NULL ,
  `desconto` DOUBLE NULL ,
  `status` INT NOT NULL ,
  PRIMARY KEY (`idmensalidade`, `idcontrato`) ,
  INDEX `fk_mensalidade_contrato1_idx` (`idcontrato` ASC) ,
  CONSTRAINT `fk_mensalidade_contrato1`
    FOREIGN KEY (`idcontrato` )
    REFERENCES `laurea`.`contrato` (`idcontrato` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`pendencia`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`pendencia` (
  `idpendencia` INT NOT NULL AUTO_INCREMENT ,
  `valor` DOUBLE NOT NULL ,
  `idaluno` INT NOT NULL ,
  PRIMARY KEY (`idpendencia`) ,
  INDEX `fk_pendencia_aluno1_idx` (`idaluno` ASC) ,
  CONSTRAINT `fk_pendencia_aluno1`
    FOREIGN KEY (`idaluno` )
    REFERENCES `laurea`.`aluno` (`idaluno` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`atividade`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`atividade` (
  `idatividade` INT NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(45) NOT NULL ,
  `arquivo` VARCHAR(100) NOT NULL ,
  `iddisciplina` INT NOT NULL ,
  PRIMARY KEY (`idatividade`) ,
  INDEX `fk_atividade_disciplina1_idx` (`iddisciplina` ASC) ,
  CONSTRAINT `fk_atividade_disciplina1`
    FOREIGN KEY (`iddisciplina` )
    REFERENCES `laurea`.`disciplina` (`iddisciplina` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laurea`.`aluno_atividade`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `laurea`.`aluno_atividade` (
  `idaluno` INT NOT NULL ,
  `idatividade` INT NOT NULL ,
  PRIMARY KEY (`idaluno`, `idatividade`) ,
  INDEX `fk_aluno_has_atividade_atividade1_idx` (`idatividade` ASC) ,
  INDEX `fk_aluno_has_atividade_aluno1_idx` (`idaluno` ASC) ,
  CONSTRAINT `fk_aluno_has_atividade_aluno1`
    FOREIGN KEY (`idaluno` )
    REFERENCES `laurea`.`aluno` (`idaluno` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_has_atividade_atividade1`
    FOREIGN KEY (`idatividade` )
    REFERENCES `laurea`.`atividade` (`idatividade` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `laurea` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
