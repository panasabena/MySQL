/*
-- Query: select* from hospital.cita
LIMIT 0, 1000

-- Date: 2022-07-02 18:31
*/
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (505,44078271,'7/7/2022','8:00:00 AM',8,'Urgente','Below the national average');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (506,39176910,'7/22/2022','8:00:00 AM',9,'Leve','Below the national average');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (507,35636435,'7/28/2022','8:30:00 AM',10,'Importante','Same as the national average');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (509,38808700,'6/29/2022','12:00:00 PM',14,'Leve','Below the national average');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (510,39079582,'7/14/2022','1:00:00 PM',13,'No importante','Not Available');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (511,31625890,'8/3/2022','2:00:00 PM',12,'Importante','Same as the national average');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (512,39073352,'8/7/2022','3:00:00 PM',11,'Leve','Not Available');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (513,26313777,'7/7/2022','4:00:00 PM',7,'No importante','Not Available');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (514,44083765,'8/23/2022','5:00:00 PM',6,'No importante','Not Available');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (516,40802037,'8/8/2022','6:15:00 PM',4,'No importante','Not Available');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (517,42909655,'8/9/2022','4:30:00 PM',3,'Leve','Not Available');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (518,44146810,'7/20/2022','1:00:00 PM',2,'Leve','Not Available');
INSERT INTO hospital.cita (`Id_hospital.cita`,`Id_Paciente`,`Fecha_hospital.cita`,`Hora_hospital.cita`,`Id_Medico`,`Categoria`,`Descripcion`) VALUES (519,41019500,'7/21/2022','2:00:00 PM',1,'Urgente','Not Available');

/*
-- Query: select* from hospital.hospital
LIMIT 0, 1000

-- Date: 2022-07-02 18:32
*/
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (10005,'MARSHALL MEDICAL CENTER SOUTH','2505 U S HIGHWAY 431 NORTH',44078271);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (10012,'DEKALB REGIONAL MEDICAL CENTER','200 MED CENTER DRIVE',39176910);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (10032,'WEDOWEE hospital.hospital','209 NORTH MAIN STREET',35636435);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (10131,'CRESTWOOD MEDICAL CENTER','ONE hospital.hospital DR SE',38808700);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (11304,'CHOCTAW GENERAL hospital.hospital','401 VANITY FAIR LANE, PO BOX 618',39079582);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (20018,'YUKON KUSKOKWIM DELTA REG hospital.hospital','PO BOX 287',31625890);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (21308,'NORTON SOUND REGIONAL hospital.hospital','1000 GREG KRUSCHEK AVENUE (P O BOX 966)',39073352);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (21309,'KANAKANAK hospital.hospital','P O BOX 130',26313777);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (21310,'MANIILAQ HEALTH CENTER','PO BOX 43',44083765);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (30071,'FORT DEFIANCE INDIAN hospital.hospital','PO BOX 649',29446854);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (30073,'TUBA CITY REGIONAL HEALTH CARE CORPORATION','PO BOX 600',40802037);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (30074,'SELLS hospital.hospital','HIGHWAY 86, AT TOPAWA ROAD',42909655);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (30077,'SAN CARLOS APACHE HEALTHCARE','103 MEDICINE WAY ROAD',44146810);
INSERT INTO hospital.hospital (`Id_hospital.hospital`,`Sucursal`,`Direccion`,`Id_Paciente`) VALUES (30084,'CHINLE COMPREHENSIVE HEALTH CARE FACILITY','US HWY 191, hospital.hospital ROAD',41019500);

/*
-- Query: select * from hospital.medicina
LIMIT 0, 1000

-- Date: 2022-07-01 18:47
*/
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (60,'A','Sacituzumab govitecan');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (61,'B','Sacubitril/Valsartan');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (62,'C','Salmeterol');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (63,'D','Salsalato');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (64,'A','Sapropterin');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (65,'B','Saquinavir');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (66,'B','Sareciclina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (67,'B','Sargramostim');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (68,'D','Sarilumab');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (69,'D','Satralizumab');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (70,'D','Saxagliptina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (71,'D','Scopolamine');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (72,'D','Secnidazol');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (73,'C','Secobarbital');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (74,'C','Secukinumab');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (75,'C','Selegilina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (76,'C','Selenium sulfide');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (77,'C','Selexipag');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (78,'C','Selinexor');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (79,'C','Semaglutida');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (80,'C','Sertralina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (81,'A','Sevelamer');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (82,'A','Sildenafilo');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (83,'A','Silodosina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (84,'A','Siltuximab');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (85,'A','Silver sulfadiazine');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (86,'A','Simeprevir');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (87,'A','Simethicone');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (88,'A','Simvastatina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (89,'A','Sipuleucel-T');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (90,'B','Sirolimus');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (91,'B','Sitagliptina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (92,'B','Sodium oxybate');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (93,'B','Sodium phosphates');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (94,'B','Sodium polystyrene sulfonate');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (95,'B','Sodium tetradecyl sulfate');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (96,'B','Sodium thiosulfate');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (97,'C','Sofosbuvir');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (98,'C','Sofosbuvir/velpatasvir');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (99,'C','Sofosbuvir/velpatasvir/voxilaprevir');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (100,'C','Solifenacina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (101,'C','Solriamfetol');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (102,'C','Somatropin');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (103,'D','Sonidegib');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (104,'D','Sorafenib');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (105,'D','Sotalol');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (106,'D','Spinosad');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (107,'D','Spiramycin');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (108,'D','Stavudine');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (109,'D','Streptozocin');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (110,'C','Succimer');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (111,'C','Succinylcholine');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (112,'C','Sucralfato');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (113,'C','Sufentanilo');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (114,'C','Sulconazol');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (115,'C','Sulfacetamida');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (116,'A','Sulfadiazine');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (117,'A','Sulfadoxine/pyrimethamine');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (118,'A','Sulfasalazina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (119,'A','Sulindaco');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (120,'A','SumatriptÃ¡n');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (121,'A','Sunitinib');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (122,'A','Suramin');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (123,'A','Suvorexant');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (124,'AB','Aspirina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (125,'B','Omeprazol');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (126,'B','Lexotiroxina sÃ³dica');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (127,'B','Ramipril');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (128,'B','Amlodipina');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (129,'B','ParacetamolÂ ');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (130,'B','Aciclovir');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (131,'B','Adalimumab');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (132,'B','Adapaleno');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (133,'B','Calcitriol');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (134,'B','Butorphanol');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (135,'B','Dinoprostone');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (136,'D','Dinutuximab');
INSERT INTO hospital.medicina (`Id_hospital.medicina`,`Tipo`,`Descripcion`) VALUES (137,'D','Etodolaco');

/*
-- Query: Select * from medico
LIMIT 0, 1000

-- Date: 2022-07-01 18:46
*/
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (1,'Alexander Fleming',25,596,'Bacteriologia','Alex_fleming@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (2,'Edward Jenner',52,596,'Traumatologia','Edwa_jenner@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (3,'William Osler',32,596,'Traumatologia','Will_osler@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (4,'Hipocrates',34,596,'Deportologia','Hipo_hipocrates@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (6,'Louis Pasteur',54,596,'Quimico/Bacteriologo','Loui_pasteur@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (7,'Elizabeth Blackwell',40,596,'Obstetra','Eliz_blackwell@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (8,'Merit ptah',42,596,'Dermatologia','Meri_ptah@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (9,'Metrodora',41,596,'Dermatologia','Metr_metrodora@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (10,'Galeno',50,543,'Kinesiologia','Gale_galeno@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (11,'Avicenna',51,596,'Odontologia','Avic_avicenna@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (12,'Paracelso',27,549,'Toxicologia','Para_paracelso@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (13,'Joseph Lister',28,596,'Bacteriologia','Jose_lister@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (14,'Jhon Snow',30,596,'Traumatologia','Jhon_snow@hotmail.com');
INSERT INTO hospital.medico (`Id_Medico`,`Nombre`,`Edad`,`Telefono_medico`,`Especialidad`,`Email_medico`) VALUES (15,'Rene Laennec',62,596,'Cardiologia','Rene_laennec@hotmail.com');

/*
-- Query: Select * from medico
LIMIT 0, 1000

-- Date: 2022-07-01 18:46
*/
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (44078271,'Faguilera@gmail.com',4556,18,'AGUILERA FRANCO FEDERICO');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (39176910,'Rahumada@gmail.com',4556,27,'AHUMADA ROCIO IRUPE');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (44211957,'aimeone_faure@hotmail.com',4556,19,'AIMONE FAURE LUDMILA MAGALI');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (38500233,'alejandrone_nicolas@gmail.com',4556,28,'ALEJANDRE NICOLAS JOEL');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (45089913,'Aliendro_oriana@hotmail.com',4556,17,'ALIENDRO ORIANA LUZ');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (41364076,'Alonso_ezequiel@hotmail.com',4556,20,'ALONSO RIVERO EZEQUIEL NICOLAS');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (27171760,'Andrade_pablo@hotmail.com',4556,40,'ANDRADE PABLO DAMIAN');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (33162887,'Angulo_fabian@hotmail.com',4556,34,'ANGULO FABIAN EMANUEL');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (35636435,'Anselmo_claudio@hotmail.com',4556,31,'ANSELMO CLAUDIO OSCAR');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (44432799,'Anziani_bruera@hotmail.com',4556,19,'ANZIANI BRUERA CANDELARIA');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (42799785,'Assum_nieva@hotmail.com',4556,21,'ASSUM NIEVA VALENTINA');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (42697840,'Avila_jose@hotmail.com',4556,42,'AVILA JOSE ARIEL');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (21720262,'Barrera_sabrina@hotmail.com',4556,29,'BARRERA SABRINA MACARENA');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (38808700,'Barrio_maría@hotmail.com',4556,21,'BARRIO MARÍA AZUL');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (31962473,'Barrionuevo_del@hotmail.com',4556,22,'BARRIONUEVO CARLA DEL VALLE');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (21720262,'Basso_andres@hotmail.com',4556,43,'BASSO ANDRES PABLO');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (38339964,'Battistoni_battistoni@hotmail.com',4556,28,'BATTISTONI AGUSTIN');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (32948473,'Becerra_moises@hotmail.com',4556,36,'BECERRA MOISES HUGO');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (35639255,'Bencid_bencid@hotmail.com',4556,32,'BENCID ABDEL');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (38731787,'Benitez_macarena@hotmail.com',4556,28,'BENITEZ MACARENA SOLEDAD');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (43523608,'Bianconi_bianconi@hotmail.com',4556,21,'BIANCONI JOAQUIN');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (39079582,'Bierti_franco@hotmail.com',4556,27,'BIERTI FRANCO LUCIANO');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (44230937,'Bolatti_agustín@hotmail.com',4556,19,'BOLATTI AGUSTÍN FERNANDO');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (33232582,'Bonifacio_velasquez@hotmail.com',4556,34,'BONIFACIO VELASQUEZ CECILIA');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (34807638,'Bordon_walter@hotmail.com',4556,35,'BORDON WALTER ALEXIS');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (31625890,'Brarda_gonzalo@hotmail.com',4556,37,'BRARDA GONZALO ROMAN');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (42338556,'Bravo_juan@hotmail.com',4556,21,'BRAVO JUAN IGNACIO');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (39073352,'Brizuela_maria@hotmail.com',4556,27,'BRIZUELA MARIA FLORENCIA');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (44274016,'Bronenberg_bustos@hotmail.com',4556,19,'BRONENBERG BUSTOS RAFAEL');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (39988352,'Buliubasich_florencia@hotmail.com',4556,27,'BULIUBASICH FLORENCIA CAROLINA');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (39420938,'Burgos_hector@hotmail.com',4556,27,'BURGOS HECTOR GASTON');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (34505094,'Bustamante_jose@hotmail.com',4556,32,'BUSTAMANTE JOSE LUIS');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (26313777,'Cuello_ricardo@hotmail.com',4556,40,'CUELLO RICARDO JOSE');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (44083765,'Encina_luciana@hotmail.com',4556,19,'ENCINA LUCIANA YAEL');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (29446854,'Fernández_gabriel@hotmail.com',4556,31,'FERNÁNDEZ GABRIEL EMANUEL');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (40802037,'Garcia_galfione@hotmail.com',4556,22,'GARCIA GALFIONE ALFONSINA');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (42909655,'Giacri_barbara@hotmail.com',4556,21,'GIACRI METHOL BARBARA DELFINA');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (44146810,'Gonzalorena_gonzalorena@hotmail.com',4556,20,'GONZALORENA ARIANA');
INSERT INTO hospital.paciente (`Id_Paciente`,`Mail`,`Teléfono`,`Edad`,`Nombre`) VALUES (41019500,'Maldonado_maldonado@hotmail.com',4556,23,'MALDONADO ABRIL');

/*
-- Query: select* from prescripcion
LIMIT 0, 1000

-- Date: 2022-07-02 18:32
*/
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (21,44078271,'Urgente',7,'Simvastatina',123);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (22,39176910,'Leve',7,'Aspirina',124);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (23,35636435,'Importante',3,'OmeprazolÂ ',125);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (25,38808700,'Leve',2,'Ramipril',127);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (26,39079582,'No importante',2,'Amlodipina',128);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (27,31625890,'Importante',2,'ParacetamolÂ ',129);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (28,39073352,'Leve',2,'Aciclovir',130);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (29,26313777,'No importante',7,'Adalimumab',131);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (30,44083765,'No importante',2,'Adapaleno',132);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (31,29446854,'No importante',4,'Calcitriol',133);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (32,40802037,'No importante',3,'Butorphanol',134);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (33,42909655,'Leve',14,'Dinoprostone',135);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (34,44146810,'Leve',2,'Dinutuximab',136);
INSERT INTO hospital.prescripcion (`Id_Prescripcion`,`Id_Paciente`,`Categoria`,`Dias`,`Nombre_medicina`,`Id_Medicina`) VALUES (35,41019500,'Urgente',2,'Etodolaco',137);

/*
-- Query: select * from tratamiento
LIMIT 0, 1000

-- Date: 2022-07-01 19:03
*/
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento x','1/7/2022','Materiales 1',1);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento alfa','22/07/2022','Materiales 2',2);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento beta','28/07/2022','Muchos materiales',3);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento omega','16/07/2022','Bastantes Materiales',4);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento Lambda','29/06/2022','Materiales 3',5);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento phi','14/07/2022','Materiales 4',6);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento 1','3/8/2022','Muchos materiales',7);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento 2','7/8/2022','Bastantes Materiales',8);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento 3','7/7/2022','Materiales 5',9);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento 4','23/08/2022','Materiales 6',10);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento 5','18/7/2022','Muchos materiales',11);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento 6','8/8/2022','Bastantes Materiales',12);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento 7','09//08/2022','Materiales 7',13);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento 8','20/7/2022','Materiales 8',14);
INSERT INTO hospital.tratamiento (`ï»¿Nombre_del_Tratamiento`,`Fecha_del_tratamiento`,`Lista_de_materiales`,`Id_medico`) VALUES ('Tratamiento 9','21/7/2022','Muchos materiales',15);
