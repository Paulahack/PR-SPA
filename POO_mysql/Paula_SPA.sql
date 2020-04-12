-- MySQL dump 10.13  Distrib 5.7.15, for Win32 (AMD64)
--
-- Host: localhost    Database: PR_SPA
-- ------------------------------------------------------
-- Server version	5.7.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Idade` int(11) NOT NULL,
  `Endereço` varchar(100) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `Data_de_Nascimento` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ana Isabella Rodrigues dos Reis',28,'Rua Raimundo Ramos dos Passos, 1006, Perpétuo Socorro','523.832.123-90','20/03/1992'),(2,'José Barbosa da Silva Junior',20,'Rua Binga Uchôa, 120, Santa Rita','304.021.493-13','31/08/1999'),(3,'Arthur Gabriell Rodrigues dos Reis',38,'Rua Raimundo Alves das Costas, 1304, Buritizal','554.304.345-23','30/12/1982'),(4,'Maria José dos Santos Rodrigues',53,'Avenida Piauí, 624, Pacoval','925.725.132-68','04/04/1967'),(5,'Luiz Lino Cabral de Castro',61,'Rua Jovino Dinoá, 1203, Centro','495.304.203-14','27/04/1959');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronograma`
--

DROP TABLE IF EXISTS `cronograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronograma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(100) NOT NULL,
  `Data` varchar(11) NOT NULL,
  `Horário` varchar(11) NOT NULL,
  `Serviços` varchar(300) NOT NULL,
  `Quantidade_de_Sessões` int(11) NOT NULL,
  `Pagamento_Total` float(11,2) NOT NULL,
  `Forma_de_Pagamento` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronograma`
--

LOCK TABLES `cronograma` WRITE;
/*!40000 ALTER TABLE `cronograma` DISABLE KEYS */;
INSERT INTO `cronograma` VALUES (1,'José Barbosa da Silva Junior','01/02/2020','15:00',' Massagem Relaxante, Peeling de Diamante',3,480.00,'Débito'),(2,'José Barbosa da Silva Junior','01/02/2020','15:00',' Massagem Relaxante, Peeling de Diamante',3,480.00,'Débito'),(3,'Ana Isabella Rodrigues dos Reis','12/02/2020','12:00',' Elétrolipólise, Peeling de Diamante, Acumputura',2,440.00,'Crédito 2x'),(4,'Luiz Lino Cabral de Castro','20/03/2020','15:00',' Podologia',3,210.00,'À Vista'),(5,'Maria José dos Santos Rodrigues','08/04/2020','16:00',' Podologia, Eletrolipólise,Peeling de Diamante',5,1150.00,'Crédito 2x'),(6,'Arthur Gabriell Rodrigues dos Reis','09/04/2020','13:00',' Podologia, Massagem Relaxante, Peeling de Diamante',8,1840.00,'Débito');
/*!40000 ALTER TABLE `cronograma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionário`
--

DROP TABLE IF EXISTS `funcionário`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionário` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Número_de_Identificação` int(20) NOT NULL,
  `Área` varchar(30) NOT NULL,
  `CNPJ` varchar(15) NOT NULL,
  `Salário` float(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionário`
--

LOCK TABLES `funcionário` WRITE;
/*!40000 ALTER TABLE `funcionário` DISABLE KEYS */;
INSERT INTO `funcionário` VALUES (1,'Paula Raielle Rodrigues Ribeiro',30122001,'Estética','29.345.332/3321',1530.00),(2,'Bárbara Kezya e Souza Brandão',13041996,'Massagem','23.123.343/3134',1450.00),(3,'Paulo Roberto Alves Santos',14301992,'Acumputura','12.332.578/2457',1250.00),(4,'Pedro Sampaio Santos Rodrigues',4031984,'Eletrolipólise','34.321.432/2342',1670.00),(5,'Felipe Hugo Alves Brandão',28031996,'Podologia','02.302.123/3332',1100.00);
/*!40000 ALTER TABLE `funcionário` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedimento`
--

DROP TABLE IF EXISTS `procedimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Procedimento` varchar(30) NOT NULL,
  `Valor` float(11,2) NOT NULL,
  `Funcionário_Responsável` varchar(100) NOT NULL,
  `Produtos_Ultilizados` varchar(300) NOT NULL,
  `Tempo_de_Procedimento` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedimento`
--

LOCK TABLES `procedimento` WRITE;
/*!40000 ALTER TABLE `procedimento` DISABLE KEYS */;
INSERT INTO `procedimento` VALUES (1,'Massagem Relaxante',80.00,'Bárbara Kezya e Souza Brandão','Gel de Massagem,Ventosas, Massageador Elétrico, Rolo de Bambu','40 minutos'),(2,'Podologia',70.00,'Felipe Hugo Alves Brandão','Bísturi Nuclear, Clippers, Loção Antisséptica','40 minutos'),(3,'Peeling de Diamante',80.00,'Paula Raielle Rodrigues Ribeiro','Argila Branca, Máscara de Led, Sérum Facial, Hidratante Facial','50 minutos'),(4,'Acumputura',60.00,'Paulo Roberto Alves Santos','Agulhas de Acumputura, Esparadrapo, Algodão,Soro, Alcool Gel','30 minutos'),(5,'Eletrolipólise',90.00,'Pedro Sampaio Santos Rodrigues','Agulhas de Acumputura, Ventosas, Corrente Aussie Russa, Gel de Redução de Medida,Termoativo','60 minutos');
/*!40000 ALTER TABLE `procedimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Produto` varchar(100) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `Valor_Unitário` float(11,2) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Vendedor` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Argila Branca',20,15.00,'Derma Clean','Hugo Alves Barreto Santos'),(2,'Bísturi Nuclear',5,30.00,'Santa Clara','Mario Roberto Qasar Barbosa'),(3,'Máscara de Led',2,180.00,'iMask','Breno Santos Padilha'),(4,'Agulhas de Acumputura',5,80.00,'Dusk SafeColor','Brenda Ferreira Gomes'),(5,'Corrente Aussie Russa',2,2845.70,'Neurodyn','Pamela Souza Ferreira');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-12 18:09:28
