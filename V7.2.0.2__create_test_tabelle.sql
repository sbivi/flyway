CREATE TABLE `test_table` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`pvsnrEncrypted` VARCHAR(255) NULL DEFAULT NULL COMMENT 'verschlüsselte Kundennummer',
	`pvsnr` VARCHAR(8) NULL DEFAULT NULL COMMENT 'Kundennummer aus dem Formular',
	`email` VARCHAR(255) NULL DEFAULT NULL COMMENT 'E-Mailadresse aus dem Formular',
	`name` VARCHAR(255) NULL DEFAULT NULL COMMENT 'Nachname des Kunden aus dem Formular',
	`postleitzahl` VARCHAR(5) NULL DEFAULT NULL COMMENT 'Postleitzahl des Kunden aus dem Formular',
	`token` VARCHAR(255) NULL DEFAULT NULL COMMENT 'Token zur Validierung des Anwenders (Double-Opt-in Verfahren)',
	`validiert` TINYINT(1) NOT NULL DEFAULT '0' COMMENT 'Daten wurden erfolgreich validiert (1=ja)',
	`aufrufsart` CHAR(2) NULL DEFAULT NULL COMMENT 'Arten: (Q)R-Code, (K)undendaten, (QV)QR-Code verändert',
	`changed_date` DATETIME NULL DEFAULT NULL,
	`created_date` DATETIME NOT NULL,
	`version` BIGINT(20) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `pvsnr` (`pvsnr`)
)
AUTO_INCREMENT=1
;