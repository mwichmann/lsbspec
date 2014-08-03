m4_dnl a little trick here. while the arch books have only one library table,
m4_dnl generic has the regular table, plus a table listing those names defined
m4_dnl in the arch books.  intro.m4 is generic now and just includes
m4_dnl libraries.sgml so glue together in the chapter by putting the end of
m4_dnl one table and the beginning of the next here, intro.m4 has the rest
m4_dnl of the wrapping.

m4_include(`glibraries.sgml')
</tgroup>
</table>
<table id='tbl-lsbgeneric-archlib'>
<title>Standard Library Names defined in the Architecture Specific Parts of &ISOSTD;</title>
<tgroup cols=2>
<thead>
<row>
<entry>Library</entry>
<entry>Runtime Name</entry>
</row>
</thead>
m4_include(`pslibs.sgml')

