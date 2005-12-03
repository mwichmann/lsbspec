<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [
<!ENTITY % funcprototype.element "IGNORE">
<!ELEMENT FuncPrototype - O (FuncDef, (Void | (ParamDef*, VarArgs?)))>


<!entity % entities SYSTEM "../../entities">
<!entity elf-intro SYSTEM "../../ELF/generic/intro/elfintro.sgml">
<!entity elf-contents SYSTEM "../../book/ELF-generic/contents">
<!entity lsb-contents SYSTEM "../../book/LSB-generic/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging/contents">
<!entity desktop-contents SYSTEM "../../book/Desktop/contents">

<!entity specversion "LSBVERSION">
<!entity spectitle "Linux Standard Base Embedded Specification">

%entities;

]>

<BOOK>
<BOOKINFO>
<EDITION>Embedded Specification</EDITION>
<TITLE>&spectitle &specversion</TITLE>
<COPYRIGHT>
<YEAR>2000</YEAR>
<YEAR>2001</YEAR>
<YEAR>2002</YEAR>
<YEAR>2003</YEAR>
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
