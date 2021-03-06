<PART ID="tocdeskenv">
<TITLE>Desktop Environment</TITLE>

<CHAPTER id=deskstuff>
<TITLE>Desktop Environment</TITLE>

<SECT1 id=xdg-basedir>
<TITLE>Desktop Base Directory</TITLE>

<para>
Various specifications specify files and file formats. The
<xref linkend="std.XdgBasedir"> 
defines where these files should be looked for by defining one or more
base directories relative to which files should be located.
</para>
</SECT1>

<SECT1 id=xdg-entry>
<TITLE>Desktop Entries</TITLE>
<para>
The <xref linkend="std.XdgDesktop"> describes desktop entries: files
describing information about an application such as the name, icon,
and description. These files are used for application launchers and for
creating menus of applications that can be launched.
</para>
</SECT1>

<SECT1 id=xdg-menu>
<TITLE>Desktop Menu Specification</TITLE>
<para>
The <xref linkend="std.XdgMenu"> defines how to construct a user-visible
hierarchy of applications, typically displayed as a menu. It allows
third-party software to add menu items that work for all desktops,
and allows system administrators to edit menus in a way that affects
all desktops.
</para>
</SECT1>

<SECT1 id=xdg-iconthemes>
<TITLE>Icon Theme Specification</TITLE>
<para>
The <xref linkend="std.XdgIcon"> defines Icon Themes - a set of icons that
share a common look and feel. It defines the required directory layout,
the format of the icon theme description file and the icon data files,
and the icon lookup mechanism.
</para>
</SECT1>

</CHAPTER>

<chapter id=deskcmd>
<title>Desktop Commands</title>
<sect1 id="xdgutils">
<title>Xdg-utils</title>
<para>
Xdg-utils is a set of command line utilities that assist applications with
a variety of desktop integration tasks. Some of the utilities focus on
tasks commonly required during the installation of a desktop application.
The remainder focus on integration with the desktop environment
while the application is running. 
</para>
<para>
These utilities operate as described at <xref linkend="std.xdg.utils">
</para>

<!--
Overview

Xdg-utils consists of the following installation related tools:

    * xdg-desktop-menu, install desktop menu items
    * xdg-desktop-icon, install icons to the desktop
    * xdg-icon-resource, install icon resources
    * xdg-mime, query information about file type handling and
      add descriptions for new file types 

It also contains the following runtime integration tools:

    * xdg-open, open a file or URL in the user's preferred application
    * xdg-email, send mail using the user's preferred e-mail composer
    * xdg-screensaver, control the screensaver
-->

<sect2>
<title>Xdg-utils Commands</title>

m4_include(cmdlist.sgml)

</sect2>
</sect1>
</chapter>

</PART>
