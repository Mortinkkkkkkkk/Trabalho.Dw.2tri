-- Adminer 4.8.1 MySQL 5.5.5-10.5.21-MariaDB-1:10.5.21+maria~ubu2004 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `recomendacao`;
CREATE TABLE `recomendacao` (
  `tb_cliente_idtb_cliente` int(11) NOT NULL,
  `idtb_recomendacao` int(11) NOT NULL,
  `recomendacao_localidade` varchar(45) NOT NULL,
  `recomendacao_temperatura` varchar(45) NOT NULL,
  `recomendacao_praia` varchar(45) NOT NULL,
  `recomendacao_chique` varchar(45) NOT NULL,
  `recomendacao_aventura` varchar(45) NOT NULL,
  `recomendacao_urbano` varchar(45) NOT NULL,
  PRIMARY KEY (`idtb_recomendacao`),
  KEY `fk_recomendacao_tb_cliente_idx` (`tb_cliente_idtb_cliente`),
  CONSTRAINT `fk_recomendacao_tb_cliente` FOREIGN KEY (`tb_cliente_idtb_cliente`) REFERENCES `tb_cliente` (`idtb_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


DROP TABLE IF EXISTS `tb_cliente`;
CREATE TABLE `tb_cliente` (
  `idtb_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) NOT NULL,
  `email_cliente` varchar(45) NOT NULL,
  `senha_cliente` varchar(45) NOT NULL,
  PRIMARY KEY (`idtb_cliente`),
  UNIQUE KEY `senha_cliente_UNIQUE` (`senha_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


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
  PRIMARY KEY (`idtb_venda`,`tb_lugar_idtb_lugar`),
  KEY `fk_tb_carrinho_tb_lugar1_idx` (`tb_lugar_idtb_lugar`),
  KEY `tb_cliente_idtb_cliente` (`tb_cliente_idtb_cliente`),
  CONSTRAINT `tb_venda_ibfk_2` FOREIGN KEY (`tb_lugar_idtb_lugar`) REFERENCES `tb_lugar` (`idtb_lugar`),
  CONSTRAINT `tb_venda_ibfk_3` FOREIGN KEY (`tb_cliente_idtb_cliente`) REFERENCES `tb_cliente` (`idtb_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


-- 2023-06-16 19:21:44
