CREATE TEMPORARY TABLE table (x UInt8);
INSERT INTO `table` FORMAT Values (1);
INSERT INTO TABLE `table` FORMAT Values (2);
INSERT INTO TABLE table FORMAT Values (3);
