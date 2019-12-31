CREATE TABLE IF NOT EXISTS `DCBE`.`t_CUSTOMERS` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Legal_Id` INT UNSIGNED NULL,
  `Natural_Id` INT UNSIGNED NULL,
  `ActiveP` TINYINT NULL DEFAULT 1 COMMENT 'Boolean.\nTrue: The customer is active\nFalse: The customer is not ative',
  PRIMARY KEY (`Id`),
  INDEX `fk_t_CUSTOMERS_t_NATURAL_PERSON1_idx` (`Natural_Id` ASC) VISIBLE,
  INDEX `fk_t_CUSTOMERS_t_LEGAL_PERSON1_idx` (`Legal_Id` ASC) VISIBLE,
  CONSTRAINT `fk_t_CUSTOMERS_t_NATURAL_PERSON1`
    FOREIGN KEY (`Natural_Id`)
    REFERENCES `DCBE`.`t_NATURAL_PERSON` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_CUSTOMERS_t_LEGAL_PERSON1`
    FOREIGN KEY (`Legal_Id`)
    REFERENCES `DCBE`.`t_LEGAL_PERSON` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB