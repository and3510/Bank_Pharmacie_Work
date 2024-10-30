-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacia
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `IdCargo` int NOT NULL AUTO_INCREMENT,
  `NomeCargo` varchar(100) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `SalarioBase` decimal(10,2) NOT NULL,
  `JornadaSemanal` int NOT NULL,
  PRIMARY KEY (`IdCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Farmacêutico','Responsável pelo atendimento e supervisão de medicamentos',3000.00,40),(2,'Auxiliar de Farmácia','Apoio na organização e controle de estoque',1800.00,40),(3,'Gerente de Loja','Gerenciar a farmácia e supervisionar a equipe',4500.00,44),(4,'Estagiário de Farmácia','Apoio nas atividades diárias da farmácia',1000.00,20),(5,'Atendente de Farmácia','Atendimento ao cliente e venda de produtos',1500.00,40),(6,'Técnico de Laboratório','Apoio na análise de substâncias',3200.00,40),(7,'Coordenador de Farmácia','Supervisão de todas as operações da farmácia',5000.00,44),(8,'Analista de Qualidade','Controle de qualidade dos medicamentos',3500.00,40),(9,'Vendedor','Responsável pela venda de produtos',1700.00,44),(10,'Supervisor de Estoque','Gerenciamento do estoque de medicamentos',2800.00,40),(11,'Recepcionista','Atendimento ao cliente',1400.00,40),(12,'Assistente Administrativo','Suporte às atividades administrativas',2000.00,40),(13,'Auxiliar de Limpeza','Responsável pela limpeza do ambiente',1300.00,40),(14,'Farmacêutico Hospitalar','Atendimento em hospitais',4000.00,44),(15,'Balconista','Atendimento no balcão da farmácia',1600.00,44);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_medicamento`
--

DROP TABLE IF EXISTS `categoria_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_medicamento` (
  `IdCategoria` int NOT NULL AUTO_INCREMENT,
  `NomeCategoria` varchar(100) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_medicamento`
--

LOCK TABLES `categoria_medicamento` WRITE;
/*!40000 ALTER TABLE `categoria_medicamento` DISABLE KEYS */;
INSERT INTO `categoria_medicamento` VALUES (1,'Analgésicos','Medicamentos para alívio de dor'),(2,'Antibióticos','Medicamentos para tratamento de infecções bacterianas'),(3,'Antidepressivos','Medicamentos para tratamento de depressão'),(4,'Antiinflamatórios','Medicamentos para redução de inflamações'),(5,'Antialérgicos','Medicamentos para tratamento de alergias'),(6,'Antifúngicos','Medicamentos para tratar infecções fúngicas'),(7,'Antivirais','Medicamentos para tratamento de infecções virais'),(8,'Diuréticos','Medicamentos para eliminação de líquidos'),(9,'Anti-hipertensivos','Medicamentos para controle da pressão arterial'),(10,'Broncodilatadores','Medicamentos para tratamento de problemas respiratórios'),(11,'Esteroides','Medicamentos com ação anti-inflamatória'),(12,'Relaxantes Musculares','Medicamentos para alívio de tensão muscular'),(13,'Hipnóticos','Medicamentos para tratamento de insônia'),(14,'Anticonvulsivantes','Medicamentos para controle de crises epilépticas'),(15,'Antiácidos','Medicamentos para tratamento de azia e má digestão');
/*!40000 ALTER TABLE `categoria_medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `IdCliente` mediumint NOT NULL AUTO_INCREMENT,
  `NomeCliente` varchar(100) NOT NULL,
  `Cpf` varchar(11) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DataNascimento` date NOT NULL,
  PRIMARY KEY (`IdCliente`),
  UNIQUE KEY `Cpf` (`Cpf`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'João Silva','12345678900','(11) 98765-4321','joao.silva@email.com','1990-05-12'),(2,'Maria Oliveira','98765432100','(11) 91234-5678','maria.oliveira@email.com','1985-11-23'),(3,'Ana Souza','45678912300','(21) 99876-5432','ana.souza@email.com','1995-03-30'),(4,'Carlos Santos','32165498700','(31) 91234-8765','carlos.santos@email.com','1988-07-15'),(5,'Beatriz Costa','78912345600','(41) 99765-4321','beatriz.costa@email.com','2000-10-10'),(6,'Lucas Pereira','15975325800','(11) 94567-2345','lucas.pereira@email.com','1992-04-11'),(7,'Mariana Souza','65498732100','(21) 98765-2345','mariana.souza@email.com','1987-02-09'),(8,'Rodrigo Almeida','12398765400','(11) 92345-9876','rodrigo.almeida@email.com','1995-11-21'),(9,'Fernanda Lima','78965432100','(41) 91234-6543','fernanda.lima@email.com','1986-08-19'),(10,'Thiago Ferreira','32112332100','(21) 99876-2345','thiago.ferreira@email.com','1990-06-14'),(11,'Gabriela Costa','45632178900','(11) 92345-8765','gabriela.costa@email.com','1998-01-13'),(12,'Pedro Henrique','96385274100','(31) 91234-5432','pedro.henrique@email.com','1991-12-07'),(13,'Raquel Antunes','74185296300','(11) 93456-1234','raquel.antunes@email.com','1989-03-24'),(14,'Bruno Gomes','85296374100','(41) 92345-8765','bruno.gomes@email.com','1993-07-12'),(15,'Aline Ferreira','65432198700','(21) 99876-5432','aline.ferreira@email.com','1997-09-25'),(16,'Carlos da Silva','12.45678900','(11) 91234-5678','carlos.silva@email.com','1990-01-15'),(17,'Ana Pereira','23456789001','(21) 92345-6789','ana.pereira@email.com','1985-05-20'),(18,'João Oliveira','34567890102','(31) 93456-7890','joao.oliveira@email.com','1992-03-30'),(19,'Julia Santos','45678901203','(41) 94567-8901','julia.santos@email.com','1988-11-12'),(20,'Roberto Lima','56789012304','(51) 95678-9012','roberto.lima@email.com','1980-07-07'),(21,'Beatriz Gomes','67890123405','(61) 96789-0123','beatriz.gomes@email.com','1995-09-22'),(22,'Fernanda Costa','78901234506','(71) 97890-1234','fernanda.costa@email.com','1993-06-18'),(23,'Paulo Ferreira','89012345607','(81) 98901-2345','paulo.ferreira@email.com','1987-12-05'),(24,'Alice Almeida','90123456708','(91) 99012-3456','alice.almeida@email.com','1991-02-14');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante_medicamento`
--

DROP TABLE IF EXISTS `fabricante_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricante_medicamento` (
  `IdFabricante` int NOT NULL AUTO_INCREMENT,
  `NomeFabricante` varchar(100) NOT NULL,
  `EnderecoFabricante` varchar(255) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Cnpj` varchar(14) NOT NULL,
  `DataContrato` date NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`IdFabricante`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Cnpj` (`Cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante_medicamento`
--

LOCK TABLES `fabricante_medicamento` WRITE;
/*!40000 ALTER TABLE `fabricante_medicamento` DISABLE KEYS */;
INSERT INTO `fabricante_medicamento` VALUES (1,'Miller-Porter','428 Nancy Extension Suite 361, Smithbury, MD 72186','(320)385-5723','gina63@example.org','70536404348402','2022-11-02',1),(2,'Harrell, Rice and Gonzalez','USNV Bowers, FPO AP 28475','001-948-567-021','wilcoxjohn@example.net','17470263333379','2022-03-28',1),(3,'Alvarez Group','68423 Kim Forest, Ashleybury, WY 48843','+1-789-896-4080','brendawong@example.com','93257804339252','2020-09-15',0),(4,'Chavez, Ford and Smith','Unit 1493 Box 1996, DPO AE 25329','001-296-667-664','peter81@example.com','44088668239509','2020-02-19',1),(5,'Craig, Kerr and Silva','382 Fisher Pine Apt. 338, New Amanda, MI 75595','(454)624-3935x2','sbarry@example.com','64776422993734','2021-07-21',0),(6,'Jones, Myers and Nelson','0405 Victoria Ramp Suite 693, Amberhaven, NY 01000','986-799-2692','christopher98@example.net','15015304237638','2023-09-23',1),(7,'Adams and Sons','PSC 7230, Box 9245, APO AP 83637','+1-472-943-0483','hskinner@example.net','64175075318501','2020-06-16',1),(8,'Gallegos Inc','865 Eric Union Suite 777, Sellersshire, NJ 49346','(268)742-1062x6','heatherowens@example.net','81057334722717','2021-10-22',1),(9,'Faulkner, Arroyo and Hawkins','872 Gutierrez Terrace, Moontown, DE 08959','(589)558-5544x7','michaelmosley@example.com','54363185326904','2022-01-08',0),(10,'Stephens-Smith','15958 Gerald Manors, Lake Robertside, IL 04116','001-668-762-159','stephenhood@example.net','33556338828110','2020-09-26',1),(11,'Gonzalez-Nelson','373 Richard Mount Suite 690, Gregoryberg, NE 12761','964.795.2110x93','vmendoza@example.org','63674146885738','2020-07-28',0),(12,'Ball-Mcguire','13589 Hector Crescent Suite 355, Port Jessica, IN 37444','868-246-8068x30','margaret63@example.org','14625152176595','2022-03-29',1),(13,'Paul Ltd','0386 Sanders Mills Apt. 105, Reedfurt, MS 95255','350.799.2661x47','ithomas@example.net','42674385441879','2023-09-27',1),(14,'Green-Wells','3354 Shelby Estate Suite 464, Port Taylor, AS 91667','543.822.8010x76','gibsonjason@example.org','74145063880310','2024-08-18',0),(15,'Rodriguez, Long and Powell','156 Davies Ridge, Lake Whitneymouth, NM 57022','(645)787-5624x7','carlos33@example.org','65356680405245','2024-02-06',1);
/*!40000 ALTER TABLE `fabricante_medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filial`
--

DROP TABLE IF EXISTS `filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filial` (
  `IdFilial` mediumint NOT NULL AUTO_INCREMENT,
  `NomeFilial` varchar(100) NOT NULL,
  `Endereco` varchar(255) NOT NULL,
  `DataAbertura` date NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `HorarioFuncionamento` time NOT NULL,
  PRIMARY KEY (`IdFilial`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filial`
--

LOCK TABLES `filial` WRITE;
/*!40000 ALTER TABLE `filial` DISABLE KEYS */;
INSERT INTO `filial` VALUES (1,'Garcia-Young','8250 Douglas Stream Suite 076, Davidside, NJ 25190','2020-06-30',1,'02:40:46'),(2,'Scott, Melton and Brooks','Unit 0155 Box 0826, DPO AA 12372','2019-02-18',1,'17:34:27'),(3,'Tucker, Vargas and Rice','7056 Madeline Via, North Amanda, TX 29134','2015-07-05',0,'22:41:14'),(4,'Obrien-Maxwell','5436 Clark Ramp Suite 495, Lake Samantha, WY 18591','2015-09-10',0,'02:26:18'),(5,'Morales-Stanley','19257 Bennett Fork Suite 851, Harrisonburgh, WV 25997','2021-03-21',1,'21:59:43'),(6,'Bradford Ltd','27597 Nelson Cape Suite 615, North Kathrynside, TX 21882','2016-12-15',1,'00:58:56'),(7,'Wilson, Mann and Salazar','587 Matthew Rue Suite 328, Port Ross, AK 71215','2023-07-16',1,'17:35:10'),(8,'Snyder-Jordan','8632 Sue Manors Suite 800, North Stevenland, AS 18133','2018-02-04',1,'02:18:41'),(9,'Douglas, Cochran and Moore','466 Bell Crest Apt. 519, Wuhaven, NY 80624','2021-01-06',1,'23:23:49'),(10,'Hamilton-Carey','01038 Avila Loaf Apt. 183, Davisburgh, WA 31926','2018-09-15',1,'17:24:21'),(11,'Chang-Hamilton','97633 Eric Mall Apt. 873, East Michaelfurt, NE 26290','2016-02-09',0,'02:38:20'),(12,'Edwards Group','53179 Marcus View, South Eric, NV 01947','2024-02-17',0,'10:23:10'),(13,'Benjamin-Lyons','25984 Cline Trail, South Jessicaborough, CO 91324','2024-02-14',1,'12:51:03'),(14,'Walker LLC','674 Middleton Turnpike, Kennethborough, VI 23773','2015-11-03',0,'20:59:52'),(15,'Daniels Ltd','2507 Decker Shore Apt. 178, Sheilafort, MD 40041','2019-10-19',0,'23:35:24');
/*!40000 ALTER TABLE `filial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `IdFornecedor` int NOT NULL AUTO_INCREMENT,
  `NomeFornecedor` varchar(100) NOT NULL,
  `Cnpj` varchar(14) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `EnderecoFornecedor` varchar(255) NOT NULL,
  `DataContrato` date NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`IdFornecedor`),
  UNIQUE KEY `Cnpj` (`Cnpj`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Fornecedor A','11222333000144','(11) 91234-5678','contato@fornecedora.com','Rua A, 100','2020-06-15',1),(2,'Fornecedor B','22333444000155','(21) 92345-6789','suporte@fornecedorb.com','Avenida B, 200','2019-07-20',1),(3,'Fornecedor C','33444555000166','(31) 93456-7890','vendas@fornecedorc.com','Travessa C, 300','2021-08-25',1),(4,'Fornecedor D','44555666000177','(41) 94567-9876','gerencia@fornecedord.com','Rua D, 400','2022-09-10',1),(5,'Fornecedor E','55666777000188','(51) 95678-9876','atendimento@fornecedore.com','Avenida E, 500','2020-11-05',1),(6,'Fornecedor F','66777888000199','(61) 96789-6543','comercial@fornecedorF.com','Travessa F, 600','2021-01-18',1),(7,'Fornecedor G','77888999000100','(71) 97890-1234','contato@fornecedorg.com','Rua G, 700','2021-03-22',1),(8,'Fornecedor H','88999000000111','(81) 98901-2345','vendas@fornecedorh.com','Avenida H, 800','2021-06-30',1),(9,'Fornecedor I','99000111000122','(91) 99012-3456','suporte@fornecedori.com','Travessa I, 900','2019-12-01',1),(10,'Fornecedor J','00111222000133','(31) 92345-6789','atendimento@fornecedorj.com','Rua J, 1000','2022-02-05',1),(11,'Fornecedor K','11222333400144','(11) 91234-5678','comercial@fornecedork.com','Rua K, 1100','2021-04-16',1),(12,'Fornecedor L','22533444000155','(21) 92345-6789','vendas@fornecedorl.com','Avenida L, 1200','2021-07-22',1),(13,'Fornecedor M','33444565000166','(31) 93456-7890','gerencia@fornecedorm.com','Travessa M, 1300','2022-09-10',1),(14,'Fornecedor N','40555666000177','(41) 94567-9876','comercial@fornecedorn.com','Rua N, 1400','2021-05-18',1),(15,'Fornecedor O','55866777000188','(51) 95678-9876','atendimento@fornecedoro.com','Avenida O, 1500','2021-08-25',1);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `IdFuncionario` mediumint NOT NULL AUTO_INCREMENT,
  `NomeFuncionario` varchar(100) NOT NULL,
  `Cpf` varchar(11) NOT NULL,
  `Endereco` varchar(255) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DataAdmissao` date NOT NULL,
  `Turno` varchar(10) NOT NULL,
  `IdCargo` int NOT NULL,
  PRIMARY KEY (`IdFuncionario`),
  UNIQUE KEY `Cpf` (`Cpf`),
  UNIQUE KEY `Email` (`Email`),
  KEY `IdCargo` (`IdCargo`),
  CONSTRAINT `Funcionario_ibfk_1` FOREIGN KEY (`IdCargo`) REFERENCES `cargo` (`IdCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Lucas Almeida','12345678900','Rua X, 101','(11) 99876-5432','lucas.almeida@email.com','2020-02-01','Manhã',1),(2,'Paula Silva','98765432100','Avenida Y, 202','(21) 91234-8765','paula.silva@email.com','2019-03-10','Tarde',2),(3,'José Pereira','45678912300','Travessa Z, 303','(31) 92345-9876','jose.pereira@email.com','2021-07-15','Noite',3),(4,'Mariana Souza','12365478900','Rua L, 104','(31) 91234-5467','mariana.souza@email.com','2021-03-12','Manhã',4),(5,'Fernanda Lima','78912345600','Avenida M, 205','(41) 99876-3421','fernanda.lima@email.com','2020-09-14','Tarde',5),(6,'Thiago Ferreira','85296374100','Rua N, 206','(21) 98765-3452','thiago.ferreira@email.com','2022-06-10','Noite',6),(7,'Carla Dias','74185296300','Rua O, 301','(11) 92345-1234','carla.dias@email.com','2019-12-05','Manhã',7),(8,'João Mendes','96385274100','Avenida P, 302','(31) 92345-4321','joao.mendes@email.com','2020-04-22','Tarde',8),(9,'Pedro Henrique','32165498700','Rua Q, 405','(51) 98765-8765','pedro.henrique@email.com','2020-10-15','Noite',9),(10,'Bruno Gomes','45612378900','Rua R, 406','(11) 94567-3214','bruno.gomes@email.com','2021-11-25','Manhã',10),(11,'Aline Ferreira','65498732100','Travessa S, 507','(21) 99876-5432','aline.ferreira@email.com','2019-02-08','Tarde',11),(12,'Camila Andrade','12378945600','Avenida T, 508','(31) 92345-7654','camila.andrade@email.com','2020-07-12','Noite',12),(13,'Renato Costa','78965412300','Rua U, 609','(11) 94567-2345','renato.costa@email.com','2021-09-19','Manhã',13),(14,'Patrícia Nunes','32198765400','Travessa V, 610','(41) 99876-4321','patricia.nunes@email.com','2022-01-05','Tarde',14),(15,'Carlos Souza','45678932100','Rua W, 711','(21) 98765-7654','carlos.souza@email.com','2022-03-15','Noite',15);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento` (
  `IdMedicamento` mediumint NOT NULL AUTO_INCREMENT,
  `NomeMedicamento` varchar(100) NOT NULL,
  `Descricao` varchar(500) NOT NULL,
  `Preco` decimal(10,2) NOT NULL,
  `QntEstoque` int NOT NULL,
  `Validade` date NOT NULL,
  `Cod_Barras` varchar(14) NOT NULL,
  `ReceitaNecessária` tinyint(1) NOT NULL,
  `IdFabricante` int NOT NULL,
  `IdCategoria` int NOT NULL,
  `IdFornecedor` int NOT NULL,
  PRIMARY KEY (`IdMedicamento`),
  UNIQUE KEY `Cod_Barras` (`Cod_Barras`),
  KEY `IdFabricante` (`IdFabricante`),
  KEY `IdCategoria` (`IdCategoria`),
  KEY `IdFornecedor` (`IdFornecedor`),
  CONSTRAINT `Medicamento_ibfk_1` FOREIGN KEY (`IdFabricante`) REFERENCES `fabricante_medicamento` (`IdFabricante`),
  CONSTRAINT `Medicamento_ibfk_2` FOREIGN KEY (`IdCategoria`) REFERENCES `categoria_medicamento` (`IdCategoria`),
  CONSTRAINT `Medicamento_ibfk_3` FOREIGN KEY (`IdFornecedor`) REFERENCES `fornecedor` (`IdFornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES (1,'Paracetamol','Usado para tratar febre e dores leves a moderadas.',10.50,50,'2025-12-01','1234567890123',0,4,2,15),(2,'Amoxicilina','Antibiótico para tratar infecções bacterianas.',25.30,30,'2026-01-15','2233445566778',1,5,1,14),(3,'Losartana','Medicamento para hipertensão e proteção renal.',35.40,40,'2026-03-01','3344556677889',1,4,6,13),(4,'Ibuprofeno','Anti-inflamatório para alívio de dores e febre.',18.20,20,'2025-07-22','4455667788990',0,3,5,12),(5,'Fluoxetina','Antidepressivo usado no tratamento de depressão e ansiedade.',45.10,15,'2027-08-11','5566778899001',1,10,2,13),(6,'Salmeterol','Broncodilatador para tratamento de asma e DPOC.',60.00,25,'2026-05-09','6677889900112',1,7,8,11),(7,'Cetirizina','Antialérgico para tratar sintomas de alergias.',20.90,30,'2025-11-25','7788990011223',0,2,1,10),(8,'Simvastatina','Medicamento para redução de colesterol.',50.75,10,'2026-04-18','8899001122334',1,6,7,9),(9,'Dipirona','Usada para alívio de dores e febre alta.',12.60,100,'2024-12-15','9900112233445',0,1,9,8),(10,'Ranitidina','Usada para tratar úlceras e refluxo ácido.',25.90,60,'2026-10-10','0011223344556',0,8,2,7),(11,'Omeprazol','Inibidor de bomba de prótons para tratar refluxo.',28.30,75,'2027-09-01','1122334455667',0,10,3,6),(12,'Metformina','Controle de açúcar no sangue em diabéticos.',23.20,50,'2027-03-20','2233445566779',1,11,4,5),(13,'Lorazepam','Ansiolítico usado para tratar distúrbios de ansiedade.',32.50,20,'2025-07-10','3344556677881',1,6,5,4),(14,'Loratadina','Antialérgico usado para tratar rinite alérgica.',17.80,40,'2026-02-28','4455667788992',0,2,8,3),(15,'Aspirina','Usada para aliviar dor e febre, e como anti-inflamatório.',10.00,50,'2026-09-01','5566778899003',0,2,10,1);
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos_prescritos`
--

DROP TABLE IF EXISTS `medicamentos_prescritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos_prescritos` (
  `IdMedicamentoPrescrito` mediumint NOT NULL AUTO_INCREMENT,
  `Dosagem` varchar(50) NOT NULL,
  `Quantidade` int NOT NULL,
  `InstrucoesUso` varchar(255) DEFAULT NULL,
  `IdPrescricao` mediumint NOT NULL,
  `IdMedicamento` mediumint NOT NULL,
  PRIMARY KEY (`IdMedicamentoPrescrito`),
  KEY `IdPrescricao` (`IdPrescricao`),
  KEY `IdMedicamento` (`IdMedicamento`),
  CONSTRAINT `Medicamentos_Prescritos_ibfk_1` FOREIGN KEY (`IdPrescricao`) REFERENCES `prescricao_medica` (`IdPrescricao`),
  CONSTRAINT `Medicamentos_Prescritos_ibfk_2` FOREIGN KEY (`IdMedicamento`) REFERENCES `medicamento` (`IdMedicamento`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos_prescritos`
--

LOCK TABLES `medicamentos_prescritos` WRITE;
/*!40000 ALTER TABLE `medicamentos_prescritos` DISABLE KEYS */;
INSERT INTO `medicamentos_prescritos` VALUES (1,'500 mg',2,'Tomar 1 comprimido a cada 8 horas.',1,1),(2,'500 mg',3,'Aplicar 3 vezes ao dia por 7 dias',2,2),(3,'20 mg',30,'Tomar 1 comprimido pela manhã por 3 meses.',5,5),(4,'400 mg',20,'Tomar 1 a cada 6 horas em caso de dor ou febre.',4,4),(5,'50 mg',5,'Tomar 1 comprimido ao dia antes das refeições.',3,3),(6,'20 mg',15,'Tomar 1 comprimido ao deitar.',8,8),(7,'250 mg',6,'Tomar 1 comprimido a cada 8 horas por 5 dias.',9,10),(8,'500 mg',10,'Tomar 2 comprimidos em caso de dor.',10,9),(13,'10 mg',7,'Tomar 1 comprimido 1 vez ao dia.',7,7),(14,'50 mg',5,'Realizar inalação a cada 12 horas.',6,6);
/*!40000 ALTER TABLE `medicamentos_prescritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescricao_medica`
--

DROP TABLE IF EXISTS `prescricao_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescricao_medica` (
  `IdPrescricao` mediumint NOT NULL AUTO_INCREMENT,
  `NomePaciente` varchar(100) NOT NULL,
  `Crm` char(7) NOT NULL,
  `Prescricao` varchar(500) NOT NULL,
  `DataPrescricao` date NOT NULL,
  `IdTipoReceita` int NOT NULL,
  PRIMARY KEY (`IdPrescricao`),
  UNIQUE KEY `Crm` (`Crm`),
  KEY `IdTipoReceita` (`IdTipoReceita`),
  CONSTRAINT `Prescricao_Medica_ibfk_1` FOREIGN KEY (`IdTipoReceita`) REFERENCES `tipo_receita` (`IdTipoReceita`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescricao_medica`
--

LOCK TABLES `prescricao_medica` WRITE;
/*!40000 ALTER TABLE `prescricao_medica` DISABLE KEYS */;
INSERT INTO `prescricao_medica` VALUES (1,'Carlos da Silva','1234567','Tomar 1 comprimido de Paracetamol 500mg a cada 8 horas por 5 dias.','2024-10-01',2),(2,'Ana Pereira','9876854','Aplicar Amoxicilina 500mg 3 vezes ao dia por 7 dias.','2024-10-02',4),(3,'Mariana Souza','1122233','Tomar 1 comprimido de Losartana 50mg ao dia para controle de pressão.','2024-10-03',5),(4,'João Oliveira','5504433','Ingerir Ibuprofeno 400mg a cada 6 horas em caso de dor ou febre.','2024-10-04',3),(5,'Julia Santos','6675788','Iniciar Fluoxetina 20mg diariamente pela manhã por 3 meses.','2024-10-05',11),(6,'Roberto Lima','4455266','Administrar Salmeterol 50mcg a cada 12 horas via inalação.','2024-10-06',12),(7,'Beatriz Gomes','9986877','Usar Cetirizina 10mg uma vez ao dia para controle de alergias.','2024-10-07',8),(8,'Fernanda Costa','2232344','Ingerir 1 comprimido de Simvastatina 20mg diariamente à noite.','2024-10-08',7),(9,'Paulo Ferreira','3344155','Tomar 1 comprimido de Ranitidina 150mg antes das refeições por 1 mês.','2024-10-09',15),(10,'Alice Almeida','7766155','Tomar Dipirona 500mg a cada 6 horas em caso de dor intensa.','2024-10-10',10);
/*!40000 ALTER TABLE `prescricao_medica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `IdServico` mediumint NOT NULL AUTO_INCREMENT,
  `NomeServico` varchar(50) NOT NULL,
  `IdTipoServico` int NOT NULL,
  PRIMARY KEY (`IdServico`),
  KEY `IdTipoServico` (`IdTipoServico`),
  CONSTRAINT `Servico_ibfk_1` FOREIGN KEY (`IdTipoServico`) REFERENCES `tipo_servico` (`IdTipoServico`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,'Teste de Glicemia',1),(2,'Teste de Covid-19 (RT-PCR)',1),(3,'Teste Rápido de Covid-19',1),(4,'Teste de Colesterol',1),(5,'Medição de Pressão Arterial',4),(6,'Aferição de Temperatura Corporal',4),(7,'Vacinação contra Gripe',2),(8,'Vacinação contra Hepatite B',2),(9,'Consulta Farmacêutica',3),(10,'Aplicação da Vitamina B12',5);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_receita`
--

DROP TABLE IF EXISTS `tipo_receita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_receita` (
  `IdTipoReceita` int NOT NULL AUTO_INCREMENT,
  `TipoReceita` varchar(50) NOT NULL,
  `Descricao` varchar(500) NOT NULL,
  PRIMARY KEY (`IdTipoReceita`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_receita`
--

LOCK TABLES `tipo_receita` WRITE;
/*!40000 ALTER TABLE `tipo_receita` DISABLE KEYS */;
INSERT INTO `tipo_receita` VALUES (1,'Receita Médica Simples','Receita para medicamentos que não possuem controle rígido, mas exigem prescrição.'),(2,'Receita de Antibióticos','Prescrição para antibióticos, com validade limitada e exigência de controle.'),(3,'Receita de Controlados','Receita especial para medicamentos controlados pela portaria 344 da Anvisa.'),(4,'Receita Psiquiátrica','Prescrição médica voltada para medicamentos de uso psiquiátrico, como ansiolíticos.'),(5,'Receita de Uso Prolongado','Receita destinada para medicamentos de uso contínuo, como para hipertensão e diabetes.'),(6,'Receita Odontológica','Prescrição de medicamentos por dentistas para tratamento de infecções e dor.'),(7,'Receita Veterinária','Prescrição para medicamentos de uso veterinário, exigida para animais.'),(8,'Receita Hospitalar','Receita emitida dentro de ambiente hospitalar para pacientes internados.'),(9,'Receita Ginecológica','Prescrição de medicamentos voltados para saúde feminina, como anticoncepcionais.'),(10,'Receita Pediátrica','Prescrição destinada ao tratamento de crianças, com dosagens especiais.'),(11,'Receita Dermatológica','Prescrição para tratamento de doenças de pele, como acne ou alergias.'),(12,'Receita Oftalmológica','Prescrição para medicamentos relacionados à saúde ocular, como colírios.'),(13,'Receita de Anticoncepcionais','Receita específica para controle de medicamentos contraceptivos.'),(14,'Receita para Vacinas','Prescrição voltada para administração de vacinas, exigida para algumas categorias de vacinas.'),(15,'Receita Endocrinológica','Prescrição médica voltada para tratamentos hormonais, como reposição hormonal.');
/*!40000 ALTER TABLE `tipo_receita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_servico`
--

DROP TABLE IF EXISTS `tipo_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_servico` (
  `IdTipoServico` int NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(500) NOT NULL,
  `Preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`IdTipoServico`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_servico`
--

LOCK TABLES `tipo_servico` WRITE;
/*!40000 ALTER TABLE `tipo_servico` DISABLE KEYS */;
INSERT INTO `tipo_servico` VALUES (1,'Testes',100.00),(2,'Vacinas',150.00),(3,'Consultas',300.00),(4,'Outros',50.00),(5,'Aplicações',30.00);
/*!40000 ALTER TABLE `tipo_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `IdVenda` mediumint NOT NULL AUTO_INCREMENT,
  `DataVenda` datetime NOT NULL,
  `ValorTotal` decimal(10,2) NOT NULL,
  `DescontoTotal` decimal(10,2) DEFAULT '0.00',
  `IdFuncionario` mediumint NOT NULL,
  `IdFilial` mediumint NOT NULL,
  `IdCliente` mediumint NOT NULL,
  PRIMARY KEY (`IdVenda`),
  KEY `IdFuncionario` (`IdFuncionario`),
  KEY `IdFilial` (`IdFilial`),
  KEY `IdCliente` (`IdCliente`),
  CONSTRAINT `Venda_ibfk_1` FOREIGN KEY (`IdFuncionario`) REFERENCES `funcionario` (`IdFuncionario`),
  CONSTRAINT `Venda_ibfk_2` FOREIGN KEY (`IdFilial`) REFERENCES `filial` (`IdFilial`),
  CONSTRAINT `Venda_ibfk_3` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'2024-01-15 00:00:00',121.00,0.00,1,13,1),(2,'2024-01-16 00:00:00',110.30,15.00,2,11,2),(3,'2024-01-17 00:00:00',225.40,10.00,3,1,3),(4,'2024-01-18 00:00:00',132.40,4.00,4,5,4),(5,'2024-01-19 00:00:00',95.10,0.00,5,6,5),(6,'2024-01-20 00:00:00',103.00,7.00,6,6,6),(7,'2024-01-21 00:00:00',176.80,15.00,7,8,7),(8,'2024-01-22 00:00:00',193.25,7.50,8,10,8),(9,'2024-01-23 00:00:00',334.80,3.00,9,10,9),(10,'2024-01-24 00:00:00',52.90,3.00,10,5,10),(11,'2024-01-25 00:00:00',128.30,0.00,11,9,11),(12,'2024-01-26 00:00:00',221.40,25.00,12,1,12),(13,'2024-01-27 00:00:00',127.50,5.00,13,1,13),(14,'2024-01-28 00:00:00',112.80,5.00,14,1,14),(15,'2024-01-29 00:00:00',68.00,2.00,15,6,15),(16,'2024-02-01 00:00:00',118.00,3.00,1,6,16),(17,'2024-02-02 00:00:00',153.30,22.00,2,8,17),(18,'2024-02-03 00:00:00',175.40,10.00,3,8,18),(19,'2024-02-04 00:00:00',336.40,0.00,4,11,19),(20,'2024-02-05 00:00:00',72.10,3.00,5,15,20),(21,'2024-02-06 00:00:00',160.00,0.00,6,15,21),(22,'2024-02-07 00:00:00',154.90,16.00,7,3,22),(23,'2024-02-08 00:00:00',189.25,11.50,8,2,23),(24,'2024-02-09 00:00:00',40.10,2.50,9,2,24);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_medicamento`
--

DROP TABLE IF EXISTS `vendas_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas_medicamento` (
  `IdVendas_Medicamento` mediumint NOT NULL AUTO_INCREMENT,
  `ValorMedicamento` decimal(10,2) NOT NULL,
  `DescontoItem` decimal(10,2) DEFAULT '0.00',
  `QuantidadeItem` int NOT NULL,
  `ReceitaApresentada` tinyint(1) NOT NULL,
  `IdVenda` mediumint NOT NULL,
  `IdMedicamento` mediumint NOT NULL,
  `IdPrescricao` mediumint DEFAULT NULL,
  PRIMARY KEY (`IdVendas_Medicamento`),
  KEY `IdVenda` (`IdVenda`),
  KEY `IdMedicamento` (`IdMedicamento`),
  KEY `IdPrescricao` (`IdPrescricao`),
  CONSTRAINT `Vendas_Medicamento_ibfk_1` FOREIGN KEY (`IdVenda`) REFERENCES `venda` (`IdVenda`),
  CONSTRAINT `Vendas_Medicamento_ibfk_2` FOREIGN KEY (`IdMedicamento`) REFERENCES `medicamento` (`IdMedicamento`),
  CONSTRAINT `Vendas_Medicamento_ibfk_3` FOREIGN KEY (`IdPrescricao`) REFERENCES `prescricao_medica` (`IdPrescricao`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_medicamento`
--

LOCK TABLES `vendas_medicamento` WRITE;
/*!40000 ALTER TABLE `vendas_medicamento` DISABLE KEYS */;
INSERT INTO `vendas_medicamento` VALUES (1,10.50,0.00,2,1,1,1,1),(2,25.30,5.00,1,1,2,2,2),(3,35.40,0.00,1,0,3,3,3),(4,18.20,2.00,2,0,4,4,4),(5,45.10,0.00,1,1,5,5,5),(6,60.00,5.00,1,1,6,6,6),(7,20.90,0.00,2,0,7,7,7),(8,50.75,0.00,1,1,8,8,8),(9,12.60,1.00,3,0,9,9,9),(10,25.90,0.00,1,1,10,10,10),(11,28.30,0.00,1,0,11,11,1),(12,23.20,2.50,2,1,12,12,2),(13,32.50,5.00,1,0,13,13,3),(14,17.80,0.00,1,1,14,14,4),(15,10.00,1.00,2,0,15,15,5),(16,10.50,0.00,2,1,16,1,6),(17,25.30,2.00,1,0,17,2,7),(18,35.40,0.00,1,1,18,3,8),(19,18.20,0.00,2,0,19,4,9),(20,45.10,3.00,1,1,20,5,10),(21,60.00,0.00,1,1,21,6,1),(22,20.90,1.00,1,0,22,7,2),(23,50.75,4.00,1,1,23,8,3),(24,12.60,0.00,1,0,24,9,4);
/*!40000 ALTER TABLE `vendas_medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_servico`
--

DROP TABLE IF EXISTS `vendas_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas_servico` (
  `IdVendas_Serviço` mediumint NOT NULL AUTO_INCREMENT,
  `DescontoItem` decimal(10,2) DEFAULT '0.00',
  `QuantidadeItem` int NOT NULL,
  `IdVenda` mediumint NOT NULL,
  `IdServico` mediumint NOT NULL,
  `ValorServico` decimal(10,2) NOT NULL,
  PRIMARY KEY (`IdVendas_Serviço`),
  KEY `IdVenda` (`IdVenda`),
  KEY `IdServico` (`IdServico`),
  CONSTRAINT `Vendas_Servico_ibfk_1` FOREIGN KEY (`IdVenda`) REFERENCES `venda` (`IdVenda`),
  CONSTRAINT `Vendas_Servico_ibfk_2` FOREIGN KEY (`IdServico`) REFERENCES `servico` (`IdServico`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_servico`
--

LOCK TABLES `vendas_servico` WRITE;
/*!40000 ALTER TABLE `vendas_servico` DISABLE KEYS */;
INSERT INTO `vendas_servico` VALUES (1,0.00,1,1,1,100.00),(2,10.00,1,2,2,100.00),(3,5.00,2,3,3,100.00),(4,0.00,1,4,4,100.00),(5,0.00,1,5,5,50.00),(6,2.00,1,6,6,50.00),(7,15.00,1,7,7,150.00),(8,7.50,1,8,8,150.00),(9,0.00,1,9,9,300.00),(10,3.00,1,10,10,30.00),(11,0.00,1,11,1,100.00),(12,10.00,2,12,2,100.00),(13,0.00,1,13,3,100.00),(14,5.00,1,14,4,100.00),(15,0.00,1,15,5,50.00),(16,1.50,2,16,6,50.00),(17,20.00,1,17,7,150.00),(18,10.00,1,18,8,150.00),(19,0.00,1,19,9,300.00),(20,0.00,1,20,10,30.00),(21,0.00,1,21,1,100.00),(22,15.00,1,22,7,150.00),(23,7.50,1,23,8,150.00),(24,2.50,1,24,10,30.00);
/*!40000 ALTER TABLE `vendas_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'farmacia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-25 10:39:46
