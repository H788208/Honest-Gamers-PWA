-- CREATE TABLE GuesMathieuCotéses (id INTEGER PRIMARY KEY AUTOINCREMENT,
--                         user_id INTEGER,
--                         date TEXT NOT NULL,
--                         score INTEGER,
--                         game TEXT NOT NULL);


--  INSERT INTO Users (username, password) VALUES
--              ('SolidLonk','$2y$10$DjDI6UI32YyXsutkQrFGSu1O4d/sRHrDk2FCOjPjzrujMefZwmMim'),
--              --querty
--              ('ThomasWayne38', '$2y$10$XutB29wf5AjhyX/6lRm/CeWTohgBI/AQy/DNqoVT4Rd2cSL.rKzA.'),
--              --detective comics
--              ('Hort788208', '$2y$10$j9LvqQTfleu2qWO2YewGVeGYQBe2vG5NzCZzphuH2rty9.trljChq'),
--              --Halo
--              ('HideoKojima', '$2y$10$cgdsDGeEFcD2ctZWeCUR3O3bOsCFE.QZfqhdceKVM6bXIzDISZb/e'),
--              --Ihatekonami
--              ('','$2y$10$DirEZ1ypsKnRXfNd3IqHhuIxq/gA1URix9uqa0u2u28ZqNP5xNBde');
--              --Hex_No_One_Escapes_Death1234

-- INSERT INTO Guesses (user_id, date, score, game) VALUES
--              (1, 2001-11-15, 9, 'Halo: combat evolved'),
--              (1, 2009-3-5, 5, 'Resident Evil 5'),
--              (2, 2010-8-19, 9, 'Fallout: new vegas'),
--              (2, 2016-6-14, 7, 'Dead by Daylight'),
--              (3, 2001-11-13, 10, 'Metal Gear Solid 2'),
--              (3, 2009-11-17, 8, 'Left 4 Dead 2'),
--              (4, 2001-6-19, 7, 'Sonic Adventure 2'),
--              (4, 2011-11-15, 8, 'Ultimate Marvel vs Capcom 3'),
--              (5, 2003-5-23, 9, 'Silent Hill 3'),
--              (5, 2011-5-16, 8, 'Terraria');

-- DROP TABLE IF EXISTS Users;

-- INSERT INTO Users (username, password) VALUES
--               ('SolidS','scrypt:32768:8:1$ZIUB1D5lCNl2GZ5w$4de3cadd75e3f03617e0c7423a3aab85a84fd9dea009295ce41d438e52da3cbc0b64def6ecbaaef13255c4918585c15e6c313d8d98d64f37c37d22b3e25bf04e'),
--               --apple
--               ('BWayne38','scrypt:32768:8:1$YfnN0EtmRGYdDphU$6803d35904ca054bc23232df87abd76ec9fe75eae8fe21301146f8bcfc1649715a787e218cb2a7463ab1d11b4e0186cf0541144aaf554d022cd9fc9395b2cae8'),
--               --banana
--               ('Harriet788','scrypt:32768:8:1$LaSx68XLEuZ1TWJU$0aa3b35c461bcf8343554773d6a3957b7b22af7a902403b5f7e1574d42b4e7630959b483af7a5d22e3bc1659ccd6eb1209917c8537417fddc1e6960bb43a4b04'),
--               --carrot
--               ('HKojima','scrypt:32768:8:1$FdOgvhXqmAAY5465$192fa886bc701dd88b4b73be9ee356af23c83fc9918fcfa8cb40cbc65ff3c31f0d99ac02fd12f6c2b218ef8a518055b1391ef02a5456daa277711d7ee5c02a05'),
--               --date
--               ('MathieuCote','scrypt:32768:8:1$19yCXh84aS6I31Z3$9cf8bf32640359830b8bac6a8f8ea46ca4c6f78dbc607769ea887c9415bd7c8754dad12cdc41c9570fa849b3a26a0d55aedaca2f770ac7ea74342f5728686109');
--               --elderberry

-- DROP TABLE IF EXISTS Guesses;

-- CREATE TABLE Guesses (id INTEGER PRIMARY KEY AUTOINCREMENT,
--                          user_id INTEGER,
--                          date TEXT NOT NULL,
--                          score INTEGER,
--                          game TEXT NOT NULL,
--                          review TEXT NOT NULL);