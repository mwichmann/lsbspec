#
# Table structure for table 'Parameter'
#
DROP TABLE IF EXISTS Parameter;
CREATE TABLE Parameter (
  Pint int(11) DEFAULT '0' NOT NULL,
  Ppos int(11) DEFAULT '0' NOT NULL,
  Ptype int(11) DEFAULT '0' NOT NULL,
  KEY Pint (Pint)
);

