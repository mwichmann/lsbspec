<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!ENTITY % funcprototype.element "IGNORE">
<!ELEMENT FuncPrototype - O (FuncDef, (Void | (ParamDef*, VarArgs?)))>

<!ENTITY % entities SYSTEM "../../entities">
<!ENTITY elf-intro SYSTEM "../../ELF/generic/intro/elfintro.sgml">
<!ENTITY elf-contents SYSTEM "../../book/ELF-generic/contents">
<!ENTITY lsb-contents SYSTEM "../../book/LSB-generic/contents">
<!ENTITY packaging-contents SYSTEM "../../book/Packaging/contents">

<!ENTITY specversion "LSBVERSION">
<!ENTITY spectitle "Linux Standard Base Embedded Specification">

%entities;

<!ENTITY copyrightyear "2005">
<!ENTITY copyrightholder "Free Standards Group">
<!ENTITY license "&fdl;">
<!ENTITY doccopyright SYSTEM "../../matters/fsgcopyright.sgml">

]>

<BOOK>
<BOOKINFO>
<EDITION>LSB Embedded Specification</EDITION>
<TITLE>&spectitle; &specversion;</TITLE>
<COPYRIGHT>
<YEAR>2000</YEAR>
<YEAR>2001</YEAR>
<YEAR>2002</YEAR>
<YEAR>2003</YEAR>
<YEAR>2004</YEAR>
<YEAR>2005</YEAR>
<YEAR>2006</YEAR>
<HOLDER>Free Standards Group</HOLDER>
</COPYRIGHT>
&legal;
</BOOKINFO>

&lsb-generic-intro;
<PART ID=ELF-Embedded>
<TITLE>Executable and Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&lsb-generic-appA;
&lsb-generic-appB;
&fdl;

</BOOK>
