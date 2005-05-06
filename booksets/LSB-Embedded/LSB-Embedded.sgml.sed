<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [
<!ENTITY % funcprototype.element "IGNORE">
<!ELEMENT FuncPrototype - O (FuncDef, (Void | (ParamDef*, VarArgs?)))>


<!entity % entities SYSTEM "../../entities">
<!entity contents SYSTEM "../../book/LSB-generic/contents">
<!entity elf-contents SYSTEM "../../book/ELF-generic/contents">
<!entity packaging-contents SYSTEM "../../book/Packaging/contents">
<!entity desktop-contents SYSTEM "../../book/Desktop/contents">

<!entity specversion "LSBVERSION">
<!entity spectitle "Linux Standard Base Embedded Specification">

%entities;

]>

<BOOK>
<BOOKINFO>
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
&elf-contents;
&contents;
&fdl;

</BOOK>
