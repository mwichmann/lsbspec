#! /bin/sh

# $Progeny: man-wrapper.sh,v 1.1 2002/01/31 20:43:55 epg Exp $

doctools=$(dirname $0)
refentry=$1

cat <<EOF
<!doctype refentry PUBLIC "-//OASIS//DTD DocBook V4.1//EN" 
[
<!ENTITY % progeny-entity SYSTEM "${doctools}/progeny.ent">
%progeny-entity;

<!ENTITY myrefentry SYSTEM "${refentry}">
]>

<refentry>
&myrefentry;
</refentry>
EOF
