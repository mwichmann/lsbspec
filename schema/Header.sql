#
# Table structure for table 'Header'
#
DROP TABLE IF EXISTS Header;
CREATE TABLE Header (
  Hid int(10) DEFAULT '0' NOT NULL auto_increment,
  Hname varchar(60) DEFAULT '' NOT NULL,
  PRIMARY KEY (Hid)
);


