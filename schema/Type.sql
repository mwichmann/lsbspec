#
# Table structure for table 'Types'
#
DROP TABLE IF EXISTS Type;
CREATE TABLE Type (
  Tid int(10) DEFAULT '0' NOT NULL auto_increment,
  Tname varchar(60) DEFAULT '' NOT NULL,
  Ttype char(1) DEFAULT '' NOT NULL,
  Tsize int(10) DEFAULT '0' NOT NULL,
  Tbasetype int(10),
  Theadergroup int(10) DEFAULT '0' NOT NULL,
  Tcomment varchar(60),
  PRIMARY KEY (Tid),
  UNIQUE k_Tname (Tname(20))
);

