<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
  <!-- HTML by default -->
  <!ENTITY % html "INCLUDE">
  <!ENTITY % print "IGNORE">

  <![%print;[
    <!ENTITY % html "IGNORE">
    <!ENTITY docbook.dsl PUBLIC 
        "-//Norman Walsh//DOCUMENT DocBook Print Stylesheet//EN" CDATA DSSSL>
  ]]>

  <![%html;[
     <!ENTITY docbook.dsl PUBLIC
        "-//Norman Walsh//DOCUMENT DocBook HTML Stylesheet//EN" CDATA DSSSL>
  ]]>
]>

<!-- $Progeny: progeny.dsl,v 1.3 2002/01/18 06:21:07 dsp Exp $ -->

<style-sheet>

<style-specification id="html" use="docbook">
<style-specification-body>

<!-- When we chunk, it would be nice to have predictable filenames for the
     components. This variable lets the DocBook stylesheet know to look for
     id attributes on sections, chapters, etc. to use as filenames. -->
(define %use-id-as-filename% #t)

</style-specification-body>
</style-specification>

<style-specification id="print" use="docbook">
<style-specification-body>

<!-- DSSSL for print output, i.e., TeX, RTF, MIF, goes here  -->

</style-specification-body>
</style-specification>

<external-specification id="docbook" document="docbook.dsl">

</style-sheet>
