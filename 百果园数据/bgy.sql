-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: bgy
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add 百果园用户模型',7,'add_bgyuser'),(20,'Can change 百果园用户模型',7,'change_bgyuser'),(21,'Can delete 百果园用户模型',7,'delete_bgyuser'),(22,'Can add 购物车',8,'add_cart'),(23,'Can change 购物车',8,'change_cart'),(24,'Can delete 购物车',8,'delete_cart'),(25,'Can add 商品大分类模型',9,'add_foodtype'),(26,'Can change 商品大分类模型',9,'change_foodtype'),(27,'Can delete 商品大分类模型',9,'delete_foodtype'),(28,'Can add 商品模型',10,'add_goods'),(29,'Can change 商品模型',10,'change_goods'),(30,'Can delete 商品模型',10,'delete_goods'),(31,'Can add 必购商品模型',11,'add_mainmustbuy'),(32,'Can change 必购商品模型',11,'change_mainmustbuy'),(33,'Can delete 必购商品模型',11,'delete_mainmustbuy'),(34,'Can add 导航栏模型',12,'add_mainnav'),(35,'Can change 导航栏模型',12,'change_mainnav'),(36,'Can delete 导航栏模型',12,'delete_mainnav'),(37,'Can add 首页店铺模型',13,'add_mainshop'),(38,'Can change 首页店铺模型',13,'change_mainshop'),(39,'Can delete 首页店铺模型',13,'delete_mainshop'),(40,'Can add 首页商品展示模型',14,'add_mainshow'),(41,'Can change 首页商品展示模型',14,'change_mainshow'),(42,'Can delete 首页商品展示模型',14,'delete_mainshow'),(43,'Can add 轮播图模型',15,'add_mainwheel'),(44,'Can change 轮播图模型',15,'change_mainwheel'),(45,'Can delete 轮播图模型',15,'delete_mainwheel'),(46,'Can add 订单模型',16,'add_order'),(47,'Can change 订单模型',16,'change_order'),(48,'Can delete 订单模型',16,'delete_order'),(49,'Can add 订单详情模型',17,'add_orderdetail'),(50,'Can change 订单详情模型',17,'change_orderdetail'),(51,'Can delete 订单详情模型',17,'delete_orderdetail'),(52,'Can add 收货地址',18,'add_address'),(53,'Can change 收货地址',18,'change_address'),(54,'Can delete 收货地址',18,'delete_address'),(55,'Can add 收货地址模型',18,'add_useraddress'),(56,'Can change 收货地址模型',18,'change_useraddress'),(57,'Can delete 收货地址模型',18,'delete_useraddress'),(58,'Can add 收货地址模型',19,'add_useraddress'),(59,'Can change 收货地址模型',19,'change_useraddress'),(60,'Can delete 收货地址模型',19,'delete_useraddress');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$RzUx2sBE8OHG$CNZliU0khsNbKsBz53p1IWs/3NncA1Rm3RxNn5hGrko=','2019-02-28 00:30:36.185190',1,'jack','','','435825715@qq.com',1,1,'2019-02-27 16:53:46.914446');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_cart`
--

DROP TABLE IF EXISTS `bgy_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_goods_num` int(11) NOT NULL,
  `is_selected` tinyint(1) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bgy_cart_goods_id_85fad0ae_fk_bgy_goods_id` (`goods_id`),
  KEY `bgy_cart_user_id_16d2c193_fk_bgy_user_id` (`user_id`),
  CONSTRAINT `bgy_cart_goods_id_85fad0ae_fk_bgy_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `bgy_goods` (`id`),
  CONSTRAINT `bgy_cart_user_id_16d2c193_fk_bgy_user_id` FOREIGN KEY (`user_id`) REFERENCES `bgy_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_cart`
--

LOCK TABLES `bgy_cart` WRITE;
/*!40000 ALTER TABLE `bgy_cart` DISABLE KEYS */;
INSERT INTO `bgy_cart` VALUES (3,3,1,26,3),(16,8,1,25,1);
/*!40000 ALTER TABLE `bgy_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_foodtypes`
--

DROP TABLE IF EXISTS `bgy_foodtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_foodtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL,
  `typename` varchar(32) NOT NULL,
  `childtypenames` varchar(255) NOT NULL,
  `typesort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_foodtypes`
--

LOCK TABLES `bgy_foodtypes` WRITE;
/*!40000 ALTER TABLE `bgy_foodtypes` DISABLE KEYS */;
INSERT INTO `bgy_foodtypes` VALUES (1,104749,'热销榜','全部分类:0',1),(3,103532,'红枣园','全部分类:0#和田大枣:103534#若羌红枣:103533#其他枣类制品:108534',3),(4,103581,'核桃园','全部分类:0#薄皮核桃:108535#野生核桃:108536#叶城核桃核桃:108536#碧根果核桃:108537',4),(5,103536,'坚果炒货','全部分类:0#巴旦木:103537#开心果:103538#其他坚果:103540',5),(6,103549,'葡萄干','全部分类:0#树上黄:103550#黑加仑:103554#马奶子:103553#玉香妃:103555#无核白:103551#多彩葡萄干组合:103552',6),(7,103541,'果干蜜饯','全部分类:0#无花果干:103547#杏干:103544#冻干:103543#芒果干:103542#其他果干:103546',7),(8,103557,'生鲜水果','全部分类:0#葡萄:103558#苹果:103559#甜瓜:103562#石榴:103560',8),(11,104958,'黑枸杞','全部分类:0',11);
/*!40000 ALTER TABLE `bgy_foodtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_goods`
--

DROP TABLE IF EXISTS `bgy_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `productimg` varchar(255) NOT NULL,
  `productname` varchar(128) NOT NULL,
  `productlongname` varchar(255) NOT NULL,
  `isbgy` tinyint(1) NOT NULL,
  `pmdesc` tinyint(1) NOT NULL,
  `specifics` varchar(64) NOT NULL,
  `price` double NOT NULL,
  `marketprice` double NOT NULL,
  `categoryid` int(11) NOT NULL,
  `childcid` int(11) NOT NULL,
  `childcidname` varchar(128) NOT NULL,
  `dealerid` int(11) NOT NULL,
  `storenums` int(11) NOT NULL,
  `productnum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_goods`
--

LOCK TABLES `bgy_goods` WRITE;
/*!40000 ALTER TABLE `bgy_goods` DISABLE KEYS */;
INSERT INTO `bgy_goods` VALUES (1,11951,'https://img.alicdn.com/imgextra/i4/3588029274/O1CN01m6Z0JL2INXawXaGdX_!!3588029274.jpg_430x430q90.jpg','阿克苏冰糖心','新疆阿克苏冰糖心苹果5斤包邮新鲜水果中果非昭通盐源红富士丑苹',1,0,'1斤',29,59,103557,103559,'苹果',10001,200,127),(2,4858,'https://img.alicdn.com/imgextra/i2/3248325331/O1CN011pFdszT9zJnEy19_!!3248325331.jpg_430x430q90.jpg','红旗坡冰糖心','【特级大果】新疆阿克苏红旗坡冰糖心苹果10斤毛重装现货新鲜水果\"',1,0,'10斤',148,268,103557,103559,'苹果',1,111,13),(3,103541,'https://img.alicdn.com/imgextra/i1/1858298059/TB22wyZXkfb_uJkSne1XXbE4XXa_!!1858298059.jpg_430x430q90.jpg','吐鲁番哈密瓜','正宗新疆吐鲁番哈密瓜12斤礼盒装甜瓜网纹瓜西州蜜瓜新鲜水果送礼',1,0,'12斤',168,198,103557,103562,'甜瓜',1,10,14),(4,11538,'https://img.alicdn.com/imgextra/i4/4258341012/O1CN01WQBB331JLXJEEktJv_!!4258341012.jpg_430x430q90.jpg','特级新疆哈密瓜甜瓜新鲜水果','【新疆直发】特级新疆哈密瓜甜瓜新鲜水果吐鲁番西州蜜瓜10斤左右',1,0,'10斤',132,166,103557,103562,'甜瓜',1,186,1144),(5,9108,'https://img.alicdn.com/imgextra/i2/4160115980/O1CN011u2swFmIIvUtUfd_!!4160115980.jpg_430x430q90.jpg','新疆甜石榴','新疆甜石榴和田皮亚曼红石榴新鲜水果包邮5斤软籽石榴',1,0,'5斤',12.5,25.5,103557,103560,'石榴',1,121,121),(6,9133,'https://img.alicdn.com/imgextra/i2/3015214310/O1CN01xVoDx71hi1WhXaKM5_!!3015214310.jpg_430x430q90.jpg','新疆红提葡萄','【现摘现发】新疆红提葡萄4斤 新鲜当季水果哈密有籽葡萄批发包邮\"',1,0,'4斤',25,30.5,103557,103558,'葡萄',1,1,1),(7,7889,'https://img.alicdn.com/imgextra/i2/4286375216/O1CN017o12qp1oOyNS0ES6S_!!0-item_pic.jpg_430x430q90.jpg','无籽核红提子葡萄','无籽核红提子葡萄新鲜葡萄孕妇水果4斤甜水果小提子巨峰新疆夏黑',1,0,'4斤',65.5,108.5,103557,103558,'葡萄',1,12,132),(8,4931,'https://img.alicdn.com/imgextra/i1/736093685/O1CN011d5lxqi2DsWzr6Q_!!736093685.jpg_430x430q90.jpg','新疆特产和田大枣干果骏枣可夹核桃仁吃','【西域特级红枣500g】新疆特产和田大枣干果骏枣可夹核桃仁吃',1,0,'1斤',22,28.5,103532,103534,'和田大枣',1,12,21),(9,4932,'https://img.alicdn.com/imgextra/i3/TB16uyWRpXXXXb2XFXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg','新疆若羌红枣灰枣阿克苏红枣干','【西域一级红枣子250g*2袋】新疆若羌红枣灰枣阿克苏红枣干',1,0,'2斤',20.5,22,103532,103533,'若羌红枣',1,122,11),(10,11953,'https://img.alicdn.com/imgextra/i1/TB1FHXWRVXXXXbSXVXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg','美仁枣268g*2新疆红枣夹核桃仁和田夹心枣抱抱枣干脆枣\"','西域美农_美仁枣268g*2新疆红枣夹核桃仁和田夹心枣抱抱枣干脆枣',1,0,'2斤',25,66,103532,1,'103534',1,122,123),(11,1,'https://img.alicdn.com/imgextra/i4/736093685/O1CN011d5ly3qWnuywKQB_!!0-item_pic.jpg_430x430q90.jpg','阿胶枣夹核桃仁','【西域美农_阿胶枣夹核桃仁250g*2袋】新疆特产坚果红枣大枣子',1,0,'2斤',12.5,22,103532,108534,'其他枣类制品',1,1,12),(12,7011,'https://img.alicdn.com/imgextra/i2/736093685/TB22JWrzfuSBuNkHFqDXXXfhVXa_!!736093685-0-item_pic.jpg_430x430q90.jpg','红枣小胖枣','西域美农红枣小胖枣500g*3新疆特产和田骏枣和田大枣红枣包邮3斤',1,0,'1斤',5,8,103532,108534,'其他枣类制品',1,12,11),(13,94170,'https://img.alicdn.com/imgextra/i2/736093685/TB2WcsQsFXXXXXrXFXXXXXXXXXX_!!736093685.jpg_430x430q90.jpg','一级红枣子','【西域美农一级红枣子250g*2袋】新疆若羌红枣灰枣阿克苏红枣干',1,0,'2斤',35,22,103532,103533,'若羌红枣',1,12,121),(14,39681,'https://img.alicdn.com/imgextra/i1/736093685/O1CN01YCNR7J1d5m0Er9YcB_!!0-item_pic.jpg_430x430q90.jpg','新疆特产提子','【西域美农－黑加仑葡萄干】新疆特产提子干干果零食250g*2',0,0,'2斤',15,66,103549,103554,'黑加仑',1,1,12),(15,3970,'https://img.alicdn.com/imgextra/i4/736093685/TB2REg3tFXXXXaNXXXXXXXXXXXX_!!736093685.jpg_430x430q90.jpg','树上黄葡萄干','18年新货  新疆特产吐鲁番休闲零食',1,0,'1斤',12,11,103549,103550,'树上黄',1,1321,112),(16,118479,'https://img.alicdn.com/imgextra/i3/3953753701/TB2HGJBJ3mTBuNjy1XbXXaMrVXa_!!3953753701-0-item_pic.jpg_430x430q90.jpg','御杞珍新疆野生黑枸杞250g罐','御杞珍新疆野生黑枸杞250g罐装正宗免洗中果枸杞子天然黑苟杞男肾',1,0,'2斤',13.5,22,104958,0,'全部分类',1,1,12),(17,6424,'https://img.alicdn.com/imgextra/i2/736093685/TB2417wtFXXXXakXXXXXXXXXXXX_!!736093685.jpg_430x430q90.jpg','新疆特产果干零食大提干','18年新货【西域美农_绿宝石葡萄干250g】新疆特产果干零食大提干',1,0,'1斤',22,32,103549,103555,'玉香妃',1,1,12),(18,4792,'https://img.alicdn.com/imgextra/i4/736093685/TB2REg3tFXXXXaNXXXXXXXXXXXX_!!736093685.jpg_430x430q90.jpg','新疆特产吐鲁番休闲零食','树上黄葡萄干  新疆特产吐鲁番休闲零食',1,0,'1斤',34,20.5,103549,103550,'树上黄',1,1,123),(19,5677,'https://img.alicdn.com/imgextra/i1/736093685/O1CN01dvUk0j1d5lzwJ1PH5_!!0-item_pic.jpg_430x430q90.jpg','新疆特产吐鲁番提子干果','新货  新疆特产吐鲁番提子干果',1,0,'5斤',20.5,40,104749,0,'全部分类',1,1,12),(20,5676,'https://img.alicdn.com/imgextra/i4/736093685/TB2bI6OaYwTMeJjSszfXXXbtFXa_!!736093685.jpg_430x430q90.jpg','零食大礼包吐鲁番大葡萄干提子','【四色葡萄干250g*4】零食大礼包吐鲁番大葡萄干提子',1,0,'12斤',128,220,103549,2103550,'树上黄',12,123,12),(21,4245,'https://img.alicdn.com/imgextra/i2/2122841297/TB2ZMTnuXXXXXX.XpXXXXXXXXXX_!!2122841297.jpg_430x430q90.jpg','新疆特产和田大枣夹核桃夹心枣干果','一果倾城红枣夹核桃仁1000g新疆特产和田大枣夹核桃夹心枣干果',1,0,'1斤',20.5,32,103581,108535,'薄皮核桃',1,1,22),(22,6292,'https://img.alicdn.com/imgextra/i3/2122841297/O1CN011LS4AgoCWi67hJD_!!2122841297.jpg_430x430q90.jpg','alt=\"一果倾城薄皮核桃1000g新疆特产休闲零食坚果薄皮纸皮原味新货\"','alt=\"一果倾城薄皮核桃1000g新疆特产休闲零食坚果薄皮纸皮原味新货\"',1,0,'2斤',20,16.88,103581,108535,'薄皮核桃',13,121,23),(23,1,'https://img.alicdn.com/imgextra/i1/2122841297/O1CN01byRjJA1LS4BV0hDQA_!!2122841297.jpg_430x430q90.jpg','【一果倾城手剥巴旦木】坚果炒货干果扁桃仁零食208g*2包特产年货','坚果炒货干果扁桃仁零食208g*2包特产年货',1,0,'2斤',12,22,103536,103537,'巴旦木',1,1,12),(24,5938,'https://img.alicdn.com/imgextra/i1/2122841297/O1CN01CfoX8r1LS4BOJ5D8z_!!2122841297.jpg_430x430q90.jpg','【一果倾城碧根果】坚果零食长寿果休闲零食干果袋装208g*2包邮','长寿果休闲零食干果袋装208g*2包邮',1,0,'208g',15,20,103536,103540,'其他坚果',1,1,12),(25,7908,'https://img.alicdn.com/imgextra/i2/2122841297/O1CN01aI8Avd1LS4BBc0Io0_!!2122841297.jpg_430x430q90.jpg','一果倾城桑葚干500g新疆黑桑葚野生无沙新鲜特级黑桑果桑椹子膏酒','新黑桑葚野生无沙新鲜特级黑桑果桑椹子膏酒',0,0,'1斤',20,24,104749,0,'全部分类',1,123,12),(26,7020,'https://img.alicdn.com/imgextra/i2/2122841297/TB2cL3HhC7PL1JjSZFHXXcciXXa_!!2122841297.jpg_430x430q90.jpg','【一果倾城黑加仑葡萄干】新疆黑加仑吐鲁番黑葡萄干500g免洗','新疆黑加仑吐鲁番黑葡萄干500g免洗',0,0,'286g',15,15.5,104749,0,'全部分类',1,1,12),(27,7016,'https://img.alicdn.com/imgextra/i4/2122841297/O1CN011LS49Iy6IKCnERu_!!2122841297.jpg_430x430q90.jpg','椰枣特级1000g迪拜阿联酋伊拉克免洗新疆特产黄金耶枣大黑椰枣干','椰枣特级1000g迪拜阿联酋伊拉克免洗新疆特产黄金耶枣大黑椰枣干',1,0,'2斤',45.88,66.88,1103541,103546,'其他果干',1,1,99);
/*!40000 ALTER TABLE `bgy_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_mainshow`
--

DROP TABLE IF EXISTS `bgy_mainshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_mainshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `brandname` varchar(64) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `childcid1` int(11) NOT NULL,
  `productid1` int(11) NOT NULL,
  `longname1` varchar(128) NOT NULL,
  `price1` double NOT NULL,
  `marketprice1` double NOT NULL,
  `img2` varchar(255) NOT NULL,
  `childcid2` int(11) NOT NULL,
  `productid2` int(11) NOT NULL,
  `longname2` varchar(128) NOT NULL,
  `price2` double NOT NULL,
  `marketprice2` double NOT NULL,
  `img3` varchar(255) NOT NULL,
  `childcid3` int(11) NOT NULL,
  `productid3` int(11) NOT NULL,
  `longname3` varchar(128) NOT NULL,
  `price3` double NOT NULL,
  `marketprice3` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_mainshow`
--

LOCK TABLES `bgy_mainshow` WRITE;
/*!40000 ALTER TABLE `bgy_mainshow` DISABLE KEYS */;
INSERT INTO `bgy_mainshow` VALUES (1,'http://img01.bqstatic.com//upload/activity/2017031018205492.jpg@90Q.jpg','水果',21782,103532,'水果摊','http://img01.bqstatic.com/upload/goods/201/701/1916/20170119164159_996462.jpg@200w_200h_90Q',103533,118824,'吐鲁番大西瓜1.5-2.5kg/个',25.8,25.8,'https://img.alicdn.com/imgextra/i4/3373433071/O1CN01Z3AXuh1YYYnbMITKI_!!3373433071.jpg_430x430q90.jpg',103534,116950,'无籽红提新鲜水果清甜多汁无核红葡萄',15.3,15.8,'https://img.alicdn.com/imgextra/i4/3588029274/O1CN01m6Z0JL2INXawXaGdX_!!3588029274.jpg_430x430q90.jpg',103533,118826,'新疆阿克苏冰糖心苹果5斤包邮新鲜水果中果非昭通盐源红富士丑苹',9.9,13.8),(3,'http://img01.bqstatic.com//upload/activity/2017031018205492.jpg@90Q.jpg','果肉干',21782,103532,'水果摊','http://img01.bqstatic.com/upload/goods/201/701/1916/20170119164159_996462.jpg@200w_200h_90Q',103533,118824,'吐鲁番大西瓜1.5-2.5kg/个',25.8,25.8,'https://img.alicdn.com/imgextra/i4/3373433071/O1CN01Z3AXuh1YYYnbMITKI_!!3373433071.jpg_430x430q90.jpg',103534,116950,'多汁',15.3,15.8,'https://img.alicdn.com/imgextra/i4/3588029274/O1CN01m6Z0JL2INXawXaGdX_!!3588029274.jpg_430x430q90.jpg',103533,118826,'新疆阿克苏冰糖心苹果5斤包邮新鲜水果中果非昭通盐源红富士丑苹',9.9,13.8),(4,'http://img01.bqstatic.com//upload/activity/2017031018205492.jpg@90Q.jpg','特色小吃',21782,103532,'水果摊','http://img01.bqstatic.com/upload/goods/201/701/1916/20170119164159_996462.jpg@200w_200h_90Q',103533,118824,'吐鲁番大西瓜1.5-2.5kg/个',25.8,25.8,'https://img.alicdn.com/imgextra/i4/3373433071/O1CN01Z3AXuh1YYYnbMITKI_!!3373433071.jpg_430x430q90.jpg',103534,116950,'多汁',15.3,15.8,'https://img.alicdn.com/imgextra/i4/3588029274/O1CN01m6Z0JL2INXawXaGdX_!!3588029274.jpg_430x430q90.jpg',103533,118826,'新疆阿克苏冰糖心苹果5斤包邮新鲜水果中果非昭通盐源红富士丑苹',9.9,13.8),(5,'http://img01.bqstatic.com//upload/activity/2017031018205492.jpg@90Q.jpg','面包糕点',21782,103532,'水果摊','http://img01.bqstatic.com/upload/goods/201/701/1916/20170119164159_996462.jpg@200w_200h_90Q',103533,118824,'吐鲁番大西瓜1.5-2.5kg/个',25.8,25.8,'https://img.alicdn.com/imgextra/i4/3373433071/O1CN01Z3AXuh1YYYnbMITKI_!!3373433071.jpg_430x430q90.jpg',103534,116950,'多汁',15.3,15.8,'https://img.alicdn.com/imgextra/i4/3588029274/O1CN01m6Z0JL2INXawXaGdX_!!3588029274.jpg_430x430q90.jpg',103533,118826,'新疆阿克苏冰糖心苹果5斤包邮新鲜水果中果非昭通盐源红富士丑苹',9.9,13.8);
/*!40000 ALTER TABLE `bgy_mainshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_mustbuy`
--

DROP TABLE IF EXISTS `bgy_mustbuy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_mustbuy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_mustbuy`
--

LOCK TABLES `bgy_mustbuy` WRITE;
/*!40000 ALTER TABLE `bgy_mustbuy` DISABLE KEYS */;
INSERT INTO `bgy_mustbuy` VALUES (1,'https://img.alicdn.com/imgextra/i1/2122841297/TB2sr9Za7voK1RjSZFDXXXY3pXa_!!2122841297.jpg_430x430q90.jpg','111',21870),(2,'https://img.alicdn.com/imgextra/i3/2122841297/O1CN011LS4AgoCWi67hJD_!!2122841297.jpg_430x430q90.jpg','111',21861),(3,'https://img.alicdn.com/imgextra/i2/2122841297/O1CN01OZNlym1LS4ByC2tuf_!!0-item_pic.jpg_430x430q90.jpghttps://img.alicdn.com/imgextra/i1/2122841297/O1CN01PecJRL1LS4BAJ7p6m_!!2122841297.jpg_430x430q90.jpg','111',21866),(5,'https://img.alicdn.com/imgextra/i4/736093685/TB2D77MroR1BeNjy0FmXXb0wVXa_!!736093685.jpg_430x430q90.jpg','1111',1),(6,'http://img01.bqstatic.com//upload/activity/2017031715194326.jpg@90Q.jpg','酸奶女王',21870),(7,'http://img01.bqstatic.com//upload/activity/cms_118826_1489742316.jpg@90Q','鲜果女王',21861),(8,'http://img01.bqstatic.com//upload/activity/2017031011044918.jpg@90Q.jpg','麻辣女王',21866),(9,'http://img01.bqstatic.com//upload/activity/2017022318314545.jpg@90Q.jpg','鲜货直供－果析',21858);
/*!40000 ALTER TABLE `bgy_mustbuy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_nav`
--

DROP TABLE IF EXISTS `bgy_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_nav`
--

LOCK TABLES `bgy_nav` WRITE;
/*!40000 ALTER TABLE `bgy_nav` DISABLE KEYS */;
INSERT INTO `bgy_nav` VALUES (1,'http://img01.bqstatic.com//upload/activity/2017032016495169.png','每日必抢',121851),(2,'http://img01.bqstatic.com//upload/activity/2016121920130294.png','每日签到',121753),(3,'http://img01.bqstatic.com//upload/activity/2017010517013925.png','鲜货直供',121749),(4,'http://img01.bqstatic.com//upload/activity/2017031518404137.png','百果园推荐',21854);
/*!40000 ALTER TABLE `bgy_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_orderdetail`
--

DROP TABLE IF EXISTS `bgy_orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_goods_num` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bgy_orderdetail_goods_id_efc9154f_fk_bgy_goods_id` (`goods_id`),
  KEY `bgy_orderdetail_order_id_f53b5420_fk_bgy_orders_id` (`order_id`),
  CONSTRAINT `bgy_orderdetail_goods_id_efc9154f_fk_bgy_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `bgy_goods` (`id`),
  CONSTRAINT `bgy_orderdetail_order_id_f53b5420_fk_bgy_orders_id` FOREIGN KEY (`order_id`) REFERENCES `bgy_orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_orderdetail`
--

LOCK TABLES `bgy_orderdetail` WRITE;
/*!40000 ALTER TABLE `bgy_orderdetail` DISABLE KEYS */;
INSERT INTO `bgy_orderdetail` VALUES (1,2,19,1),(2,1,25,1),(3,1,26,2),(4,3,25,2),(5,3,26,3),(6,6,14,3),(7,4,15,3),(8,3,17,3),(9,6,25,4),(10,4,25,5),(11,4,19,5),(12,5,25,6),(13,3,25,7),(14,4,19,7);
/*!40000 ALTER TABLE `bgy_orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_orders`
--

DROP TABLE IF EXISTS `bgy_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_price` double NOT NULL,
  `o_time` datetime(6) NOT NULL,
  `o_state` int(11) NOT NULL,
  `o_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bgy_orders_o_user_id_57fdf9fc_fk_bgy_user_id` (`o_user_id`),
  CONSTRAINT `bgy_orders_o_user_id_57fdf9fc_fk_bgy_user_id` FOREIGN KEY (`o_user_id`) REFERENCES `bgy_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_orders`
--

LOCK TABLES `bgy_orders` WRITE;
/*!40000 ALTER TABLE `bgy_orders` DISABLE KEYS */;
INSERT INTO `bgy_orders` VALUES (1,61,'2019-02-27 22:59:31.891980',2,3),(2,75,'2019-02-27 23:12:13.983829',2,1),(3,249,'2019-02-27 23:14:35.759134',2,1),(4,120,'2019-02-28 10:12:24.475137',2,1),(5,162,'2019-02-27 23:50:56.408781',2,1),(6,100,'2019-02-28 10:43:17.356780',1,1),(7,142,'2019-02-28 10:50:03.447281',1,1);
/*!40000 ALTER TABLE `bgy_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_shop`
--

DROP TABLE IF EXISTS `bgy_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_shop`
--

LOCK TABLES `bgy_shop` WRITE;
/*!40000 ALTER TABLE `bgy_shop` DISABLE KEYS */;
INSERT INTO `bgy_shop` VALUES (2,'http://img01.bqstatic.com//upload/activity/2017031018405396.png@90Q.png','热销榜',104749),(14,'http://img01.bqstatic.com//upload/activity/2017031018405396.png@90Q.png','热销榜',104749),(15,'http://img01.bqstatic.com//upload/activity/2017031018403438.png@90Q.png','新品尝鲜',104747),(16,'http://img01.bqstatic.com//upload/activity/2016121618424334.png@90Q.png','牛奶面包',103536),(17,'http://img01.bqstatic.com//upload/activity/2016121617150246.png@90Q.png','饮料酒水',103549),(18,'http://img01.bqstatic.com//upload/activity/201612161714501.png@90Q.png','优选水果',103532),(19,'http://img01.bqstatic.com//upload/activity/2016121618550639.png@90Q.png','更多',100001),(20,'https://img.alicdn.com/imgextra/i4/736093685/TB2bI6OaYwTMeJjSszfXXXbtFXa_!!736093685.jpg_430x430q90.jpg','西域美农',21854),(21,'https://img.alicdn.com/imgextra/i2/2122841297/O1CN011LS4A5r21xwyo4e_!!2122841297.jpg_430x430q90.jpg','一串倾城',21742);
/*!40000 ALTER TABLE `bgy_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_user`
--

DROP TABLE IF EXISTS `bgy_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_username` varchar(32) NOT NULL,
  `u_password` varchar(256) NOT NULL,
  `u_email` varchar(64) NOT NULL,
  `u_icon` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_username` (`u_username`),
  UNIQUE KEY `u_email` (`u_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_user`
--

LOCK TABLES `bgy_user` WRITE;
/*!40000 ALTER TABLE `bgy_user` DISABLE KEYS */;
INSERT INTO `bgy_user` VALUES (1,'陈龙','pbkdf2_sha256$100000$qdntT0MYFSmD$y/QJk5Mi7SPkUfa5wDyq61xolGKkxBQwp4/kY/CIR3E=','dakfhk@qq.com','icons/2019/02/27/beauty.jpg',1,0),(3,'jack','pbkdf2_sha256$100000$8iAWh4YMkd9i$Oca+Nz3TwHPbdx7trePuguGpLkhxPBdaCgnRRVZwdSw=','435825715@qq.com','icons/2019/02/27/dog_WDnsUdG.jpg',1,0);
/*!40000 ALTER TABLE `bgy_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_useraddress`
--

DROP TABLE IF EXISTS `bgy_useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_useraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(64) NOT NULL,
  `a_phone` varchar(64) NOT NULL,
  `a_address` varchar(64) NOT NULL,
  `a_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bgy_useraddress_a_user_id_190cb1cc_fk_bgy_user_id` (`a_user_id`),
  CONSTRAINT `bgy_useraddress_a_user_id_190cb1cc_fk_bgy_user_id` FOREIGN KEY (`a_user_id`) REFERENCES `bgy_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_useraddress`
--

LOCK TABLES `bgy_useraddress` WRITE;
/*!40000 ALTER TABLE `bgy_useraddress` DISABLE KEYS */;
INSERT INTO `bgy_useraddress` VALUES (6,'陈龙','cl970327','121cinj',1),(7,'陈龙','cl970327','121cinj',1),(8,'陈龙','cl970327','121cinj',1),(9,'陈龙','cl970327','121cinj',1);
/*!40000 ALTER TABLE `bgy_useraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgy_wheel`
--

DROP TABLE IF EXISTS `bgy_wheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bgy_wheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgy_wheel`
--

LOCK TABLES `bgy_wheel` WRITE;
/*!40000 ALTER TABLE `bgy_wheel` DISABLE KEYS */;
INSERT INTO `bgy_wheel` VALUES (1,'//gdp.alicdn.com/imgextra/i1/736093685/O1CN01rxvj821d5m07cSTpP_!!736093685.jpg','西域美农',21870),(2,'//gdp.alicdn.com/imgextra/i1/736093685/TB2NyHNrpmWBuNjSspdXXbugXXa-736093685.jpg','大漠春天，来自新疆的味道',21862),(3,'//gdp.alicdn.com/imgextra/i2/2502405121/O1CN01kbQy1B1nhSkAABALA_!!2502405121.jpg','瓜募香看',21770),(4,'//gdp.alicdn.com/imgextra/i1/178074208/TB2E0hQmXXXXXXBXpXXXXXXXXXX_!!178074208.jpg','11111',1);
/*!40000 ALTER TABLE `bgy_wheel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-02-27 17:03:19.063555','1','MainWheel object (1)',1,'[{\"added\": {}}]',15,1),(2,'2019-02-27 17:07:47.639197','2','MainWheel object (2)',1,'[{\"added\": {}}]',15,1),(3,'2019-02-27 17:12:43.241143','3','MainWheel object (3)',1,'[{\"added\": {}}]',15,1),(4,'2019-02-27 17:14:19.439137','4','MainWheel object (4)',1,'[{\"added\": {}}]',15,1),(5,'2019-02-27 17:14:55.846744','4','MainWheel object (4)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',15,1),(6,'2019-02-27 17:15:55.970795','4','MainWheel object (4)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',15,1),(7,'2019-02-27 17:16:01.153778','2','MainWheel object (2)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',15,1),(8,'2019-02-27 17:18:03.259452','1','MainNav object (1)',1,'[{\"added\": {}}]',12,1),(9,'2019-02-27 17:18:20.558366','2','MainNav object (2)',1,'[{\"added\": {}}]',12,1),(10,'2019-02-27 17:18:36.214393','3','MainNav object (3)',1,'[{\"added\": {}}]',12,1),(11,'2019-02-27 17:18:51.465808','4','MainNav object (4)',1,'[{\"added\": {}}]',12,1),(12,'2019-02-27 17:19:21.247977','4','MainNav object (4)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(13,'2019-02-27 17:51:07.373649','4','MainMustBuy object (4)',2,'[{\"changed\": {\"fields\": [\"img\", \"name\"]}}]',11,1),(14,'2019-02-27 17:51:24.768941','2','MainMustBuy object (2)',2,'[{\"changed\": {\"fields\": [\"img\", \"name\"]}}]',11,1),(15,'2019-02-27 17:52:45.939878','4','MainMustBuy object (4)',3,'',11,1),(16,'2019-02-27 17:52:52.596263','3','MainMustBuy object (3)',2,'[{\"changed\": {\"fields\": [\"img\", \"name\"]}}]',11,1),(17,'2019-02-27 17:52:59.676801','1','MainMustBuy object (1)',2,'[{\"changed\": {\"fields\": [\"img\", \"name\"]}}]',11,1),(18,'2019-02-27 18:15:37.148544','1','MainShow object (1)',2,'[{\"changed\": {\"fields\": [\"name\", \"brandname\", \"longname1\", \"longname3\"]}}]',14,1),(19,'2019-02-27 18:18:53.459753','1','MainMustBuy object (1)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',11,1),(20,'2019-02-27 18:19:59.982102','2','MainMustBuy object (2)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',11,1),(21,'2019-02-27 18:20:46.492744','3','MainMustBuy object (3)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',11,1),(22,'2019-02-27 18:21:18.011695','3','MainMustBuy object (3)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',11,1),(23,'2019-02-27 18:22:14.763220','2','MainMustBuy object (2)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',11,1),(24,'2019-02-27 18:23:59.357617','5','MainMustBuy object (5)',1,'[{\"added\": {}}]',11,1),(25,'2019-02-27 18:25:04.433625','5','MainShop object (5)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',13,1),(26,'2019-02-27 18:26:22.201051','4','MainNav object (4)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(27,'2019-02-27 18:27:55.059228','6','FoodType object (6)',2,'[{\"changed\": {\"fields\": [\"typename\"]}}]',9,1),(28,'2019-02-27 18:28:49.834112','2','MainMustBuy object (2)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',11,1),(29,'2019-02-27 18:30:16.500601','2','MainMustBuy object (2)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',11,1),(30,'2019-02-27 18:32:56.229303','1','MainShop object (1)',2,'[{\"changed\": {\"fields\": [\"img\", \"name\"]}}]',13,1),(31,'2019-02-27 18:33:53.385087','1','MainShop object (1)',2,'[]',13,1),(32,'2019-02-27 18:34:35.745834','1','MainShop object (1)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',13,1),(33,'2019-02-27 18:35:44.154668','1','MainShop object (1)',3,'',13,1),(34,'2019-02-27 18:37:27.723024','3','MainShop object (3)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',13,1),(35,'2019-02-27 18:37:56.593306','3','MainShop object (3)',2,'[]',13,1),(36,'2019-02-27 18:39:49.873104','2','MainShow object (2)',1,'[{\"added\": {}}]',14,1),(37,'2019-02-27 18:48:29.086157','11','MainShop object (11)',3,'',13,1),(38,'2019-02-27 18:48:29.265056','10','MainShop object (10)',3,'',13,1),(39,'2019-02-27 18:48:29.353007','9','MainShop object (9)',3,'',13,1),(40,'2019-02-27 18:48:29.460418','8','MainShop object (8)',3,'',13,1),(41,'2019-02-27 18:48:29.541372','7','MainShop object (7)',3,'',13,1),(42,'2019-02-27 18:48:29.596340','6','MainShop object (6)',3,'',13,1),(43,'2019-02-27 18:48:29.682294','5','MainShop object (5)',3,'',13,1),(44,'2019-02-27 18:48:29.763247','4','MainShop object (4)',3,'',13,1),(45,'2019-02-27 18:48:29.848217','3','MainShop object (3)',3,'',13,1),(46,'2019-02-27 18:52:18.861637','12','MainShop object (12)',1,'[{\"added\": {}}]',13,1),(47,'2019-02-27 19:02:24.380944','12','MainShop object (12)',3,'',13,1),(48,'2019-02-27 19:02:38.803297','13','MainShop object (13)',3,'',13,1),(49,'2019-02-27 19:04:05.129166','20','MainShop object (20)',2,'[{\"changed\": {\"fields\": [\"img\", \"name\"]}}]',13,1),(50,'2019-02-27 19:05:40.385401','18','MainShop object (18)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',13,1),(51,'2019-02-27 19:06:16.677937','18','MainShop object (18)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',13,1),(52,'2019-02-27 19:06:39.450732','18','MainShop object (18)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',13,1),(53,'2019-02-27 19:07:14.492132','20','MainShop object (20)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',13,1),(54,'2019-02-27 19:07:33.401650','21','MainShop object (21)',2,'[{\"changed\": {\"fields\": [\"img\", \"name\"]}}]',13,1),(55,'2019-02-27 19:08:41.770211','21','MainShop object (21)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',13,1),(56,'2019-02-27 19:09:04.085499','21','MainShop object (21)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',13,1),(57,'2019-02-27 19:09:24.754972','21','MainShop object (21)',2,'[{\"changed\": {\"fields\": [\"img\"]}}]',13,1),(58,'2019-02-27 19:13:26.261613','23','MainShop object (23)',3,'',13,1),(59,'2019-02-27 19:13:30.023770','22','MainShop object (22)',3,'',13,1),(60,'2019-02-27 19:14:32.959363','1','MainShow object (1)',2,'[{\"changed\": {\"fields\": [\"longname2\"]}}]',14,1),(61,'2019-02-27 19:14:45.623032','2','MainShow object (2)',3,'',14,1),(62,'2019-02-27 19:15:40.611799','1','MainShow object (1)',2,'[{\"changed\": {\"fields\": [\"longname1\"]}}]',14,1),(63,'2019-02-27 19:18:41.864439','1','MainShow object (1)',2,'[{\"changed\": {\"fields\": [\"img2\", \"longname2\"]}}]',14,1),(64,'2019-02-27 19:19:13.652794','1','MainShow object (1)',2,'[{\"changed\": {\"fields\": [\"img2\"]}}]',14,1),(65,'2019-02-27 19:20:31.972642','1','MainShow object (1)',2,'[{\"changed\": {\"fields\": [\"img3\", \"longname3\"]}}]',14,1),(66,'2019-02-27 19:26:06.100626','3','MainShow object (3)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',14,1),(67,'2019-02-27 19:26:40.380531','3','MainShow object (3)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',14,1),(68,'2019-02-27 19:27:47.450464','4','MainShow object (4)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',14,1),(69,'2019-02-27 19:28:02.092079','5','MainShow object (5)',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',14,1),(70,'2019-02-27 19:33:47.054503','1','Goods object (1)',1,'[{\"added\": {}}]',10,1),(71,'2019-02-27 19:34:28.662389','1','Goods object (1)',2,'[{\"changed\": {\"fields\": [\"price\", \"marketprice\"]}}]',10,1),(72,'2019-02-27 19:35:05.695146','1','Goods object (1)',2,'[{\"changed\": {\"fields\": [\"childcid\"]}}]',10,1),(73,'2019-02-27 19:38:48.831830','2','Goods object (2)',1,'[{\"added\": {}}]',10,1),(74,'2019-02-27 19:40:24.593125','2','Goods object (2)',2,'[{\"changed\": {\"fields\": [\"productid\"]}}]',10,1),(75,'2019-02-27 19:40:52.235811','1','Goods object (1)',2,'[{\"changed\": {\"fields\": [\"productid\"]}}]',10,1),(76,'2019-02-27 19:41:49.440544','2','Goods object (2)',2,'[]',10,1),(77,'2019-02-27 19:42:03.556780','1','Goods object (1)',2,'[]',10,1),(78,'2019-02-27 19:43:37.508488','2','Goods object (2)',2,'[{\"changed\": {\"fields\": [\"categoryid\"]}}]',10,1),(79,'2019-02-27 19:47:26.131755','3','Goods object (3)',1,'[{\"added\": {}}]',10,1),(80,'2019-02-27 19:50:22.821083','4','Goods object (4)',1,'[{\"added\": {}}]',10,1),(81,'2019-02-27 19:52:41.343719','5','Goods object (5)',1,'[{\"added\": {}}]',10,1),(82,'2019-02-27 19:55:33.113329','6','Goods object (6)',1,'[{\"added\": {}}]',10,1),(83,'2019-02-27 19:57:28.075468','7','Goods object (7)',1,'[{\"added\": {}}]',10,1),(84,'2019-02-27 19:58:41.812057','9','FoodType object (9)',3,'',9,1),(85,'2019-02-27 19:59:17.111352','8','FoodType object (8)',2,'[{\"changed\": {\"fields\": [\"childtypenames\"]}}]',9,1),(86,'2019-02-27 19:59:43.210952','8','FoodType object (8)',2,'[{\"changed\": {\"fields\": [\"childtypenames\"]}}]',9,1),(87,'2019-02-27 20:03:34.120369','8','Goods object (8)',1,'[{\"added\": {}}]',10,1),(88,'2019-02-27 20:05:35.031741','9','Goods object (9)',1,'[{\"added\": {}}]',10,1),(89,'2019-02-27 20:07:15.886174','10','Goods object (10)',1,'[{\"added\": {}}]',10,1),(90,'2019-02-27 20:08:42.581405','11','Goods object (11)',1,'[{\"added\": {}}]',10,1),(91,'2019-02-27 20:10:28.032621','12','Goods object (12)',1,'[{\"added\": {}}]',10,1),(92,'2019-02-27 20:12:10.447548','13','Goods object (13)',1,'[{\"added\": {}}]',10,1),(93,'2019-02-27 20:14:13.526807','14','Goods object (14)',1,'[{\"added\": {}}]',10,1),(94,'2019-02-27 20:16:56.801110','15','Goods object (15)',1,'[{\"added\": {}}]',10,1),(95,'2019-02-27 20:18:16.642151','2','FoodType object (2)',3,'',9,1),(96,'2019-02-27 20:18:41.091461','10','FoodType object (10)',3,'',9,1),(97,'2019-02-27 20:21:14.217021','16','Goods object (16)',1,'[{\"added\": {}}]',10,1),(98,'2019-02-27 20:21:31.969332','16','Goods object (16)',2,'[{\"changed\": {\"fields\": [\"productlongname\"]}}]',10,1),(99,'2019-02-27 20:25:36.454398','17','Goods object (17)',1,'[{\"added\": {}}]',10,1),(100,'2019-02-27 20:33:31.784848','18','Goods object (18)',1,'[{\"added\": {}}]',10,1),(101,'2019-02-27 20:34:03.208427','15','Goods object (15)',2,'[{\"changed\": {\"fields\": [\"productlongname\"]}}]',10,1),(102,'2019-02-27 20:34:14.958908','18','Goods object (18)',2,'[{\"changed\": {\"fields\": [\"productlongname\"]}}]',10,1),(103,'2019-02-27 20:36:04.451471','19','Goods object (19)',1,'[{\"added\": {}}]',10,1),(104,'2019-02-27 20:37:49.391709','20','Goods object (20)',1,'[{\"added\": {}}]',10,1),(105,'2019-02-27 20:38:31.230629','18','Goods object (18)',2,'[{\"changed\": {\"fields\": [\"productlongname\"]}}]',10,1),(106,'2019-02-27 20:44:07.692293','21','Goods object (21)',1,'[{\"added\": {}}]',10,1),(107,'2019-02-27 20:46:38.719887','22','Goods object (22)',1,'[{\"added\": {}}]',10,1),(108,'2019-02-27 20:50:58.382434','11','FoodType object (11)',2,'[{\"changed\": {\"fields\": [\"typename\"]}}]',9,1),(109,'2019-02-27 20:54:20.172305','23','Goods object (23)',1,'[{\"added\": {}}]',10,1),(110,'2019-02-27 20:55:57.422113','24','Goods object (24)',1,'[{\"added\": {}}]',10,1),(111,'2019-02-27 21:14:57.284434','25','Goods object (25)',1,'[{\"added\": {}}]',10,1),(112,'2019-02-27 21:15:03.891868','25','Goods object (25)',2,'[]',10,1),(113,'2019-02-27 21:16:42.701851','26','Goods object (26)',1,'[{\"added\": {}}]',10,1),(114,'2019-02-27 21:18:54.094944','27','Goods object (27)',1,'[{\"added\": {}}]',10,1),(115,'2019-02-27 23:04:52.630321','1','BGYUser object (1)',2,'[{\"changed\": {\"fields\": [\"u_icon\", \"is_active\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(18,'App','address'),(7,'App','bgyuser'),(8,'App','cart'),(9,'App','foodtype'),(10,'App','goods'),(11,'App','mainmustbuy'),(12,'App','mainnav'),(13,'App','mainshop'),(14,'App','mainshow'),(15,'App','mainwheel'),(16,'App','order'),(17,'App','orderdetail'),(19,'App','useraddress'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'App','0001_initial','2019-02-27 16:47:13.404090'),(2,'contenttypes','0001_initial','2019-02-27 16:47:14.396541'),(3,'auth','0001_initial','2019-02-27 16:47:26.675512'),(4,'admin','0001_initial','2019-02-27 16:47:29.387939'),(5,'admin','0002_logentry_remove_auto_add','2019-02-27 16:47:29.470913'),(6,'contenttypes','0002_remove_content_type_name','2019-02-27 16:47:31.268883'),(7,'auth','0002_alter_permission_name_max_length','2019-02-27 16:47:32.589125'),(8,'auth','0003_alter_user_email_max_length','2019-02-27 16:47:33.831416'),(9,'auth','0004_alter_user_username_opts','2019-02-27 16:47:33.920344'),(10,'auth','0005_alter_user_last_login_null','2019-02-27 16:47:34.900784'),(11,'auth','0006_require_contenttypes_0002','2019-02-27 16:47:35.029709'),(12,'auth','0007_alter_validators_add_error_messages','2019-02-27 16:47:35.106686'),(13,'auth','0008_alter_user_username_max_length','2019-02-27 16:47:36.455893'),(14,'auth','0009_alter_user_last_name_max_length','2019-02-27 16:47:37.620244'),(15,'sessions','0001_initial','2019-02-27 16:47:38.485750'),(16,'App','0002_address','2019-02-28 00:31:25.456787'),(17,'App','0002_auto_20190228_0134','2019-02-28 01:34:08.546381'),(18,'App','0002_useraddress','2019-02-28 01:40:10.302648');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bmwtbo6aj28nzai4pntk0bcdj0bhlbp3','N2VjYmIyMzg3ZDk1MGE0NTJlYzJhMTg4OGMyODBlM2M2ZmM4ZTAzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOTQ0MDg2OTBjNzJmNDA2NmZlNDNiMmUxNGFmM2EwZmVmNzcwYmY4IiwidXNlcl9pZCI6M30=','2019-03-13 21:47:22.844743'),('el858afsafe9do0oba3s6qx34ulr8vib','N2VjYmIyMzg3ZDk1MGE0NTJlYzJhMTg4OGMyODBlM2M2ZmM4ZTAzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOTQ0MDg2OTBjNzJmNDA2NmZlNDNiMmUxNGFmM2EwZmVmNzcwYmY4IiwidXNlcl9pZCI6M30=','2019-03-13 22:59:23.129520'),('iby6gq7uoxbi0rfktlpdxq5sc1tli8op','MmUyZDc0ZWQzZjM2M2Y1OTNmNjBmNGVlNjM0YjViMzEzMzhjYjBmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOTQ0MDg2OTBjNzJmNDA2NmZlNDNiMmUxNGFmM2EwZmVmNzcwYmY4IiwidXNlcl9pZCI6MX0=','2019-03-13 23:06:29.546150'),('jn6ggnfyzo5gcbectkwinfxhcvutau9f','NjYwMWM1ZTVmZGU2MGQyZThlYzc3NmU4YzZhOWIwOWJlYzZiZDIzZjp7InVzZXJfaWQiOjF9','2019-03-14 10:49:53.627901'),('mqugw9rl8hyxhkuddqcnd7of9o9p2atv','NjYwMWM1ZTVmZGU2MGQyZThlYzc3NmU4YzZhOWIwOWJlYzZiZDIzZjp7InVzZXJfaWQiOjF9','2019-03-14 11:09:15.574545'),('tkr83k1kbv3tg2io7yo6h6muhrrywji6','NjhmZGZhOWYyMmI4ZTIwYTQ5NzQ3NGE4MTYzNWNjZTJmODRkYjUyZTp7InVzZXJfaWQiOjEsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOTQ0MDg2OTBjNzJmNDA2NmZlNDNiMmUxNGFmM2EwZmVmNzcwYmY4In0=','2019-03-14 00:30:36.375084'),('u829lo7xjsw8p5rflfun312sr49p9mwo','NjYwMWM1ZTVmZGU2MGQyZThlYzc3NmU4YzZhOWIwOWJlYzZiZDIzZjp7InVzZXJfaWQiOjF9','2019-03-14 10:15:16.884933');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-28 12:54:52
