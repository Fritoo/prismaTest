CREATE DATABASE IF NOT EXISTS `testDatabase`;
CREATE USER IF NOT EXISTS 'testUser'@'localhost' 
	IDENTIFIED WITH mysql_native_password BY '1234';

GRANT ALL PRIVILEGES ON testDatabase.* TO 'testUser'@'localhost';

USE testDatabase;

CREATE TABLE IF NOT EXISTS `photos` (
	id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
	`localIdentifier` varchar(255) UNIQUE NOT NULL,
	`backupDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`url` varchar(255) NOT NULL,
	`creationDate` varchar(56) NOT NULL DEFAULT '',
	`mediaType` varchar(32)  DEFAULT NULL,
	`mediaSubtype` VARCHAR(32) DEFAULT NULL,
	`size` int(11) DEFAULT NULL,
	`fileExtension` VARCHAR(11) DEFAULT NULL,
	`uniformTypeIdentifier` VARCHAR(255) DEFAULT NULL
) 
