<PART ID="packagefmt">
<TITLE>Package Format and Installation</TITLE>

<CHAPTER ID=swinstall>
<TITLE>Software Installation</TITLE>
<SECT1 ID=swinstall-intro>
<TITLE>Introduction</TITLE>
<PARA>
Applications shall either be packaged in the RPM packaging format as
defined in this specification, or supply an installer which is LSB
conforming (for example, calls LSB commands and utilities).
<note>
<para>
Supplying an RPM format package is encouraged because it makes systems
easier to manage.  
This specification does not require the implementation to use
RPM as the package manager; it only specifies the format of
the package file.
</para>
<para>
Applications are also encouraged to uninstall cleanly.
</para>
</note>
</PARA>
<PARA>
A package in RPM format may include a dependency on the LSB Core and other
LSB specifications, as described in <XREF LINKEND=pkgdepend>. Packages that are not
in RPM format may test for the presence of a conforming implementation by means of
the <command>lsb_release</command> utility.
</PARA>
<PARA>
Implementations shall provide a mechanism for installing applications in
this packaging format with some restrictions listed
below.
<NOTE ID="pkg-2">
<PARA>
The implementation itself may use a different packaging format for its
own packages, and of course it may use any available mechanism for 
installing the LSB-conformant packages.
</PARA>
</NOTE>
</PARA>
</SECT1>


<SECT1 ID=pkgformat>
<TITLE>Package File Format</TITLE>
<PARA>
An RPM format file consists of 4 sections, the Lead, Signature, Header, and
the Payload. All values are stored in network byte order.
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
<ENTRY>Payload</ENTRY>
</ROW>
</TBODY>
</TGROUP>
</TABLE>
<PARA>
These 4 sections shall exist in the order specified. 
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
The payload section holds the files to be installed.
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
Value identifying this file as an RPM format file. This value shall be
"\355\253\356\333".
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>major</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the major version number of the file format version. This
value shall be 3.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>minor</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the minor revision number of file format version. This value
shall be 0.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>type</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating whether this is a source or binary package.
This value shall be 0 to indicate a binary package.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>archnum</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the architecture for which this package is valid. This value
is specified in the relevant architecture specific part of &ISOSTD;.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>name</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
A NUL terminated string that provides the package name. This name shall
conform with the Package Naming section of this specification.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>osnum</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the Operating System for which this package is valid. This
value shall be 1.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>signature_type</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value indicating the type of the signature used in the Signature part of the
file. This value shall be 5.
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
Header Structure consists of 3 parts, a Header record, followed by 1 or more
Index records, followed by 0 or more bytes of data associated with the Index
records. A Header structure shall be aligned to an 8 byte boundary.
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
    unsigned char magic[4];
    unsigned char reserved[4];
    int nindex;
    int hsize;
    } ;
</SCREEN>

<VARIABLELIST>
<VARLISTENTRY>
<TERM><STRUCTFIELD>magic</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying this record as an RPM header record. This value shall be
<literal>"\216\255\350\001"</literal>.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>reserved</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Reserved space.  This value shall be <literal>"\000\000\000\000"</literal>.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>nindex</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
The number of Index Records that follow this Header Record. There should be at
least 1 Index Record.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>hsize</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
The size in bytes of the storage area for the data pointed to by the
Index Records.
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
The value of this field is dependent on the context in which the Index Record
is used, and is defined below and in later sections.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>type</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying the type of the data associated with this Index Record. The
possible <STRUCTFIELD>type</STRUCTFIELD> values are defined below.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>offset</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Location in the Store of the data associated with this Index Record. This value
should between 0 and the value contained in the <STRUCTFIELD>hsize</STRUCTFIELD>
of the Header Structure.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>count</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Size of the data associated with this Index Record. The
<STRUCTFIELD>count</STRUCTFIELD> is the number of elements whose size is
defined by the type of this Record.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
<SECT4>
<TITLE>Index Type Values</TITLE>
<PARA>
The possible values for the <STRUCTFIELD>type</STRUCTFIELD> field are defined
in this table.
</PARA>
include(indextypes.sgml)
<PARA>
The string arrays specified for entries of type
<CONSTANT>RPM_STRING_ARRAY_TYPE</CONSTANT> and
<CONSTANT>RPM_I18NSTRING_TYPE</CONSTANT>
are vectors of strings in a contiguous block of memory, each element separated
from its neighbors by a NUL character.
</PARA>
<PARA>
Index records with type <CONSTANT>RPM_I18NSTRING_TYPE</CONSTANT> shall always
have a <STRUCTFIELD>count</STRUCTFIELD> of 1. The array entries in an index of
type <CONSTANT>RPM_I18NSTRING_TYPE</CONSTANT> correspond to the locale names
contained in the <CONSTANT>RPMTAG_HDRI18NTABLE</CONSTANT> index.
</PARA>
</SECT4>
<SECT4>
<TITLE>Index Tag Values</TITLE>
<PARA>
Some values are designated as header private, and may appear in any header
structure. These are defined here. Additional values are defined in later
sections.
</PARA>
include(privtags.sgml)
<PARA>
Not all Index records defined here will be present in all packages. Each tag
value has a status which is defined here.
</PARA>
<VARIABLELIST>
<VARLISTENTRY>
<TERM>Required</TERM>
<LISTITEM>
<PARA>
This Index Record shall be present.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>Optional</TERM>
<LISTITEM>
<PARA>
This Index Record may be present.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>Informational</TERM>
<LISTITEM>
<PARA>
This Index Record may be present, but does not contribute to the processing of the package.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>Deprecated</TERM>
<LISTITEM>
<PARA>
This Index Record should not be present.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>Obsolete</TERM>
<LISTITEM>
<PARA>
This Index Record shall not be present.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM>Reserved</TERM>
<LISTITEM>
<PARA>
This Index Record shall not be present.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</SECT4>
</SECT3>

<SECT3>
<TITLE>Header Store</TITLE>
<PARA>
The header store contains the values specified by the Index structures. These
values are aligned according to their type and padding is used if needed. The
store is located immediately following the Index structures.
</PARA>
</SECT3>

</SECT2>


<SECT2>
<TITLE>Signature Section</TITLE>
<PARA>
The Signature section is implemented using the Header structure. The signature
section defines the following additional tag values which may be used in
the Index structures.
</PARA>
<PARA>
These values exist to provide additional information about the rest of the
package.
</PARA>
include(sigtags.sgml)
<PARA>
These values exist to ensure the integrity of the rest of the package.
</PARA>
include(sigdigtags.sgml)
<PARA>
These values exist to provide authentication of the package.
</PARA>
include(sigsigntags.sgml)
</SECT2>


<SECT2>
<TITLE>Header Section</TITLE>
<PARA>
The Header section is implemented using the Header structure. The Header
section defines the following additional tag values which may be used in
the Index structures.
</PARA>
<SECT3>
<TITLE>Package Information</TITLE>
<PARA>
The following tag values are used to indicate information that describes the
package as a whole.
</PARA>
include(pkgtags.sgml)
</SECT3>
<SECT3>
<TITLE>Installation Information</TITLE>
<PARA>
The following tag values are used to provide information needed during the
installation of the package.
</PARA>
include(insttags.sgml)
</SECT3>
<SECT3>
<TITLE>File Information</TITLE>
<PARA>
The following tag values are used to provide information about the files
in the payload. This information is provided in the header to allow more
efficient access of the information.
</PARA>
include(filetags.sgml)
<PARA>
One of <CONSTANT>RPMTAG_OLDFILENAMES</CONSTANT> or the tuple
<CONSTANT>RPMTAG_DIRINDEXES,RPMTAG_BASENAMES,RPMTAG_DIRNAMES</CONSTANT> shall be present, but not
both.
</PARA>
<SECT4>
<TITLE>File Flags</TITLE>
<PARA>
The <CONSTANT>RPMTAG_FILEFLAGS</CONSTANT> tag value shall identify 
various characteristics of the file in the payload that it describes. It
shall be an
<TYPE>INT32</TYPE> value consisting of either the
value <CONSTANT>RPMFILE_NONE</CONSTANT> (0) or the bitwise inclusive or of one
or more of the following values:
<TABLE>
<TITLE>File Flags</TITLE>
<TGROUP COLS=2>
<THEAD>
<ROW>
<ENTRY>Name</ENTRY><ENTRY>Value</ENTRY>
</ROW>
</THEAD>
<TBODY>
<ROW>
<ENTRY><CONSTANT>RPMFILE_CONFIG</CONSTANT></ENTRY><ENTRY>(1 &lt;&lt; 0)</ENTRY>
</ROW><ROW>
<ENTRY><CONSTANT>RPMFILE_DOC</CONSTANT></ENTRY><ENTRY>(1 &lt;&lt; 1)</ENTRY>
</ROW><ROW>
<ENTRY><CONSTANT>RPMFILE_DONOTUSE</CONSTANT></ENTRY><ENTRY>(1 &lt;&lt; 2)</ENTRY>
</ROW><ROW>
<ENTRY><CONSTANT>RPMFILE_MISSINGOK</CONSTANT></ENTRY><ENTRY>(1 &lt;&lt; 3)</ENTRY>
</ROW><ROW>
<ENTRY><CONSTANT>RPMFILE_NOREPLACE</CONSTANT></ENTRY><ENTRY>(1 &lt;&lt; 4)</ENTRY>
</ROW><ROW>
<ENTRY><CONSTANT>RPMFILE_SPECFILE</CONSTANT></ENTRY><ENTRY>(1 &lt;&lt; 5)</ENTRY>
</ROW><ROW>
<ENTRY><CONSTANT>RPMFILE_GHOST</CONSTANT></ENTRY><ENTRY>(1 &lt;&lt; 6)</ENTRY>
</ROW><ROW>
<ENTRY><CONSTANT>RPMFILE_LICENSE</CONSTANT></ENTRY><ENTRY>(1 &lt;&lt; 7)</ENTRY>
</ROW><ROW>
<ENTRY><CONSTANT>RPMFILE_README</CONSTANT></ENTRY><ENTRY>(1 &lt;&lt; 8)</ENTRY>
</ROW><ROW>
<ENTRY><CONSTANT>RPMFILE_EXCLUDE</CONSTANT></ENTRY><ENTRY>(1 &lt;&lt; 9)</ENTRY>
</ROW>
</TBODY>
</TGROUP>
</TABLE>
</PARA>
<PARA>
These bits have the following meaning:
<VARIABLELIST>
<VARLISTENTRY>
<TERM><CONSTANT>RPMFILE_CONFIG</CONSTANT></TERM>
<LISTITEM><PARA>
The file is a configuration file, and an existing file should be saved during
a package upgrade operation and not removed during a pakage removal operation.
</PARA></LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><CONSTANT>RPMFILE_DOC</CONSTANT></TERM>
<LISTITEM><PARA>
The file contains documentation.
</PARA></LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><CONSTANT>RPMFILE_DONOTUSE</CONSTANT></TERM>
<LISTITEM><PARA>
This value is reserved for future use; conforming
packages may not use this flag.
</PARA></LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><CONSTANT>RPMFILE_MISSINGOK</CONSTANT></TERM>
<LISTITEM><PARA>
The file need not exist on the installed system.
</PARA></LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><CONSTANT>RPMFILE_NOREPLACE</CONSTANT></TERM>
<LISTITEM><PARA>
Similar to the <CONSTANT>RPMFILE_CONFIG</CONSTANT>, this
flag indicates that during an upgrade operation the original
file on the system should not be altered.
</PARA></LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><CONSTANT>RPMFILE_SPECFILE</CONSTANT></TERM>
<LISTITEM><PARA>
The file is a package specification.
</PARA></LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><CONSTANT>RPMFILE_GHOST</CONSTANT></TERM>
<LISTITEM><PARA>
The file is not actually included in the payload, but
should still be considered as a part of the package. 
For example, a log file
generated by the application at run time.
</PARA></LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><CONSTANT>RPMFILE_LICENSE</CONSTANT></TERM>
<LISTITEM><PARA>
The file contains the license conditions.
</PARA></LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><CONSTANT>RPMFILE_README</CONSTANT></TERM>
<LISTITEM><PARA>
The file contains high level notes about the package.
</PARA></LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><CONSTANT>RPMFILE_EXCLUDE</CONSTANT></TERM>
<LISTITEM><PARA>
The corresponding file is not a part of the package,
and should not be installed.
</PARA></LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</PARA>
</SECT4>
</SECT3>
<SECT3>
<TITLE>Dependency Information</TITLE>
<PARA>
The following tag values are used to provide information about
interdependencies between packages.
</PARA>
include(deptags.sgml)
<SECT4>
<TITLE>Package Dependency Values</TITLE>
<PARA>
The package dependencies are stored in the
<VARNAME>RPMTAG_REQUIRENAME</VARNAME> and
<VARNAME>RPMTAG_REQUIREVERSION</VARNAME>
index records. The following values may be used.
</PARA>
include(rpmdeps.sgml)
<PARA>
Additional dependencies are specified in the Package Dependencies section of
this specification, and in the relevant architecture specific part of &ISOSTD;.
</PARA>
</SECT4>
<SECT4>
<TITLE>Package Dependencies Attributes</TITLE>
<PARA>
The package dependency attributes are stored in the
<VARNAME>RPMTAG_REQUIREFLAGS</VARNAME>,
<VARNAME>RPMTAG_PROVIDEFLAGS</VARNAME> and
<VARNAME>RPMTAG_OBSOLETEFLAGS</VARNAME>
index records. The following values may be used.
</PARA>
include(rpmdepsattr.sgml)
</SECT4>
</SECT3>
<SECT3>
<TITLE>Other Information</TITLE>
<PARA>
The following tag values are also found in the Header section.
</PARA>
include(othtags.sgml)
</SECT3>
</SECT2>


<SECT2>
<TITLE>Payload Section</TITLE>
<PARA>
The Payload section contains a compressed cpio archive. The format of this
section is defined by <XREF LINKEND="std.RFC1952">.
</PARA>
<PARA>
When uncompressed, the cpio archive contains a sequence of records for each
file. Each record contains a CPIO Header, Filename, Padding, and File Data.
</PARA>
<TABLE>
<TITLE>CPIO File Format</TITLE>
<TGROUP COLS=2>
<TBODY>
<ROW>
<ENTRY>CPIO Header</ENTRY>
<ENTRY>Header structure as defined below.</ENTRY>
</ROW>
<ROW>
<ENTRY>Filename</ENTRY>
<ENTRY>NUL terminated ASCII string containing the name of the file.</ENTRY>
</ROW>
<ROW>
<ENTRY>Padding</ENTRY>
<ENTRY>0-3 bytes as needed to align the file stream to a 4 byte boundary.</ENTRY>
</ROW>
<ROW>
<ENTRY>File data</ENTRY>
<ENTRY>The contents of the file.</ENTRY>
</ROW>
<ROW>
<ENTRY>Padding</ENTRY>
<ENTRY>0-3 bytes as needed to align the file stream to a 4 byte boundary.</ENTRY>
</ROW>
</TBODY>
</TGROUP>
</TABLE>
<PARA>
The CPIO Header uses the following header structure (sometimes referred to
as "new ASCII" or "SVR4 cpio"). All numbers are stored as ASCII
representations of their hexadecimal value with leading zeros as needed to fill
the field.  With the exception of <STRUCTFIELD>c_namesize</STRUCTFIELD>
and the corresponding name string, and <STRUCTFIELD>c_checksum</STRUCTFIELD>,
all information contained in the CPIO Header is also represented in the
Header Section.
The values in the CPIO Header shall match the values contained in the
Header Section.
</PARA>
<SCREEN>
struct {
        char    c_magic[6];
        char    c_ino[8];
        char    c_mode[8];
        char    c_uid[8];
        char    c_gid[8];
        char    c_nlink[8];
        char    c_mtime[8];
        char    c_filesize[8];
        char    c_devmajor[8];
        char    c_devminor[8];
        char    c_rdevmajor[8];
        char    c_rdevminor[8];
        char    c_namesize[8];
        char    c_checksum[8];
        };
</SCREEN>
<PARA>
<VARIABLELIST>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_magic</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying this cpio format. This value shall be "070701".
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_ino</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
This field contains the inode number from the filesystem from which the
file was read.
This field is ignored when installing a package.
This field shall match the corresponding value in the
<CONSTANT>RPMTAG_FILEINODES</CONSTANT> index in the Header section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_mode</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Permission bits of the file. This is an ascii representation of the hexadecimal
number representing the bit as defined for the
<STRUCTFIELD>st_mode</STRUCTFIELD> field of the <STRUCTNAME>stat</STRUCTNAME>
structure defined for the <VARNAME>stat</VARNAME> function.
This field shall match the corresponding value in the
<CONSTANT>RPMTAG_FILEMODES</CONSTANT> index in the Header section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_uid</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying this owner of this file.
This value matches the uid value of the corresponding user in the
RPMTAG_FILEUSERNAME as found on the system where this package was built. The
username specified in RPMTAG_FILEUSERNAME should take precedence when
installing the package.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_gid</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying this group of this file.
This value matches the gid value of the corresponding user in the
RPMTAG_FILEGROUPNAME as found on the system where this package was built. The
groupname specified in RPMTAG_FILEGROUPNAME should take precedence when
installing the package.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_nlink</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying the number of links associated with this file. If the value
is greater than 1, then this filename will be linked to 1 or more files in this
archive that has a matching value for the c_ino, c_devmajor and c_devminor
fields.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_mtime</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying the modification time of the file when it was read.
This field  shall match the corresponding value in the
<CONSTANT>RPMTAG_FILEMTIMES</CONSTANT> index in the Header section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_filesize</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying the size of the file.
This field  shall match the corresponding value in the
<CONSTANT>RPMTAG_FILESIZES</CONSTANT> index in the Header section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_devmajor</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
The major number of the device containing the file system from which the
file was read.
With the exception of processing files with c_nlink >1, this field is ignored
when installing a package.
This field shall match the corresponding value in the
<CONSTANT>RPMTAG_FILEDEVICES</CONSTANT> index in the Header section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_devminor</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
The minor number of the device containing the file system from which the
file was read.
With the exception of processing files with c_nlink >1, this field is ignored
when installing a package.
This field shall match the corresponding value in the
<CONSTANT>RPMTAG_FILEDEVICES</CONSTANT> index in the Header section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_rdevmajor</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
The major number of the raw device containing the file system from which the
file was read.
This field is ignored when installing a package.
This field  shall match the corresponding value in the
<CONSTANT>RPMTAG_RDEVS</CONSTANT> index in the Header section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_rdevminor</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
The minor number of the raw device containing the file system from which the
file was read.
This field is ignored when installing a package.
This field  shall match the corresponding value in the
<CONSTANT>RPMTAG_RDEVS</CONSTANT> index in the Header section.
</PARA>
</LISTITEM>
</VARLISTENTRY>
<VARLISTENTRY>
<TERM><STRUCTFIELD>c_namesize</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value identifying the length of the filename, which is located immediately
following the CPIO Header structure.
</PARA>
</LISTITEM>
</VARLISTENTRY>

<VARLISTENTRY>
<TERM><STRUCTFIELD>c_checksum</STRUCTFIELD></TERM>
<LISTITEM>
<PARA>
Value containing the CRC checksum of the file data. This field is not used,
and shall contain the value "00000000".
This field is ignored when installing a package.
</PARA>
</LISTITEM>
</VARLISTENTRY>
</VARIABLELIST>
</PARA>
<PARA>
A record with the filename "TRAILER!!!" indicates the last record in the
archive.
</PARA>
</SECT2>
</SECT1>




<SECT1 ID=pkgscripts>
<TITLE>Package Script Restrictions</TITLE>
<PARA>
Scripts used as part of the package install and uninstall shall only use
commands and interfaces that are specified by the LSB. All other commands are
not guaranteed to be present, or to behave in expected ways.
</PARA>

<PARA>
Packages shall not use RPM triggers.
</PARA>

<PARA>
Packages shall not depend on the order in which scripts are executed
(pre-install, pre-uninstall, etc), when doing an upgrade.
</PARA>
</SECT1>

<SECT1 ID=pkgtools>
<TITLE>Package Tools</TITLE>
<PARA>
The LSB does not specify the interface to the tools used to manipulate 
LSB-conformant packages. Each conforming implementation shall provide 
documentation for installing LSB packages.
</PARA>

</SECT1>

<SECT1 ID=pkgnameconv>
<TITLE>Package Naming</TITLE>
<PARA>
Packages supplied by implementations and applications shall follow the
following rules for the name field within the package.  These rules
are not required for the filename of the package file itself.
<note>
<para>There are discrepancies among implementations
concerning whether the name might be <literal>frobnicator-1.7-21-ppc32.rpm</literal> or
<literal>frobnicator-1.7-21-powerpc32.rpm</literal>.  
The architecture aside, recommended
practice is for the filename of the package file to match the name
within the package.
</para></note>

</PARA>

<para>
The following rules apply to the name field alone, not including any
release or version.
<note><para>If the name with the
release and version is <literal>frobnicator-1.7-21</literal>, the name part is
<literal>frobnicator</literal> and falls under the rules for a name with no
hyphens.</para></note>
</para>

<ITEMIZEDLIST MARK="bullet">
<LISTITEM> <PARA>
If the name begins with <literal>lsb-</literal> and contains no other hyphens, the name
shall be assigned by the 
<ULINK URL="http://www.lanana.org">Linux Assigned Names and 
Numbers Authority</ULINK> (LANANA), which shall maintain a
registry of LSB names.
The name may be registered by either an implementation or an application.
</PARA></LISTITEM>

<LISTITEM><PARA>
If the package name begins with <literal>lsb-</literal> and
contains more than one hyphen (for example
<literal>lsb-distro.example.com-database</literal> or 
<literal>lsb-gnome-gnumeric</literal>), then 
the portion of the package name between first and second hyphens shall 
either be an LSB provider name assigned by the LANANA, or it may be 
one of the owners' fully-qualified domain names in lower case (e.g., 
<literal>debian.org</literal>, <literal>staroffice.sun.com</literal>). 
The LSB provider name assigned 
by LANANA shall only consist of the ASCII characters [a-z0-9].
The provider name or domain name may be either that of an implementation
or an application.
</PARA></LISTITEM>

<listitem><para>
Package names containing no hyphens are reserved for use by
implementations.  Applications shall not use such names.
</para></listitem>

<listitem><para>

Package names which do not start with <literal>lsb-</literal> and which contain a
hyphen are open to both implementations and applications.  Implementations
may name packages in any part of this namespace.  They are encouraged
to use names from one of the other namespaces available to them, but
this is not required due to the large amount of current practice to
the contrary.
<note><para>Widespread existing practice includes such names as
<literal>ssh-common</literal>, <literal>ssh-client</literal>,
<literal>kernel-pcmcia</literal>, and the like.  Possible alternative names include
<literal>sshcommon</literal>, <literal>foolinux-ssh-common</literal>
(where <literal>foolinux</literal> is registered to the
implementation), or <literal>lsb-foolinux-ssh-common</literal>.
</para></note>
Applications may name their packages this way, but only if the portion
of the name before the first hyphen is a provider name or registered
domain name as described above.
<note><para>If an
application vendor has domain name such as <literal>visicalc.example.com</literal> and has
registered <literal>visicalc</literal> as a provider name, they might name packages
<literal>visicalc-base</literal>, <literal>visicalc.example.com-charting</literal>, and the
like.</para>
<para>
Package names in this namespace are
available to both the implementation and an application.  Implementations
and applications will need to consider this potential for conflicts
when deciding to use these names rather than the alternatives (such as
names starting with <literal>lsb-</literal>).
</para>
</note>

</para></listitem>

</ITEMIZEDLIST>

</SECT1>

include(coredep.sgml)

<SECT1 ID=pkgarchcon>
<TITLE>Package Architecture Considerations</TITLE>
<PARA>
Packages which do not contain any architecture specific files should specify an
architecture of <COMPUTEROUTPUT>noarch</COMPUTEROUTPUT>. An LSB runtime
environment shall accept values <COMPUTEROUTPUT>noarch</COMPUTEROUTPUT>, or
the value specified in the relevant architecture specific part of &ISOSTD;.
</PARA>

<PARA>
Additional specifications or restrictions may be found in the architecture
specific LSB specification.
</PARA>


</SECT1>

</CHAPTER>

</PART>
