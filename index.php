<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
   <title>LSB Written Specification</title>
   <LINK REL="StyleSheet" HREF="/themes/FreeStandards2/style/style.css" TYPE="text/css">
</head>
<body bgcolor="#ffffff" text="#000000">

<?
virtual("/themes/FreeStandards2/contentheader.html");
virtual("/themes/FreeStandards2/nav.linuxbase.php");
virtual("/themes/FreeStandards2/contentmain.html");
?>

<blockquote style="background-color: #ffffdd">
<p>
The LSB specification is made up of several components, known
as modules.  The base specification consists the of Core,
Graphics and CXX (C++) modules.
The specification is further extended with the Desktop set.
Each module might be subdivided into a common document plus
architecture-specific documents (in some cases the
division is not needed). A complete binary standard for
a particular processor architecture consists of the set of
necessary common documents plus the matching set of
architecture-specific documents.
</p>
<p>
Some of the components are further subdivided into functional
units.  For convenience, the functional units may be used for
review purposes. For example, if your interest is in packaging,
you may wish to review the packaging "individual specification"
by itself.  The individual specifications (sometimes called
"books") are <b>not</b> released by the LSB project on a standalone
basis, only rolled up into the specification modules.
</p>
</blockquote>

<H1>Current LSB 3.1 Release Candidate 1 (RC1) Specifications</H1>
<p>
Please review the documents
<A HREF="http://www.linuxbase.org/~mats/rcspecs.html">HERE</A>.
Release candidates are for LSB-Graphics, LSB-CXX (C++),
and LSB-Desktop. LSB-Core is already released at 3.1,
see below for links.
</p>

<H1>Current in-progress Snapshots of the LSB Specification</H1>
<p>
Current snapshots can be found <A HREF="specs.php">HERE</A>.
</p>

<H1>Released LSB Specification</H1>
<p>
The current LSB-Core specification is version 3.1 which can be found
<A HREF=http://refspecs.freestandards.org/lsb.shtml#LSB_3_1_0>Here</A>.
This contains the approved ISO LSB Standard (IS 23360:2006).
The current released LSB-Graphics and LSB-CXX (C++) specifications
are version 3.0 which may be found 
<A HREF=http://refspecs.freestandards.org/lsb.shtml#LSB_3_0_0>lower down</A>.
on the same page.
</p>
</p>

<H1>Older versions of the Specification</H1>
<p>
The previous certification-ready version of the LSB was
<A HREF=http://refspecs.freestandards.org/lsb.shtml#LSB_2_1_0>2.1</A>.
Other released versions are archived on the 
<A HREF=http://refspecs.freestandards.org/lsb.shtml">same page</A>.
</p>

<H3>About the Specification</H3>
<p>
The LSB Specification is written in OASIS V4.1 Docbook SGML.&nbsp; You
can&nbsp; <a href="http://gforge.freestandards.org/scm/?group_id=5">checkout
a copy</a> of the Docbook source from the LSB project on
gforge.freestandards.org.
<!--
Portions of the document are produced from a <a href="db.shtml">database</a>
that was designed and is maintained by the LSB. In the spec tree there
is a <i>build.html </i>file which describes <a href="build.html">how to
build the specification</a> from the CVS Docbook source.</p>
-->

<?
virtual("/themes/FreeStandards2/contentfooter.html");
?>
</body>
</html>
