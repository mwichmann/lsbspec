<!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN" [

<!ENTITY % funcprototype.element "IGNORE">
<!ELEMENT FuncPrototype - O (FuncDef, (Void | (ParamDef*, VarArgs?)))>

<!ENTITY % entities SYSTEM "../../entities">
<!ENTITY elf-intro SYSTEM "../../ELF/generic/intro/elfintro.sgml">
<!ENTITY elf-contents SYSTEM "../../book/ELF-generic/contents">
<!ENTITY lsb-contents SYSTEM "../../book/LSB-generic/contents">
<!ENTITY packaging-contents SYSTEM "../../book/Packaging-generic/contents">

<!ENTITY specversion "LSBVERSION">
<!ENTITY spectitle "Linux Standard Base Core Specification">

%entities;

<!ENTITY % iso "IGNORE">
<![%iso;[
<!ENTITY % fsg "IGNORE">
<!ENTITY copyrightyear "2006">
<!ENTITY copyrightholder "ISO/IEC">
<!ENTITY license "">
<!ENTITY doccopyright SYSTEM "../../matters/isocopyright.sgml">
]]>
<!ENTITY % fsg "INCLUDE">
<![%fsg;[
<!ENTITY copyrightyear "2005">
<!ENTITY copyrightholder "Free Standards Group">
<!ENTITY license "&fdl;">
<!ENTITY doccopyright SYSTEM "../../matters/fsgcopyright.sgml">
]]>
]>

<BOOK>
<BOOKINFO>
<TITLE>&spectitle; &specversion;</TITLE>
<EDITION>&ISOSTD-1;:&copyrightyear;(E)</EDITION>
<COPYRIGHT>
<YEAR>&copyrightyear;</YEAR>
<HOLDER>&copyrightholder;</HOLDER>
</COPYRIGHT>
&legal;
</BOOKINFO>


&lsb-generic-intro;
<PART ID=ELF-GENERIC>
<TITLE>Executable And Linking Format (ELF)</TITLE>
&elf-intro;
&elf-contents;
</PART>
&lsb-contents;
&packaging-contents;
&lsb-generic-appA;
&lsb-generic-appB;
&license;

</BOOK>
