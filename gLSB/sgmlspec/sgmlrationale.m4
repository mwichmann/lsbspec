<chapter id="sgmloverview">
<title>LSB Addendum: SGML & XML Overview</title>
<abstract>
<para>
This document explains the rationale for the recommendations to LSB about DocBook.
The actual recommendations are presented in a separate document.
</para>
</abstract>

<sect1 id="sgmloverintro">
<title>Introduction</title>
<para>
<comment>This paragraph is counter-productive; what you're really saying is
"Here's my new-born baby, it almost killed me (or my wife) to deliver him,
now how cute do you think he is?". So of course you won't get good feedback
with this paragraph; you're actively dissuading it.</comment>
There are hundreds of man-hours behind those recommendations. They really
costed blood, sweat and tears. Each line was discussed many times and
the global architecture changed quite often. We really tried to hear
what everyone add to say. So we would like to encourage LSB in being
very careful if they want to modify them.
</para>
<para>
The general philosophy was to keep the <quote>historical</quote> choices everywhere
it had no consequences, and the <quote>best</quote> technical choice wherever it was
interesting. We have attempted to design a very simple but also powerful
architecture, in full respect of the <acronym>FHS</acronym> (File system Hierarchy Standard).
</para>
<para>
Another general principal of design was to think about the 
practical concerns of the user instead of the theory.
There were many models that would have been much more
intellectually satisfying--but they were all too complex for
everyday's use.
</para>
</sect1>

<sect1 id="overdefinitions">
<title>Definitions</title>
<para>
Why these definitions? Because we realized we were speaking about
different things with the same words. One example is <quote>SGML application</quote>:
it can refer either to a specific DTD, or to a computer program meant to
process some SGML or XML document. Both definitions are perfectly
correct, but to avoid confusion we chose the one we needed.
</para>
<para>
Some definitions like <quote>helper</quote>, <quote>backend</quote> and <quote>frontend</quote> are not even
necessary to read the rest of the document. We left them because we
needed them to provide a reference implementation.
</para>
</sect1>

<sect1 id="overR001">
<title>R001--SGML Directory layout</title>
<para>
Some existing projects place files in <filename class="directory">/usr/lib/sgml</filename>.
Other projects place files in <filename class="directory">/usr/local/share/sgml</filename>.
Strictly speaking, those files are neither libraries nor local to a system, so we chose 
<filename class="directory">/usr/share/sgml</filename>.
</para>
<para>
Some projects used to put centralized catalogs at the same place as the
other catalogs. Since they can be seen as system configuration files,
it was logical to centralize them within <filename class="directory">/etc</filename>.
</para>
<para>
One very hard question was: should we separate SGML from XML?
The relationship between one and the other is very strong, so we chose
to keep them at the same place in the directory tree. This allows,
for example, to have all DocBook stuff, both SGML and XML, at the very
same place, which is obviously practical.
</para>
<para>
While <filename class="directory">/usr/share/sgml</filename> does
not explicitly reflect this, we found that it was still better than
<filename class="directory">/usr/share/markup</filename> (what about TeX then?),
<filename class="directory">/usr/share/ml</filename>, or other proposals.
</para>
<para>
Why having fixed file paths while you could have got them from some
configuration variables, autoconf mechanisms, etc? First because it's
simpler: we wanted a very strong standard, given that the tools may
still use such configuration variables or autoconf mechanisms to adapt
to non-LSB platforms. We considered that a standard that does not specify
enough is somehow encouraging the most bizarre variations.
</para>
<para>
We chose a dtd-and-package-oriented architecture, instead of a
file-type-oriented structure.
</para>
<para>
This was probably the most controversial issue. The <quote>natural</quote> proposal for
SGML and XML specialists is to have the FPIs map almost letter-per-letter
in the directory names. However, this approach does not take profit of
the catalogs mechanism that allow to map FPIs into file paths.
</para>
<para>
A file-type-oriented architecture would have lead to a directory structure like:
<simplelist>
<member><filename class="directory">/usr/share/sgml/USA-DOD/DTD_Table_Model_951010/EN/</filename></member>
<member><filename class="directory">/usr/share/sgml/OASIS/DTD_DocBook_V3.1/EN/</filename></member>
<member><filename class="directory">/usr/share/sgml/OASIS/ELEMENTS_DocBook_Information_Pool_V3.1/EN/</filename></member>
<member><filename class="directory">/usr/share/sgml/OASIS/ELEMENTS_DocBook_Document_Hierarchy_V3.1/EN/</filename></member>
<member><filename class="directory">/usr/share/sgml/OASIS/ENTITIES_DocBook_Additional_General_Entities_V3.1/EN/</filename></member>
<member><filename class="directory">/usr/share/sgml/OASIS/ENTITIES_DocBook_Notations_V3.1/EN/</filename></member>
<member><filename class="directory">/usr/share/sgml/OASIS/ENTITIES_DocBook_Character_Entities_V3.1/EN/</filename></member>
</simplelist>
or something further away from the FPIs like:
<simplelist>
<member><filename class="directory">/usr/share/sgml/sgml-dtd/hal/docbook/2.4/</filename></member>
<member><filename class="directory">/usr/share/sgml/sgml-dtd/davenport/docbook/3.0/</filename></member>
<member><filename class="directory">/usr/share/sgml/sgml-dtd/davenport/docbook/3.0/</filename></member>
<member><filename class="directory">/usr/share/sgml/sgml-dtd/oasis/docbook/3.1/</filename></member>
<member><filename class="directory">/usr/share/sgml/xml-dtd/oasis/docbook/4.0/</filename></member>
<member><filename class="directory">/usr/share/sgml/dssl-stylesheets/nwalsh/docbook/3.1/</filename></member>
<member><filename class="directory">/usr/share/sgml/xsl-stylesheets/nwalsh/docbook/4.0/</filename></member>
<member><filename class="directory">/usr/share/sgml/sgml-dtd/ietf/html/2.0/</filename></member>
<member><filename class="directory">/usr/share/sgml/sgml-dtd/w3c/html/3.2/</filename></member>
</simplelist>

but in all cases, the files would have been spread according to their
file types in distant directories. We would probably have had entities
somewhere, stylesheets somewhere else, DTDs in a third place, and SGML
declarations in a fourth place. This would certainly have broken some
relative paths, and required more packaging work.
</para>
<para>
The user does not think in terms of file types, whereas SGML specialists
do. The user only thinks <quote>I want to do some MathML</quote> or <quote>I want to do some
XHTML</quote> or <quote>I want to do some TEI</quote>. This is why the basic unit is the DTD.
This DTD-centered approach does not mean that first level directories are
for DTDs. It just means that they hold everything related to a given DTD:
stylesheets, enterprise-wide customizations, etc...
</para>
</sect1>

<sect1 id="overR002">
<title>R002--DocBook Directory layout</title>
<para>
Maybe the document seems confused because it mixes recommendations
for SGML and XML with recommendations for DocBook. It would somehow
have been good to separate it into two documents. On the other hand,
this allowed to think in very practical terms.
</para>
<para>
There is only one lower level of directories. The directory names are
vaguely defined as holding one <quote>package</quote>. One advantage is that the
relation to any RPM or DEB package is very close. The other advantage
is that we have a very flat tree, thus easing both hacking, packaging
and maintenance by system administrators.
</para>
<para>
The lower level directories are version-numbered. This unusual naming
scheme is intended to permit documents that are written using several
versions of the same DTD to coexist on the same system.
</para>
</sect1>

<sect1 id="overR003">
<title>R003--Open Catalog usage for SGML</title>
<para>
Why focusing so much on catalogs in these recommendations? Because
they are the key to your directory structure and give a strong working
infrastructure that every SGML or XML tool can count on.
</para>
<para>
Open catalogs have very often been resented because they lead to problems
like conflicting SGMLDECLs. However, those problems do not appear if
you use them carefully. One of the keys is to avoid putting everything
in the same bag, and to have centralized catalogs that are specific to
a given DTD.
</para>
<para>
The fact that they are DTD-specific has a number of advantages:
<itemizedlist>
<listitem><para>avoid SGMLDECL conflicts without assuming DTDDECL or
DELEGATE support, which many tools do not yet support</para></listitem>
<listitem><para>avoid duplicate FPI declarations</para></listitem>
<listitem><para>allow to point to the right version of a given DTD
and to the corresponding entities and style sheets from only one place</para></listitem>
</itemizedlist>
</para>
<para>
When splitting your CATALOG pointers in one file per DTD, you also somehow
lose a global vision on all the catalogs that are installed on your
system. This is why we have introduced the super-catalog, which points to all
of the centralized catalogs on your system. It eases many scripting issues.
</para>
<para>
The super catalog may be used as a default centralized catalog, for
example when the DTD is not known, however it cannot be guaranteed that
there will not be any declaration conflicts if an application chooses to
use this functionality.
</para>
<para>
OASIS says that all the catalogs should be named <filename>CATALOG</filename> or
<filename>catalog</filename>. This was impossible to respect in <filename class="directory">/etc/sgml</filename>
where you will have the centralized catalogs, because many files cannot hold the same
name. Somehow it does not break those directives that much, because all
the ordinary catalogs on your system would still be named <filename>catalog</filename>.
</para>
<para>
We also chose to specify <filename>catalog</filename> rather than <filename>CATALOG</filename>,
while OASIS leaves the choice open. We considered that we should encourage one of both
versions, whichever it should be, because it is simpler for
everyone (scripts, maintainers, packagers, tools authors, ...). In this
respect, LSB implementations could be considered as conformant to OASIS,
while the contrary would not be true.
</para>
</sect1>


<sect1 id="overR004">
<title>R004--Open Catalog usage for DocBook</title>
<para>
Directories like the ones holding Jade's or OpenJade's declarations and
the ISO entities are on top level because they are not specific to any
given DTD and can be used by two or more of them.
</para>
<para>
Of course one may argue that Jade's or OpenJade's declarations contain the
document type definition of what DSSSL is. But again what is important
is the usage, not the formal definition, so it has no reason to go to
a <filename class="directory">dsssl/</filename> directory
(which would also encourage packagers to put the stylesheets in,
away from their DTD, which is not what we want).
</para>
</sect1>

<sect1 id="overR005">
<title>R005--Configuration files</title>
<para>
This recommendation is voluntarily vague, to ease as much as possible the
possibility to create SGML applications with not creativity restrictions
with respect to configuration files--the catalog layout solves anyhow
one of their major problems: find the files.
</para>
</sect1>


<sect1 id="overR006">
<title>R006--Iso-entities</title>
<para>
So far, the most confusion has been with the file names holding these
very basic character entities. We have seen the following naming schemes:
<itemizedlist>
<listitem><para><filename>ISOamsa</filename> <filename>ISOamsb</filename> ...</para></listitem>
<listitem><para><filename>ISOamsa.ent</filename> <filename>ISOamsb.ent</filename> ...</para></listitem>
<listitem><para><filename>iso-amsa</filename> <filename>iso-amsb</filename> ...</para></listitem>
<listitem><para><filename>iso-amsa.gml</filename> <filename>iso-amsb.gml</filename> ...</para></listitem>
</itemizedlist>
etc...
</para>
<para>
There was a similar confusion for the Formal public identifiers describing
these files. We have seen the following naming schemes:
<itemizedlist>
<listitem><para><literal>"ISO 8879:1986//ENTITIES Added Math Symbols: Arrow Relations//EN"</literal></para></listitem>
<listitem><para><literal>"ISO 8879-1986//ENTITIES Added Math Symbols: Arrow Relations//EN"</literal></para></listitem>
</itemizedlist>
</para>
<para>
Again, we chose to avoid deciding not to decide. We had a lot of feedback
from users suffering from this indecision. Even if technical workarounds
exist, we would like to encourage one of these forms to emerge.
</para>
</sect1>

<sect1 id="overR007">
<title>R007--Packages</title>
<para>
We are very far from providing inter-distribution compatibility at the
package level, and it is likely that someone will get broken dependencies
if he/she mixes packages coming from different distributions.
</para>
<para>
This document will not try to fix package names nor proposed dependency
declarations for DocBook distributions. We however wanted to point out
a problem that may be encountered when packaging SGML or XML: the package
numbering scheme.
</para>
</sect1>
</chapter>
