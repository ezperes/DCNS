# Cria meu 1o DB #

# CREATE DATABASE Teste;

USE Teste;

CREATE TABLE t_Setor (
	Id int primary key not null auto_increment,
    nome varchar(45)  not null
);

CREATE TABLE t_Funcionario (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(60) NOT NULL,
    Sobrenome VARCHAR(60) NOT NULL,
    CPF INT UNIQUE NOT NULL,
    Idt INT UNIQUE NOT NULL,
    setor INT NOT NULL,
    FOREIGN KEY (setor) REFERENCES t_Setor (Id)
);

/*
CREATE TABLE product (
    category INT NOT NULL, id INT NOT NULL,
    price DECIMAL,
    PRIMARY KEY(category, id)
)   ENGINE=INNODB;

CREATE TABLE customer (
    id INT NOT NULL,
    PRIMARY KEY (id)
)   ENGINE=INNODB;

CREATE TABLE product_order (
    no INT NOT NULL AUTO_INCREMENT,
    product_category INT NOT NULL,
    product_id INT NOT NULL,
    customer_id INT NOT NULL,

    PRIMARY KEY(no),
    INDEX (product_category, product_id),
    INDEX (customer_id),

    FOREIGN KEY (product_category, product_id)
      REFERENCES product(category, id)
      ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (customer_id)
      REFERENCES customer(id)
)   ENGINE=INNODB;
*/

