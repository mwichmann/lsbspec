#
# Table structure for table 'Interface'
#
DROP TABLE IF EXISTS Interface;
CREATE TABLE Interface (
  Iid int(10) DEFAULT '0' NOT NULL auto_increment,
  Iname varchar(60) DEFAULT '' NOT NULL,
  Istatus enum('Included','Excluded','Unknown') DEFAULT 'Unknown' NOT NULL,
  Itype enum('Function','Data','Unknown') DEFAULT 'Unknown' NOT NULL,
  Istandard int(10) DEFAULT '0' NOT NULL,
  Iheader int(10) DEFAULT '0' NOT NULL,
  Ilibgroup int(10) DEFAULT '0' NOT NULL,
  Ireturn int(11) DEFAULT '0' NOT NULL,
  Iversion int(11) DEFAULT '0' NOT NULL,
  Idocumented enum('Yes','No','Unknown') DEFAULT 'Unknown' NOT NULL,
  Itested enum('Yes','No','Unknown') DEFAULT 'Unknown' NOT NULL,
  PRIMARY KEY (Iid)
);

