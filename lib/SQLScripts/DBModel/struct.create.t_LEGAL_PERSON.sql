CREATE TABLE IF NOT EXISTS `DCBE`.`t_LEGAL_PERSON` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Legal_Name` VARCHAR(90) NOT NULL,
  `CNPJ` VARCHAR(15) NOT NULL,
  `State_Registry` VARCHAR(15) NULL,
  `City_Registry` VARCHAR(15) NULL,
  `Foundation_Date` DATE NOT NULL,
  `Website` VARCHAR(255) NULL,
  `Email_main` VARCHAR(255) NOT NULL,
  `Email_aternative` VARCHAR(255) NULL,
  `Phone_Main` VARCHAR(20) NOT NULL,
  `Phone_Alternative` VARCHAR(20) NULL,
  `Address_Street` VARCHAR(60) NOT NULL,
  `Address_Nr` VARCHAR(10) NOT NULL,
  `Address_Comp` VARCHAR(45) NULL,
  `Address_Neighb` VARCHAR(45) NULL,
  `Address_City` VARCHAR(45) NOT NULL,
  `Address_Province` VARCHAR(45) NOT NULL,
  `Address_Country` VARCHAR(45) NOT NULL DEFAULT 'Brasil',
  `Address_Area_Code` VARCHAR(45) NOT NULL,
  `Address_Alternative` VARCHAR(255) NULL,
  `Remarks` VARCHAR(45) NULL COMMENT 'Any remarks/annotation about a person',
  `Administrator` INT UNSIGNED NOT NULL,
  `Created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Id_UNIQUE` (`Id` ASC) VISIBLE,
  UNIQUE INDEX `Legal_name_UNIQUE` (`Legal_Name` ASC) VISIBLE,
  UNIQUE INDEX `CNPJ_UNIQUE` (`CNPJ` ASC) VISIBLE,
  INDEX `fk_t_LEGAL_PERSON_t_NATURAL_PERSON1_idx` (`Administrator` ASC) VISIBLE,
  CONSTRAINT `fk_t_LEGAL_PERSON_t_NATURAL_PERSON`
    FOREIGN KEY (`Administrator`)
    REFERENCES `DCBE`.`t_NATURAL_PERSON` (`Id`)
    ON DELETE RESTRICT
    ON UPDATE NO ACTION)
ENGINE = InnoDB