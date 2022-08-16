/*Se incluyen en este bakcup las siguientes tablas:
* Cita
* Cita_cancelada
* Hospital
* Medicina
* Medico
* Nuevo_paciente
* Paciente
* Prescripcion
* Tratamiento
*/

-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
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
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (506,39176910,'7/22/2022','8:00:00 AM',9,'Leve','Below the national average'),(507,35636435,'7/28/2022','8:30:00 AM',10,'Importante','Same as the national average'),(509,38808700,'6/29/2022','12:00:00 PM',14,'Leve','Below the national average'),(510,39079582,'7/14/2022','1:00:00 PM',13,'No importante','Not Available'),(511,31625890,'8/3/2022','2:00:00 PM',12,'Importante','Same as the national average'),(512,39073352,'8/7/2022','3:00:00 PM',11,'Leve','Not Available'),(513,26313777,'7/7/2022','4:00:00 PM',7,'No importante','Not Available'),(514,44083765,'8/23/2022','5:00:00 PM',6,'No importante','Not Available'),(516,40802037,'8/8/2022','6:15:00 PM',4,'No importante','Not Available'),(517,42909655,'8/9/2022','4:30:00 PM',3,'Leve','Not Available'),(518,44146810,'7/20/2022','1:00:00 PM',2,'Leve','Not Available'),(519,41019500,'7/21/2022','2:00:00 PM',1,'Urgente','Not Available');
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cita_cancelada`
--

LOCK TABLES `cita_cancelada` WRITE;
/*!40000 ALTER TABLE `cita_cancelada` DISABLE KEYS */;
INSERT INTO `cita_cancelada` VALUES (505,44078271,'7/7/2022','8:00:00 AM',8,'Urgente','Below the national average'),(506,39176910,'7/22/2022','8:00:00 AM',9,'Leve','Below the national average');
/*!40000 ALTER TABLE `cita_cancelada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (10005,'MARSHALL MEDICAL CENTER SOUTH','2505 U S HIGHWAY 431 NORTH',44078271),(10012,'DEKALB REGIONAL MEDICAL CENTER','200 MED CENTER DRIVE',39176910),(10032,'WEDOWEE HOSPITAL','209 NORTH MAIN STREET',35636435),(10131,'CRESTWOOD MEDICAL CENTER','ONE HOSPITAL DR SE',38808700),(11304,'CHOCTAW GENERAL HOSPITAL','401 VANITY FAIR LANE, PO BOX 618',39079582),(20018,'YUKON KUSKOKWIM DELTA REG HOSPITAL','PO BOX 287',31625890),(21308,'NORTON SOUND REGIONAL HOSPITAL','1000 GREG KRUSCHEK AVENUE (P O BOX 966)',39073352),(21309,'KANAKANAK HOSPITAL','P O BOX 130',26313777),(21310,'MANIILAQ HEALTH CENTER','PO BOX 43',44083765),(30071,'FORT DEFIANCE INDIAN HOSPITAL','PO BOX 649',29446854),(30073,'TUBA CITY REGIONAL HEALTH CARE CORPORATION','PO BOX 600',40802037),(30074,'SELLS HOSPITAL','HIGHWAY 86, AT TOPAWA ROAD',42909655),(30077,'SAN CARLOS APACHE HEALTHCARE','103 MEDICINE WAY ROAD',44146810),(30084,'CHINLE COMPREHENSIVE HEALTH CARE FACILITY','US HWY 191, HOSPITAL ROAD',41019500);
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicina`
--

LOCK TABLES `medicina` WRITE;
/*!40000 ALTER TABLE `medicina` DISABLE KEYS */;
INSERT INTO `medicina` VALUES (60,'A','Sacituzumab govitecan'),(61,'B','Sacubitril/Valsartan'),(62,'C','Salmeterol'),(63,'D','Salsalato'),(64,'A','Sapropterin'),(65,'B','Saquinavir'),(66,'B','Sareciclina'),(67,'B','Sargramostim'),(68,'D','Sarilumab'),(69,'D','Satralizumab'),(70,'D','Saxagliptina'),(71,'D','Scopolamine'),(72,'D','Secnidazol'),(73,'C','Secobarbital'),(74,'C','Secukinumab'),(75,'C','Selegilina'),(76,'C','Selenium sulfide'),(77,'C','Selexipag'),(78,'C','Selinexor'),(79,'C','Semaglutida'),(80,'C','Sertralina'),(81,'A','Sevelamer'),(82,'A','Sildenafilo'),(83,'A','Silodosina'),(84,'A','Siltuximab'),(85,'A','Silver sulfadiazine'),(86,'A','Simeprevir'),(87,'A','Simethicone'),(88,'A','Simvastatina'),(89,'A','Sipuleucel-T'),(90,'B','Sirolimus'),(91,'B','Sitagliptina'),(92,'B','Sodium oxybate'),(93,'B','Sodium phosphates'),(94,'B','Sodium polystyrene sulfonate'),(95,'B','Sodium tetradecyl sulfate'),(96,'B','Sodium thiosulfate'),(97,'C','Sofosbuvir'),(98,'C','Sofosbuvir/velpatasvir'),(99,'C','Sofosbuvir/velpatasvir/voxilaprevir'),(100,'C','Solifenacina'),(101,'C','Solriamfetol'),(102,'C','Somatropin'),(103,'D','Sonidegib'),(104,'D','Sorafenib'),(105,'D','Sotalol'),(106,'D','Spinosad'),(107,'D','Spiramycin'),(108,'D','Stavudine'),(109,'D','Streptozocin'),(110,'C','Succimer'),(111,'C','Succinylcholine'),(112,'C','Sucralfato'),(113,'C','Sufentanilo'),(114,'C','Sulconazol'),(115,'C','Sulfacetamida'),(116,'A','Sulfadiazine'),(117,'A','Sulfadoxine/pyrimethamine'),(118,'A','Sulfasalazina'),(119,'A','Sulindaco'),(120,'A','SumatriptÃ¡n'),(121,'A','Sunitinib'),(122,'A','Suramin'),(123,'A','Suvorexant'),(124,'AB','Aspirina'),(125,'B','Omeprazol'),(126,'B','Lexotiroxina sÃ³dica'),(127,'B','Ramipril'),(128,'B','Amlodipina'),(129,'B','ParacetamolÂ '),(130,'B','Aciclovir'),(131,'B','Adalimumab'),(132,'B','Adapaleno'),(133,'B','Calcitriol'),(134,'B','Butorphanol'),(135,'B','Dinoprostone'),(136,'D','Dinutuximab'),(137,'D','Etodolaco');
/*!40000 ALTER TABLE `medicina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Alexander Fleming',25,596,'Bacteriologia','Alex_fleming@hotmail.com'),(2,'Edward Jenner',52,596,'Traumatologia','Edwa_jenner@hotmail.com'),(3,'William Osler',32,596,'Traumatologia','Will_osler@hotmail.com'),(4,'Hipocrates',34,596,'Deportologia','Hipo_hipocrates@hotmail.com'),(6,'Louis Pasteur',54,596,'Quimico/Bacteriologo','Loui_pasteur@hotmail.com'),(7,'Elizabeth Blackwell',40,596,'Obstetra','Eliz_blackwell@hotmail.com'),(8,'Merit ptah',42,596,'Dermatologia','Meri_ptah@hotmail.com'),(9,'Metrodora',41,596,'Dermatologia','Metr_metrodora@hotmail.com'),(10,'Galeno',50,543,'Kinesiologia','Gale_galeno@hotmail.com'),(11,'Avicenna',51,596,'Odontologia','Avic_avicenna@hotmail.com'),(12,'Paracelso',27,549,'Toxicologia','Para_paracelso@hotmail.com'),(13,'Joseph Lister',28,596,'Bacteriologia','Jose_lister@hotmail.com'),(14,'Jhon Snow',30,596,'Traumatologia','Jhon_snow@hotmail.com'),(15,'Rene Laennec',62,596,'Cardiologia','Rene_laennec@hotmail.com');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nuevo_paciente`
--

LOCK TABLES `nuevo_paciente` WRITE;
/*!40000 ALTER TABLE `nuevo_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuevo_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (21720262,'Barrera_sabrina@hotmail.com',4556,18,'BARRERA SABRINA MACARENA'),(26313777,'Cuello_ricardo@hotmail.com',4556,40,'CUELLO RICARDO JOSE'),(27171760,'Andrade_pablo@hotmail.com',4556,18,'ANDRADE PABLO DAMIAN'),(29446854,'Fernández_gabriel@hotmail.com',4556,31,'FERNÁNDEZ GABRIEL EMANUEL'),(31625890,'Brarda_gonzalo@hotmail.com',4556,37,'BRARDA GONZALO ROMAN'),(31962473,'Barrionuevo_del@hotmail.com',4556,18,'BARRIONUEVO CARLA DEL VALLE'),(32948473,'Becerra_moises@hotmail.com',4556,36,'BECERRA MOISES HUGO'),(33162887,'Angulo_fabian@hotmail.com',4556,18,'ANGULO FABIAN EMANUEL'),(33232582,'Bonifacio_velasquez@hotmail.com',4556,34,'BONIFACIO VELASQUEZ CECILIA'),(34505094,'Bustamante_jose@hotmail.com',4556,32,'BUSTAMANTE JOSE LUIS'),(34807638,'Bordon_walter@hotmail.com',4556,35,'BORDON WALTER ALEXIS'),(35636435,'Anselmo_claudio@hotmail.com',4556,18,'ANSELMO CLAUDIO OSCAR'),(35639255,'Basso_andres@hotmail.com',4556,18,'BASSO ANDRES PABLO'),(38106814,'GerNavarro@gmail.com',4556,28,'Mario German Navarro'),(38330734,'alfre_sabena@hotmail.com',425919,28,'Francisco Alfredo Sabena'),(38339964,'Battistoni_battistoni@hotmail.com',4556,28,'BATTISTONI AGUSTIN'),(38500233,'alejandrone_nicolas@gmail.com',4556,18,'ALEJANDRE NICOLAS JOEL'),(38731787,'Benitez_macarena@hotmail.com',4556,28,'BENITEZ MACARENA SOLEDAD'),(38808700,'Barrio_maría@hotmail.com',4556,18,'BARRIO MARÍA AZUL'),(39073352,'Brizuela_maria@hotmail.com',4556,27,'BRIZUELA MARIA FLORENCIA'),(39079582,'Bierti_franco@hotmail.com',4556,27,'BIERTI FRANCO LUCIANO'),(39176910,'Rahumada@gmail.com',4556,27,'AHUMADA ROCIO IRUPE'),(39420938,'Burgos_hector@hotmail.com',4556,27,'BURGOS HECTOR GASTON'),(39988352,'Buliubasich_florencia@hotmail.com',4556,27,'BULIUBASICH FLORENCIA CAROLINA'),(40802037,'Garcia_galfione@hotmail.com',4556,22,'GARCIA GALFIONE ALFONSINA'),(41019500,'Maldonado_maldonado@hotmail.com',4556,23,'MALDONADO ABRIL'),(41364076,'Alonso_ezequiel@hotmail.com',4556,18,'ALONSO RIVERO EZEQUIEL NICOLAS'),(42338556,'Bravo_juan@hotmail.com',4556,21,'BRAVO JUAN IGNACIO'),(42697840,'Avila_jose@hotmail.com',4556,18,'AVILA JOSE ARIEL'),(42799785,'Assum_nieva@hotmail.com',4556,18,'ASSUM NIEVA VALENTINA'),(42909655,'Giacri_barbara@hotmail.com',4556,21,'GIACRI METHOL BARBARA DELFINA'),(43523608,'Bianconi_bianconi@hotmail.com',4556,21,'BIANCONI JOAQUIN'),(44078271,'Faguilera@gmail.com',4556,18,'AGUILERA FRANCO FEDERICO'),(44083765,'Encina_luciana@hotmail.com',4556,19,'ENCINA LUCIANA YAEL'),(44146810,'Gonzalorena_gonzalorena@hotmail.com',4556,20,'GONZALORENA ARIANA'),(44211957,'aimeone_faure@hotmail.com',4556,18,'AIMONE FAURE LUDMILA MAGALI'),(44230937,'Bolatti_agustín@hotmail.com',4556,19,'BOLATTI AGUSTÍN FERNANDO'),(44274016,'Bronenberg_bustos@hotmail.com',4556,19,'BRONENBERG BUSTOS RAFAEL'),(44432799,'Anziani_bruera@hotmail.com',4556,18,'ANZIANI BRUERA CANDELARIA'),(45089913,'Aliendro_oriana@hotmail.com',4556,18,'ALIENDRO ORIANA LUZ');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prescripcion`
--

LOCK TABLES `prescripcion` WRITE;
/*!40000 ALTER TABLE `prescripcion` DISABLE KEYS */;
INSERT INTO `prescripcion` VALUES (21,44078271,'Urgente',7,'Simvastatina',123),(22,39176910,'Leve',7,'Aspirina',124),(23,35636435,'Importante',3,'OmeprazolÂ ',125),(25,38808700,'Leve',2,'Ramipril',127),(26,39079582,'No importante',2,'Amlodipina',128),(27,31625890,'Importante',2,'ParacetamolÂ ',129),(28,39073352,'Leve',2,'Aciclovir',130),(29,26313777,'No importante',7,'Adalimumab',131),(30,44083765,'No importante',2,'Adapaleno',132),(31,29446854,'No importante',4,'Calcitriol',133),(32,40802037,'No importante',3,'Butorphanol',134),(33,42909655,'Leve',14,'Dinoprostone',135),(34,44146810,'Leve',2,'Dinutuximab',136),(35,41019500,'Urgente',2,'Etodolaco',137);
/*!40000 ALTER TABLE `prescripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tratamiento`
--

LOCK TABLES `tratamiento` WRITE;
/*!40000 ALTER TABLE `tratamiento` DISABLE KEYS */;
INSERT INTO `tratamiento` VALUES ('Tratamiento x','1/7/2022','Materiales 1',1),('Tratamiento alfa','22/07/2022','Materiales 2',2),('Tratamiento beta','28/07/2022','Muchos materiales',3),('Tratamiento omega','16/07/2022','Bastantes Materiales',4),('Tratamiento Lambda','29/06/2022','Materiales 3',5),('Tratamiento phi','14/07/2022','Materiales 4',6),('Tratamiento 1','3/8/2022','Muchos materiales',7),('Tratamiento 2','7/8/2022','Bastantes Materiales',8),('Tratamiento 3','7/7/2022','Materiales 5',9),('Tratamiento 4','23/08/2022','Materiales 6',10),('Tratamiento 5','18/7/2022','Muchos materiales',11),('Tratamiento 6','8/8/2022','Bastantes Materiales',12),('Tratamiento 7','09//08/2022','Materiales 7',13),('Tratamiento 8','20/7/2022','Materiales 8',14),('Tratamiento 9','21/7/2022','Muchos materiales',15);
/*!40000 ALTER TABLE `tratamiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-01  1:32:26
