-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.1.19-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema telepizza
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ telepizza;
USE telepizza;

--
-- Table structure for table `telepizza`.`bebidas`
--

DROP TABLE IF EXISTS `bebidas`;
CREATE TABLE `bebidas` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nombebidas` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`bebidas`
--

/*!40000 ALTER TABLE `bebidas` DISABLE KEYS */;
INSERT INTO `bebidas` (`id`,`nombebidas`) VALUES 
 (1,'Botella Coca-Cola (500 ml)'),
 (2,'Botella Coca-Cola Ligth (500 ml)'),
 (3,'Botella Coca-Cola Zero (500 ml)'),
 (4,'Botella Fanta Naranja  (500 ml)'),
 (5,'Botella Fanta Limon (500 ml)'),
 (6,'Botella Nestea (500 ml)'),
 (7,'Botella Sprite (500 ml)'),
 (8,'Botella Aquarius Naranja (500 ml)'),
 (9,'Botella Aquarius Limon (500 ml)');
/*!40000 ALTER TABLE `bebidas` ENABLE KEYS */;


--
-- Table structure for table `telepizza`.`ensaladas`
--

DROP TABLE IF EXISTS `ensaladas`;
CREATE TABLE `ensaladas` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nomensaladas` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`ensaladas`
--

/*!40000 ALTER TABLE `ensaladas` DISABLE KEYS */;
INSERT INTO `ensaladas` (`id`,`nomensaladas`) VALUES 
 (1,'Ensalada Mediterránea'),
 (2,'Ensalada Mediterránea Pollo');
/*!40000 ALTER TABLE `ensaladas` ENABLE KEYS */;


--
-- Table structure for table `telepizza`.`entrante`
--

DROP TABLE IF EXISTS `entrante`;
CREATE TABLE `entrante` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tipo` varchar(45) NOT NULL default '',
  `descripcion` varchar(100) NOT NULL default '',
  `precio` double NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`entrante`
--

/*!40000 ALTER TABLE `entrante` DISABLE KEYS */;
INSERT INTO `entrante` (`id`,`tipo`,`descripcion`,`precio`) VALUES 
 (1,'1','Combo de Entrantes',4.95),
 (2,'1','Croquetas Caseras',3.45),
 (3,'1','Patatas Gajo (1 ración)',1.95),
 (4,'1','Aros de Cebolla(6 unds.)',1.95),
 (5,'1','Patatas Sonrisa',1.5),
 (6,'1','Patatas Fritas',1.95),
 (7,'2','Pan de Ajo (3 unds.)',1.5),
 (8,'2','Crostinis de Bacon 2 unds.',2.05),
 (9,'2','Crostinis de Champiñón 2 unds.',2.05),
 (10,'2','Crostinis de York 2 unds.',2.05),
 (11,'2','Crostinis York Cream 2 unds.',2.05),
 (12,'3','Quesadilla Fan',2.95),
 (13,'3','Fingers de Queso (2 unds.)',1.95),
 (14,'3','Bocaditos de Camembert',3.45),
 (15,'3','Fingers de Queso (4 unds.)',3.45),
 (16,'3','La Vaca que ríe Palitos',1.25),
 (17,'4','Kebab Pollo',7.4),
 (18,'4','Kebab Carne de Vacuno',7.4),
 (19,'4','Kebab Queso de Rulo',7.4),
 (20,'4','Enrollado Yorkeso',3.45),
 (21,'4','Enrollado Hawaiano',3.45),
 (22,'4','Enrollado Vegetal',3.45),
 (23,'4','Spiro Dog Clásico',3.45),
 (24,'5','Alitas de Pollo Barbacoa',3.45),
 (25,'5','Delicias de Pollo',3.45);
INSERT INTO `entrante` (`id`,`tipo`,`descripcion`,`precio`) VALUES 
 (26,'5','Pops de Pollo',3.45),
 (27,'5','Palitos De Pollo',3.45);
/*!40000 ALTER TABLE `entrante` ENABLE KEYS */;


--
-- Table structure for table `telepizza`.`hambueguesa`
--

DROP TABLE IF EXISTS `hambueguesa`;
CREATE TABLE `hambueguesa` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nomhambueguesa` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`hambueguesa`
--

/*!40000 ALTER TABLE `hambueguesa` DISABLE KEYS */;
INSERT INTO `hambueguesa` (`id`,`nomhambueguesa`) VALUES 
 (1,'Nueva Top Burguer Vacuno'),
 (2,'Nueva Top Burguer Queso&Bacon'),
 (3,'Nueva Top Burguer Pollo'),
 (4,'Burger Vacuno Infantil'),
 (5,'Burger Pollo Infantil');
/*!40000 ALTER TABLE `hambueguesa` ENABLE KEYS */;


--
-- Table structure for table `telepizza`.`menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `descripcion` varchar(100) NOT NULL default '',
  `precio` double NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`menus`
--

/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`,`descripcion`,`precio`) VALUES 
 (1,'Nuevo Menú Individual',7.95),
 (2,'Menú Individual Hamburguesa Queso y Bacon',10.45),
 (3,'Menú Individual Hamburguesa',9.95),
 (4,'Menú Individual Pizza Especialidad',8.45),
 (5,'Menú Individual grande Hamburguesa Queso y Bacon',9.45),
 (6,'Menú Individual Pasta Especialidad',9.45),
 (7,'Menú Individual grande Ensalada',9.45),
 (8,'Menú Individual grande Sandwich',9.45),
 (9,'Menú Individual Sándwich',7.95),
 (10,'Menú Individual Calzzone',7.95);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;


--
-- Table structure for table `telepizza`.`ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
CREATE TABLE `ofertas` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `descriptcion` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`ofertas`
--

/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
INSERT INTO `ofertas` (`id`,`descriptcion`) VALUES 
 (1,'Nuevo Menú Individual'),
 (2,'Menú Individual Hamburguesa Queso y Bacon'),
 (3,'Menú Individual Hamburguesa'),
 (4,'Menú Individual grande Hamburguesa Queso y Ba'),
 (5,'Menú Individual grande Hamburguesa'),
 (6,'Menú Individual Pizza');
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;


--
-- Table structure for table `telepizza`.`pizzas`
--

DROP TABLE IF EXISTS `pizzas`;
CREATE TABLE `pizzas` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nompizzas` varchar(45) NOT NULL default '',
  `idpizza` int(10) unsigned NOT NULL default '0',
  `precio` double NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`pizzas`
--

/*!40000 ALTER TABLE `pizzas` DISABLE KEYS */;
INSERT INTO `pizzas` (`id`,`nompizzas`,`idpizza`,`precio`) VALUES 
 (1,'A tu gusto',1,19.95),
 (2,'Telepizza Rodeo',1,17.95),
 (3,'Telepizza Vulcano Nachos',1,19.95),
 (4,'Telepizza Vulcano de Jalapeños',1,17.95),
 (5,'Pizza Barbacoa',1,19.25),
 (6,'Pizza Carbonara',1,19.95),
 (7,'Telepizza Burger',2,19.25),
 (8,'La Ibérica',2,14.95),
 (9,'Pizza Calzzone Bacon',2,15),
 (10,'Pizza Steak House',2,19.95),
 (11,'Pizza Tejana con Cebolla',2,15.25),
 (12,'Pizza Tejana',2,19.95),
 (13,'Pizza Bacon Crispy',2,15.33),
 (14,'Pizza Chicken Fan Barbacoa',2,19.95),
 (15,'Pizza Barbacoa Crème Queso',2,18.32),
 (16,'Pizza Barbacoa Crème Tomate',2,19.95),
 (17,'Especial de la casa cebolla',2,19.95),
 (18,'Pizza Calzzone Clásica',2,15.23),
 (19,'Especial de la casa champiñón',2,19.95),
 (20,'Pizza Jalisco',2,19.25),
 (21,'Pizza Wok',2,15.32),
 (22,'Pizza Hot Dog',2,16),
 (23,'Telepizza Supreme',2,17.95),
 (24,'Pizza Top Cheese & Chicken',3,19.25),
 (25,'Pizza 4 Quesos',3,15),
 (26,'Pizza Formaggio',3,19.25),
 (27,'Pizza Lasaña Especialidad',3,17.95);
INSERT INTO `pizzas` (`id`,`nompizzas`,`idpizza`,`precio`) VALUES 
 (28,'Pizza Japonesa',3,12),
 (29,'Pizza Carbonara Cebolla',4,19.95),
 (30,'Pizza Hawaiana',4,10),
 (31,'Pizza Calzzone Vegetal',5,14.32),
 (32,'Pizza Florentina',5,17.95),
 (33,'Pizza de la Huerta',5,15.68),
 (34,'Pizza César Deluxe',5,19.95),
 (35,'Pizza Natura',5,15.1),
 (36,'Nueva Pizza Infantil',6,15.3);
/*!40000 ALTER TABLE `pizzas` ENABLE KEYS */;


--
-- Table structure for table `telepizza`.`postre`
--

DROP TABLE IF EXISTS `postre`;
CREATE TABLE `postre` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nompostre` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`postre`
--

/*!40000 ALTER TABLE `postre` DISABLE KEYS */;
INSERT INTO `postre` (`id`,`nompostre`) VALUES 
 (1,'Tarrina Triple chocolate'),
 (2,'Magnum Tarrina'),
 (3,'Magnum Chocolate & Raspberry'),
 (4,'CARTE DOR limon');
/*!40000 ALTER TABLE `postre` ENABLE KEYS */;


--
-- Table structure for table `telepizza`.`tipo_entrante`
--

DROP TABLE IF EXISTS `tipo_entrante`;
CREATE TABLE `tipo_entrante` (
  `idtipo_entrante` int(10) unsigned NOT NULL auto_increment,
  `descripcion` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`idtipo_entrante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`tipo_entrante`
--

/*!40000 ALTER TABLE `tipo_entrante` DISABLE KEYS */;
INSERT INTO `tipo_entrante` (`idtipo_entrante`,`descripcion`) VALUES 
 (1,'Nunca fallan'),
 (2,'Por los mas fans'),
 (3,'Algo con queso'),
 (4,'Kebabs'),
 (5,'Al rico pollo');
/*!40000 ALTER TABLE `tipo_entrante` ENABLE KEYS */;


--
-- Table structure for table `telepizza`.`tipo_pizza`
--

DROP TABLE IF EXISTS `tipo_pizza`;
CREATE TABLE `tipo_pizza` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `descripcion` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`tipo_pizza`
--

/*!40000 ALTER TABLE `tipo_pizza` DISABLE KEYS */;
INSERT INTO `tipo_pizza` (`id`,`descripcion`) VALUES 
 (1,'Las destacadas'),
 (2,'Amantes de la CARNE'),
 (3,'Los más QUESEROS'),
 (4,'Los CLÁSICOS'),
 (5,'Los más NATURALES'),
 (6,'INFANTIL');
/*!40000 ALTER TABLE `tipo_pizza` ENABLE KEYS */;


--
-- Table structure for table `telepizza`.`usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `User_name` varchar(15) NOT NULL default '',
  `User_password` varchar(15) NOT NULL default '',
  `User_address` varchar(20) NOT NULL default '',
  `User_email` varchar(20) NOT NULL default '',
  `User_phone` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telepizza`.`usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`,`User_name`,`User_password`,`User_address`,`User_email`,`User_phone`) VALUES 
 (1,'pepa','1234','Avda las palomas, 17','ppvilladaw@gmail.com','956111111');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
