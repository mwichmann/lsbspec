#
# Table structure for table 'Version'
#
DROP TABLE IF EXISTS Version;
CREATE TABLE Version (
  Vid int(10) DEFAULT '0' NOT NULL auto_increment,
  Vname varchar(60) DEFAULT '' NOT NULL,
  PRIMARY KEY (Vid)
);


