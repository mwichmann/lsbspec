#!/bin/sh
#
#	Copyright 2000, Free Standards Group, Inc.
#	George Kraft IV, gk4@us.ibm.com
#
#	Install DocBook and SGML tools for building the 
#	LSB written specification.
#
#	SYSTEM REQUIREMENTS:  RedHat 6.2
#

#REDHAT=/mnt/cdrom/RedHat/RPMS
REDHAT=ftp://download.sourceforge.net/pub/mirrors/redhat/redhat/redhat-6.2/i386/RedHat/RPMS/
SGMLLITE=http://download.sourceforge.net/sgmltools-lite/

RPMS="	\
$REDHAT/sgml-common-0.1-7.noarch.rpm \
$REDHAT/docbook-3.1-3.noarch.rpm \
$REDHAT/stylesheets-0.13rh-4.noarch.rpm \
$REDHAT/jade-1.2.1-9.i386.rpm \
$REDHAT/jadetex-2.7-2.i386.rpm \
$SGMLLITE/sgmltools-lite-3.0.1.cvs20000625-1.i386.rpm \
	"
##############################################################################
# fixiso
##############################################################################

fixiso() {

	D=/usr/lib/sgml

	for I in $D/ISO*; do
		F=$(basename $I)
		ln -fs $D/$F $D/iso-${F#ISO}.gml
	done
}

##############################################################################
# preinstall
##############################################################################

preinstall() {

	isredhat

	rpm -qa | egrep "docbook|stylesheet|jade|sgml"

	if [ $? -eq 0 ]; then
		echo "Please remove existing DocBook and SGML packages first."
		echo -n "Remove these packages now? [y/n] "
		read query
		if [ "$query" = "y" ]; then
			rpm -qa | egrep "docbook|stylesheet|jade|sgml" \
				| xargs rpm -e
			echo "Packages were removed."
		else
			exit 1
		fi
	fi
}

##############################################################################
# postinstall
##############################################################################

postinstall() {

	fixiso

	echo "Installation completed."
	echo "See man page for sgmltools for more details."
}

##############################################################################
# isredhat
##############################################################################

isredhat() {
	grep "6.2" /etc/redhat-release > /dev/null 2>&1
	if [ $? -ne 0 ]; then
		echo "Script written for Red Hat 6.2"
		exit 1
	fi
}

##############################################################################
# main
##############################################################################

preinstall

echo "Installing..."
rpm -i $RPMS
echo "Finished..."

postinstall

#EOF
