#
# Table structure for table 'Headers'
#
DROP TABLE IF EXISTS Headers;
CREATE TABLE Headers (
  Hid int(10) DEFAULT '0' NOT NULL auto_increment,
  Hname varchar(60) DEFAULT '' NOT NULL,
  PRIMARY KEY (Hid)
);


