#!/bin/sh
#
#	Linux Standard Base, http://www.linuxbase.org/
#	George Kraft IV, gk4@us.ibm.com, 02/23/2000
#
#	Download & install the necessary docbook RPMs to build the LSB spec.
#

RUNSOCKS=runsocks # FTP through the firewall
DIR=rh62b

if [ ! -d $DIR ]; then
	mkdir $DIR
fi

if [  -d $DIR ]; then
	cd $DIR
fi

RPMS="\
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/sgml-common-0.1-7.noarch.rpm \
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/docbook-3.1-3.noarch.rpm \
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/tetex-fonts-1.0.6-8.i386.rpm \
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/tetex-1.0.6-8.i386.rpm \
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/tetex-latex-1.0.6-8.i386.rpm \
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/emacs-20.5-4.i386.rpm \
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/psgml-1.2.1-4.noarch.rpm \
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/jade-1.2.1-8.i386.rpm \
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/jadetex-2.7-2.i386.rpm \
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/stylesheets-0.13rh-1.noarch.rpm \
ftp://ftp.valinux.com/pub/mirrors/redhat/redhat-6.2beta/i386/RedHat/RPMS/sgml-tools-1.0.9-3.i386.rpm \
"

for F in $RPMS; do
	if [ ! -f $(basename $F) ]; then
		$RUNSOCKS ncftpget $F
	fi
done

for F in $RPMS; do
	echo Installing $(basename $F)
	rpm -i $(basename $F)
done

# EOF
