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

<H1>LSB 1.3 is the Current Specification</H1>
<p>
The 1.3 version of the LSB can be found <A HREF=oldspecs.shtml>Here</A>.</p>

<H1><A NAME="DRAFT">The Current Draft</A></H1>
<p>
The current draft of the LSB Specification is available
<A HREF="specs.php">HERE</A>. This draft will become LSB 2.0.
We welcome and appreciate comments and bug reports at any time.
You don't need to wait for a public review period.</p>

<H1>Older version</H1>
<p>
Previous versions of the specification can be found <A HREF=oldspecs.shtml>Here</A>.</p>

<H1>About the Specification</H1>
<p>
The LSB Specification is written in OASIS V4.1 Docbook SGML.&nbsp; You
can&nbsp; <a href="http://gforge.freestandards.org/scm/?group_id=5">checkout
a copy</a> of the Docbook source from the LSB project on SourceForge.Net.
Portions of the document are produced from a <a href="db.shtml">database</a>
that was designed and is maintained by the LSB. In the spec tree there
is a <i>build.html </i>file which describes <a href="build.html">how to
build the specification</a> from the CVS Docbook source.</p>

<H1><a NAME="contribute"></a>How to Contribute</H1>
<p>
The LSB Specification is a community effort.&nbsp; There are several ways
for you to contribute.&nbsp;&nbsp; The first way for you to contribute
is to read and review the specification, then email your questions and
comments to the <i>lsb-spec</i> <a href="../lists.html">email list</a>.&nbsp;&nbsp;
The second way is to send your corrections for the spec in context diff
format to the <i>lsb-spec</i> email list.&nbsp;&nbsp; The third way is
to <a href="http://gforge.freestandards.org.net/project/memberlist.php?group_id=5">find
an LSB developer</a>, then send him/her your corrections.&nbsp; The final
way to contribute to the LSB written specification is to become an LSB
developer to make CVS changes directly to the tree with your and other's
submitted changes. Here is a list of <a href="http://sourceforge.net/pm/task.php?group_id=1107&amp;set=custom&amp;group_project_id=3049&amp;_assigned_to=100&amp;_status=1&amp;SUBMIT=Browse">things
to do</a> for the LSB Specification.</p>

<H1><a NAME="faq"></a>Frequently Asked Questions</H1>
<p>
An FAQ associated with the written specification is available
<a href="http://www.linuxbase.org/modules.php?name=FAQ&amp;myfaq=yes&amp;id_cat=3&amp;categories=LSB+Written+Specification">here</a>.</p>

</td></tr>
</table>
</body>
</html>
