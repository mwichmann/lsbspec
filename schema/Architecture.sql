#
# Table structure for table 'Architecture'
#
DROP TABLE IF EXISTS Architecture;
CREATE TABLE Architecture (
  Aid int(10) DEFAULT '0' NOT NULL auto_increment,
  Aname varchar(60) DEFAULT '' NOT NULL,
  Aspecification varchar(60) DEFAULT '' NOT NULL,
  Asymbol varchar(60) DEFAULT '' NOT NULL,
  PRIMARY KEY (Aid)
);

INSERT INTO Architecture VALUES (1,'IA32','http://www.intel.com/','__i386__');
INSERT INTO Architecture VALUES (2,'IA64','http://www.intel.com','__ia64__');

