#
# Table structure for table 'Library'
#
DROP TABLE IF EXISTS Library;
CREATE TABLE Library (
  Lid int(10) DEFAULT '0' NOT NULL auto_increment,
  Lname varchar(60) DEFAULT '' NOT NULL,
  Lrunname varchar(60) DEFAULT '' NOT NULL,
  Lstd enum('Yes','No','Unknown') DEFAULT 'Unknown' NOT NULL,
  PRIMARY KEY (Lid)
);

