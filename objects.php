<?
class Project
{
	/* identifier for this project*/
	var $id;
	
	/* name of the project */
	var $name;

	/* url to the project's home */
	var $url;

	/* array of subproject objects */
	var $subprojects;

	/* array of documents that aren't in a subproject */
	var $documents;

	/* create a project */
	function Project($id)
	{
		$this->id = $id;
		$this->documents = array();
		$this->subprojects = array();
	}

	/* add the files in a directory to this project.
	 * is $groups is defined (as an associative array of
	 * (directory name => group name) items), directories
	 * in this array will be used to create subprojects
	 */
	function indexDir($dir, $groups = null)
	{
		$dirs = array($dir);

		while (count($dirs)) {
			$dir = array_shift($dirs);
		
			if (!($handle = opendir($dir))) {
				echo "Can't open $dir";
				continue;
			}
			
			while (false !== ($dirent = readdir($handle)))  {
				$type = filetype($dir."/".$dirent);
		
				if ($type == "link") {
					continue;
				}
				if ($dirent == "." || $dirent == ".." || $dirent == "archive" || $dirent == "CVS" ) {
					continue;
				}
				if ($type == "dir") {
					if (file_exists($dir."/".$dirent."/buildversion")) {
						$specversion=file($dir."/".$dirent."/buildversion");
						if ($p = new Document($dir, $dirent, $specversion[0])) {
							array_push($this->documents, $p);
						}
					continue;
					}
					if (is_array($groups) && array_key_exists($dirent,$groups)) {
						if (($subproject =& $this->getSubproject($dirent)) == null) {
							$subproject = new Project($dirent);
							$subproject->name = $groups[$dirent];
							$this->addSubproject($subproject);
						}
						$subproject->indexDir($dir."/".$dirent);
					} else {
						array_push($dirs, $dir."/".$dirent);
					}
					continue;
				}
			}
		}
		usort($this->documents, "compareDocument");
	}

	function addSubproject(&$subproject)
	{
		$this->subprojects[$subproject->id] =& $subproject;
	}

	function &getSubproject($id) {
		if (array_key_exists($id, $this->subprojects)) {
			return $this->subprojects[$id];
		}
		return null;
	}

}

class Document {
	/* file that this document referrs to */
	var $file;

	/* name of this document */
	var $name;

	/* version of the document */
	var $version;

	/* links to this document */
	var $link;
	var $rtflink;
	var $txtlink;
	var $txt1link;
	var $html1link;
	var $lastmod;

	function Document($dir, $file, $specversion)
	{
		global $removeroot;
		global $addroot;

		$this->file = $dir."/".$file;
		$this->name = $file;
		$this->version = $specversion;
		if (file_exists($dir."/".$file."/".$file."/book1.html" )) {
			$this->link = ereg_replace($removeroot, $addroot, $dir)."/".$file."/".$file."/book1.html";
		}
		if (file_exists($dir."/".$file."/".$file."/set1.html" )) {
			$this->link = ereg_replace($removeroot, $addroot, $dir)."/".$file."/".$file."/set1.html";
		}
		$this->rtflink = ereg_replace($removeroot, $addroot, $dir)."/".$file."/".$file.".rtf";
		$this->txtlink = ereg_replace($removeroot, $addroot, $dir)."/".$file."/".$file.".txt";
		$this->txt1link = ereg_replace($removeroot, $addroot, $dir)."/".$file."/".$file."_lines.txt";
		$this->html1link = ereg_replace($removeroot, $addroot, $dir)."/".$file."/".$file.".html";
		$this->lastmod = date("r", filemtime($dir."/buildversion"));
	}

	function toString()
	{
		$str  = " <tr>\n";
		$str .= "  <td>".$this->name."</td>\n";
		$str .= "  <td>".$this->version."</td>\n";
		$str .= " </tr>\n";

		return $str;
	}

	function getRPMDescription()
	{
		$str = shell_exec("rpm --qf '%{DESCRIPTION}' -qp $dir/".$this->file);
		if (strlen($str)) {
			$pos = strpos($str, "\n\n");
			if ($pos) {
				return substr($str, 0, $pos);
			} else {
				return $str;
			}
		}
		return null;
	}
}

function compareDocument($a, $b) {
	$ret = 0;
	if ($ret = compareVersions($a->specversion, $b->specversion)) {
		return $ret;
	}

	if ($ret = strcmp($a->name, $b->name)) {
		return $ret;
	}

	#if ($ret = compareVersions($a->version, $b->version)) {
	#	return $ret;
	#}

	return 0;
}

function compareVersions($a, $b)
{
	/* 'beta' versions win */ 
	if (!strcmp($a, "beta"))
		if (!strcmp($b, "beta"))
			return 0;
		else
			return -1;
	if (!strcmp($b, "beta"))
		return 1;

	preg_match('/^(\d+)(\.(\d+)(\.(\d+)(-(\d+))?)?)?$/', $a, $a_matches);
	for ($i = 0; $i < 8; $i++) 
		if (!$a_matches[$i]) 
			$a_matches[$i] = 0;
	
	preg_match('/^(\d+)(\.(\d+)(\.(\d+)(-(\d+))?)?)?$/', $b, $b_matches);
	for ($i = 0; $i < 8; $i++) 
		if (!$b_matches[$i]) 
			$b_matches[$i] = 0;

	foreach (array(1,3,5,7) as $i) {
		if ($a_matches[$i] > $b_matches[$i])
			return -1;
		elseif ($a_matches[$i] < $b_matches[$i])
			return 1;
	}
	return 0;
}


?>
