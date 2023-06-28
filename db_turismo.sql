-- Adminer 4.8.1 MySQL 5.5.5-10.5.19-MariaDB-1:10.5.19+maria~ubu2004 dump

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
(3,	'Hotel Z',	1,	250,	'2023-03-20',	'2023-03-27'),
(4,	'Hotel A',	2,	270,	'2023-01-01',	'2023-12-31'),
(5,	'Hotel B',	2,	310,	'2023-02-01',	'0000-00-00'),
(6,	'Hotel C',	2,	210,	'2023-02-15',	'2023-03-15'),
(7,	'Hotel D',	3,	180,	'2023-05-31',	'2023-06-15'),
(8,	'Hotel E',	3,	250,	'2023-05-01',	'0000-00-00'),
(9,	'Hotel F',	3,	310,	'2023-03-01',	'2023-07-15'),
(10,	'Hotel G',	4,	230,	'2023-06-09',	'2023-08-31'),
(11,	'Hotel H',	4,	320,	'2023-06-01',	'2023-09-25'),
(12,	'Hotel I',	4,	190,	'2023-06-06',	'2023-06-26');

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
(3,	'Blumenau',	'Frio',	'Urbano',	'Aconchegante',	'Cachoeira',	'Caseiro',	'blumenau.jpg',	'Blumenau é um município do estado de Santa Catarina, Região Sul do Brasil. Localiza-se na microrregião homônima e na Mesorregião do Vale do Itajaí. É a cidade-sede da Região Metropolitana do Vale do Itajaí. É o terceiro município mais populoso do estado, o 8º da Região Sul do Brasil, o 78º do Brasil e a única cidade média-grande de Santa Catarina, constituindo um de seus principais polos industriais, tecnológicos e universitários. ',	1600),
(4,	'Goiás Velho',	'Quente',	'Rural',	'Aconchegante',	'Cachoeira',	'Caseiro',	'goias_velho.jpg',	'A cidade de Goiás é conhecida carinhosamente pelo nome de Goiás Velho, a antiga capital do Estado foi fundada no Ciclo do Ouro e retrata o período colonial brasileiro de uma maneira muito particular, razão pela qual é Patrimônio Cultural da Humanidade pela Unesco. O traçado urbano é um exemplo do desenvolvimento de uma cidade mineira com as adaptações às condições do local, como os limites impostos pelo Vale do Serra Dourada e o Rio Vermelho. Entre suas manifestações culturais destaque para a Semana Santa, em especial para a Procissão do Fogaréu, que recebe visitantes de todo o País. A cidade também é muito conhecida pela poetisa Cora Coralina. Sua casa se tornou um museu bastante visitado. Para quem gosta de visitar belas igrejas, a Cidade de Goiás é o local certo. Possui, ainda, opções de cachoeiras e rios para os visitantes se refrescarem. Uma opção é a Cachoeira das Andorinhas.',	1300),
(5,	'Fortaleza',	'Quente',	'Urbano',	'Chique',	'Praia',	'Balada',	'fernando_noronha.jpg',	'Fortaleza é a capital do estado do Ceará, no Nordeste brasileiro. A cidade é conhecida por suas praias, com falésias vermelhas, palmeiras, dunas e lagoas. As tradições folclóricas da cidade podem ser vistas em apresentações de dança no Theatro José de Alencar, construção em estilo art nouveau inaugurada em 1910. Outro destaque arquitetônico é a Catedral Metropolitana, em estilo neogótico.',	2500),
(6,	'Gramado',	'Frio',	'Rural',	'Chique',	'Cachoeira',	'Caseiro',	'gramado.jpg',	'Gramado é uma cidade com uma estância de montanha situada no estado mais a sul do Brasil, Rio Grande do Sul. Influenciada pelos colonos alemães do século XIX, a cidade possui um toque bávaro com chalés alpinos, chocolateiros e lojas de artesanato. Gramado é também conhecida pelas suas exibições de luzes de Natal e pelas hortênsias em flor na primavera. O Lago Negro disponibiliza alugueres de barcos e caminhadas na floresta, enquanto as montanhas da Serra Gaúcha possuem trilhos de caminhada e de alpinismo.',	2000),
(7,	'Holambra',	'Frio',	'Rural',	'Aconchegante',	'Cachoeira',	'Caseiro',	'holambra.jpg',	'Holambra é um município brasileiro do estado de São Paulo e microrregião de Campinas, fundada em 14 de julho de 1948. Seu nome, junção de Holanda, América e Brasil, se dá em virtude da colônia neerlandesa que se firmou na antiga fazenda Ribeirão.',	1750),
(8,	'Olinda',	'Quente',	'Rural',	'Aconchegante',	'Praia',	'Caseiro',	'olinda.jpg',	'Olinda é uma cidade colonial na costa nordeste do Brasil, perto da cidade do Recife. Fundada em 1535 pelos portugueses, foi construída em encostas íngremes e distingue-se pela arquitetura do século XVIII, com igrejas barrocas, conventos, mosteiros e casas de cores vivas. Originalmente um centro da indústria da cana-de-açúcar, é agora conhecida como uma colónia de artistas, com diversas galerias, oficinas e museus',	1890),
(9,	'Pirenópolis',	'Quente',	'Rural',	'Aconchegante',	'Cachoeira',	'Caseiro',	'pirenopolis.jpg',	'Pirenópolis é uma cidade localizada no estado brasileiro de Goiás. É conhecida por suas cachoeiras e arquitetura colonial portuguesa, e uma festa popular envolvendo cavalos montados chamada Festa do Divino Espírito Santo que acontece 45 dias após a Páscoa.',	1200),
(10,	'Rio de Janeiro',	'Quente',	'Urbano',	'Chique',	'Praia',	'Balada',	'rio_de_janeiro.jpg',	'O Rio de Janeiro é uma grande cidade brasileira à beira-mar, famosa pelas praias de Copacabana e Ipanema, pela estátua de 38 metros de altura do Cristo Redentor, no topo do Corcovado, e pelo Pão de Açúcar, um pico de granito com teleféricos até seu cume. A cidade também é conhecida pelas grandes favelas. O empolgante Carnaval, com carros alegóricos, fantasias extravagantes e sambistas, é considerado o maior do mundo',	2300);

DROP TABLE IF EXISTS `tb_venda`;
CREATE TABLE `tb_venda` (
  `idtb_venda` int(11) NOT NULL AUTO_INCREMENT,
  `tb_lugar_idtb_lugar` int(11) NOT NULL,
  `data_ida_lugar` date NOT NULL,
  `data_volta_lugar` date NOT NULL,
  `chave_pix` varchar(50) NOT NULL,
  `perfil` varchar(50) NOT NULL,
  `email_perfil` varchar(50) NOT NULL,
  PRIMARY KEY (`idtb_venda`,`tb_lugar_idtb_lugar`),
  KEY `fk_tb_carrinho_tb_lugar1_idx` (`tb_lugar_idtb_lugar`),
  CONSTRAINT `tb_venda_ibfk_2` FOREIGN KEY (`tb_lugar_idtb_lugar`) REFERENCES `tb_lugar` (`idtb_lugar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


-- 2023-06-28 16:59:26
