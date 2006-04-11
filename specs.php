<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <title>LSB Specifications</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <style type="text/css">
table  { border-collapse: collapse; margin-top: 12px; border-spacing: 0px; border: thin solid black; }
td, th { padding: 3px; margin: 0px; border: thin solid black; }
#nav { font-size: small; vertical-align: middle; border: thin solid black; padding: 5px; }
.project { padding: 10px; margin-bottom: 20px; }
select,input { font-size: small; }
  </style>
 </head>
 <body>

<?php
virtual("/themes/FreeStandards2/contentheader.html");
virtual("/themes/FreeStandards2/nav.linuxbase.php");
virtual("/themes/FreeStandards2/contentmain.html");
?>
<?php
error_reporting(0);
include("objects.php");

$baseroot = dirname($_SERVER['SCRIPT_FILENAME']);
$removeroot = dirname($_SERVER['SCRIPT_FILENAME']);
$addroot = "http://".$_SERVER['SERVER_NAME'].dirname($_SERVER['SCRIPT_NAME'])."/";

/* a root project. all projects belong to this. */
$r = new Project("lsb");
$r->name = "Linux Standard Base Specifications";

$p = new Project("booksets");
$p->name = "LSB Specification Modules";
$p->url = $addroot;
$p->indexDir($baseroot.'/booksets');
addProject($p);

$p = new Project("book");
$p->name = "Individual Specification";
$p->url = $addroot;
$p->indexDir($baseroot.'/book');
addProject($p);

$colours = array("beta" => "#ffff88",
                 "1.0.1" => "#ffffff",
                 "1.1.0" => "#eeeeee",
                 "1.2.0" => "#dddddd",
                 "1.3.0" => "#ccffcc",
		 "2.0.0" => "#ffccff",
		 "3.0.0" => "#bbbbff",
		 "3.1.0" => "#66ff66",
		 "3.2.0" => "#ff8888",
		 "4.0.0" => "#cc66ff");


/* end user serviceable bits */

function addProject($project) {
	global $r;
	$r->addSubproject($project);
}

?>

<P>
You can review the specification using either the Module documents, or
the individual specification which are found below.
<?php
$path = eregi_replace("/$", "", $_SERVER["PATH_INFO"]);
$project = $r;
$navstr = "";

$linkurl = $_SERVER['SCRIPT_NAME'];
foreach (array_slice(split("/", $path),1) as $pfilt) {
	if ($project != null) {
		$navstr .= "<a href=\"$linkurl\">".$project->name."</a> > ";
		$linkurl .= "/".$pfilt;
		$project = $project->getSubproject($pfilt);
	}
		
}

if ($_GET['f'] && array_key_exists($_GET['f'], $colours)) {
	$filter['specversion'] = $_GET['f'];
}

if ($project != null) {
	#print navForm($navstr.$project->name, $project, $filter);
	$linkurl = $_SERVER['SCRIPT_NAME'];
	$navstr = "";
	print formatProject($project);
} else {
	print("<strong>No project under the path ".$_SERVER['PATH_INFO']."</strong>\n");
}

virtual("/themes/FreeStandards2/contentfooter.html");
?>
 </body>
</html>
<?php

function navForm($navstr, $project, $filter) {
	global $colours;

	$str .= "<form method=\"get\">";
	$str .= "Restrict to specification version: ";
	$str .= "<select name=\"f\">";
	if ($filter['specversion']) {
		$str .= "  <option value=\"\">none</option>\n";
	} else {
		$str .= "  <option value=\"\" selected>none</option>\n";
	}
	foreach ($colours as $version => $colour) {
		if (compareVersions($version, $filter['specversion'])) {
			$str .= "   <option>".$version."</option>\n";
		} else {
			$str .= "   <option selected>".$version."</option>\n";
		}
	}
	$str .= "</select>";
	$str .= "<input type=\"submit\" value=\"filter\"/></form></div>";
	return $str;

}


function formatProject($project, $level = 0)
{
	global $colours;
	global $linkurl;
	global $filter;
	
	$headerstr = "<div class=\"project\">";
	if ($project->id != "lsb") {
		$linkurl .= "/".$project->id;
	}
	if ($level != 0) {
		$headerstr .= "<h".($level+1)." style=\"margin-top: 0px;\"><a name=\"".$project->id."\" href=\"$linkurl\">".$project->name."</a></h".($level+1).">\n";
	} else {
		$headerstr .= "<h".($level+1)." style=\"margin-top: 0px;\">".$project->name."</h".($level+1).">\n";
	}
	if (strlen($project->url)) {
		$headerstr .= "<a href=\"".$project->url."\">Project Homepage</a><br />";
	}
	$footerstr = "</div>";

	$packagesstr = "";
	$haspackages = 0;
		
	$packagesstr .= "<table>\n";
	$packagesstr .= " <tr><th>Document</th><th>Version</th><th colspan=5>Links</th><th>Last Updated</th></tr>\n";
	$prevspecversion = "";
	$prevname = "";
	$prevversion = "";
	$finish = 0;

	$descriptions = array();

	foreach ($project->documents as $package) {
		$haspackages = 1;
		if ($finish) {
			$packagesstr .=" </td>\n </tr>\n";
			$finish = 0;
		}
		$packagesstr .= " <tr style=\"background: ".$colours[$package->specversion].";\">\n";
		$packagesstr .="  <td>".$package->name."</td>";
		$packagesstr .="  <td>".$package->version."</td>\n";
		$packagesstr .="  <td><a href=\"/modules.php?name=specrev&url=".$package->link."\">HTML</a></td>";
		$packagesstr .="  <td><a href=\"/modules.php?name=specrev&url=".$package->html1link."\">SingleHTML</a></td>";
		$packagesstr .="  <td><a href=\"/modules.php?name=specrev&url=".$package->rtflink."\">RTF</a></td>";
		$packagesstr .="  <td><a href=\"/modules.php?name=specrev&url=".$package->txtlink."\">Text</a></td>";
		$packagesstr .="  <td><a href=\"/modules.php?name=specrev&url=".$package->txt1link."\">TextLine#</a></td>";
		$packagesstr .="  <td>".$package->lastmod."</a>";
		$finish = 1;
		$prevspecversion = $package->specversion;
		$prevversion = $package->version;
		$prevname = $package->name;
		if (!array_key_exists($package->name, $descriptions)) {
			$str = $package->getRPMDescription();
			if ($str != null) {
				$descriptions[$package->name] = $str;
			}
		}
	}
	$packagesstr .= "</td>\n  </tr>\n";
	$packagesstr .= "</table>\n";

	$hassubprojects = 0;
	foreach ($project->subprojects as $subproject) {
		if ($filter) {
			if ($filter['subproject'] && $filter['subproject'] != $subproject->id) {
				continue;
			}
		}
		$hassubprojects = 1;
		$subprojectstr .= formatProject($subproject, $level+1);
	}

	$linkurl = substr($linkurl, 0, strrpos($linkurl, '/'));
	$str = "";

	if ($haspackages) {
		foreach ($descriptions as $package => $description) {
			$str .= "<p><strong>".$package."</strong><br />".$description."</p>\n";
		}
		$str .= $packagesstr;
	}
	if ($hassubprojects) {
		$str .= $subprojectstr ;
	}
	if ($hassubprojects || $haspackages) {
		return $headerstr.$str.$footerstr;
	}
	return "";
}


?>
