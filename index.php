<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
   <title>LSB Written Specification</title>
   <LINK REL="StyleSheet" HREF="/themes/FreeStandards/style/style.css" TYPE="text/css">
</head>
<body bgcolor="#ffffff" text="#000000" link="#006600" vlink="#336633" alink="#009900" background="/themes/FreeStandards/images/fs_back.gif">

<table cellpadding="0" cellspacing="0" width="90%" align="center" class="head">
<tr>
<?
$thisSite = $_SERVER['SERVER_NAME'];
if(preg_match("/^(http:\/\/)?(w{3}\.)?([-A-Z]+)\./i", $thisSite, $match))
{
$subSiteName = $match[3];
}

virtual("/themes/FreeStandards/top.linuxbase.php");

echo "<table cellpadding=\"0\" cellspacing=\"0\" width=\"90%\" align=\"center\" class=\"main2\">\n"
// SECTION NAV ROW
."<tr>\n"
."<td background=\"/themes/FreeStandards/images/tophighlight.png\" align= \"center\" height=\"20\">\n";

virtual("/themes/FreeStandards/nav.linuxbase.php");
?>
</td>
<td width=\"80\">&nbsp;</td>
</tr>
</table>
</td></tr>
</table>

<table width="90%" cellpadding="0" cellspacing="0" border="0" align="center" class="main2">
<tr valign="top">
<td colspan="2"><img src="/themes/FreeStandards/images/pixel.gif" width="1" height="5" border="0" alt=""></td>
</tr>
</table>


<table width="90%" align="center" cellspacing="5" class="main2">
<tr><td>
<blockquote style="background-color: #ffffdd">
<p>The LSB specification is composed of a set of specifications:
a single common specification, and architecture specific specifications. The
complete specification for a platform consists of the common specification plus
one of the architecture specifications.</p>
</blockquote>

<H1>LSB 2.0 is in Public Review</H1>
<p>
The formal Public Review of the LSB 2.0 Specifications 
is closed. However, we welcome and appreciate comments
and bug reports at any time.</p>
<p>
The review documents are marked as version 1.9.6 and can be found
<A HREF="specs.php">HERE</A>. Please file comments using the
<A HREF="http://bugs.linuxbase.org">LSB Project bugzilla</A>.
These will become LSB 2.0 upon release.</p>

<H1>LSB 1.3 is the Current Specification</H1>
<p>
The 1.3 version of the LSB can be found <A HREF=oldspecs.shtml>Here</A>.</p>

<H2>Older versions</H2>
<p>
Previous versions of the specification can be found <A HREF=oldspecs.shtml>Here</A>.</p>

<H3>About the Specification</H3>
<p>
The LSB Specification is written in OASIS V4.1 Docbook SGML.&nbsp; You
can&nbsp; <a href="http://gforge.freestandards.org/scm/?group_id=5">checkout
a copy</a> of the Docbook source from the LSB project on
gforge.freestandards.org.
Portions of the document are produced from a <a href="db.shtml">database</a>
that was designed and is maintained by the LSB. In the spec tree there
is a <i>build.html </i>file which describes <a href="build.html">how to
build the specification</a> from the CVS Docbook source.</p>

</td></tr>
</table>
</body>
</html>
