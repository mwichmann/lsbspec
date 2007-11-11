<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [
<!ENTITY % funcprototype.element "IGNORE">
<!ELEMENT FuncPrototype - O (FuncDef, (Void | (ParamDef*, VarArgs?)))>


<!ENTITY % entities SYSTEM "SPECSRC/entities">
<!ENTITY contents SYSTEM "contents">

<!ENTITY specversion "LSBVERSION">
<!ENTITY spectitle "Linux Standard Base Specification">

%entities;

<!ENTITY copyrightyear "2007">
<!ENTITY copyrightholder "Linux Foundation">
<!ENTITY license "&fdl;">
<!ENTITY doccopyright SYSTEM "SPECSRC/matters/fsgcopyright.sgml">

]>

<BOOK>
<BOOKINFO>
<TITLE>&spectitle &specversion</TITLE>
<COPYRIGHT>
<YEAR>&copyrightyear;</YEAR>
<HOLDER>&copyrightholder;</HOLDER>
</COPYRIGHT>
&legal;
</BOOKINFO>

&lsb-generic-intro;
&contents;
&lsb-generic-appA;
&lsb-generic-appB;
&fdl;
</BOOK>
