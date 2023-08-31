CREATE DATABASE  IF NOT EXISTS `imobiliaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `imobiliaria`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: imobiliaria
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codigo_cliente` decimal(4,0) NOT NULL,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `telefone` varchar(13) DEFAULT NULL,
  `cpf` decimal(11,0) DEFAULT NULL,
  `rg` varchar(10) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL,
  `datanasc` date DEFAULT NULL,
  PRIMARY KEY (`codigo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1111,'Maria das Dores','(32)3222-1199',12345678901,'MG11222333','Prof. Cunha Figueiredo','Mundo Novo','Juiz de Fora','36033-143','1995-03-11'),(1212,'Otávia Neto Braga','(24)2255-3397',23456789012,'MG22333444','Moraes e Castro','São Mateus','Juiz de Fora','35044-123','1990-08-15'),(1313,'Geralda Paiva Britto','(32)3304-5879',34567890123,'MG33444555','Dr. Paulo Japiassu Coelho','Cascatinha','Juiz de Fora','36033-215','1942-12-22'),(1414,'Natália Almeida Pascoalino','(32)4545-6562',45678901234,'MG44555666','Av. Rio Branco','Centro','Juiz de Fora','36036-123','1974-01-23'),(1515,'Antônio dos Santos Martins','(32)5632-2244',56789012345,'MG55666777','Olegário Maciel','Paineiras','Juiz de Fora','36035-444','1964-05-06'),(1616,'Freddy Alexandre Silva','(21)3312-4455',67890123456,'MG66777888','Oswaldo Aranha','Centro','Juiz de Fora','36022-111','1955-04-12'),(1717,'Maria Perpétua Natalina','(32)6525-4712',78901234567,'MG77888999','Osório Tristão','Santa Candida','Juiz de Fora','36044-123','1974-12-11'),(1818,'Feliciana Margarida de Jesus','(32)4632-7080',89012345678,'MG88999000','Capitão Arnaldo de Carvalho','Vale do Ipê','Juiz de Fora','36066-789','1964-06-22'),(1919,'Gláucia Almeida Pascoalino','(44)5623-4102',90123456789,'MG99888777','Av. dos Andradas','Centro','Juiz de Fora','36054-123','1947-09-04'),(2020,'Maria Fernanda de Oliveira','(24)3234-5658',22334455667,'MG23456789','Barão de São João Nepomuceno','Centro','Juiz de Fora','36020-655','2004-02-16'),(2121,'Pedro Henrique Miranda','(21)2333-4548',33445566778,'MG34567890','Rua Moraes e Castro','São Mateus','Juiz de Fora','36015-077','1992-01-26'),(2222,'Isadora de Freitas','(32)8451-9625',11223344556,'MG12345678','Padre Frederico','Santa Catarina','Juiz de Fora','36022-450','2000-08-13');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imovel`
--

DROP TABLE IF EXISTS `imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imovel` (
  `codigo_imovel` decimal(3,0) NOT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL,
  `codigo_tipo` decimal(3,0) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `situacao` varchar(12) DEFAULT NULL,
  `valor_locacao` double DEFAULT NULL,
  PRIMARY KEY (`codigo_imovel`),
  KEY `fk_tipo` (`codigo_tipo`),
  CONSTRAINT `fk_tipo` FOREIGN KEY (`codigo_tipo`) REFERENCES `tipo_imovel` (`codigo_tipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imovel`
--

LOCK TABLES `imovel` WRITE;
/*!40000 ALTER TABLE `imovel` DISABLE KEYS */;
INSERT INTO `imovel` VALUES (100,'Av. Barão do Rio Branco 4780','Centro','Juiz de Fora','36044-220',1,'3 quartos (suíte e closet), sala 2 ambientes com varanda, banho social, copa cozinha, área de serviço, DCE, 2 vagas paralelas, salão de festas, 2 elevadores, portaria 24horas, piscina, fitness, sauna, área de lazer completa','alugado',2000),(111,'Rua Rei Alberto 520','Centro','Juiz de Fora','36089-774',10,'Kitnet, salão, cozinha, banho. Prédio com portaria 24 hs e elevador.','disponível',980),(200,'Av Pres Itamar Franco 1022','Dom Bosco','Juiz de Fora','36025-654',5,'Garagem','alugado',500),(222,'Av. Barão do Rio Branco 3211','Centro','Juiz de Fora','36022-113',8,'LOJA COM 140M² DE PISO\nSOBRE LOJA PÉ DIREITO NO FUNDO DA LOJA, PROPORCIONA CONDIÇÕES DE FAZER +-20 A 25M²','disponível',2500),(300,'Tiradentes 180 apto 303','Centro','Juiz de Fora','36021-148',1,'2 quartos, sala, cozinha com armários, banho social, área, garagem','alugado',1800),(333,'Av. Barão do Rio Branco 4442','São Mateus','Juiz de Fora','36011-223',8,'Loja e sobreloja com 57m²','disponível',4000),(400,'Rua Dr Edgard Carlos Pereira 450','Santa Tereza','Juiz de Fora','36022-441',1,'3 QUARTOS (SUITE), SALA 2 AMBIENTES COM VARANDA, BANHO SOCIAL, COZINHA, ÁREA DE SERVIÇO, 2 VAGAS','alugado',2500),(444,'Av. Barão do Rio Branco 7280','Centro','Juiz de Fora','36027-145',10,'QUITINETE, GARAGEM, LAZER COMPLETO NO TERRAÇO.','disponível',1500),(500,'Rua Dr Constantino Paleta 18','Centro','Juiz de Fora','36025-144',2,'CASA 7 QUARTOS ( 2 SUÍTES SENDO 1 MASTER), ESCRITÓRIO, SALA DE TV, SALÃO 4 AMBIENTES, LAVABO, BANHO SOCIAL, COZINHA PLANEJADA, ÁREA DE SERVIÇO, DCE, VARANDÃO COM 120M², LAVANDERIA, 7 VAGAS COBERTAS, HORTA COM IRRIGAÇÃO, JARDIM TODO GRAMADO, POMAR COMPLETO COM VÁRIOS TIPOS DE ARVORES FRUTÍFERAS','alugado',3000),(555,'Av. dos Andradas 560','Centro','Juiz de Fora','36054-123',5,'GARAGEM ULTIMO PISO','disponível',140),(600,'Rua Padre Cafe 600','São Mateus','Juiz de Fora','36012-850',2,'Casa Duplex: 1° andar: salão 3 ambientes com lareira, lavabo, cozinha planejada, dispensa, área de serviço, área de lazer com piscina, sauna, DCE. ','alugado',3500),(666,'Padre Frederico 124','Santa Catarina','Juiz de Fora','36022-450',2,'Casa Duplex: 1°piso: suíte, sala de jantar, salão de estar com varanda, sala de TV, escritório. lavabo, copa cozinha planejada, lavanderia, canil, área externa com piscina, espaço gourmet, \n2º piso: 4 quartos (2 suítes sendo 1 com closet), varanda, banho social, terraço,3 vagas.','disponível',2500),(700,'Av Pres Itamar Franco 1080','São Mateus','Juiz de Fora','36015-230',3,'Casa Duplex: 1º piso: suíte, sala de estar com pé direito duplo e cortina de vidro, sala de tv, sala de jantar com vista, lavabo, copa cozinha planejada, despensa, ','alugado',2300),(777,'Barão de São João Nepomuceno','Centro','Juiz de Fora','36020-655',1,' 2 quartos com armários (suíte), sala 2 ambientes, banho social, cozinha planejada, área de serviço, banho de serviço, área externa 12m² fundos e 35m² frente, área de serviço, 2 vagas paralelas','disponível',2300),(800,'Av. Barão do Rio Branco 4132','Centro','Juiz de Fora','36055-330',3,'Cobertura: 1 apt por andar: 1°piso: 3 quartos (2 suítes), hall privativo, salão 3 ambientes, copa cozinha planejada, ilha, varanda, lavanderia, banho. ','alugado',3250),(888,'Rua Moraes e Castro 515','São Mateus','Juiz de Fora','36054-222',1,'4 QUARTOS SENDO 3 COM ARMÁRIOS (SUITE), SALA, COPA SEPARADA, COZINHA, LAVANDERIA, BANHO SOCIAL, TERRAÇO CO 15M²','disponível',4500),(900,'Rua Halfeld 684','Centro','Juiz de Fora','36088-512',3,'Cobertura: 1°piso: suíte, sala com varanda 2 ambientes, sala de TV, cozinha planejada, área de serviço com armários, DCE. \n2° piso: 3 quartos (2 suítes com armários), saleta, terraço com espaço gourmet.','alugado',2680),(999,'Ladeira Alexandre Leonel 832','Cascatinha','Juiz de Fora','36033-240',1,NULL,'disponível',1600);
/*!40000 ALTER TABLE `imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imovel_proprietario`
--

DROP TABLE IF EXISTS `imovel_proprietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imovel_proprietario` (
  `codigo_imovel` decimal(3,0) NOT NULL,
  `codigo_proprietario` decimal(4,0) NOT NULL,
  PRIMARY KEY (`codigo_imovel`,`codigo_proprietario`),
  KEY `fk_proprietario` (`codigo_proprietario`),
  CONSTRAINT `fk_imovel` FOREIGN KEY (`codigo_imovel`) REFERENCES `imovel` (`codigo_imovel`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_proprietario` FOREIGN KEY (`codigo_proprietario`) REFERENCES `proprietario` (`codigo_proprietario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imovel_proprietario`
--

LOCK TABLES `imovel_proprietario` WRITE;
/*!40000 ALTER TABLE `imovel_proprietario` DISABLE KEYS */;
INSERT INTO `imovel_proprietario` VALUES (300,100),(777,100),(300,101),(400,102),(500,103),(600,104),(600,105),(600,106),(700,107),(700,108),(888,108),(800,109),(900,110),(100,111),(100,112),(200,113),(111,114),(111,115),(111,116),(222,117),(333,118),(333,119),(333,120),(444,121),(444,122),(555,123),(555,124),(666,125),(777,127);
/*!40000 ALTER TABLE `imovel_proprietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacao`
--

DROP TABLE IF EXISTS `locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locacao` (
  `codigo_locacao` decimal(5,0) NOT NULL,
  `codigo_cliente` decimal(4,0) DEFAULT NULL,
  `codigo_imovel` decimal(3,0) DEFAULT NULL,
  `valor_locacao` double(6,2) DEFAULT NULL,
  `valor_taxas` double DEFAULT NULL,
  `valor_iptu` double DEFAULT NULL,
  `valor_total` double DEFAULT NULL,
  `data_locacao` date DEFAULT NULL,
  PRIMARY KEY (`codigo_locacao`),
  KEY `fk_cliente` (`codigo_cliente`),
  KEY `fk_imovel1` (`codigo_imovel`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`codigo_cliente`) REFERENCES `cliente` (`codigo_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_imovel1` FOREIGN KEY (`codigo_imovel`) REFERENCES `imovel` (`codigo_imovel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
INSERT INTO `locacao` VALUES (1,1111,300,1800.00,220,180,2200,'2015-05-12'),(2,1111,200,500.00,80,NULL,580,'2018-12-09'),(3,1212,400,2500.00,200,250,2950,'2019-05-15'),(4,1111,100,2000.00,230,200,2430,'2022-05-15'),(5,1414,600,3500.00,NULL,300,3800,'2020-05-14'),(6,1515,500,3000.00,100,350,3450,'2021-06-30'),(8,1717,700,2300.00,NULL,280,2580,'2022-01-03'),(9,1818,800,3250.00,600,320,4170,'2022-01-31'),(10,1919,900,2680.00,450,400,3530,'2015-05-18');
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proprietario` (
  `codigo_proprietario` decimal(4,0) NOT NULL,
  `nome_proprietario` varchar(20) DEFAULT NULL,
  `sobrenome` varchar(20) DEFAULT NULL,
  `cpf` decimal(11,0) DEFAULT NULL,
  PRIMARY KEY (`codigo_proprietario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprietario`
--

LOCK TABLES `proprietario` WRITE;
/*!40000 ALTER TABLE `proprietario` DISABLE KEYS */;
INSERT INTO `proprietario` VALUES (100,'Maria Alice','Sobreira',11122233344),(101,'Cassia','de Jesus',22233344455),(102,'Gina','Silva',33344455566),(103,'Eduardo','Cerqueira',44455566677),(104,'Bruna','Lima',55566677788),(105,'Rachel','Santos',66677788899),(106,'Paulo','Candido',77788899900),(107,'Melina','Duarte',88899900011),(108,'Otávia','Neto',99900011122),(109,'Bernice','Matias',11111111111),(110,'Alison','Cardoso',22222222222),(111,'Nicholas','Martinho',33333333333),(112,'Anderson','Silveira',44444444444),(113,'Jennifer','Camargo',55555555555),(114,'Brenda','Coutinho',66666666666),(115,'Edimar','Ramirez',77777777777),(116,'Isabella','Rossellini',88888888888),(117,'Sofia','Coelho',99999999999),(118,'Alec','Ramos',10101010110),(119,'Augusto','Martins',12121212121),(120,'Leonardo','Fonseca',13131313131),(121,'Tiago','Valadares',14141414141),(122,'Alicia','Medina',15151515151),(123,'Cecilia','Paiva',16161616161),(124,'Ana Carolina','Castro',17171717171),(125,'Sofia','Correa',18181818181),(126,'Vanessa','Campos',19191919191),(127,'Teresa','Roncado',1111222233),(128,'Antonio','Pires',2222333344),(129,'Marcelo','Novaes',3333444455),(130,'Marlon','Ferreira',4444555566),(131,'Karina','Pereira',5555666677),(132,'Gabriela','Horta',6666777788),(133,'Lázaro','Cunha',7777888899),(134,'Beatriz','Santana',8888999900),(135,'Adriana','Esteves',9999000011),(136,'Natália','Gomes',99988877766),(137,'Tatiana','Magalhães',88877766655);
/*!40000 ALTER TABLE `proprietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_imovel`
--

DROP TABLE IF EXISTS `tipo_imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_imovel` (
  `codigo_tipo` decimal(3,0) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_imovel`
--

LOCK TABLES `tipo_imovel` WRITE;
/*!40000 ALTER TABLE `tipo_imovel` DISABLE KEYS */;
INSERT INTO `tipo_imovel` VALUES (1,'Apartamento'),(2,'Casa'),(3,'Cobertura'),(4,'Galpão'),(5,'Garagem'),(6,'Granja'),(7,'Loft'),(8,'Loja'),(9,'Lote ou Terreno'),(10,'Quitinete'),(11,'Sala'),(12,'Sobrado');
/*!40000 ALTER TABLE `tipo_imovel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-30 20:48:57

/* Selecione o nome e cidade dos clientes que não possuem telefone cadastrado.*/
select nome_cliente, cidade from cliente where telefone is null;
/*Selecione nome, cpf e rg dos clientes que moram no centro.*/
select nome_cliente, cpf from cliente where bairro ='Centro';
/*Selecione o nome e a rua dos clientes que moram em São Paulo que tenham nascidos após 01/01/1990 1990-01-01 .*/
select nome_cliente, rua from cliente where cidade ='São Paulo' and datanasc > '1990-01-01';
/*selecione o código dos clientes que possuem telefone cadastrado e que não data de nascimento cadastrada.*/
select codigo_cliente from cliente where telefone is null and datanasc is null;
/*Selecione os códigos dos imóveis que possuem tipo cadastrado.*/
select codigo_imovel from imovel where codigo_tipo is not null;
/*selecione o código e a descrição dos imóveis localizados no centro de juiz de fora.*/
select codigo_imovel, descricao from imovel where bairro = 'Centro' and cidade = 'Juiz de Fora';
/* Selecione o código e a descrição dos imóveis situados no Rio de Janeiro ou petróplis.*/
select codigo_imovel, descricao from imovel where cidade = 'Rio de Janeiro' and 'Petrópolis';
/* Selecione o nome e cpf do(s) proprietário(s) de nome João e sobrenome da Silva*/
select nome_proprietario, cpf from proprietario where
