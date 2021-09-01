CREATE TABLE `dcsuperheroes` (
  `page_id` int DEFAULT NULL,
  `name` text,
  `urlslug` text,
  `ID` text,
  `ALIGN` text,
  `EYE` text,
  `HAIR` text,
  `SEX` text,
  `GSM` text,
  `ALIVE` text,
  `APPEARANCES` int DEFAULT NULL,
  `FIRST APPEARANCE` text,
  `YEAR` int DEFAULT NULL,
  `new_superheroes` varchar(50) DEFAULT NULL,
  `fav_avengers` varchar(50) DEFAULT NULL,
  `news_superheroes` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
