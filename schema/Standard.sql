#
# Table structure for table 'Standard'
#
DROP TABLE IF EXISTS Standard;
CREATE TABLE Standard (
  Sid tinyint(3) DEFAULT '0' NOT NULL auto_increment,
  Sname varchar(60) DEFAULT '' NOT NULL,
  Sfull varchar(120),
  Surl varchar(60),
  PRIMARY KEY (Sid),
  UNIQUE k_Sname (Sname)
);

