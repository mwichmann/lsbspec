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
as modules.  The base specification consists of the Core and
C++ modules, and is extended with the full LSB set, which
is labelled Desktop.  Prior to LSB 3.1, Graphics was a separate
but required module, it is now part of the full set.
Each module might be subdivided into a common document plus
architecture-specific documents (in some cases the
subdivision is not needed). A complete binary standard for
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

<H1>Current Snapshots of the LSB Specification</H1>
<p>
<A HREF="specs.php">Current in-progress snapshots</A> are also available.
These specifications reflect work in progress and can be commented on,
but are not intended to be released as is.
</p>

<H1>Released LSB Specification</H1>
<p>
The current 
<A HREF="http://refspecs.freestandards.org/lsb.shtml#LSB_3_1_0">
LSB Specification</A> is version 3.1.
This includes the approved ISO LSB Standard (IS 23360:2006),
which is the LSB-Core books.
</p>

<H1>Older versions of the Specification</H1>
<p>
The previous certification-ready version was
<A HREF=http://refspecs.freestandards.org/lsb.shtml#LSB_2_1_0>LSB 2.1</A>.
Older released versions are also archived on the 
<A HREF=http://refspecs.freestandards.org/lsb.shtml">Released Specifications</A>page.
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
