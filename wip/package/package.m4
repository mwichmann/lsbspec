<PART ID="packagefmt">
<TITLE>Package Format and Installation</TITLE>

<CHAPTER ID=swinstall>
<TITLE>Software Installation</TITLE>
<PARA>
Applications should be provided in the RPM packaging format as defined in this specification.
<FOOTNOTE ID="pkg-1">
<PARA>
Some versions of RPM may produce packages which contain extensions or 
modifications to the RPM package format beyond what has been documented 
in this specification.  An LSB-conformant package must 
not contain any of these extensions, in order to assure interoperability
with the largest number of versions of RPM and packaging systems which
understand how to import RPM format packages.
</PARA>
</FOOTNOTE>
</PARA>
<PARA>
Distributions must provide a mechanism for installing applications in
this packaging format with some restrictions listed
below.
<FOOTNOTE ID="pkg-2">
<PARA>
The distribution itself may use a different packaging format for its
own packages, and of course it may use any available mechanism for 
installing the LSB-conformant packages.
</PARA>
</FOOTNOTE>
</PARA>



<SECT1 ID=pkgformat>
<TITLE>Package File Format</TITLE>
<PARA>
An RPM format file consists of 4 sections, the Lead, Signature, Header, and
the Archive. All values are stored in network byte order.
</PARA>
<TABLE>
<TITLE>RPM File Format</TITLE>
<TGROUP COLS=1>
<TBODY>
<ROW>
<ENTRY>Lead</ENTRY>
</ROW>
<ROW>
<ENTRY>Signature</ENTRY>
</ROW>
<ROW>
<ENTRY>Header</ENTRY>
</ROW>
<ROW>
<ENTRY>Archive</ENTRY>
</ROW>
</TBODY>
</TGROUP>
</TABLE>
<PARA>
These 4 sections must exist in the order specified. 
</PARA>
<PARA>
The lead section is used to identify the package file.
</PARA>
<PARA>
The signature section is used to verify the integrity, and optionally, the
authenticity of the majority of the package file.
</PARA>
<PARA>
The header section contains all available information about the package. Entries
such as the package's name, version, and file list, are contained in the header.
</PARA>
<PARA>
The archive section holds the actual files that comprise the package.
</PARA>
<SECT2>
<TITLE>Lead Section</TITLE>
<PARA>
</PARA>
<SCREEN>
struct rpmlead {
    unsigned char magic[4];
    unsigned char major, minor;
    short type;
    short archnum;
    char name[66];
    short osnum;
    short signature_type;
    char reserved[16];
} ;
</SCREEN>
<VARIABLELIST>
<VARLISTENTRY>
<TERM><STRUCTFIELD>magic</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying this file as an RPM format file. This value must be
"\355\253\356\333".
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>major</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the major version number of the file format version. This
value must be 3.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>minor</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the minor revision nuber of file format version. This value
must be 0.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>type</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the minor revision nuber of file format version. This value
must be 0.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>archnum</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the architecture for which this package is valid. This value
is specified in the architecture-specific LSB specification.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>name</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
A NULL terminated string that provides the package name. This name must
conform with the Package Naming section of this specification.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>osnum</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the Operating Systgem for which this package is valid. This
value must be 0x0100.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>signature_type</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the type of the signature used in the Signature part of the
file. This value must be 0x0500.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>reserved</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Reserved space. The value is undefined.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</SECT2>


<SECT2>
<TITLE>Header Structure</TITLE>
<PARA>
The Header structure is used for both the Signature and Header Sections. A
Header Structure consista of 3 parts, a Header record, followed by 1 or more
Index records, followed by 0 or more bytes of data associated with the Index
records.
</PARA>
<TABLE>
<TITLE>Signature Format</TITLE>
<TGROUP COLS=1>
<TBODY>
<ROW>
<ENTRY>Header Record</ENTRY>
</ROW>
<ROW>
<ENTRY>Array of Index Records</ENTRY>
</ROW>
<ROW>
<ENTRY>Store of Index Values</ENTRY>
</ROW>
</TBODY>
</TGROUP>
</TABLE>

<SECT3>
<TITLE>Header Record</TITLE>
<PARA>
</PARA>
<SCREEN>
struct rpmheader {
    unsigned char magic[3];
    unsigned char version;
    char reserved[4];
    int nindex;
    int hsize;
    } ;
</SCREEN>

<VARIABLELIST>
<VARLISTENTRY>
<TERM><STRUCTFIELD>magic</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying this record as an RPM header record. This value must be
"\216\255\350".
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>version</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying the version of this RPM header record. This value must be 1.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>reserved</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Reserved space. 
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>nindex</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
The number of Index Records that follow this Heaer Record. There must be at
least 1 Index Record.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>hsize</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
The size of the storage area for the data pointed to by the Index Records.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>

</SECT3>


<SECT3>
<TITLE>Index Record</TITLE>
<PARA>
</PARA>
<SCREEN>
struct rpmhdrindex {
    int tag;
    int type;
    int offset;
    int count;
    } ;
</SCREEN>
<VARIABLELIST>
<VARLISTENTRY>
<TERM><STRUCTFIELD>tag</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying the purpose of the data associated with this Index Record.
This value of this field is dependent on the context in which the Index Record
is used, and is defined in later sections.
</PARA>
<PARA>
Some values are designated as header private, and may appear in any header
structure.
</PARA>
include(privtags.sgml)
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>type</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying the type of the data associated with this Index Record.
</PARA>
<TABLE>
<TITLE>Index Type values</TITLE>
<TGROUP COLS=2>
<THEAD>
<ROW>
<ENTRY>Type</ENTRY>
<ENTRY>Value</ENTRY>
<ENTRY>Size (in Octets)</ENTRY>
</ROW>
</THEAD>
<TBODY>
<ROW>
<ENTRY>NULL_TYPE</ENTRY>
<ENTRY>0</ENTRY>
<ENTRY>0</ENTRY>
</ROW>
<ROW>
<ENTRY>CHAR</ENTRY>
<ENTRY>1</ENTRY>
<ENTRY>1</ENTRY>
</ROW>
<ROW>
<ENTRY>INT8</ENTRY>
<ENTRY>2</ENTRY>
<ENTRY>1</ENTRY>
</ROW>
<ROW>
<ENTRY>INT16</ENTRY>
<ENTRY>3</ENTRY>
<ENTRY>2</ENTRY>
</ROW>
<ROW>
<ENTRY>INT32</ENTRY>
<ENTRY>4</ENTRY>
<ENTRY>4</ENTRY>
</ROW>
<ROW>
<ENTRY>INT64</ENTRY>
<ENTRY>5</ENTRY>
<ENTRY>8</ENTRY>
</ROW>
<ROW>
<ENTRY>STRING</ENTRY>
<ENTRY>6</ENTRY>
<ENTRY>variable, NULL terminated</ENTRY>
</ROW>
<ROW>
<ENTRY>BIN</ENTRY>
<ENTRY>7</ENTRY>
<ENTRY>1</ENTRY>
</ROW>
<ROW>
<ENTRY>STRINGS_ARRAY</ENTRY>
<ENTRY>8</ENTRY>
<ENTRY>?</ENTRY>
</ROW>
<ROW>
<ENTRY>I18NSTRING</ENTRY>
<ENTRY>9</ENTRY>
<ENTRY>?</ENTRY>
</ROW>
<ROW>
<ENTRY>NULL_TYPE</ENTRY>
<ENTRY>0</ENTRY>
<ENTRY>0</ENTRY>
</ROW>
</TBODY>
</TABLE>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>offset</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Location in the Store of the data associated with this Index Record.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>count</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Size of the data associated with this Index Record. The Count is the number of
elements whose size is defined by the type of this Record.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</SECT3>

<SECT3>
<TITLE>Header Store</TITLE>
<PARA>
The header store contains the values specified by the Index structures. The
store is located immediately following the Index structures. The store may be
padded with zeros to ensure it ends on a 8 byte boundary.
</PARA>
</SECT3>

</SECT2>


<SECT2>
<TITLE>Signature Section</TITLE>
<PARA>
The Signature section is implemented using the Header structure. The signature
section defines 3 additional tag values which may be used in the Index
structures.
</PARA>
include(sigtags.sgml)
</SECT2>


<SECT2>
<TITLE>Header Section</TITLE>
<PARA>
The Header section is implemented using the Header structure. The Header
section defines the following additional tag values which may be used in
the Index structures.
</PARA>
include(hdrtags.sgml)
</SECT2>


<SECT2>
<TITLE>Archive Section</TITLE>
<PARA>
</PARA>
</SECT2>
</SECT1>




<SECT1 ID=pkgscripts>
<TITLE>Package Script Restrictions</TITLE>
<PARA>
Scripts used as part of the package install and uninstall may only use
commands and interfaces that are specified by the LSB. All other commands are
not guaranteed to be present, or to behave in expected ways.
</PARA>

<PARA>
Packages may not use RPM triggers.
</PARA>

<PARA>
Packages may not depend on the order in which scripts are executed
(pre-install, pre-uninstall, &amp;c), when doing an upgrade.
</PARA>
</SECT1>

<SECT1 ID=pkgtools>
<TITLE>Package Tools</TITLE>
<PARA>
The LSB does not specify the interface to the tools used to manipulate 
LSB-conformant packages. Each conforming distribution will provide 
documentation for installing LSB packages.
</PARA>

</SECT1>

<SECT1 ID=pkgnameconv>
<TITLE>Package Naming</TITLE>
<PARA>
Because there is no consistent packaging naming among the various
Linux distributions, it is necessary for LSB-conformant packages to
adhere the following naming rules to avoid conflicts with packages 
provided by the distributions.
</PARA>

<ITEMIZEDLIST MARK="bullet">
<LISTITEM> <PARA>
All LSB package names must begin with the prefix "lsb-" to avoid conflicting
with existing packages used by Linux distributions.
</PARA>
</LISTITEM>

<LISTITEM><PARA>
If the package name contains only one hyphen (including the one in the 
"lsb-" prefix) then the package name must be assigned by the 
<ULINK URL="http://www.lanana.org">Linux Assigned Names and 
Numbers Authority</ULINK> (LANANA), which shall maintain a
registry of LSB names.
</PARA></LISTITEM>

<LISTITEM><PARA>
If the package name contains more than one hyphen (i.e., 
"lsb-www.redhat.com-redhat-database", "lsb-gnome-gnumeric"), then 
the portion of the package name between first and second hyphens must 
either be an LSB provider name assigned by the LANANA, or it may be 
one of the owners' fully-qualified domain name in lower case (e.g., 
"debian.org", "staroffice.sun.com"). The LSB provider name assigned 
by LANANA must only consist of the ASCII characters [a-z0-9].
</PARA></LISTITEM>
</ITEMIZEDLIST>

</SECT1>

<SECT1 ID=pkgdepend>
<TITLE>Package Dependencies</TITLE>
<PARA>
Packages must depend on a dependency "lsb".  They may not depend on
other system-provided dependencies.  They must not depend on
non-system-provided dependencies unless the dependencies are fulfilled
by packages which are part of the same application.
If a package includes "Provides"
it must only provide a virtual package name which is registered to
that application.
</PARA>

</SECT1>

<SECT1 ID=pkgarchcon>
<TITLE>Package Architecture Considerations</TITLE>
<PARA>
Additional specifications or restrictions may be found in the architecture
specific LSB specification.
</PARA>


</SECT1>

</CHAPTER>

</PART>
