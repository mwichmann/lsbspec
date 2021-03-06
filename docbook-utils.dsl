<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY % html "IGNORE">
<![%html;[
<!ENTITY % print "IGNORE">
<!ENTITY docbook.dsl PUBLIC "-//Norman Walsh//DOCUMENT DocBook HTML 
Stylesheet//EN" CDATA dsssl>
]]>
<!ENTITY % print "INCLUDE">
<![%print;[
<!ENTITY docbook.dsl PUBLIC "-//Norman Walsh//DOCUMENT DocBook Print 
Stylesheet//EN" CDATA dsssl>
]]>
<!ENTITY % iso.entities SYSTEM "dbiso.ent">
%iso.entities;
]>

<!--
;;#######################################################################
;;#                                                                     #
;;#                 The LSB Specification Project's                   	#
;;#                  Custion DocBook Stylesheet Layer                   #
;;#             Based on The GNOME Documentation Project's              #
;;#                    by Dave Mason dcm@redhat.com                     #
;;#            Based on Norman Walsh's Modular Stylesheets              #
;;#                                                                     #
;;#            This version substantially modified by                   #
;;#                  Nick Stoughton nick@freestandards.org 		#
;;#            This is intended as a drop-in replacement for            #
;;#            the cygnus-both.dsl file in DocBook Tools.               #
;;#           Just copy it to the location dbtools created              #
;;#                   and rename it cygnus-both.dsl                     #
;;#                                                                     #
;;#                       This is Version 1.0-4                         #
;;#                  patched to fix RTF output (#49677)                 #
;;#                patched to work with docbook-dsssl-1.72              #
;;#                 patched for ADDRESS output (#50605)                 #
;;#                      removed comment and remark                     #
;;#                      disabled use-id-as-filename                    #
;;#######################################################################

This stylesheet also contains my modifications for LDOC. Dennis Grace

-->

<style-sheet>


<style-specification id="print" use="docbook">
<style-specification-body> 

;;==========================================================================
;;                               PRINT
;;==========================================================================

;;======================================
;;General Options
;;======================================

;;Do you want to print on both sides of the paper?
(define %two-side% 
 #t)

;;Do you want enumerated sections? (E.g, 1.1, 1.1.1, 1.2, etc.)
(define %section-autolabel% 
 #t)

;;What is the default extension for graphics?
(define %graphic-default-extension% 
  "eps")

;;Show URL links? If the text of the link and the URL are identical,
;;the parenthetical URL is suppressed.
(define %show-ulinks%
 #t)

;;Put footnotes at the bottom of the page.
(define bop-footnotes
 #t)

;Make Ulinks footnotes to stop bleeding in the edges - this increases
;'jade --> print' time tremendously keep this in mind before
;complaining!
(define %footnote-ulinks%
  #f)

;;Tex Backend on
(define tex-backend 
 #t)

;;Define Line Spacing
(define %line-spacing-factor% 1.1)

;;Define the Paragraph Style
(define para-style
  (style
   font-size: %bf-size%
   font-weight: 'medium
   font-posture: 'upright
   font-family-name: %body-font-family%
   line-spacing: (* %bf-size% %line-spacing-factor%)))

(define ($object-titles-after$)
  (list (normalize "figure")))

;;======================================
;;Book Options
;;======================================


;;Do you want a title page for a Book?
(define %generate-book-titlepage%
 #t)

;;Do you want a separate page for the title?
(define %generate-book-titlepage-on-separate-page%
 #t)

;;Generate Set TOC?
(define %generate-set-toc%
 #t)

;;Generate Book TOC?
(define %generate-book-toc%
 #t)

;;Generate Book LOT for figures
(define (%generate-book-lot-list$)
  (list (normalize "figure")
        (normalize "table")))

;;What depth should the TOC generate?
;;not for appendices
;;And sets have a toc for everything up front
(define (toc-depth nd)
  (if (string=? (gi nd) (normalize "book"))
      (if (gi (parent nd)) 
      0
      3)
      (if (string=? (gi nd) (normalize "appendix"))
        0
        (if (string=? (gi nd) (normalize "set"))
          5
          1))))

;;Do you want a TOC for the element part?
(define %generate-part-toc% 
 #f)

;;Do you want the part toc on the part titlepage or separate?
(define %generate-part-toc-on-titlepage%
 #t)

;;Generate Part Title Page?
(define %generate-part-titlepage% 
  #t)

;;Do you want the Part intro on the part title page?
(define %generate-partintro-on-titlepage%
  #t)

;;What elements should have a LOT?
(define ($generate-book-lot-list$)
  (list (normalize "equation")
	(normalize "figure")
        (normalize "table")))

;;Do you want chapters enumerated?
(define %chapter-autolabel% 
 #t)

;;Do you want Chapter's and Appendix's 
;;to have automatic labels?
(define %chap-app-running-head-autolabel% 
  #t)


;;======================================
;;Article Options
;;======================================

;;Do you want a title page for an Article?
(define %generate-article-titlepage%
 #t)

;;Generate Article TOC?
(define %generate-article-toc% 
 #t)

;;Generate Article LOT for figures
(define (%generate-article-lot-list$)
  (list (normalize "figure")))

;;Do you want a separate page for the title?
(define %generate-article-titlepage-on-separate-page%
 #t)

;;Do you want the article toc on the titlepage or separate?
(define %generate-article-toc-on-titlepage%
 #t)

;; Restart page numbers in each component?
(define %page-number-restart% 
 #f)

;;Do you want to start new page numbers with each article?
(define %article-page-number-restart%
 #f)

;;Titlepage Separate?
(define (chunk-skip-first-element-list)
  '())

;;Titlepage Not Separate
;(define (chunk-skip-first-element-list)
;  (list (normalize "sect1")
;	(normalize "section")))

;;======================================
;;Columns
;;======================================

;;How many columns do you want?
(define %page-n-columns%
 1)

;;How much space between columns?
(define %page-column-sep%
 0.2in)

;;How many Columns on the titlepage?
(define %titlepage-n-columns%
  1)

;;Balance columns?
(define %page-balance-colums%
#t)

;;======================================
;;Fonts
;;======================================

;;Defines the general size of the text in the document. normal(10),
;;presbyopic(12), and large-type(24). 
(define %visual-acuity%
 "normal")

;;What font would you like for titles?
(define %title-font-family% 
  "Helvetica")

;;What font would you like for the body?
(define %body-font-family% 
 "Palatino")

;;What font would you like for mono-seq?
(define %mono-font-family% 
 "Courier New")

;;What font would you like for admonitions?
(define %admon-font-family% 
 "Palatino")

;;If the base fontsize is 10pt, and '%hsize-bump-factor%' is
;; 1.2, hsize 1 is 12pt, hsize 2 is 14.4pt, hsize 3 is 17.28pt, etc
(define %hsize-bump-factor% 
 1.1)

;;What size do you want the body fonts?
(define %bf-size%
 (case %visual-acuity%
    (("tiny") 8pt)
    (("normal") 10pt)
    (("presbyopic") 12pt)
    (("large-type") 24pt)))

(define-unit em %bf-size%)

;;======================================
;;Margins
;;======================================

(define %left-right-margin% 6pi)

;;How much indentation for the body?
(define %body-start-indent% 
 4pi)

;;How big is the left margin? (relative to physical page)
(define %left-margin% 
 8pi) ;white-paper-column

;;How big is the right margin? (relative to physical page)
(define %right-margin% 
 8pi) ;white-paper-column

;;How big do you want the margin at the top?
(define %top-margin%
(if (equal? %visual-acuity% "large-type")
      7.5pi
      5.5pi))

;;How big do you want the margin at the bottom?
(define %bottom-margin% 
 (if (equal? %visual-acuity% "large-type")
      8.5pi 
      8pi))

;; how high is the footer margin?
(define %footer-margin% 
  2pi)

;;Define the text width. (Change the elements in the formula rather
;;than the formula itself)
;(define %text-width% (- %page-width% (* %left-right-margin% 2)))
(define %text-width%  (- %page-width% (+ %left-margin% %right-margin%)))

;;Define the body width. (Change the elements in the formula rather
;;than the formula itself)
(define %body-width% 
 (- %text-width% %body-start-indent%))

;;Define distance between paragraphs
(define %para-sep% 
 (/ %bf-size% 2.0))

;;Define distance between block elements (figures, tables, etc.).
(define %block-sep% 
 (* %para-sep% 2.0))

;;Indent block elements?
(define %block-start-indent% 
  0pt)
;0pt

;;======================================
;;Admon Graphics
;;======================================

;;Do you want admon graphics on?
(define %admon-graphics%
 #f)

;;Where are the admon graphics?
(define %admon-graphics-path%
 "../images/")

;;======================================
;;Quadding
;;======================================

;;What quadding do you want by default; start, center, justify, or end?
(define %default-quadding%
 'justify)

;;What quadding for component titles(Chapter, Appendix, etc)?
(define %component-title-quadding% 
 'start)

;;What quadding for section titles?
(define %section-title-quadding% 
 'start)

;;What quadding for section sub-titles?
(define %section-subtitle-quadding%
 'start)

;;What quadding for article title?
(define %article-title-quadding% 
 'center)

;;What quadding for article sub-titles?
(define %article-subtitle-quadding%
 'center)

;;What quadding for division subtitles?
(define %division-subtitle-quadding% 
  'start)

;;What quadding for component subtitles?
(define %component-subtitle-quadding% 
  'start)




;;======================================
;;Paper Options
;;======================================

;;What size paper do you need? A4, USletter, USlandscape, or RedHat?
(define %paper-type%
 "A4")

;;Now define those paper types' width
(define %page-width%
 (case %paper-type%
    (("A4") 210mm)
    (("USletter") 8.5in)
    (("USlandscape") 11in)))

;;Now define those paper types' height
(define %page-height%
 (case %paper-type%
    (("A4") 297mm)
    (("USletter") 11in)
    (("USlandscape") 8.5in)))

;;======================================
;;Functions
;;======================================

(define (OLSTEP)
  (case
   (modulo (length (hierarchical-number-recursive "ORDEREDLIST")) 4)
	((1) 1.2em)
	((2) 1.2em)
	((3) 1.6em)
	((0) 1.4em)))

(define (ILSTEP) 1.0em)

(define (PROCSTEP ilvl)
  (if (> ilvl 1) 1.8em 1.4em))

(define (PROCWID ilvl)
  (if (> ilvl 1) 1.8em 1.4em))


(define ($comptitle$)
  (make paragraph
	font-family-name: %title-font-family%
	font-weight: 'bold
	font-size: (HSIZE 2)
	line-spacing: (* (HSIZE 2) %line-spacing-factor%)
	space-before: (* (HSIZE 2) %head-before-factor%)
	space-after: (* (HSIZE 2) %head-after-factor%)
	start-indent: 0pt
	first-line-start-indent: 0pt
	quadding: 'start
	keep-with-next?: #t
	(process-children-trim)))

;;Callouts are confusing in Postscript... fix them.
(define %callout-fancy-bug% 
 #f)


;;By default perils are centered and dropped into a box with a really
;;big border - I have simply decreased the border thickness -
;;unfortunately it takes all this to do it - sigh.
(define ($peril$)
  (let* ((title     (select-elements 
		     (children (current-node)) (normalize "title")))
	 (has-title (not (node-list-empty? title)))
	 (adm-title (if has-title 
			(make sequence
			  (with-mode title-sosofo-mode
			    (process-node-list (node-list-first title))))
			(literal
			 (gentext-element-name 
			  (current-node)))))
	 (hs (HSIZE 2)))
  (if %admon-graphics%
      ($graphical-admonition$)
      (make display-group
	space-before: %block-sep%
	space-after: %block-sep%
	font-family-name: %admon-font-family%
	font-size: (- %bf-size% 1pt)
	font-weight: 'medium
	font-posture: 'upright
	line-spacing: (* (- %bf-size% 1pt) %line-spacing-factor%)
	(make box
	  display?: #t
	  box-type: 'border
	  line-thickness: .5pt
	  start-indent: (+ (inherited-start-indent) (* 2 (ILSTEP)) 2pt)
	  end-indent: (inherited-end-indent)
	  (make paragraph
	    space-before: %para-sep%
	    space-after: %para-sep%
	    start-indent: 1em
	    end-indent: 1em
	    font-family-name: %title-font-family%
	    font-weight: 'bold
	    font-size: hs
	    line-spacing: (* hs %line-spacing-factor%)
	    quadding: 'center
	    keep-with-next?: #t
	    adm-title)
	  (process-children))))))

;;
;; fixes for ISO style - include a running header and footer.
;; there could be multiple years ... not sure if that would work!
;;
(define ($copyright-header-footer$)
  (let* ((copyright (select-elements (descendants (sgml-root-element))
		                     (normalize "copyright")))
         (year      (select-elements (descendants copyright)
		                     (normalize "year")))
	 (holder    (select-elements (descendants copyright)
	                             (normalize "holder"))))
  (if (node-list-empty? copyright)
      (empty-sosofo)
      (make sequence
	  font-weight: 'bold
	  (literal (dingbat "copyright"))
	  (literal " ")
	  (with-mode hf-mode
	      (process-node-list year))
	  (literal " ") 
	  (with-mode hf-mode
	      (process-node-list holder))
	  ;; (literal " ") 
          ;; (literal (dingbat "em-dash"))
	  ;; (literal " All rights reserved")
      ))))

(define ($edition-header-footer$)
  (let* ((title     (select-elements (descendants (sgml-root-element))
		                     (normalize "edition"))))
  (if (node-list-empty? title)
      (empty-sosofo)
      (make sequence
	  font-weight: 'bold
	  (with-mode hf-mode
	      (process-node-list title))))))

(define ($center-header$ #!optional (gi (gi)))
    ($edition-header-footer$))


(define ($center-footer$ #!optional (gi (gi)))
    ($copyright-header-footer$))

;;
;; removed preface from the standard list of page-restarting components
;;
(define (component-element-list)
  (list (normalize "chapter")
	(normalize "appendix") 
	(normalize "article")
	(normalize "glossary")
	(normalize "bibliography")
	(normalize "index")
	(normalize "colophon")
	(normalize "setindex")
	(normalize "reference")
	(normalize "refentry")
	(normalize "book"))) ;; just in case nothing else matches...


;;
;; bug fixed PART that restarts page numbering correctly if this is the very
;; first part in the book
;;
(element part
  (let* ((partinfo  (select-elements (children (current-node)) 
				     (normalize "docinfo")))
	 (partintro (select-elements (children (current-node)) 
				     (normalize "partintro")))

	 (nl        (titlepage-info-elements 
		     (current-node) 
		     partinfo
		     (if %generate-partintro-on-titlepage%
			 partintro
			 (empty-node-list)))))
    (make sequence
      (if %generate-part-titlepage%
	  (make simple-page-sequence
	    page-n-columns: %titlepage-n-columns%
	    page-number-restart?: (or %page-number-restart% 
				  (book-start?) 
				  (first-chapter?))
	    input-whitespace-treatment: 'collapse
	    use: default-text-style
	    (part-titlepage nl 'recto)
	    (make display-group
	      break-before: 'page
	      (part-titlepage nl 'verso)))
	  (empty-sosofo))

      (if (not (generate-toc-in-front))
          (process-children)
	  (empty-sosofo))

      ;; generate a part TOC on a separate page
      (if (and %generate-part-toc%
	       (not %generate-part-toc-on-titlepage%))
	  (make simple-page-sequence
	    page-n-columns: %page-n-columns%
	    page-number-format: ($page-number-format$ (normalize "toc"))
	    use: default-text-style
	    left-header:   ($left-header$ (normalize "toc"))
	    center-header: ($center-header$ (normalize "toc"))
	    right-header:  ($right-header$ (normalize "toc"))
	    left-footer:   ($left-footer$ (normalize "toc"))
	    center-footer: ($center-footer$ (normalize "toc"))
	    right-footer:  ($right-footer$ (normalize "toc"))
	    input-whitespace-treatment: 'collapse
	    (build-toc (current-node)
		       (toc-depth (current-node))))
	  (empty-sosofo))

      ;; this seems wrong relative to generate-toc-in-front,
      ;; goes *after* the content ??!
      (if (and (not (node-list-empty? partintro))
	       (not %generate-partintro-on-titlepage%))
	  ($process-partintro$ partintro #t)
	  (empty-sosofo))
      
      (if (generate-toc-in-front)
	  (process-children)
	  (empty-sosofo)))))

;;======================================
;;Non-printing Elements
;;======================================
(element TITLEABBREV (empty-sosofo))
(element SUBTITLE (empty-sosofo))
(element SETINFO (empty-sosofo))
(element BOOKINFO (empty-sosofo))
(element BIBLIOENTRY (empty-sosofo))
(element BIBLIOMISC (empty-sosofo))
(element BOOKBIBLIO (empty-sosofo))
(element SERIESINFO (empty-sosofo))
(element DOCINFO (empty-sosofo))
(element ARTHEADER (empty-sosofo))
;;(element ADDRESS (empty-sosofo))

;;Show comment element?
(define %show-comments%
  #t)

;;======================================
;;Formalpara titles
;;======================================


;;Change the way Formal Paragraph titles are displayed. The commented
;;out section will run the titles in the paragraphs. 
(element (formalpara title)
  (string-with-space (make sequence
  font-weight: 'bold
  ($runinhead$))))
  ;($lowtitle$ 5 7))

;;======================================
;;Inlines
;;======================================

(element application ($mono-seq$))
(element command ($bold-seq$))
(element filename ($mono-seq$))
(element guibutton ($bold-seq$))
(element guiicon ($bold-seq$))
(element guilabel ($italic-seq$))
(element guimenu ($bold-seq$))
(element guimenuitem ($bold-seq$))
(element hardware ($bold-mono-seq$))
(element keycap ($bold-seq$))
(element literal ($mono-seq$))
(element parameter ($italic-mono-seq$))
(element prompt ($mono-seq$))
(element symbol ($mono-seq$))
(element emphasis ($italic-seq$))
(element cmdsynopsis ($mono-seq$))
(element structname ($mono-seq$))
(element function (
  if (equal? (gi (parent (current-node))) (normalize "funcdef"))
	($mono-seq$)
	($mono-seq$(make sequence (process-children)(literal "()")))))

;=============================================
; extension to allow ISO-C varargs functions
;=============================================

(element varargs
  (make sequence
      (if (equal? (absolute-child-number (current-node)) 2)
	  (literal "(")
	  (empty-sosofo))
      (literal "...);")))
(element paramdef
  (let ((param (select-elements (children (current-node)) (normalize "parameter"))))
    (make sequence
      (if (equal? (child-number (current-node)) 1)
	  (literal "(")
	  (empty-sosofo))
      (if (equal? %funcsynopsis-style% 'ansi)
	  (process-children)
	  (process-node-list param))
      (if (or
	    (equal? (gi (ifollow (current-node))) (normalize "paramdef"))
	    (equal? (gi (ifollow (current-node))) (normalize "varargs")))
	  (literal ", ")
	  (literal ");")))))

;=============================================
; ISO Style additions
;=============================================
; change the english version of label-title-sep
; to remove the periods in several places the ISO guide
; says there shouldn't be any (Chapters, sections, appendixes, etc)
(define (local-en-label-title-sep)
  (list
   (list (normalize "abstract")		": ")
   (list (normalize "answer")		" ")
   (list (normalize "appendix")		" ")
   (list (normalize "caution")		"")
   (list (normalize "chapter")		" ")
   (list (normalize "equation")		" ")
   (list (normalize "example")		" ")
   (list (normalize "figure")		" ")
   (list (normalize "footnote")		" ")
   (list (normalize "glosssee")		": ")
   (list (normalize "glossseealso")	": ")
   (list (normalize "important")	": ")
   (list (normalize "note")		": ")
   (list (normalize "orderedlist")	". ")
   (list (normalize "part")		" ")
   (list (normalize "procedure")	". ")
   (list (normalize "prefix")		". ")
   (list (normalize "question")		" ")
   (list (normalize "refentry")		"")
   (list (normalize "reference")	". ")
   (list (normalize "refsect1")		". ")
   (list (normalize "refsect2")		". ")
   (list (normalize "refsect3")		". ")
   (list (normalize "sect1")		" ")
   (list (normalize "sect2")		" ")
   (list (normalize "sect3")		" ")
   (list (normalize "sect4")		" ")
   (list (normalize "sect5")		" ")
   (list (normalize "section")		" ")
   (list (normalize "simplesect")	". ")
   (list (normalize "seeie")		" ")
   (list (normalize "seealsoie")	" ")
   (list (normalize "step")		". ")
   (list (normalize "table")		" ")
   (list (normalize "tip")		": ")
   (list (normalize "warning")		"")
   ))

;; gentext-element-name returns the generated text that should be 
;; used to make reference to the selected element.
;;

(define (en-element-name)
  (list
   (list (normalize "abstract")		"&Abstract;")
   (list (normalize "answer")		"&Answer;")
   (list (normalize "appendix")		"&Appendix;")
   (list (normalize "article")		"&Article;")
   (list (normalize "bibliography")	"&Bibliography;")
   (list (normalize "book")		"&Book;")
   (list (normalize "calloutlist")	"")
   (list (normalize "caution")		"&Caution;")
   (list (normalize "chapter")		"")
   (list (normalize "copyright")	"&Copyright;")
   (list (normalize "dedication")	"&Dedication;")
   (list (normalize "edition")		"")
   (list (normalize "equation")		"&Equation;")
   (list (normalize "example")		"&Example;")
   (list (normalize "figure")		"&Figure;")
   (list (normalize "glossary")		"&Glossary;")
   (list (normalize "glosssee")		"&GlossSee;")
   (list (normalize "glossseealso")	"&GlossSeeAlso;")
   (list (normalize "important")	"&Important;")
   (list (normalize "index")		"&Index;")
   (list (normalize "colophon")		"&Colophon;")
   (list (normalize "setindex")		"&SetIndex;")
   (list (normalize "isbn")		"&isbn;")
   (list (normalize "legalnotice")	"&LegalNotice;")
   (list (normalize "msgaud")		"&MsgAud;")
   (list (normalize "msglevel")		"&MsgLevel;")
   (list (normalize "msgorig")		"&MsgOrig;")
   (list (normalize "note")		"&Note;")
   (list (normalize "part")		"&Chapter;")
   (list (normalize "preface")		"&Preface;")
   (list (normalize "procedure")	"&Procedure;")
   (list (normalize "pubdate")		"&Published;")
   (list (normalize "question")		"&Question;")
   (list (normalize "refentry")		"&RefEntry;")
   (list (normalize "reference")	"&Reference;")
   (list (normalize "refname")		"&RefName;")
   (list (normalize "revhistory")	"&RevHistory;")
   (list (normalize "refsect1")		"&RefSection;")
   (list (normalize "refsect2")		"&RefSection;")
   (list (normalize "refsect3")		"&RefSection;")
   (list (normalize "refsynopsisdiv")	"&RefSynopsisDiv;")
   (list (normalize "revision")		"&Revision;")
   (list (normalize "sect1")		"&Section;")
   (list (normalize "sect2")		"&Section;")
   (list (normalize "sect3")		"&Section;")
   (list (normalize "sect4")		"&Section;")
   (list (normalize "sect5")		"&Section;")
   (list (normalize "section")		"&Section;")
   (list (normalize "simplesect")	"&Section;")
   (list (normalize "seeie")		"&see;")
   (list (normalize "seealsoie")	"&seealso;")
   (list (normalize "set")		"&Set;")
   (list (normalize "sidebar")		"&Sidebar;")
   (list (normalize "step")		"&step;")
   (list (normalize "table")		"&Table;")
   (list (normalize "tip")		"&Tip;")
   (list (normalize "toc")		"&TableofContents;")
   (list (normalize "warning")		"&Warning;")
   ))

;; redefine inline equations to use only the ALT part if
;; it is provided
(element (inlineequation graphic) 
  (let ((alttag (select-elements (children (parent)) (normalize "alt"))))
    (if alttag
	(make sequence ($mono-seq$(literal (data alttag))))
	($img$))))
</style-specification-body>
</style-specification>


<!-- 
;;===========================================================================
;;                                HTML
;;===========================================================================
-->

<style-specification id="html" use="docbook">
<style-specification-body> 

;; this is necessary because right now jadetex does not understand
;; symbolic entities, whereas things work well with numeric entities.
(declare-characteristic preserve-sdata?
          "UNREGISTERED::James Clark//Characteristic::preserve-sdata?"
          #f)


;;=========================
;;Header HTML 4.0.1
;;=========================

(define %html-pubid% "-//W3C//DTD HTML 4.01//EN")

;;=========================
;;Common Stuff
;;=========================

;;Should there be a link to the legalnotice?
(define %generate-legalnotice-link%
  #t)

;;What graphics extensions allowed?
(define %graphic-extensions%
'("gif" "png" "jpg" "jpeg" "tif" "tiff" "eps" "epsf" ))

;;What mediaobject extensions allowed?
(define acceptable-mediaobject-extensions
'("gif" "png" "jpg" "jpeg" "tif" "tiff" "eps" "epsf" ))

;;What is the default extension for images?
(define %graphic-default-extension% "png")

;;Use element ids as filenames?
(define %use-id-as-filename%
 #t)


;;=========================
;;Book Stuff
;;=========================

;;Do you want a TOC for Sets?
(define %generate-set-toc% 
  #t)

;;Do you want a TOC for Books?
(define %generate-book-toc% 
  #t)

;;What depth should the TOC generate?
;;!Only top level of appendixes!
(define (toc-depth nd)
  (if (string=? (gi nd) (normalize "book"))
      3
      (if (string=? (gi nd) (normalize "appendix"))
        0
        3)))

;;What elements should have an LOT?
(define ($generate-book-lot-list$)
  (list (normalize "figure")
        (normalize "table")))

;;Do you want a title page for your Book?
(define %generate-book-titlepage%
#t)

;;=========================
;;Part Stuff
;;=========================

;;Should parts have TOCs?
(define %generate-part-toc% 
  #t)

;;Should part TOCs be on their titlepages?
(define %generate-part-toc-on-titlepage%
  #t)

;;Do you want a title page for your part?
(define %generate-part-titlepage% 
  #t)

;;Should the Part intro be on the part title page?
(define %generate-partintro-on-titlepage%
 #t)

(define %para-autolabel%
 #t)

;;========================
;;Chapter Stuff
;;=======================

;;No TOCs in Chapters
(define $generate-chapter-toc$
 (lambda ()
    #f))

;;=========================
;;Navigation
;;=========================

;;Should there be navigation at top?
(define %header-navigation%
 #t)

;;Should there be navigation at bottom?
(define %footer-navigation%
  #t)

;;Use tables to create the navigation?
(define %gentext-nav-use-tables%
 #t)

;;If tables are used for navigation, 
;;how wide should they be? 
(define %gentext-nav-tblwidth% 
"100%")

;;Add arrows to navigation (comment these 
;;out if you want admon graphics here)
(define (gentext-en-nav-prev prev) 
  (make sequence (literal "<<< Previous")))

;;Add arrows to navigation (comment these 
;;out if you want admon graphics here)
(define (gentext-en-nav-next next)
  (make sequence (literal "Next >>>")))


;;=========================
;;Tables and Lists
;;=========================

;;Should Variable lists be tables?
(define %always-format-variablelist-as-table%
 #f)

;;What is the length of the 'Term' in a variablelist?
(define %default-variablelist-termlength%
  20)

;;When true | If the terms are shorter than
;;the termlength above then the variablelist
;;will be formatted as a table.
(define %may-format-variablelist-as-table%
#t)

;;This overrides the tgroup definition
;;(copied from 1.20, dbtable.dsl).
;;It changes the table background color,
;;cell spacing and cell padding.
;;This is based on gtk-doc additions - thanks!

(element tgroup
  (let* ((wrapper   (parent (current-node)))
	 (frameattr (attribute-string (normalize "frame") wrapper))
	 (pgwide    (attribute-string (normalize "pgwide") wrapper))
	 (footnotes (select-elements (descendants (current-node))
				     (normalize "footnote")))
	 (border (if (equal? frameattr (normalize "none"))
		     '(("BORDER" "0"))
		     '(("BORDER" "1"))))
	 (bgcolor '(("BGCOLOR" "#E0E0E0")))
	 (width (if (equal? pgwide "1")
		    (list (list "WIDTH" ($table-width$)))
		    '()))
	 (head (select-elements (children (current-node)) (normalize "thead")))
	 (body (select-elements (children (current-node)) (normalize "tbody")))
	 (feet (select-elements (children (current-node)) (normalize "tfoot"))))
    (make element gi: "TABLE"
	  attributes: (append
		       border
		       width
		       bgcolor
		       '(("CELLSPACING" "0"))
		       '(("CELLPADDING" "4"))
		       (if %cals-table-class%
			   (list (list "CLASS" %cals-table-class%))
			   '()))
	  (process-node-list head)
	  (process-node-list body)
	  (process-node-list feet)
	  (make-table-endnotes))))

;;===================
;; Admon Graphics
;;===================

;;Should Admon Graphics be used?
(define %admon-graphics%
  #f)

;;Where are those admon graphics?
(define %admon-graphics-path%
  "./stylesheet-images/")

;;Given an admonition node, returns the
;;name of the graphic that should
;;be used for that admonition.
;;Define admon graphics usage
;;NOTE these will change to pngs 
;;soon in the GDP when Tigert gets 
;;the time to make special ones for us!
(define ($admon-graphic$ #!optional (nd (current-node)))
  (cond ((equal? (gi nd) (normalize "tip"))
	 (string-append %admon-graphics-path% "tip.gif"))
	((equal? (gi nd) (normalize "note"))
	 (string-append %admon-graphics-path% "note.gif"))
	((equal? (gi nd) (normalize "important"))
	 (string-append %admon-graphics-path% "important.gif"))
	((equal? (gi nd) (normalize "caution"))
	 (string-append %admon-graphics-path% "caution.gif"))
	((equal? (gi nd) (normalize "warning"))
	 (string-append %admon-graphics-path% "warning.gif"))
	(else (error (string-append (gi nd) " is not an admonition.")))))

;;Given an admonition node, returns 
;;the width of the graphic that will
;;be used for that admonition.
(define ($admon-graphic-width$ #!optional (nd (current-node)))
  "25")

;;
;; special version of $admonpara$, the function that prints
;; a paragraph in an admonition. Based on docbook-utils-1.79.
;; adds color to the paragraph.
;;
(define ($admonpara$)
  (let* ((title     (select-elements 
		     (children (parent (current-node))) (normalize "title")))
	 (has-title (not (node-list-empty? title)))
	 (adm-title (if has-title 
			(make sequence
			  (with-mode title-sosofo-mode
			    (process-node-list (node-list-first title)))
			  (literal (gentext-label-title-sep 
				    (gi (parent (current-node))))))
			(literal
			 (gentext-element-name 
			  (gi (parent (current-node))))
			 (gentext-label-title-sep 
			  (gi (parent (current-node))))))))
    (make element gi: "P"
	  attributes: (list 
	  		(list "STYLE" "color: #006600; background-color: #FFFFCC;")
		      )
	  (if (and (not %admon-graphics%) (= (child-number) 1))
	      (make element gi: "B"
		    adm-title)
	      (empty-sosofo))
	  (process-children))))

;;=========================
;;Labels
;;=========================

;;Enumerate Chapters?
(define %chapter-autolabel% 
 #t)

;;Enumerate Sections?
(define %section-autolabel%
 #t)

;; Function Synopsis
(define %funcsynopsis-style% 
 'ansi)

(define %funcsynopsis-decoration%
 #t)

;; redefine inline equations to use only the ALT part if
;; it is provided
(element (inlineequation graphic) 
  (let ((alttag (select-elements (children (parent)) (normalize "alt"))))
    (if alttag
	(make sequence ($mono-seq$(literal (data alttag))))
	($img$))))
;;=========================
;;    HTML Attributes
;;=========================

;;What attributes should be hung off 
;;of 'body'?
(define %body-attr%
 (list
   (list "BGCOLOR" "#FFFFFF")
   (list "TEXT" "#000000")
   (list "LINK" "#0000FF")
   (list "VLINK" "#840084")
   (list "ALINK" "#0000FF")))

;;Default extension for filenames?
(define %html-ext% 
  ".html")

;;Use a CSS stylesheet?
;;Which one? Should work on 
;;this one soon
;(define %stylesheet% 
;        "./gnome.css")

;;Use it
;(define %stylesheet-type% 
;"text/css")


;;========================
;;Title Pages for Books
;;=======================

(define (book-titlepage-recto-elements)
  (list (normalize "title")
	(normalize "subtitle")
	(normalize "edition")
	(normalize "corpauthor")
	(normalize "authorgroup")
	(normalize "author")
	(normalize "orgname")
	(normalize "graphic")
	(normalize "copyright")
	(normalize "revhistory")
	(normalize "legalnotice")
	(normalize "releaseinfo")
	(normalize "publisher")
	(normalize "isbn")))

;;========================
;;Title Pages for Articles
;;========================

;;Should Articles have a TOC?
(define %generate-article-toc% 
  #t)

;;Generate Article LOT for figures
(define (%generate-article-lot-list$)
  (list (normalize "figure")))

;;Which elements should appear 
;;on title page?
(define (article-titlepage-recto-elements)
  (list (normalize "title")
	(normalize "subtitle")
        (normalize "authorgroup")
        (normalize "copyright")
        (normalize "legalnotice")
        (normalize "abstract")))

;;How should elements on title page look?
(mode article-titlepage-recto-mode

;;Author name is too big - change it!
  (element author
    (let ((author-name  (author-string))
	  (author-affil (select-elements (children (current-node)) 
					 (normalize "affiliation"))))
      (make sequence      
	(make element gi: "H4"
	      attributes: (list (list "CLASS" (gi)))
	      (make element gi: "A"
		    attributes: (list (list "NAME" (element-id)))
		    (literal author-name)))
	(process-node-list author-affil))))

;;Address?
  (element address 
    (make sequence
      (make element gi: "DIV"
            attributes: (list (list "CLASS" (gi)))
            (process-children))))

;;Get rid of spam-producing "mailto" links
;;and get rid of email indentation  
  (element email
    (make sequence
      (make element gi: "DIV"
            attributes: (list (list "CLASS" (gi)))
            (process-children))))

;;Point Abstract to custom table function 
;;(See $dcm-abstract-object$ below. For default
;;use $semiformal-object$
  (element abstract
    (make element gi: "DIV"
          ($dcm-abstract-object$)))

  (element (abstract title) (empty-sosofo))

;;subtitle sizing
(element subtitle 
  (make element gi: "H4"
        attributes: (list (list "CLASS" (gi)))
        (process-children-trim))))

;;=================
;;    INLINES
;;=================

;Define my own series of fonts for various elements
(element application ($mono-seq$))
(element command ($bold-seq$))
(element filename ($mono-seq$))
(element guibutton ($bold-seq$))
(element guiicon ($bold-seq$))
(element guilabel ($bold-mono-seq$))
(element guimenu ($bold-seq$))
(element guimenuitem ($bold-seq$))
(element guisubmenu ($bold-seq$))
(element hardware ($bold-mono-seq$))
(element keycap ($bold-seq$))
(element literal ($mono-seq$))
(element parameter ($italic-mono-seq$))
(element prompt ($mono-seq$))
(element symbol ($mono-seq$))
(element emphasis ($italic-seq$))
(element cmdsynopsis ($mono-seq$))
(element structname ($mono-seq$))
(element function (
  if (equal? (gi (parent (current-node))) (normalize "funcdef"))
	($mono-seq$)
	($mono-seq$(make sequence (process-children)(literal "()")))))

;;Show comment element?
(define %show-comments%
  #t)

;;====================
;; General Formatting
;;====================

;;Formal Paras are ugly by default!
;;Make the title run in - otherwise 
;;you should use a sect!
(element formalpara
  (make element gi: "DIV"
	attributes: (list
		     (list "CLASS" (gi)))
  	(make element gi: "P"
	      (process-children))))

;;This is the old one 
;(element (formalpara title) 
;($lowtitle$ 5))

;;This is the new one
(element (formalpara title) 
  (make element gi: "B"
	($runinhead$)))

;;Make captions come after objects in the list
(define ($object-titles-after$)
  (list (normalize "figure")))


;; Handle qanda labelling with Q: A:
(define (qanda-defaultlabel)
  (normalize "qanda"))

;;From FreeBSD Sheets (Thanks!) Display Q and A in bigger bolder fonts

(element question
  (let* ((chlist   (children (current-node)))
	 (firstch  (node-list-first chlist))
	 (restch   (node-list-rest chlist)))
    (make element gi: "DIV"
	  attributes: (list (list "CLASS" (gi)))
	  (make element gi: "P" 
		(make element gi: "BIG"
		      (make element gi: "A"
			    attributes: (list
					 (list "NAME" (element-id)))
			    (empty-sosofo))
		      (make element gi: "B"
			    (literal (question-answer-label
				      (current-node)) " ")
			    (process-node-list (children firstch)))))
	  (process-node-list restch))))

;;Literal Elements

;;Indent Literal layouts?
(define %indent-literallayout-lines% 
  #f)

;;Indent Programlistings?
(define %indent-programlisting-lines%
  #f)

;;Number lines in Programlistings?
(define %number-programlisting-lines%
 #f)

;;Should verbatim items be 'shaded' with a table?
(define %shade-verbatim% 
 #t)

;;Define shade-verbatim attributes
(define ($shade-verbatim-attr$)
 (list
  (list "BORDER" "0")
  (list "BGCOLOR" "#E0E0E0")
  (list "WIDTH" ($table-width$))))
  
;;==================
;;    Refentry
;;==================

(element (group arg)
  (let ((choice (attribute-string (normalize "choice")))
        (rep    (attribute-string (normalize "rep"))))
    (make sequence
      (if (not (first-sibling? (current-node)))
	  (literal %arg-or-sep%)
	  (empty-sosofo))
      (process-children)
      (cond
       ((equal? rep (normalize "repeat")) (literal %arg-rep-repeat-str%))
       ((equal? rep (normalize "norepeat")) (literal %arg-rep-norepeat-str%))
       (else (literal %arg-rep-def-str%))))))

;;===================
;;    Entities
;;===================

;;Netscape doesn't handle trademark 
;;entity right at all!! Get rid of it.
;;Make a TM in a superscipt font.
(element trademark
  (make sequence
    (process-children)
    (make element gi: "sup"
    (literal "TM"))))


;;===================
;; New Definitions
;;==================

(define ($dcm-abstract-object$)
   (make element gi: "TABLE"
        attributes: '(("BORDER" "0")
                      ("BGCOLOR" "#E0E0E0")
                      ("WIDTH" "50%")
                      ("CELLSPACING" "0")
                      ("CELLPADDING" "0")
                      ("ALIGN" "CENTER"))
        (make element gi: "TR"
              (make element gi: "TD"
                    attributes: '(("VALIGN" "TOP"))
                    (make element gi: "B"
                    (literal "Abstract"))))
        (make element gi: "TR"
              (make element gi: "TD"
                    attributes: '(("VALIGN" "TOP"))
                    (process-children)))))

;;Redefine Titlepage Separator on Articles

(define (article-titlepage-separator side)
  (make empty-element gi: "HR"
  attributes: '(("WIDTH" "75%")
                 ("ALIGN" "CENTER")
                 ("COLOR" "#000000")
                 ("SIZE" "1"))))




(define (chunk-element-list)
  (list (normalize "preface")
	(normalize "chapter")
	(normalize "appendix") 
	(normalize "article")
	(normalize "glossary")
	(normalize "bibliography")
	(normalize "index")
	(normalize "colophon")
	(normalize "setindex")
	(normalize "reference")
	(normalize "refentry")
	(normalize "part")
	(normalize "sect1") 
	(normalize "section") 
	(normalize "book") ;; just in case nothing else matches...
	(normalize "set")  ;; sets are definitely chunks...
	))

;;Do you want Callouts to be graphics?
(define %callout-graphics%
#f)


;;Make Callout graphics PNGs
(define %callout-graphics-path%
  "./imagelib/callouts/")

  ;; Redefine $callout-bug$ to support the %callout-graphic-ext%
  ;; variable.
  (define ($callout-bug$ conumber)
    (let ((number (if conumber (format-number conumber "1") "0")))
      (if conumber
          (if %callout-graphics%
              (if (<= conumber %callout-graphics-number-limit%)
                  (make empty-element gi: "IMG"
                        attributes: (list (list "SRC"
                                                (root-rel-path
                                                 (string-append
                                                  %callout-graphics-path%
                                                  number
                                                  %callout-graphics-ext%)))
                                          (list "HSPACE" "0")
                                          (list "VSPACE" "0")
                                          (list "BORDER" "0")
                                          (list "ALT"
                                                (string-append
                                                 "(" number ")"))))
                  (make element gi: "B"
                        (literal "(" (format-number conumber "1") ")")))
              (make element gi: "B"
                    (literal "(" (format-number conumber "1") ")")))
          (make element gi: "B"
         (literal "(??)")))))

; enhance a simplelist member to generate the anchor points
; used extensively by mklibspec.
(element member
  (let* ((type (inherited-attribute-string (normalize "type")))
         (id   (attribute-string (normalize "id"))))
	    (make sequence
	    (if id
		(make element gi: "A"
		      attributes: (list (list "NAME" id))
		      (empty-sosofo))
	         (empty-sosofo))
	    (if (equal? type (normalize "inline"))
		(make sequence
		  (process-children-trim)
		  (if (not (last-sibling?))
		      (literal ", ")
		      (literal "")))
		(process-children)))))


;=============================================
; extension to allow ISO-C varargs functions
;=============================================

; NB, a varargs tag is always the last element in a funcprototype,
; so we automatically include the closing paren and semi colon.
; The first element should always be the funcdef, so only put out the opening
; paren if this is the second child
(element varargs
  (make sequence
      (if (equal? (absolute-child-number (current-node)) 2)
	  (literal "(")
	  (empty-sosofo))
      (literal "...);")))
(element paramdef
  (let ((param (select-elements (children (current-node)) (normalize "parameter"))))
    (make sequence
      (if (equal? (child-number (current-node)) 1)
	  (literal "(")
	  (empty-sosofo))
      (if (equal? %funcsynopsis-style% 'ansi)
	  (process-children)
	  (process-node-list param))
      (if (or
	    (equal? (gi (ifollow (current-node))) (normalize "paramdef"))
	    (equal? (gi (ifollow (current-node))) (normalize "varargs")))
	  (literal ", ")
	  (literal ");")))))


</style-specification-body>
</style-specification>

<external-specification id="docbook" document="docbook.dsl">

</style-sheet>
