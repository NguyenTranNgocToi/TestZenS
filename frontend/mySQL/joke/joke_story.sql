-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: joke
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `story` (
  `id` int NOT NULL,
  `story` varchar(2000) DEFAULT NULL,
  `funny` int DEFAULT NULL,
  `notfunny` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'A young boy enters a barber shop and the barber whispers to his customer. \"This is the dumbest kid in the world. Watch while I prove it you.\" The barber puts a dollar bill in one hand and two quarters in the other, then calls the boy over and asks, \"Which do you want, son?\" The boy takes the quarters and leaves. \"What did I tell you?\" said the barber. \"That kid never learns!\" Later, when the customer leaves, he sees the same young boy coming out of the ice cream store. \"Hey, son! May I ask you a question? Why did you take the quarters instead of the dollar bill?\" The boy licked his cone and replied, \"Because the day I take the dollar, the game is over!\"',2,0),(2,'Two campers are walking through the woods when a huge brown bear suddenly appears in the clearing about 50 feet in front of them. The bear sees the campers and begins to head toward them. The first guy drops his backpack, digs out a pair of sneakers, and frantically begins to put them on. The second guy says, \"What are you doing? Sneakers won’t help you outrun that bear.\" \"I don’t need to outrun the bear,\" the first guy says. \"I just need to outrun you.\"',1,1),(3,'A guy is sitting at home when he hears a knock at the door. He opens the door and sees a snail on the porch. He picks up the snail and throws it as far as he can. Three years later there’s a knock on the door. He opens it and sees the same snail. The snail says, \"What the hell was that all about?\".',2,0),(4,'A guy meets a hooker in a bar. She says, \"This is your lucky night. I’ve got a special game for you. I’ll do absolutely anything you want for $300 as long as you can say it in three words.\" The guy replies, \"Hey, why not.\" He pulls his wallet out of his pocket and one at a time lays three one hundred dollar bills on the bar, and says slowly. \"Paint…my….house.\"',1,1),(5,'Three guys stranded on a desert island find a magic lantern containing a genie, who grants them each one wish. The first guy wishes he was off the island and back home. The second guy wishes the same. The third guy says: \"I’m lonely. I wish my friends were back here.\"',2,0),(6,'A guy dies and is sent to hell. Satan meets him, shows him doors to three rooms, and says he must choose one to spend eternity in. In the first room, people are standing in dirt up to their necks. The guy says, \"No, let me see the next room.\" In the second room, people are standing in dirt up to their noses. Guy says no again. Finally Satan opens the third room. People are standing with dirt up to their knees, drinking coffee and eating pastries. The guy says, \"I pick this room.\" Satan says Ok and starts to leave, and the guy wades in and starts pouring some coffee. On the way out Satan yells, \"OK, coffee break’s over. Everyone back on your heads!\"',2,0);
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-07 22:48:22
