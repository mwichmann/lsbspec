#
# Table structure for table 'ArchInt'
#
DROP TABLE IF EXISTS ArchInt;
CREATE TABLE ArchInt (
  AIarch int(11) DEFAULT '0' NOT NULL,
  AIint int(11) DEFAULT '0' NOT NULL,
  UNIQUE k_AI (AIarch,AIint)
);

