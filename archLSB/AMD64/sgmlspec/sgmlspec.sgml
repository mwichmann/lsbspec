<part id="toclsbsgml">
<title>LSB Addendum: SGML & XML</title>
<chapter id="lsbsgml">
<title>LSB Addendum: SGML & XML</title>

<abstract>
<para>
Enclosed is a proposal, submitted by Eric Bischoff,  for the LSB regarding
SGML & XML. A more general proposal has been submitted to the Filesystem
Heirarchy Specification workgroup to be adopted. It is proposed that the
enclosed detailed draft be adopted as an addendum to the LSB written
specification.  A new Sourceforge CVS module would be created so this
document would be initially maintained separately from the ongoing API/ABI
written specification.
</para>
</abstract>

<sect1 id="sgmlintro">
<title>Introduction</title>

<para>
In a normalisation effort, about thirty people, including packagers
of some Linux distributions, and developers of SGML related tools such
as the SGML-Tools and DocBook Tools project, discussed informally and
agreed on a series of recommendations that will be submitted as a draft
to the Linux Standard Base project. A reference implementation will also
be done as part of the DocBook-tools project.
</para>
<para>
This document's redaction started as an attempt to end the nightmare
of DocBook distributions, but it appeared quickly to be generic enough
to apply to any SGML or XML DTD. Explanations about the reasons
for all our choices are given in a separate document.
</para>

<para>
Following a list of definitions, you will find a set of recommendations:
<simplelist>
  <member>R001--SGML Directory layout</member>
  <member>R002--DocBook Directory layout (standard names for directories, their contents)</member>
  <member>R003--Open Catalogs usage for SGML</member>
  <member>R004--Open Catalogs usage for DocBook (for the centralized catalogs and for the individual catalogs)</member>
  <member>R005--Configuration files (other <filename class="directory">/etc/sgml</filename> files)</member>
  <member>R006--ISO-entities (file names and <acronym>FPI</acronym> declarations)</member>
  <member>R007--Packages (how to package this type of material)</member>
</simplelist>
</para>

<para>
We'd like to thank the following people who have participated intensively
in this normalisation effort:
<itemizedlist>
  <listitem>
  <para>Camille Begnis (MandrakeSoft) <email>camille@mandrakesoft.com</email></para>
  </listitem>
  <listitem>
  <para>Eric Bischoff (Caldera, KDE) <email>eric@caldera.de</email></para>
  </listitem>
  <listitem>
  <para>Karl Eichwalder (SuSE) <email>ke@suse.de</email></para>
  </listitem>
  <listitem>
  <para>Mark Galassi (DocBook-tools) <email>rosalia@lanl.gov</email></para>
  </listitem>
  <listitem>
  <para>Jorge Godoy (Conectiva) <email>godoy@conectiva.com.br</email></para>
  </listitem>
  <listitem>
  <para>Cees de Groot (SGML-tools) <email>cg@cdegroot.com</email></para>
  </listitem>
  <listitem>
  <para>Jochem Huhmann <email>joh@revier.com</email></para>
  </listitem>
  <listitem>
  <para>David Mason (RedHat, Gnome) <email>dcm@redhat.com</email></para>
  </listitem>
  <listitem>
  <para>Manoj Srivastava (Debian) <email>srivasta@datasync.com</email></para>
  </listitem>
  <listitem>
  <para>Norman Walsh (Sun, OASIS) <email>ndw@nwalsh.com</email></para>
  </listitem>
</itemizedlist>
and all the other many people that helped with their own contribution.
</para>

<glossary id="sgmlgloss">
<title>Definitions</title>

<para>
In the scope of this document, we will use the following terms:
</para>

  <glossentry><glossterm>Centralized catalog</glossterm>
  <glossdef>
  <para>
       An Open Catalog that includes only comments and CATALOG
       directives pointing to other catalogs (or DELEGATE directives
       if supported).
  </para>
  </glossdef>
  </glossentry>

  <glossentry><glossterm>DTD</glossterm>
  <glossdef>
  <para>
        A Document Type Definition. It specifies the syntax used in
        documents. Examples of well-known DTDs include: HTML, XHTML,
        DocBook, TEI, MathML, MusicML, etc. SGML and XML give a
        framework for writing DTDs.
  </para>
  </glossdef>
  </glossentry>

  <glossentry><glossterm>Open Catalog</glossterm>
  <glossdef>
  <para>
       A set of directives defined by the OASIS TR9401 Catalog, mostly used 
       for defining equivalences between <acronym>FPI</acronym>s 
       (Formal Public Identifiers) and real
       file names (see TR9401:1997 on <ulink url="http://www.oasis-open.org">http://www.oasis-open.org</ulink>).
  </para>
  </glossdef>
  </glossentry>

  <glossentry><glossterm>Package</glossterm>
  <glossdef>
  <para>
       A set of files assembled together for distribution. It includes
       RPMs, DEBs and any other kind of packaging system.
  </para>
  </glossdef>
  </glossentry>

  <glossentry><glossterm>SGML/XML computer program</glossterm>
  <glossdef>
  <para>
       Any program used to view, edit, convert, use or apply any
       kind of treatment to a document written using a SGML or XML DTD
       (Document Type Definition). This includes command-line utilities
       as well as GUI-based applications.
  </para>
  </glossdef>
  </glossentry>

  <glossentry><glossterm>Style sheets</glossterm>
  <glossdef>
  <para>
       Declarations or scripts that define formatting during some
       conversion or edition process of a SGML or XML document.
       They can be written in any style sheets language: CSS,
       DSSSL, FOSIs, XSL, ...
  </para>
  </glossdef>
  </glossentry>

  <glossentry><glossterm>Super catalog</glossterm>
  <glossdef>
  <para>
       An Open Catalog pointing to all the centralized catalogs.
  </para>
  </glossdef>
  </glossentry>

</glossary>
</sect1>

<sect1 id="sgmlR001">
<title>R001--SGML Directory layout</title>

<variablelist>
<varlistentry>
<term><filename class="directory">/etc/sgml/</filename></term>
<listitem>
<para>
     Configuration files, including centralized catalogs.
</para>
<para>
     It includes:
<simplelist>
  <member><filename>*.conf</filename>: generic configuration files</member>
  <member><filename>sgml-docbook.cat</filename>, <filename>tei.cat</filename>, ...: DTD-specific centralized catalogs</member>
  <member><filename>catalog</filename>: the super catalog</member>
  <member>...</member>
</simplelist>
</para>
</listitem>
</varlistentry>

<varlistentry>
<term><filename class="directory">/usr/share/sgml/</filename></term>
<listitem>
<para>
     Architecture-independent files used by SGML/XML computer programs:
     Open Catalogs (not the centralized ones), DTDs, entities, style sheets,
     and other declarative files, if any.
</para>

<para>
     It is organized into DTD-specific subdirectories:
<simplelist>
  <member><filename class="directory">docbook/</filename></member>
  <member><filename class="directory">tei/</filename></member>
  <member><filename class="directory">html/</filename></member>
  <member>...</member>
</simplelist>
</para>
<para>
Data that are not DTD-specific go directly into
<filename class="directory">/usr/share/sgml</filename>,
preferably under their own directory.
</para>
</listitem>
</varlistentry>
</variablelist>

<para>
At least for the present, all XML documents are also SGML
documents, so it seems unnecessary to create 
<filename class="directory">/usr/share/xml</filename> and <filename class="directory">/etc/xml</filename>.
</para>
</sect1>


<sect1 id="sgmlR002">
<title>R002--DocBook Directory layout</title>
<para>
This is the layout for a Jade-based or an Openjade-based system.
Systems based on other SGML/XML computer programs can use this
layout as well.
</para>

<para>
The lower level directories are package-related. They are
also version-numbered.
</para>

<variablelist>
  <varlistentry>
    <term><filename class="directory">/usr/share/sgml/</filename></term>
    <listitem>
    <para>
      <simplelist>
        <member><filename class="directory">sgml-iso-entities-8879.1986/</filename></member>
        <member><filename class="directory">xml-iso-entities-8879.1986/</filename></member>
        <member>(the ISO entities)</member>
        <member><filename class="directory">jade-1.2.1/</filename></member>
        <member><filename class="directory">openjade-1.3/</filename></member>
        <member>...</member>
        <member>(the parsers and DSSSL engines architecture-independent files)</member>
        <member>...</member>
      </simplelist>
    </para>
    </listitem>
  </varlistentry>

  <varlistentry>
    <term><filename class="directory">/usr/share/sgml/docbook/</filename></term>
    <listitem>
    <para>
      <simplelist>
        <member><filename class="directory">sgml-dtd-3.1/</filename></member>
        <member><filename class="directory">sgml-dtd-4.0/</filename></member>
        <member><filename class="directory">xml-dtd-4.0/</filename> (the DocBook DTD)</member>
        <member><filename class="directory">dsssl-stylesheets-1.54/</filename></member>
        <member><filename class="directory">xsl-stylesheets-1.12/</filename> (DSSSL style sheets for DocBook)</member>
        <member><filename class="directory">kde-customization-0.1/</filename></member>
        <member><filename class="directory">gnome-customization-0.1/</filename></member>
        <member><filename class="directory">ldp-customization-0.1/</filename> (customized DTDs, entities and style sheets for the various projects)</member>
        <member>...</member>
      </simplelist>
      (version number examples are arbitrary in this list)
    </para>
    </listitem>
  </varlistentry>
</variablelist>

</sect1>

<sect1 id="sgmlR003">
<title>R003--Open Catalog usage for SGML</title>
<para>
Open Catalog files include:
<itemizedlist>
  <listitem>
    <para>the individual catalogs provided with the DTDs, sylesheets or entities.</para>
  </listitem>
  <listitem>
    <para>
    the centralized catalogs used as central source of information
    that is specific to docbook, tei, or any other DTD
    </para>
  </listitem>
  <listitem>
    <para>
    the super catalog that references indirectly all the available
    catalog files
    </para>
  </listitem>
</itemizedlist>

</para>
<para>
The centralized catalog file names must end in .cat and reside in
<filename class="directory">/etc/sgml</filename>.
They contain only comments and CATALOG directives pointing
to the <quote>real</quote> catalogs, like:
<programlisting>
     -- sample contents of /etc/sgml/foo-1.05.cat --
     CATALOG /usr/share/sgml/foo/xml-dtd-1.05/catalog
     CATALOG /usr/share/sgml/foo/xsl-stylesheets-0.1/catalog
</programlisting>

One can use DELEGATE instead of CATALOG if this directive is known to
be supported.

</para>
<para>
The centralized catalogs are DTD-specific and can be version-numbered.

</para>
<para>
Here are examples of such centralized catalogs:

<variablelist>
  <varlistentry>
  <term><filename class="directory">/etc/sgml/</filename></term>
  <listitem>
  <para>
    <simplelist>
       <member><filename>sgml-docbook.cat</filename></member>
       <member><filename>sgml-docbook-3.1.cat</filename></member>
       <member><filename>sgml-docbook-4.0.cat</filename></member>
       <member><filename>xml-docbook-4.0.cat</filename></member>
    </simplelist>
  </para>
  </listitem>
  </varlistentry>
</variablelist>

Version-less centralized catalogs could be only symbolic links to the
latest version (or to any other older version).

</para>
<para>
<filename class="directory">/etc/sgml/catalog</filename>
is the <quote>super catalog</quote>. It contains CATALOG pointers
to all the centralized catalogs:

<programlisting>
     -- sample contents of /etc/sgml/catalog --
     CATALOG /etc/sgml/sgml-docbook.cat
     CATALOG /etc/sgml/xhtml.cat
     CATALOG /etc/sgml/mathml.cat
</programlisting>

One can use DELEGATE instead of CATALOG if this directive is known to
be supported.

</para>
<para>
It should not point to centralized catalogs that are merely symbolic links
and therefore are already mentioned.

</para>
<para>
Users should be able to define their own centralized catalogs and
their own super catalog in their home directories:
<simplelist>
     <member><filename><envar>$HOME</envar>/.sgml-docbook.cat</filename></member>
     <member><filename><envar>$HOME</envar>/.catalog</filename></member>
</simplelist>

</para>
<para>
The SGML/XML computer programs are not supposed to use centralized
catalogs, although their use is strongly encouraged: if other
mechanisms allow one to locate the real catalogs, they can be used as
well. However distribution packagers should always take care of feeding
the right entries into the super catalog and the centralized catalogs. The
interface for a script named <command>install-catalog</command>
that does these maintenance tasks is described here:

<cmdsynopsis>
  <command>install-catalog</command>
  <group><arg>--add</arg><arg>--remove</arg></group>
  <arg><replaceable>centralized_catalog</replaceable></arg>
  <arg><replaceable>ordinary_catalog</replaceable></arg>
</cmdsynopsis>

Example:

<informalexample>
<screen>
bash# install-catalog --add \
  /etc/sgml/sgml-docbook-3.1 \
  /usr/share/sgml/docbook/dsssl-stylesheets-1.54/catalog
</screen>
</informalexample>

The other catalogs should be placed in subdirectories of <filename class="directory">/usr/share/sgml</filename>.
They should all be named <filename>catalog</filename>. They are the ones who do the real
work of mapping the <acronym>FPI</acronym>s to file names (among other tasks).


</para>
</sect1>

<sect1 id="sgmlR004">
<title>R004--Open Catalog usage for DocBook</title>
<para>
This recomendation is merely a consequence of the preceeding
recomendations.
</para>
<para>
For a distribution of DocBook based on Jade or OpenJade, we suggest the
following names. Again, other SGML or XML DTDs and other computer
programs can use a similar structure.

<variablelist>
  <varlistentry>
    <term><filename class="directory">/etc/sgml/</filename></term>
    <listitem>
    <para>
      <simplelist>
        <member><filename>sgml-docbook.cat</filename></member>
        <member><filename>xml-docbook.cat</filename></member>
        <member><filename>sgml-docbook-3.0.cat</filename></member>
        <member><filename>sgml-docbook-3.1.cat</filename></member>
        <member><filename>sgml-docbook-4.0.cat</filename></member>
        <member><filename>xml-docbook-4.0.cat</filename></member>
      </simplelist>
    </para>
    </listitem>
  </varlistentry>
</variablelist>

<simplelist>
  <member><filename>/usr/share/sgml/sgml-iso-entities-8879.1986/catalog</filename></member>
  <member><filename>/usr/share/sgml/xml-iso-entities-8879.1986/catalog</filename></member>

  <member><filename>/usr/share/sgml/jade-1.2.1/catalog</filename></member>

  <member><filename>/usr/share/sgml/openjade-1.0/catalog</filename></member>

  <member><filename>/usr/share/sgml/docbook/sgml-dtd-3.0/catalog</filename></member>
  <member><filename>/usr/share/sgml/docbook/sgml-dtd-3.1/catalog</filename></member>
  <member><filename>/usr/share/sgml/docbook/sgml-dtd-4.0/catalog</filename></member>
  <member><filename>/usr/share/sgml/docbook/xsl-dtd-4.0/catalog</filename></member>

  <member><filename>/usr/share/sgml/docbook/dsssl-stylesheets-1.54/catalog</filename></member>
  <member><filename>/usr/share/sgml/docbook/xsl-stylesheets-1.12/catalog</filename></member>
</simplelist>


</para>
</sect1>

<sect1 id="sgmlR005">
<title>R005--Configuration files</title>
<para>

Other configuration files may also reside in <filename class="directory">/etc/sgml</filename>, either
DTD-specific or program-specific. Their name should end in <literal>.conf</literal> and
they should follow ordinary rules for files residing in <filename class="directory">/etc</filename> as defined by
LSB. The user should be able to redefine them in his/her home directory.

Their syntax and purpose is not defined in this document.


</para>
</sect1>

<sect1 id="sgmlR006">
<title>R006--Iso-entities</title>
<para>

The file names should be fixed to:
<simplelist type="horiz">
  <member><filename>ISOamsa.ent</filename></member>
  <member><filename>ISOamsb.ent</filename></member>
  <member>...</member>
</simplelist>

</para>
<para>
The identifiers should be fixed to:
     <literal>"ISO 8879:1986//ENTITIES Added Math Symbols: Arrow Relations//EN"</literal>

</para>
<para>
During the transitory period, symbolic links and duplicate declarations will
be allowed as a means of preserving compatibility with previous naming
schemes.


</para>
</sect1>

<sect1 id="sgmlR007">
<title>R007--Packages</title>
<para>

C programs can get compiled with any version of a given compiler. SGML
documents can't use any version of a given DTD. They need the
corresponding DTD to reside on the same system, or at least to be
reachable. The various versions of a given DTD in turn may imply certain
versions of the style sheets.
</para>
<para>
This leads to a unusual situation where the old DTDs and style sheets
should not be replaced during a package update.
</para>
<para>
We would like to make distribution packagers aware of the suggested solutions.
They may choose to:
<itemizedlist>
  <listitem>
  <para>put the version number in the package name field
   (example: <filename>docbook-dtd-3.1-1.0.rpm</filename>)
  </para>
  </listitem>
  <listitem>
  <para>not put the version number and use subpackages for each version
  </para>
  </listitem>
</itemizedlist>

</para>
</sect1>
</chapter>
</part>
