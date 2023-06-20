-- Adminer 4.8.1 MySQL 5.5.5-10.5.20-MariaDB-1:10.5.20+maria~ubu2004 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `db_turismo`;
CREATE DATABASE `db_turismo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db_turismo`;

DROP TABLE IF EXISTS `tb_cliente`;
CREATE TABLE `tb_cliente` (
  `idtb_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) NOT NULL,
  `email_cliente` varchar(45) NOT NULL,
  `senha_cliente` varchar(45) NOT NULL,
  PRIMARY KEY (`idtb_cliente`),
  UNIQUE KEY `senha_cliente_UNIQUE` (`senha_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `tb_hotel`;
CREATE TABLE `tb_hotel` (
  `idtb_hotel` int(11) NOT NULL,
  `nome_hotel` varchar(50) NOT NULL,
  `tb_lugar_idtb_lugar` int(11) NOT NULL,
  `preco_hotel` int(11) NOT NULL,
  `data_disponivel_ida` date NOT NULL,
  `data_disponivel_volta` date NOT NULL,
  KEY `tb_lugar_idtb_lugar` (`tb_lugar_idtb_lugar`),
  CONSTRAINT `tb_hotel_ibfk_1` FOREIGN KEY (`tb_lugar_idtb_lugar`) REFERENCES `tb_lugar` (`idtb_lugar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_hotel` (`idtb_hotel`, `nome_hotel`, `tb_lugar_idtb_lugar`, `preco_hotel`, `data_disponivel_ida`, `data_disponivel_volta`) VALUES
(1,	'Hotel X',	1,	300,	'2023-04-19',	'2023-04-25'),
(2,	'Hotel Y',	1,	350,	'2023-04-01',	'2023-08-31'),
(3,	'Hotel Z',	1,	250,	'2023-03-20',	'2023-03-27');

DROP TABLE IF EXISTS `tb_lugar`;
CREATE TABLE `tb_lugar` (
  `idtb_lugar` int(11) NOT NULL AUTO_INCREMENT,
  `nome_lugar` varchar(45) NOT NULL,
  `temperatura` varchar(45) NOT NULL,
  `urbano` varchar(45) NOT NULL,
  `chique` varchar(45) NOT NULL,
  `praia` varchar(45) NOT NULL,
  `agitacao` varchar(45) NOT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `preco` int(11) NOT NULL,
  PRIMARY KEY (`idtb_lugar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `tb_lugar` (`idtb_lugar`, `nome_lugar`, `temperatura`, `urbano`, `chique`, `praia`, `agitacao`, `imagem`, `descricao`, `preco`) VALUES
(1,	'Aracaju',	'Quente',	'Urbano',	'Aconchegante',	'Praia',	'Caseiro',	'aracaju.png',	'Aracaju é um município brasileiro, capital do estado de Sergipe. Localiza-se no leste do estado, sendo cortada por rios como o Sergipe e o Poxim. De acordo com a estimativa de 2021, sua população é de 672 614 habitantes. Somando-se as populações dos municípios que formam a Grande Aracaju, Barra dos Coqueiros, Nossa Senhora do Socorro e São Cristóvão, o número passa para 938 550 habitantes. Apesar de ser a menos populosa das capitais nordestinas, sua localização perfaz como importante ponto estratégico enquanto centro urbano, econômico, cultural e político para o país.',	3000),
(2,	'Salvador',	'Quente',	'Urbano',	'Aconchegante',	'Praia',	'Caseiro',	'salvador.jpg',	'Salvador, originalmente chamada de São Salvador da Bahia de Todos os Santos, é um município brasileiro, cuja cidade sede é a capital do estado da Bahia. Situada na Zona da Mata da Região Nordeste do Brasil, Salvador é notável em todo o país pela sua gastronomia, música e arquitetura,[9] reconhecidas também internacionalmente. A influência africana em muitos aspectos culturais da cidade a torna o centro da cultura afro-brasileira.[10][11][12] Primeira capital da América Portuguesa, que corresponde ao atual Brasil,[13] a cidade é uma das mais antigas do continente americano e uma das primeiras cidades planejadas no mundo, ainda no período do Renascimento.[14][15] Sua fundação em 1549 por Tomé de Sousa ocorreu por conta da implantação do Governo-Geral do Brasil pelo Império Português.',	4400),
(3,	'Blumenau',	'Frio',	'Urbano',	'Aconchegante',	'Cachoeira',	'Caseiro',	'blumenau.jpg',	'Blumenau é um município do estado de Santa Catarina, Região Sul do Brasil. Localiza-se na microrregião homônima e na Mesorregião do Vale do Itajaí. É a cidade-sede da Região Metropolitana do Vale do Itajaí. É o terceiro município mais populoso do estado, o 8º da Região Sul do Brasil, o 78º do Brasil e a única cidade média-grande de Santa Catarina, constituindo um de seus principais polos industriais, tecnológicos e universitários. ',	1600);

DROP TABLE IF EXISTS `tb_venda`;
CREATE TABLE `tb_venda` (
  `idtb_venda` int(11) NOT NULL,
  `tb_lugar_idtb_lugar` int(11) NOT NULL,
  `tb_cliente_idtb_cliente` int(11) NOT NULL,
  `data_ida_lugar` date NOT NULL,
  `data_volta_lugar` date NOT NULL,
  `chave_pix` varchar(50) NOT NULL,
  PRIMARY KEY (`idtb_venda`,`tb_lugar_idtb_lugar`),
  KEY `fk_tb_carrinho_tb_lugar1_idx` (`tb_lugar_idtb_lugar`),
  KEY `tb_cliente_idtb_cliente` (`tb_cliente_idtb_cliente`),
  CONSTRAINT `tb_venda_ibfk_2` FOREIGN KEY (`tb_lugar_idtb_lugar`) REFERENCES `tb_lugar` (`idtb_lugar`),
  CONSTRAINT `tb_venda_ibfk_3` FOREIGN KEY (`tb_cliente_idtb_cliente`) REFERENCES `tb_cliente` (`idtb_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


-- 2023-06-20 13:57:11
