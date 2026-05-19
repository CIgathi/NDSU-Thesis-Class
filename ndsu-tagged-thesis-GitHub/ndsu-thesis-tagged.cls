%---------------------------------------------------------------------------------------------------------
%---------------------------------------------------------------------------------------------------------
% --- README file contents of the ndsu-thesis-tagged LaTeX document class
%  Developed and maintained by C. Igathinathane, ABEN, NDSU - based on previous class
%  Bugs report sent to i.cannayen@ndsu.edu  
%
% This is the ndsu-thesis-2026 document class - for tagged pdf support. This is an upgraded version of 
% ndsu-thesis document class. Copyright 2026. Igathinathane Cannayen.
%
% This work may be distributed and/or modified under the conditions of the LaTeX
% Project Public License; LPPL Version 1.3c 2008-05-04 or  (at your option) any 
% later version. 
%
% Copyright 1999 2002-2008 LaTeX3 Project 
%    Everyone is allowed to distribute verbatim copies of this
%    license document, but modification of it is not allowed.
%
% The latest version of this license is in: https://www.latex-project.org/lppl.txt 
%
% This work has the LPPL maintenance status `maintained'.
%
% The current maintainer of this work is Igathinathane Cannayen.
% Contact: i.cannayen@ndsu for bug reports and inquiries.
%
% This new class or the old can be used independently, and these classes are 
% appropriately invoked through the documentclass command with required options. 
% It can be used to produce disquisitions (MS and PhD) for submission to the NDSU 
% Graduate School and the final acceptance rests with the North Dakota State University Dissertation 
% and Thesis Coordinator, and the Graduate Committee.  
%
% Based on the previous ndsu-thesis-2022 class - Further details can be had from that class
%
%
%---------------------------------------------------------------------------------------------------------
%  Use the following Metadata commands (above documentclass) for generating tagged PDF
%---------------------------------------------------------------------------------------------------------
%
%%******************* Metadata for PDF tagging *** [Updated: 08-05-2026] *******************
%\DocumentMetadata{
% lang=en-US,
% tagging=on,
% tagging-setup={math/setup=mathml-SE,math/alt/use},
% pdfversion=2.0,
% pdfstandard=ua-2,
% pdfstandard=a-4f,
% uncompress
%}
%
%
% Use LuaLaTeX (instead of pdfLaTeX) or lualatemk for compiling and better production of tags
%
%---------------------------------------------------------------------------------------------------------
%  Update history
%  Last updated: 2026-05-12;  LOA, LOS now simple list tagging compatible
%  Last updated: 2026-05-11
%  Last updated: 2026-04-26
%---------------------------------------------------------------------------------------------------------
%---------------------------------------------------------------------------------------------------------
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ndsu-thesis-tagged}[2026/04/24 NDSU Thesis Class for Tagged PDF]
\DeclareOption{draft}{\PassOptionsToClass{draft}{book}}
\def\@@ptsize{12pt} % default 12pt recommended for accessibility
\DeclareOption{9pt}{\def\@@ptsize{9pt}}
\DeclareOption{10pt}{\def\@@ptsize{10pt}}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{12pt}{\def\@@ptsize{12pt}}

% -----------------------------------------------------------------------
% FONT OPTIONS — declared here, BEFORE the catch-all \DeclareOption*
% and the first \ProcessOptions*\relax, so font names are consumed by
% this class and never forwarded to the book base class.
% -----------------------------------------------------------------------
\newcommand{\fonttype}{none2}
% Serif
\DeclareOption{bookman}{\renewcommand{\fonttype}{bookman}}
\DeclareOption{charter}{\renewcommand{\fonttype}{charter}}
%\DeclareOption{gentium}{\renewcommand{\fonttype}{gentium}}
\DeclareOption{kpfonts}{\renewcommand{\fonttype}{kpfonts}}
\DeclareOption{libertine}{\renewcommand{\fonttype}{libertine}}
\DeclareOption{lmodern}{\renewcommand{\fonttype}{lmodern}}
\DeclareOption{mathdesign}{\renewcommand{\fonttype}{mathdesign}}
\DeclareOption{mathptmx}{\renewcommand{\fonttype}{mathptmx}}
\DeclareOption{mlmodern}{\renewcommand{\fonttype}{mlmodern}}
\DeclareOption{newcent}{\renewcommand{\fonttype}{newcent}}
\DeclareOption{newpx}{\renewcommand{\fonttype}{newpx}}
\DeclareOption{newtx}{\renewcommand{\fonttype}{newtx}}
\DeclareOption{palatino}{\renewcommand{\fonttype}{palatino}}
\DeclareOption{tgtermes}{\renewcommand{\fonttype}{tgtermes}}
\DeclareOption{times}{\renewcommand{\fonttype}{times}}
\DeclareOption{tgbonum}{\renewcommand{\fonttype}{tgbonum}}
\DeclareOption{tgpagella}{\renewcommand{\fonttype}{tgpagella}}
\DeclareOption{tgschola}{\renewcommand{\fonttype}{tgschola}}
\DeclareOption{utopia}{\renewcommand{\fonttype}{utopia}}
\DeclareOption{newcomputermodern}{\renewcommand{\fonttype}{newcomputermodern}}
% Sans-serif
\DeclareOption{clearsans}{\renewcommand{\fonttype}{clearsans}}
\DeclareOption{cmbright}{\renewcommand{\fonttype}{cmbright}}
\DeclareOption{firasans}{\renewcommand{\fonttype}{firasans}}
\DeclareOption{helvet}{\renewcommand{\fonttype}{helvet}}
\DeclareOption{helvetica}{\renewcommand{\fonttype}{helvet}}
\DeclareOption{kurier}{\renewcommand{\fonttype}{kurier}}
\DeclareOption{lxfonts}{\renewcommand{\fonttype}{lxfonts}}
\DeclareOption{sansmathfonts}{\renewcommand{\fonttype}{sansmathfonts}}
\DeclareOption{zlmtt}{\renewcommand{\fonttype}{zlmtt}}
% Accessibility-focused
\DeclareOption{atkinson}{\renewcommand{\fonttype}{atkinson}}
\DeclareOption{sourceserif}{\renewcommand{\fonttype}{sourceserif}}
\DeclareOption{sourcesans}{\renewcommand{\fonttype}{sourcesans}}
\DeclareOption{charis}{\renewcommand{\fonttype}{charis}}
\DeclareOption{opensans}{\renewcommand{\fonttype}{opensans}}
\DeclareOption{cabin}{\renewcommand{\fonttype}{cabin}}
\DeclareOption{opendyslexic}{\renewcommand{\fonttype}{opendyslexic}}
% System fonts (OS install required)
\DeclareOption{verdana}{\renewcommand{\fonttype}{verdana}}
\DeclareOption{georgia}{\renewcommand{\fonttype}{georgia}}

% Catch-all: pass any remaining unknown options to the book base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions*\relax
\LoadClass[oneside,notitlepage,\@@ptsize]{book}

% RequirePackage command and other essential packages used
\RequirePackage{lmodern}   
\RequirePackage{xurl}

\setlength{\marginparwidth}{2cm}
\RequirePackage[colorinlistoftodos,prependcaption,textsize=scriptsize]{todonotes}
\RequirePackage{lineno}
\RequirePackage{setspace}
\RequirePackage{amsmath}
\RequirePackage{accsupp}   % for ActualText in glyphs

%\RequirePackage{amsthm}
\RequirePackage{fontspec}% LuaTeX - all OTT fonts are now available trhough \setmainfont{...} [...]
\RequirePackage{amsfonts}
%\RequirePackage{amssymb}
%\RequirePackage{chemformula} % chemicals easy typesetting
\RequirePackage[version=4]{mhchem} % Tagged Compatible chemistry package
\RequirePackage{titling}
\RequirePackage{ifthen}
\RequirePackage{titlesec}
\RequirePackage{indentfirst}
\RequirePackage[titles]{tocloft}
% -----------------------------------------------------------------------
% Patch developed with assistance from Claude AI (Anthropic, 2026).
% Resolves tocloft + hyperref + DocumentMetadata hyperlinking incompatibility.
%
% Fix: When \DocumentMetadata is present, latex-lab-testphase-toc.sty defines
% \hyper@nopatch@toc, which prevents hyperref from patching \contentsline.
% Instead, the testphase kernel injects hyperlinks via contentsline/text/before
% and contentsline/page/before hooks -- but ONLY inside its own \@dottedtocline.
% tocloft's \l@chapter and \l@section bypass \@dottedtocline entirely, so
% those hooks never fire for chapter/section TOC entries.
% This patch manually fires the hooks inside tocloft's \l@chapter and \l@section,
% restoring hyperlinks. It is a no-op when \DocumentMetadata is absent.
% Subsection and below use \@dottedtocline (patched by testphase) -- no fix needed.
% LOF and LOT entries also use \@dottedtocline -- also covered automatically.
% -----------------------------------------------------------------------
\AddToHook{begindocument/before}{%
  \@ifpackageloaded{hyperref}{%
    \makeatletter
    %% Helper: fire text hooks around content if \@contentsline@destination is set
    \def\@cft@fire@text#1#2#3{%
      \ifx\@contentsline@destination\@empty
        #2%
      \else
        \UseHookWithArguments{contentsline/text/before}{4}%
          {#1}{#2}{#3}{\@contentsline@destination}%
        #2%
        \UseHookWithArguments{contentsline/text/after}{4}%
          {#1}{#2}{#3}{\@contentsline@destination}%
      \fi
    }%
    %% Helper: fire page hooks around page number
    \def\@cft@fire@page#1#2#3{%
      \ifx\@contentsline@destination\@empty
        #3%
      \else
        \UseHookWithArguments{contentsline/page/before}{4}%
          {#1}{#2}{#3}{\@contentsline@destination}%
        #3%
        \UseHookWithArguments{contentsline/page/after}{4}%
          {#1}{#2}{#3}{\@contentsline@destination}%
      \fi
    }%
    %% chapter (toclevel 0)
    \def\cftchapfillnum#1{%
      {\cftchapleader}\nobreak
      \hb@xt@\@pnumwidth{\hfil\normalfont\normalcolor
        \@cft@fire@page{0}{}{\cftchappagefont #1}%
      }\cftchapafterpnum\par}%
    \def\l@chapter#1#2{%
      \ifnum \c@tocdepth >\m@ne
        \addpenalty{-\@highpenalty}%
        \vskip \cftbeforechapskip
        {\leftskip \cftchapindent\relax \rightskip \@tocrmarg
         \parfillskip -\rightskip
         \parindent \cftchapindent\relax\@afterindenttrue
         \interlinepenalty\@M \leavevmode
         \@tempdima \cftchapnumwidth\relax
         \let\@cftbsnum\cftchappresnum \let\@cftasnum\cftchapaftersnum
         \let\@cftasnumb\cftchapaftersnumb
         \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
         \@cft@fire@text{0}{{\cftchapfont #1}}{#2}\nobreak
         \cftchapfillnum{#2}}%
      \fi}%
    %% section (toclevel 1)
    \def\cftsecfillnum#1{%
      {\cftsecleader}\nobreak
      \hb@xt@\@pnumwidth{\hfil\normalfont\normalcolor
        \@cft@fire@page{1}{}{\cftsecpagefont #1}%
      }\cftsecafterpnum\par}%
    \def\l@section#1#2{%
      \ifnum \c@tocdepth >\z@
        \if@cfthaschapter\vskip \cftbeforesecskip
        \else\addpenalty\@secpenalty\addvspace{\cftbeforesecskip}\fi
        {\leftskip \cftsecindent\relax \rightskip \@tocrmarg
         \parfillskip -\rightskip
         \parindent \cftsecindent\relax\@afterindenttrue
         \interlinepenalty\@M \leavevmode
         \@tempdima \cftsecnumwidth\relax
         \let\@cftbsnum\cftsecpresnum \let\@cftasnum\cftsecaftersnum
         \let\@cftasnumb\cftsecaftersnumb
         \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
         \@cft@fire@text{1}{{\cftsecfont #1}}{#2}\nobreak
         \cftsecfillnum{#2}}%
      \fi}%
    %% subsection (toclevel 2)
    \def\cftsubsecfillnum#1{%
      {\cftsubsecleader}\nobreak
      \hb@xt@\@pnumwidth{\hfil\normalfont\normalcolor
        \@cft@fire@page{2}{}{\cftsubsecpagefont #1}%
      }\cftsubsecafterpnum\par}%
    \def\l@subsection#1#2{%
      \ifnum \c@tocdepth >\@ne
        \vskip \cftbeforesubsecskip
        {\leftskip \cftsubsecindent\relax \rightskip \@tocrmarg
         \parfillskip -\rightskip
         \parindent \cftsubsecindent\relax\@afterindenttrue
         \interlinepenalty\@M \leavevmode
         \@tempdima \cftsubsecnumwidth\relax
         \let\@cftbsnum\cftsubsecpresnum \let\@cftasnum\cftsubsecaftersnum
         \let\@cftasnumb\cftsubsecaftersnumb
         \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
         \@cft@fire@text{2}{{\cftsubsecfont #1}}{#2}\nobreak
         \cftsubsecfillnum{#2}}%
      \fi}%
    %% subsubsection (toclevel 3)
    \def\cftsubsubsecfillnum#1{%
      {\cftsubsubsecleader}\nobreak
      \hb@xt@\@pnumwidth{\hfil\normalfont\normalcolor
        \@cft@fire@page{3}{}{\cftsubsubsecpagefont #1}%
      }\cftsubsubsecafterpnum\par}%
    \def\l@subsubsection#1#2{%
      \ifnum \c@tocdepth >\tw@
        \vskip \cftbeforesubsubsecskip
        {\leftskip \cftsubsubsecindent\relax \rightskip \@tocrmarg
         \parfillskip -\rightskip
         \parindent \cftsubsubsecindent\relax\@afterindenttrue
         \interlinepenalty\@M \leavevmode
         \@tempdima \cftsubsubsecnumwidth\relax
         \let\@cftbsnum\cftsubsubsecpresnum \let\@cftasnum\cftsubsubsecaftersnum
         \let\@cftasnumb\cftsubsubsecaftersnumb
         \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
         \@cft@fire@text{3}{{\cftsubsubsecfont #1}}{#2}\nobreak
         \cftsubsubsecfillnum{#2}}%
      \fi}%
    %% paragraph (toclevel 4)
    \def\cftparafillnum#1{%
      {\cftparaleader}\nobreak
      \hb@xt@\@pnumwidth{\hfil\normalfont\normalcolor
        \@cft@fire@page{4}{}{\cftparapagefont #1}%
      }\cftparaafterpnum\par}%
    \def\l@paragraph#1#2{%
      \ifnum \c@tocdepth >3\relax
        \vskip \cftbeforeparaskip
        {\leftskip \cftparaindent\relax \rightskip \@tocrmarg
         \parfillskip -\rightskip
         \parindent \cftparaindent\relax\@afterindenttrue
         \interlinepenalty\@M \leavevmode
         \@tempdima \cftparanumwidth\relax
         \let\@cftbsnum\cftparapresnum \let\@cftasnum\cftparaaftersnum
         \let\@cftasnumb\cftparaaftersnumb
         \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
         \@cft@fire@text{4}{{\cftparafont #1}}{#2}\nobreak
         \cftparafillnum{#2}}%
      \fi}%
    %% subparagraph (toclevel 5)
    \def\cftsubparafillnum#1{%
      {\cftsubparaleader}\nobreak
      \hb@xt@\@pnumwidth{\hfil\normalfont\normalcolor
        \@cft@fire@page{5}{}{\cftsubparapagefont #1}%
      }\cftsubparaafterpnum\par}%
    \def\l@subparagraph#1#2{%
      \ifnum \c@tocdepth >4\relax
        \vskip \cftbeforesubparaskip
        {\leftskip \cftsubparaindent\relax \rightskip \@tocrmarg
         \parfillskip -\rightskip
         \parindent \cftsubparaindent\relax\@afterindenttrue
         \interlinepenalty\@M \leavevmode
         \@tempdima \cftsubparanumwidth\relax
         \let\@cftbsnum\cftsubparapresnum \let\@cftasnum\cftsubparaaftersnum
         \let\@cftasnumb\cftsubparaaftersnumb
         \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
         \@cft@fire@text{5}{{\cftsubparafont #1}}{#2}\nobreak
         \cftsubparafillnum{#2}}%
      \fi}%
    %% figure entries in LOF (toclevel 0 for figures)
    \def\cftfigfillnum#1{%
      {\cftfigleader}\nobreak
      \hb@xt@\@pnumwidth{\hfil\normalfont\normalcolor
        \@cft@fire@page{0}{}{\cftfigpagefont #1}%
      }\cftfigafterpnum\par}%
    \def\l@figure#1#2{%
      \ifnum \c@lofdepth >\z@
        \vskip \cftbeforefigskip
        {\leftskip \cftfigindent\relax \rightskip \@tocrmarg
         \parfillskip -\rightskip
         \parindent \cftfigindent\relax\@afterindenttrue
         \interlinepenalty\@M \leavevmode
         \@tempdima \cftfignumwidth\relax
         \let\@cftbsnum\cftfigpresnum \let\@cftasnum\cftfigaftersnum
         \let\@cftasnumb\cftfigaftersnumb
         \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
         \@cft@fire@text{0}{{\cftfigfont #1}}{#2}\nobreak
         \cftfigfillnum{#2}}%
      \fi}%
    %% table entries in LOT (toclevel 0 for tables)
    \def\cfttabfillnum#1{%
      {\cfttableader}\nobreak
      \hb@xt@\@pnumwidth{\hfil\normalfont\normalcolor
        \@cft@fire@page{0}{}{\cfttabpagefont #1}%
      }\cfttabafterpnum\par}%
    \def\l@table#1#2{%
      \ifnum \c@lotdepth >\z@
        \vskip \cftbeforetabskip
        {\leftskip \cfttabindent\relax \rightskip \@tocrmarg
         \parfillskip -\rightskip
         \parindent \cfttabindent\relax\@afterindenttrue
         \interlinepenalty\@M \leavevmode
         \@tempdima \cfttabnumwidth\relax
         \let\@cftbsnum\cfttabpresnum \let\@cftasnum\cfttabaftersnum
         \let\@cftasnumb\cfttabaftersnumb
         \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
         \@cft@fire@text{0}{{\cfttabfont #1}}{#2}\nobreak
         \cfttabfillnum{#2}}%
      \fi}%
    %% Custom newfloat lists: scheme, listing, appendixfigure, appendixtable,
    %% appendixscheme, appendixlisting.
    %% newfloat does \let\l@scheme\l@figure at load time (before this hook),
    %% so those still hold the old unpatched \l@figure. Patch each by name.
    \def\@cft@newfloat@entry#1#2{%
      \expandafter\def\csname l@#1\endcsname##1##2{%
        \ifnum #2>\z@
          \vskip \cftbeforefigskip
          {\leftskip \cftfigindent\relax \rightskip \@tocrmarg
           \parfillskip -\rightskip
           \parindent \cftfigindent\relax\@afterindenttrue
           \interlinepenalty\@M \leavevmode
           \@tempdima \cftfignumwidth\relax
           \let\@cftbsnum\cftfigpresnum \let\@cftasnum\cftfigaftersnum
           \let\@cftasnumb\cftfigaftersnumb
           \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
           \@cft@fire@text{0}{{\cftfigfont ##1}}{##2}\nobreak
           \cftfigfillnum{##2}}%
        \fi}%
    }%
    \@cft@newfloat@entry{scheme}{\c@lofdepth}%
    \@cft@newfloat@entry{listing}{\c@lofdepth}%
    \@cft@newfloat@entry{appendixfigure}{\c@lofdepth}%
    \@cft@newfloat@entry{appendixtable}{\c@lotdepth}%
    \@cft@newfloat@entry{appendixscheme}{\c@lofdepth}%
    \@cft@newfloat@entry{appendixlisting}{\c@lofdepth}%
    \makeatother
  }{}%
}

\RequirePackage[normalem]{ulem} % replacing soul
\RequirePackage[dvipsnames,svgnames,x11names,table]{xcolor}
\RequirePackage{mwe}
\RequirePackage{kantlipsum}
\RequirePackage{subfig}
\RequirePackage[figure,table]{totalcount}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage[within=chapter]{newfloat}
\RequirePackage[labelsep=period]{caption}
\RequirePackage{comment}
\RequirePackage{tikz}
\RequirePackage{pgfkeys}
\RequirePackage{xparse}
\usetikzlibrary{matrix, arrows, decorations.pathmorphing}
\RequirePackage{etoolbox}
\RequirePackage{xtab}  % required for other commands
\RequirePackage{siunitx}   % [binary-units = true]   
\sisetup{detect-all}% maintain text font in SI items
\RequirePackage{float}
\RequirePackage[stable]{footmisc}% footnote in section and beyond
\RequirePackage{pdflscape} 
\RequirePackage{afterpage}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{ragged2e}
\RequirePackage{xltabular}% for full-width longtable replacing incompatible tabularray; use multicolumn or minipage for footnotes

%% -----------------------------------------------------------------------
%% Fix: booktabs rules extend beyond right margin in xltabular under
%% \DocumentMetadata. The tagging kernel patches LT@bchunk to use
%% \tabskip\LTleft ... \tabskip\LTright inside \halign to\hsize.
%% When LTleft=\fill and LTright=\fill (xltabular default for centred),
%% the rule width inherits this fill and overshoots the text block.
%% Fix: redefine xltabular to set LTleft=0pt LTright=0pt for fixed-width
%% tables (the normal \textwidth case), preserving l/c/r positioning.
%% -----------------------------------------------------------------------

\RequirePackage{xspace}
\RequirePackage{rotating}
\RequirePackage{fancyvrb}% for not compatible listings package
\RequirePackage{textcomp}
\RequirePackage{wasysym}
\RequirePackage{comment}
\RequirePackage{enumitem}
\RequirePackage[american]{babel} % english
\RequirePackage{suffix}% star version newcommands 
\RequirePackage{csquotes}
\RequirePackage[export]{adjustbox}
\RequirePackage{xkeyval}

% Other incompatible packages:
% [utf8]{inputenc} and [T2A,T1]{fontenc}% for pdflatex
% threeparttable, listings, tabularray (tblr environment)

\RequirePackage[linktoc=all,hidelinks,breaklinks=true,%
  bookmarks=true,bookmarksnumbered=true,%
  pdfdisplaydoctitle,pdfusetitle]{hyperref}%\RequirePackage{longtable} 
\RequirePackage{bookmark}
\RequirePackage[nameinlink]{cleveref} %capitalise, noabbrev 

% To include scheme float to the cleveref
\crefname{scheme}{sch.}{schs.}
\Crefname{scheme}{Scheme}{Schemes}
\crefname{listing}{lst.}{lsts.}
\Crefname{listing}{Listing}{Listings}

% Url better breaking + defining characters (alphabets and others) to break 
\Urlmuskip=0mu plus 1mu\relax

\def\UrlBreaks{\do\.\do\@\do\\\do\/\do\!\do\_\do\|\do\;\do\>\do\]%
  \do\)\do\,\do\?\do\'\do\+\do\=\do\#%
  \do\/\do\a\do\b\do\c\do\d\do\e\do\f%
  \do\g\do\h\do\i\do\j\do\k\do\l\do\m%f
  \do\n\do\o\do\p\do\q\do\r\do\s\do\t%
  \do\u\do\v\do\w\do\x\do\y\do\z%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G%g
  \do\H\do\I\do\J\do\K\do\L\do\M\do\N%
  \do\O\do\P\do\Q\do\R\do\S\do\T\do\U%
  \do\V\do\W\do\X\do\Y\do\Z%
  \do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9\do\0}%

% Overall  
\urlstyle{same}  % same font used for url than the regular tt font

\captionsetup[table]{skip=\baselineskip,labelfont={normalsize,bf},singlelinecheck=false}
\captionsetup[figure]{labelfont={normalsize,bf},singlelinecheck=false} 
\captionsetup[scheme]{labelfont={normalsize,bf},singlelinecheck=false}
\captionsetup[listing]{labelfont={normalsize,bf},singlelinecheck=false} 

% Fix table captions and row spacing
%\AtBeginEnvironment{tabular}{\singlespacing}
%\captionsetup[table]{position=top,skip=\baselineskip, singlelinecheck=false} % left-aligned
%\captionsetup[scheme]{labelfont={normalsize,bf},position=top,skip=0.75\baselineskip,singlelinecheck=false} 
%\captionsetup[listing]{labelfont={normalsize,bf},position=top,skip=0.75\baselineskip,singlelinecheck=false} 
%\captionsetup[scheme]{labelfont={normalsize,bf},position=top,skip=0.75\baselineskip,singlelinecheck=false} 
%\captionsetup[listing]{labelfont={normalsize,bf},position=top,skip=0.75\baselineskip,singlelinecheck=false} 


\setlist{nosep, leftmargin=0.5in} % enumerate setup (no extra line spacing and let margin at 0.5in like other indent
\newbool{whole}  % to be used with main and subfiles
\setbool{whole}{true} % false produces refs individual subfiles - default
\newbool{biblatexused}  % to be used with main and subfiles
\setbool{biblatexused}{false} % false produces refs individual subfiles - default
\newbool{subcomp}  % to be used with main and subfiles
\setbool{subcomp}{false} % false produces refs individual subfiles - default
\newbool{chapref}  % to be used with main 
\setbool{chapref}{false} %  produces no individual chapter references - default

\newbool{subsp} 

% PDF output tile keywords setting - accessibility
\newcommand{\keywords}[1]{\hypersetup{pdfkeywords={#1}}}
%\newcommand{\shorttitle}[1]{\hypersetup{
%pdftitle={#1},
%%pdfdisplaydoctitle=true
%}

% Spacing between numbers and captions (table and figures) 
\setlength{\cfttabnumwidth}{0.5in} % table - tocloft package
\setlength{\cftfignumwidth}{0.5in} % figure - tocloft package
\renewcommand{\cftdotsep}{1.7} % dots separation value

% Basic spacing
\setcounter{secnumdepth}{5}
\setlength{\intextsep}{\baselineskip}
\singlespacing

% Degree options
\newcommand{\thesistype}{phd}
\DeclareOption{phd}{\renewcommand{\thesistype}{phd}}
\DeclareOption{ms-thesis}{\renewcommand{\thesistype}{ms-thesis}}
\DeclareOption{ms-paper}{\renewcommand{\thesistype}{ms-paper}}
\DeclareOption{ma-thesis}{\renewcommand{\thesistype}{ma-thesis}}
\DeclareOption{ma-paper}{\renewcommand{\thesistype}{ma-paper}}
\ProcessOptions*\relax

% Nonumber and chapter number (only chapters numbered) options - two types of NDSU templates (Now offering 3 types)
\newcommand{\numbertype}{none}
\DeclareOption{nonumber}{\renewcommand{\numbertype}{nonumber}}
\DeclareOption{chapternumber}{\renewcommand{\numbertype}{chapternumber}}
\ProcessOptions*\relax 
\ifthenelse{\equal{\numbertype}{nonumber}}{\setcounter{secnumdepth}{-1}}{
\ifthenelse{\equal{\numbertype}{chapternumber}}{\setcounter{secnumdepth}{0}}{
}}{}

% Justification option for the whole document - default is justified nojustify is ragged-right format. NDSU default is "ragged-right" but allows "justified" format as well
\newcommand{\justifytype}{none1}
\DeclareOption{nojustify}{\renewcommand{\justifytype}{nojustify}}
\ProcessOptions*\relax 
\ifthenelse{\equal{\justifytype}{nojustify}}{\AtBeginDocument{\raggedright}}{}

% -----------------------------------------------------------------------
% FONT DISPATCH TABLE — fontspec-based (LuaLaTeX).
% DeclareOptions for all fonts are declared at the top of this file,
% BEFORE the first \ProcessOptions*\relax, so they are never forwarded
% to the book base class. Only the dispatch entries live here.
%
% fontspec is loaded unconditionally above, so ALL fonts must use
% \setmainfont / \setsansfont. pdfLaTeX Type1 packages conflict with
% fontspec's TU encoding and must NOT be used.
% -----------------------------------------------------------------------

% --- Serif ---
\def\thesis@loadfont@bookman{%
  \setmainfont{texgyrebonum}[Extension=.otf,
    UprightFont=*-regular,BoldFont=*-bold,
    ItalicFont=*-italic,BoldItalicFont=*-bolditalic]}
\def\thesis@loadfont@charter{%
  \setmainfont{XCharter}[Extension=.otf,
    UprightFont=*-Roman,BoldFont=*-Bold,
    ItalicFont=*-Italic,BoldItalicFont=*-BoldItalic]}
\def\thesis@loadfont@palatino{%
  \setmainfont{texgyrepagella}[Extension=.otf,
    UprightFont=*-regular,BoldFont=*-bold,
    ItalicFont=*-italic,BoldItalicFont=*-bolditalic]}
\def\thesis@loadfont@tgpagella{\thesis@loadfont@palatino}
\def\thesis@loadfont@times{%
  \setmainfont{texgyretermes}[Extension=.otf,
    UprightFont=*-regular,BoldFont=*-bold,
    ItalicFont=*-italic,BoldItalicFont=*-bolditalic]}
\def\thesis@loadfont@tgtermes{\thesis@loadfont@times}
\def\thesis@loadfont@mathptmx{\thesis@loadfont@times}
\def\thesis@loadfont@tgbonum{\thesis@loadfont@bookman}
\def\thesis@loadfont@tgschola{%
  \setmainfont{texgyreschola}[Extension=.otf,
    UprightFont=*-regular,BoldFont=*-bold,
    ItalicFont=*-italic,BoldItalicFont=*-bolditalic]}
\def\thesis@loadfont@newcent{\thesis@loadfont@tgschola}
\def\thesis@loadfont@lmodern{%
  \setmainfont{lmroman10-regular.otf}[
    BoldFont=lmroman10-bold.otf,
    ItalicFont=lmroman10-italic.otf,
    BoldItalicFont=lmroman10-bolditalic.otf]}
\def\thesis@loadfont@mlmodern{\thesis@loadfont@lmodern}
\def\thesis@loadfont@newpx{%
  \thesis@loadfont@palatino\usepackage{newpxmath}}
\def\thesis@loadfont@newtx{%
  \thesis@loadfont@times\usepackage{newtxmath}}
  
%\def\thesis@loadfont@mathdesign{\thesis@loadfont@palatino}% loads palatino
\ifthenelse{\equal{\fonttype}{mathdesign}}{\usepackage[bitstream-charter]{mathdesign}}{}% this version used

% Only the list shown in Table 2 of the documentation works! --- revisit 

\def\thesis@loadfont@newcomputermodern{%
  \setmainfont{NewCM10-Regular.otf}[
    BoldFont=NewCM10-Bold.otf,
    ItalicFont=NewCM10-Italic.otf,
    BoldItalicFont=NewCM10-BoldItalic.otf]}
\def\thesis@loadfont@libertine{%
  \setmainfont{LinLibertine_R.otf}[
    BoldFont=LinLibertine_RB.otf,
    ItalicFont=LinLibertine_RI.otf,
    BoldItalicFont=LinLibertine_RBI.otf]}
\def\thesis@loadfont@kpfonts{%
  \thesis@loadfont@palatino
  \ClassWarning{thesis-tagged}{kpfonts has no OTF; substituted TeX Gyre Pagella}}
\def\thesis@loadfont@utopia{%
  \thesis@loadfont@tgschola
  \ClassWarning{thesis-tagged}{utopia withdrawn from CTAN; substituted TeX Gyre Schola}}
% Gentium — use gentium-otf package (TeX Live 2025).
% If missing: tlmgr install gentium-otf gentium-sil
\def\thesis@loadfont@gentium{\usepackage{gentium-otf}}

% --- Sans-serif ---
\def\thesis@loadfont@helvet{%
  \setsansfont{texgyreheros}[Extension=.otf,
    UprightFont=*-regular,BoldFont=*-bold,
    ItalicFont=*-italic,BoldItalicFont=*-bolditalic]%
  \renewcommand*\familydefault{\sfdefault}}
\def\thesis@loadfont@firasans{%
  \setsansfont{FiraSans-Regular.otf}[
    BoldFont=FiraSans-Bold.otf,
    ItalicFont=FiraSans-Italic.otf,
    BoldItalicFont=FiraSans-BoldItalic.otf,Scale=0.9]%
  \renewcommand*\familydefault{\sfdefault}}
\def\thesis@loadfont@zlmtt{%
  \setmonofont{lmmono10-regular.otf}[
    ItalicFont=lmmonoslant10-regular.otf]}
\def\thesis@loadfont@cmbright{%
  \setsansfont{lmsans10-regular.otf}[
    BoldFont=lmsans10-bold.otf,ItalicFont=lmsans10-oblique.otf]%
  \renewcommand*\familydefault{\sfdefault}%
  \ClassWarning{thesis-tagged}{cmbright has no OTF; substituted Latin Modern Sans}}
\def\thesis@loadfont@clearsans{%
  \setsansfont{ClearSans-Regular.ttf}[
    BoldFont=ClearSans-Bold.ttf,
    ItalicFont=ClearSans-Italic.ttf,
    BoldItalicFont=ClearSans-BoldItalic.ttf]%
  \renewcommand*\familydefault{\sfdefault}}
\def\thesis@loadfont@kurier{%
  \thesis@loadfont@firasans
  \ClassWarning{thesis-tagged}{kurier has no OTF; substituted Fira Sans}}
\def\thesis@loadfont@lxfonts{%
  \setsansfont{lmsans10-regular.otf}[
    BoldFont=lmsans10-bold.otf,ItalicFont=lmsans10-oblique.otf]%
  \renewcommand*\familydefault{\sfdefault}%
  \ClassWarning{thesis-tagged}{lxfonts has no OTF; substituted Latin Modern Sans}}
\def\thesis@loadfont@sansmathfonts{%
  \thesis@loadfont@lxfonts
  \ClassWarning{thesis-tagged}{sansmathfonts has no OTF; substituted Latin Modern Sans}}

% --- Accessibility fonts ---
\def\thesis@loadfont@atkinson{%
  \setsansfont{AtkinsonHyperlegible-Regular.ttf}[
    BoldFont=AtkinsonHyperlegible-Bold.ttf,
    ItalicFont=AtkinsonHyperlegible-Italic.ttf,
    BoldItalicFont=AtkinsonHyperlegible-BoldItalic.ttf]%
  \renewcommand*\familydefault{\sfdefault}}
\def\thesis@loadfont@sourceserif{%
  \setmainfont{SourceSerifPro-Regular.otf}[
    BoldFont=SourceSerifPro-Bold.otf,
    ItalicFont=SourceSerifPro-It.otf,
    BoldItalicFont=SourceSerifPro-BoldIt.otf]}
\def\thesis@loadfont@sourcesans{%
  \setsansfont{SourceSansPro-Regular.otf}[
    BoldFont=SourceSansPro-Bold.otf,
    ItalicFont=SourceSansPro-It.otf,
    BoldItalicFont=SourceSansPro-BoldIt.otf,Scale=0.95]%
  \renewcommand*\familydefault{\sfdefault}}
\def\thesis@loadfont@charis{%
  \setmainfont{CharisSIL-Regular.ttf}[
    BoldFont=CharisSIL-Bold.ttf,
    ItalicFont=CharisSIL-Italic.ttf,
    BoldItalicFont=CharisSIL-BoldItalic.ttf]}
\def\thesis@loadfont@opensans{%
  \setsansfont{OpenSans-Regular.ttf}[
    BoldFont=OpenSans-Bold.ttf,
    ItalicFont=OpenSans-Italic.ttf,
    BoldItalicFont=OpenSans-BoldItalic.ttf,Scale=0.95]%
  \renewcommand*\familydefault{\sfdefault}}
\def\thesis@loadfont@cabin{%
  \setsansfont{Cabin-Regular.ttf}[
    BoldFont=Cabin-Bold.ttf,
    ItalicFont=Cabin-Italic.ttf,
    BoldItalicFont=Cabin-BoldItalic.ttf,Scale=0.9]%
  \renewcommand*\familydefault{\sfdefault}}
% OpenDyslexic: NOT in TeX Live.
% Install from https://opendyslexic.org, then run: luaotfload-tool --update
\def\thesis@loadfont@opendyslexic{%
  \setmainfont{OpenDyslexic-Regular.ttf}[
    BoldFont=OpenDyslexic-Bold.ttf,
    ItalicFont=OpenDyslexic-Italic.ttf,
    BoldItalicFont=OpenDyslexic-BoldItalic.ttf]%
  \ClassWarning{thesis-tagged}{%
    opendyslexic: NOT in TeX Live. Install from https://opendyslexic.org\MessageBreak
    then run: luaotfload-tool --update. Math falls back to Computer Modern}}

% --- System fonts (OS install required) ---
\def\thesis@loadfont@georgia{%
  \setmainfont{Georgia}[
    BoldFont=Georgia Bold,ItalicFont=Georgia Italic,
    BoldItalicFont={Georgia Bold Italic}]%
  \ClassWarning{thesis-tagged}{%
    georgia: requires Georgia on OS. Linux: sudo apt install ttf-mscorefonts-installer}}
\def\thesis@loadfont@verdana{%
  \setsansfont{Verdana}[
    BoldFont={Verdana Bold},ItalicFont={Verdana Italic},
    BoldItalicFont={Verdana Bold Italic}]%
  \renewcommand*\familydefault{\sfdefault}%
  \ClassWarning{thesis-tagged}{%
    verdana: requires Verdana on OS. Linux: sudo apt install ttf-mscorefonts-installer}}

% -----------------------------------------------------------------------
% DISPATCH — execute the selected font loader. Unknown names warn + skip.
% -----------------------------------------------------------------------
\ifx\fonttype\@undefined\else
  \ifx\fonttype\@empty\else
    \expandafter\ifx\csname thesis@loadfont@\fonttype\endcsname\relax
      \ClassWarning{thesis-tagged}{Unknown font option '\fonttype' -- using default}%
    \else
      \csname thesis@loadfont@\fonttype\endcsname
    \fi
  \fi
\fi
% Showframe 
\newcommand{\frameshow}{none3}
\DeclareOption{showframe}{\renewcommand{\frameshow}{showframe}}
\ProcessOptions*\relax

\ifthenelse{\equal{\frameshow}{showframe}}
{\RequirePackage[top=1in,bottom=1.25in,left=1in,right=1in,letterpaper,showframe]{geometry}}{\RequirePackage[top=1.0in,bottom=1.125in,left=1in,right=1in,letterpaper]{geometry}} % Sep12

% References title References or Bibliography
%\newcommand{\referencetitile}{references}

% ChapterReferences - To be used with BibLaTeX
\newcommand{\chaprefs}{none5}
\DeclareOption{chapterrefs}{\renewcommand{\chaprefs}{chapterrefs}}
\ProcessOptions*\relax 
\ifthenelse{\equal{\chaprefs}{chapterrefs}}
{\setbool{chapref}{true}}
{\setbool{chapref}{false}}

% Subfile compilation 
\newcommand{\subcom}{none6}
\DeclareOption{subfileref}{\renewcommand{\subcom}{subfileref}}
\ProcessOptions*\relax 
\ifthenelse{\equal{\subcom}{subfileref}}
{\setbool{subcomp}{true}}
{\setbool{subcomp}{false}}


% Grid option for the whole document. Use showgrid in class - lighter color used

\definecolor{mygridcol}{RGB}{169, 182, 205}% original

\newcommand{\gridshow}{none7}
\DeclareOption{showgrid}{\renewcommand{\gridshow}{showgrid}}
\ProcessOptions*\relax 
\ifthenelse{\equal{\gridshow}{showgrid}}
{\RequirePackage[pattern=std, colorset=plumpad, 
majorcolor=mygridcol, minorcolor=mygridcol!36, patternsize=0.1in]
{gridpapers}
}{}



% Table of contents tweaks - capitalization and spacing
\addto\captionsamerican{\renewcommand{\contentsname}{\vspace{-13pt}TABLE OF CONTENTS\vspace{-8pt}}}
\addto\captionsamerican{\renewcommand{\listtablename}{\vspace{-13pt}LIST OF TABLES\vspace{12pt}}}
\addto\captionsamerican{\renewcommand{\listfigurename}{\vspace{-13pt}LIST OF FIGURES\vspace{12pt}}}

\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\@dotsep}{\cftdotsep}
\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftfigaftersnum}{.}
\renewcommand{\cfttabaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}
\setlength{\cftbeforesecskip}{0.5\baselineskip}
\setlength{\cftbeforesubsecskip}{0.5\baselineskip}
\setlength{\cftbeforetabskip}{0.5\baselineskip}
\setlength{\cftbeforefigskip}{0.5\baselineskip}
\setlength{\cftfigindent}{0em}
\setlength{\cfttabindent}{0em}
\DeclareTotalCounter{scheme}
\DeclareTotalCounter{listing}
\DeclareTotalCounter{appendixfigure}
\DeclareTotalCounter{appendixtable}
\DeclareTotalCounter{appendixscheme}
\DeclareTotalCounter{appendixlisting}

\DeclareFloatingEnvironment[fileext=los,placement={ht},listname={{\vspace{-13pt}}LIST OF SCHEMES\vspace{12pt}},name=Scheme]{scheme}% Igathi

\DeclareFloatingEnvironment[fileext=lol,placement={ht},listname={{\vspace{-13pt}}LIST OF LISTINGS\vspace{12pt}},name=Listing]{listing}% Igathi

\DeclareFloatingEnvironment[fileext=loat,placement={ht},listname={{\vspace{-13pt}}LIST OF APPENDIX TABLES\vspace{12pt}},name=Table]{appendixtable}

\DeclareFloatingEnvironment[fileext=loaf,placement={ht},listname={{\vspace{-13pt}}LIST OF APPENDIX FIGURES\vspace{12pt}},name=Figure]{appendixfigure}

\DeclareFloatingEnvironment[fileext=loas,placement={ht},listname={{\vspace{-13pt}}LIST OF APPENDIX SCHEMES\vspace{12pt}},name=Scheme]{appendixscheme}

\DeclareFloatingEnvironment[fileext=loal,placement={ht},listname={{\vspace{-13pt}}LIST OF APPENDIX LISTINGS\vspace{9pt}},name=Listing]{appendixlisting}


\captionsetup[appendixtable]
{labelfont={normalsize,bf},position=top,skip=0.75\baselineskip,singlelinecheck=false} % left-aligned
\captionsetup[appendixfigure]
{labelfont={normalsize,bf}, belowskip = 0pt, singlelinecheck=false} 
\captionsetup[appendixscheme]
{labelfont={normalsize,bf}, belowskip = 0pt, singlelinecheck=false} 
\captionsetup[appendixlisting]
{labelfont={normalsize,bf},position=top,skip=0.75\baselineskip,singlelinecheck=false} 

% For additional items (schemes and la=isting) is required
\DeclareCaptionLabelFormat{boldlabel}{\textbf{#1~#2}}
\captionsetup[appendixscheme]{labelformat=boldlabel}
\DeclareCaptionLabelFormat{boldlabel}{\textbf{#1~#2}}
\captionsetup[listing]{labelformat=boldlabel}
\DeclareCaptionLabelFormat{boldlabel}{\textbf{#1~#2}}
\captionsetup[appendixlisting]{labelformat=boldlabel}

% Defines custom paper information
\newcommand\papertype[1]{\def\@papertype{#1}}
\let\@papertype=\@empty
\ifthenelse{\equal{\thesistype}{phd}}{\papertype{Dissertation}}{
\ifthenelse{\equal{\thesistype}{ms-thesis}}{\papertype{Thesis}}{
\ifthenelse{\equal{\thesistype}{ms-paper}}{\papertype{Paper}}{
\ifthenelse{\equal{\thesistype}{ma-thesis}}{\papertype{Thesis}}{
\ifthenelse{\equal{\thesistype}{ma-paper}}{\papertype{Paper}}}}}}{}

\newcommand\degree[1]{\def\@degree{#1}}
\let\@degree=\@empty
\ifthenelse{\equal{\thesistype}{phd}}{\degree{DOCTOR OF PHILOSOPHY}}{
\ifthenelse{\equal{\thesistype}{ms-thesis}}{\degree{MASTER OF SCIENCE}}{
\ifthenelse{\equal{\thesistype}{ms-paper}}{\degree{MASTER OF SCIENCE}}{
\ifthenelse{\equal{\thesistype}{ma-thesis}}{\degree{MASTER OF ARTS}}{
\ifthenelse{\equal{\thesistype}{ma-paper}}{\degree{MASTER OF ARTS}}}}}}{}

\newcommand{\mydegree}{\@degree}

% to produce Major Program or Major Department
\newcommand\progdeptchoice[1]{\def\@progdeptchoice{#1}} 
\let\@progdeptchoice=\@empty

\newcommand\department[1]{\def\@department{#1}}
\let\@department=\@empty

\newcommand\degreeoption[1]{\def\@degreeoption{Option:\\#1}}
\let\@degreeoption=\@empty

\newcommand\approvaldate[1]{\def\@approvaldate{#1}}
\let\@approvaldate=\@empty

\newcommand\approver[1]{\def\@approver{#1}}
\let\@approver=\@empty

\newcommand\pdfstitle[1]{\def\@pdfstitle{#1}}
\let\@pdfstitle=\@empty

\newcommand\tite[1]{\def\titlein{#1}
\def\@tite{{#1}}}%16pt
\let\@tite=\@empty

\renewcommand\title[1]{\def\titlein{#1}
\def\@title{\vspace{8pt}\uppercase{#1}}}%16pt
\let\@title=\@empty

\newcommand{\mytitle}{\titlein}
\newcommand{\myauthor}{ \@author}% new to hold author name

\newcommand{\myshorttitle}{ \@pdfstitle}% new to hold pdf file short title name



% Committee information
\newcommand\cchair[1]{\def\@cchair{#1\vspace{.05in}\hrule\vspace{.05in}
	{\tiny Chair}\\}\vspace{.2 in}}
\let\@cchair=\@empty
\newcommand\cochaira[1]{\def\@cochaira{#1\vspace{.05in}\hrule\vspace{.05in}
	{\tiny Co-Chair}\\}\vspace{.2 in}}
\let\@cochaira=\@empty
\newcommand\cochairb[1]{\def\@cochairb{#1\vspace{.05in}\hrule\vspace{.05in}
	{\tiny Co-Chair}\\}\vspace{.2 in}}
\let\@cochairb=\@empty
\newcommand\cmembera[1]{\def\@cmembera{#1\vspace{.05in}
      \hrule\vspace{.2in}}}
\let\@cmembera=\@empty
\newcommand\cmemberb[1]{\def\@cmemberb{#1\vspace{.05in}
      \hrule\vspace{.2in}}}
\let\@cmemberb=\@empty
\newcommand\cmemberc[1]{\def\@cmemberc{#1\vspace{.05in}
      \hrule\vspace{.2in}}}
\let\@cmemberc=\@empty
\newcommand\cmemberd[1]{\def\@cmemberd{#1\vspace{.05in}
      \hrule\vspace{.2in}}}
\let\@cmemberd=\@empty

% Parindent
\setlength{\parindent}{0.5in}

% Overall spacing of the document  -  Tagged PDF - now issued inside document
\newcommand\myspacing{1.9}% 23 lines/page comes from 1.9
\setstretch{\myspacing}% Once given here applies to the whole document 


% -----------------------------------------------------------------------
% Internal helper: \thesis@frontchapter{Bookmark/TOC title}{Chapter heading}
% Performs the correct clearpage > phantomsection > explicit PDF bookmark >
% addcontentsline > chapter* sequence that is required for tagged PDF 2.0.
% Using this helper means every front matter section is guaranteed to follow
% the same anchoring pattern. To add a new front matter section simply call:
%   \thesis@frontchapter{MY SECTION}{MY SECTION}
% -----------------------------------------------------------------------
\newcommand{\thesis@frontchapter}[2]{%
  \clearpage
  \phantomsection
  \bookmark[level=0,dest=\@currentHref]{#1}%
  \addcontentsline{toc}{chapter}{#1}%
  \chapter*{#2}%
}

% Other frontmatter sections
\newcommand\abstract[1]{\def\@abstract{%
  \thesis@frontchapter{ABSTRACT}{\vspace{-4pt}ABSTRACT\vspace{-10pt}}%
  \setstretch{1.9} #1}}
\let\@abstract=\@empty

\newcommand\acknowledgements[1]{\def\@acknowledgements{%
  \thesis@frontchapter{ACKNOWLEDGEMENTS}{\vspace{0pt}ACKNOWLEDGEMENTS\vspace{-10pt}}%
 \setstretch{1.9} #1}}
\let\@acknowledgements=\@empty

\newcommand\dedication[1]{\def\@dedication{%
  \thesis@frontchapter{DEDICATION}{\vspace{0pt}DEDICATION\vspace{-10pt}}%
  \begin{center}\setstretch{1.9} #1\end{center}}}
\let\@dedication=\@empty

\newcommand\preface[1]{\def\@preface{%
  \thesis@frontchapter{PREFACE}{\vspace{0pt}PREFACE\vspace{-10pt}}%
 \setstretch{1.9} #1}}
\let\@preface=\@empty

% LIST OF ABBREVIATIONS - Igathi
% A new tagging-friendly list version - Igathi
% A 2-col llist environment; Usage: SI & System International - flowing over multipage

\newlength{\abbrlabelwidth}
\setlength{\abbrlabelwidth}{2.3in}

\newenvironment{abbrevlist}{%
  \begin{list}{}{%
    \setlength{\leftmargin}{\abbrlabelwidth}%
    \setlength{\labelwidth}{\abbrlabelwidth}%
    \setlength{\labelsep}{0pt}%
    \setlength{\itemindent}{0pt}%
    \setlength{\itemsep}{6pt}%
    \setlength{\listparindent}{0pt}%
    \def\makelabel##1{%
      \makebox[\abbrlabelwidth][l]{##1\dotfill}\hss%
    }%
  }%
}{%
  \end{list}%
}

\newcommand\listofabbreviations[1]{%
\def\@listofabbreviations{%
  \thesis@frontchapter{LIST OF ABBREVIATIONS}{\vspace{-0.0in}LIST OF ABBREVIATIONS}%
  \vspace{-0.4in}
  \renewcommand{\arraystretch}{1.5}%
  \begin{singlespace}
  \xentrystretch{-0.1}
 % \begin{longtable}[l]{>{\hspace{-0.09in}}p{2.3in}<{\dotfill} @{} p{4.1in}}
  \begin{abbrevlist}
   #1
  \end{abbrevlist}
  \end{singlespace}
  \renewcommand{\arraystretch}{1}%
}}
\let\@listofabbreviations=\@empty

% LIST OF SYMBOLS - Igathi
% A 2-col longtable environment; Usage: $\alpha$ & The angle ($\dg$) - flowing over multipage
\newcommand\listofsymbols[1]{%
\def\@listofsymbols{%
  \thesis@frontchapter{LIST OF SYMBOLS}{\vspace{-0.0in}LIST OF SYMBOLS}%
  \vspace{-0.4in}
  \renewcommand{\arraystretch}{1.5}%
  \begin{singlespace}
  \xentrystretch{-0.1}
  \begin{abbrevlist}
   #1
  \end{abbrevlist}
  \end{singlespace}
  \renewcommand{\arraystretch}{1}%
}}
\let\@listofsymbols=\@empty


% Title page;  Bookmarking code in  lines 1076 and 1085
\setlength{\droptitle}{-1.52in}% -110pt
\pretitle{\doublespacing \vfill \begin{center}}
\posttitle{\vfill \singlespacing A \@papertype \\ Submitted to the Graduate Faculty \\ of the \\ North Dakota State University \\ of Agriculture and Applied Science \end{center}}
\preauthor{\vfill \begin{center} By \\} %\vspace{\baselineskip}}
\postauthor{\vfill \singlespacing In Partial Fulfillment of the Requirements \\ for the Degree of \\ \@degree \vfill Major~\@progdeptchoice: \\ \@department \end{center}}
\predate{\vfill\begin{center}}
\postdate{\vspace{1ex}\vfill Fargo, North Dakota 
\end{center}}


% Second page of frontmatter
\newcommand{\makeapproval}{
\clearpage
\thispagestyle{empty}
\doublespacing
\vfill
\begingroup
    \centering {\Large North Dakota State University} \\
    {\large Graduate School} \\
    \vspace{.1in}
    \hrule height 1pt
    \begin{center}
    \parbox{5.5in}{
        \vspace{.3in}
        \begin{center}
        \textbf{\small Title} \\%[0.15in]
        \begin{singlespace}
        		\@title
	\end{singlespace}
        \vspace{.1in}
        \hrule
        \vspace{.3in}
        \textbf{\small By} \\%[0.15in]
        		\@author
        \vspace{.1in}
        \hrule
        \end{center}
    }
    \end{center}
\endgroup


\vspace{1.5\baselineskip}
\begingroup
\centering
\parbox{5.5in}{\raggedright\small The Supervisory Committee certifies that this {\bfseries\itshape{disquisition}} complies with North Dakota State University's regulations and meets the accepted standards for the degree of}
\begin{center}
\vspace{0.2in}
\textbf{\@degree}
\end{center}
\endgroup

\vspace{3\baselineskip}
\begin{center}
\parbox{5.5in}{
    SUPERVISORY COMMITTEE: \\[0.06in]
    \@cchair
    \@cochaira
    \@cochairb
    \@cmembera
    \@cmemberb
    \@cmemberc
    \@cmemberd
}

\vfill% Given only once - rest fixed vspace
\parbox{5.5in}{
    \vspace{0.2in}
    Approved: \\[0.1in]
    \noindent \parbox{1.5in}{\centering\@approvaldate\vspace{.05in}\hrule\vspace{.05in}{\tiny Date}} \hfill
    \parbox{3in}{\centering\@approver\vspace{.05in}\hrule\vspace{.05in}{\tiny \@progdeptchoice~Chair}}
}
\vspace{0.2in}
\end{center}
}


% -----------------------------------------------------------------------
% Internal helper: \thesis@listbookmark{Title}{list command}
% Ensures every auto-generated list (LOT, LOF, etc.) gets a clearpage
% before the anchor so the bookmark always lands on the correct page.
% -----------------------------------------------------------------------
\newcommand{\thesis@listbookmark}[2]{%
  \clearpage
  \phantomsection
  \bookmark[level=0,dest=\@currentHref]{#1}%
  #2%
}


\newlength{\standardchapnumwidth}
\AtBeginDocument{\setlength{\standardchapnumwidth}{\cftchapnumwidth}}
\AtBeginDocument{%
  \frontmatter
  \hypertarget{TitlePage}{} % Sets the anchor point here
  \maketitle\thispagestyle{empty}
% TITLE PAGE bookmarking 
\bookmark[dest=TitlePage]{TITLE PAGE}
  \makeapproval
  \@abstract
  \@acknowledgements
  \@dedication
  \@preface

 % TABLE OF CONTENTS bookmarking 
\thesis@listbookmark{TABLE OF CONTENTS}{%
    \begin{singlespace}\tableofcontents\end{singlespace}}

  % LIST OF TABLES (only if tables exist)
  \iftotaltables
    \begingroup
      \renewcommand*{\addvspace}[1]{}%
      \thesis@listbookmark{LIST OF TABLES}{%
        \begin{singlespace}\listoftables\end{singlespace}}%
    \endgroup
  \fi
  % LIST OF FIGURES (only if figures exist)
  \iftotalfigures
    \begingroup
      \renewcommand*{\addvspace}[1]{}%
      \thesis@listbookmark{LIST OF FIGURES}{%
        \begin{singlespace}\listoffigures\end{singlespace}}%
    \endgroup
  \fi
  % LIST OF SCHEMES / LISTINGS (only if they exist)
  \iftotalschemes
    \thesis@listbookmark{LIST OF SCHEMES}{%
      \begin{singlespace}\listofschemes\end{singlespace}}%
  \fi
  \iftotallistings
    \thesis@listbookmark{LIST OF LISTINGS}{%
      \begin{singlespace}\listoflistings\end{singlespace}}%
  \fi
  % User-defined front matter lists
  \@listofabbreviations
  \@listofsymbols
  % Appendix lists (no bookmarks needed — appear after mainmatter)
  \iftotalappendixtables
    \begin{singlespace}\listofappendixtables\end{singlespace}\fi
  \iftotalappendixfigures
    \begin{singlespace}\listofappendixfigures\end{singlespace}\fi
  \iftotalappendixschemes
    \begin{singlespace}\listofappendixschemes\end{singlespace}\fi
  \iftotalappendixlistings
    \begin{singlespace}\listofappendixlistings\end{singlespace}\fi
  \mainmatter
}


\pagestyle{plain}
\addtocontents{lot}{\vspace{-8pt}\noindent\underline{Table}\hfill \underline{Page}\par}
\addtocontents{lof}{\vspace{-8pt}\noindent\underline{Figure}\hfill \underline{Page}\par}
\addtocontents{los}{\vspace{-8pt}\noindent\underline{Scheme}\hfill \underline{Page}\par}
\addtocontents{lol}{\vspace{-8pt}\noindent\underline{Listing}\hfill \underline{Page}\par}
\addtocontents{loat}{\vspace{-8pt}\noindent\underline{Table}\hfill \underline{Page}\par\vspace{-10pt}}
\addtocontents{loaf}{\vspace{-8pt}\noindent\underline{Figure}\hfill \underline{Page}\par\vspace{-10pt}}
\addtocontents{loas}{\vspace{-8pt}\noindent\underline{Scheme}\hfill \underline{Page}\par\vspace{-10pt}}
\addtocontents{loal}{\vspace{-6pt}\noindent\underline{Listing}\hfill \underline{Page}\par\vspace{-10pt}}
\addtocontents{loa}{\vspace{-6pt}\noindent\underline{Figure}\hfill \underline{Page}\par\vspace{-10pt}}  


% Uniform spacing of entries in LOSH 
\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
\addtocontents{los}{\protect\noaddvspace}
\addtocontents{los}{\linespread{1}\selectfont}

% Labels chapters correctly
\newcommand{\heading}[1]{\chapter{\uppercase{#1}}}

% Format headings correctly
% Chapter title centered properly  - Use \myheading{} command
\titleformat{\chapter}
    {\centering\normalfont\bfseries\setstretch{1.6}\vspace{-4pt}}
    {{\large\MakeUppercase{{\chaptertitlename}}\ }}{-0em}{\large\MakeUppercase}
%    \titlespacing*{\chapter}{0pt}{-0.5\baselineskip}{0.4\baselineskip} 
    \titlespacing*{\chapter}{0pt}{-1\baselineskip}{0.4\baselineskip} 

% Two versions based on "nonumber" - regular chapter heading
\ifthenelse{\equal{\numbertype}{nonumber}}{  
\newcommand{\myheading}[1]{\chapter[\uppercase{#1}]{{#1}\vspace{-12pt}}} 
}{
\newcommand{\myheading}[1]{\chapter[\uppercase{#1}]{\thechapter.~{#1}\vspace{-12pt}}}
}

% Two versions based on "nonumber" - paper style chapter heading 
\ifthenelse{\equal{\numbertype}{nonumber}}{  
\newcommand{\mypaperheading}[2]{
\stepcounter{footnote}\chapter[\uppercase{#1}]{#1$\,^{\number\value{footnote}}$\vspace{-12pt}} \footnotetext{#2}
}}
{
\newcommand{\mypaperheading}[2]{\stepcounter{footnote}\chapter[\uppercase{#1}]{\thechapter.~#1$\,^{\number\value{footnote}}$\vspace{-12pt}}\footnotetext{#2}
}}


% NDSU - MAJOR HEADING - Centered, bold, All Caps, e.g., 1. MAJOR HEADING     
\titleformat{\section}  
    {\centering\normalfont\bfseries}{\thesection.}{0.3em}{} 
    \titlespacing*{\section}{0pt}{*0}{0pt}    
% NDSU - First Level Subheading  - Centered, bold, Title Case, 
% e.g., 1.1. First Level Subheading
    
\titleformat{\subsection} % Igathi
    {\normalfont\bfseries\raggedright}{\thesubsection.}{0.3em}{}
    \titlespacing*{\subsection}{0pt}{*0}{0pt}
% NDSU - Second Level Subheading  - Left aligned, bold, Title Case, 
% e.g., 1.1.1.Second Level Subheading

\titleformat{\subsubsection} % Igathi
    {\normalfont\bfseries\itshape\raggedright}{\thesubsubsection.}{0.3em}{} 
    \titlespacing*{\subsubsection}{0pt}{*0}{0pt}
% NDSU - Third level subheading  - Left aligned, bold, italics, Sentence case, 
% e.g., 1.1.1.1. Third level subheading

\titleformat{\paragraph}% NDSU Feb 2023
    {\normalfont\itshape\raggedright}{\theparagraph.}{0.3em}{} 
    \titlespacing*{\paragraph}{0pt}{*0}{0pt}
% Not in NDSU - Fourth level subheading  - Left aligned, normal, Sentence case, 
%e.g., 1.1.1.1.1. Fourth level subheading

\titleformat{\subparagraph}
    {\normalfont\raggedright}{\thesubparagraph.}{0.3em}{} 
    \titlespacing*{\subparagraph}{0pt}{*0}{0pt}
% Not in NDSU - Fifth level subheading  - Left aligned, italics, Sentence case, 
%e.g., 1.1.1.1.1.1. Fifth level subheading 

    
\newcommand{\bibtocsubstart}{ % used in latter command
\newpage
\phantomsection
\bookmark[level=0,dest=\@currentHref]{REFERENCES}%
\addcontentsline{toc}{chapter}{REFERENCES}
\addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
\renewcommand{\refname}{\vspace{-0.45in}}
\renewcommand{\bibname}{REFERENCES\vspace{-0.4in}}
}

% Usage: \biblio{reference-styleFile}{reference-bibFile}  -  Command to have references
\newcommand{\biblio}[2]{
\bibtocsubstart
\setlength{\bibhang}{0.5in}
\bibliographystyle{#1} 	% *.bst file  
\bibliography{#2}    		% *.bib file 
\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
}  

% Usage: \tempend{reference-styleFile}{reference-bibFile}  - Command to end temporarily 
\newcommand{\tempend}[2]{ 
\bibtocsubstart
\bibliographystyle{#1} 		% *.bst file
\bibliography{#2}    			% *.bib file 
\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
\end{document}
}

% Defined to handle BibLaTeX reference commands (individual and combined)
\newcommand{\bibtitle}{References} % for BibLaTeX

\newcommand{\makerefs}{
\setlength{\bibhang}{0.5in}
\ifbool{chapref}
{\printbibliography[heading=subbibnumbered, title={\bibtitle}]}
{\printbibliography[heading=bibintoc, title=\uppercase{\bibtitle}]}
} % shortcut - section numbered; subbibintoc - unnumbered


%---------------------------
%---------------------------

% Checking [chapterrefs] option and creating refsection environment
\newcommand{\checkBeginRefsection}{\ifbool{chapref}{\begin{refsection}}{}}
\newcommand{\checkEndRefsection}{\ifbool{chapref}{\makerefs\end{refsection}\clearpage}{\clearpage}}
\newcommand{\checkMakeCombinedReferences}{\ifbool{chapref}{\clearpage}{\newpage\makerefs\clearpage}}


% Usage: \tend the for all - no listing
\newcommand{\tend}{ 
\ifbool{chapref}{\end{refsection}}{}
\end{document}
}


% Usage: \tendbt the for BibTeX \makebib was recursively passed 
\newcommand{\tendbt}{ 
\bibtocsubstart
\makebib
\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
\end{document}
}

% Usage: \tendblt for Biblatex automatic individual or combined references
\newcommand{\tendblt}{ 
\checkEndRefsection% chapter reference section listing
\checkMakeCombinedReferences% whole document reference listing
\end{document}
}

\counterwithout{footnote}{chapter}% for continuous footnote


% Generate unnumbered chapters (e.g., supplementary sections) with TOC entry
\newcommand{\myheadingref}[1]{%
  \clearpage\phantomsection
  \chapter*{\uppercase{#1}}%
  \addcontentsline{toc}{chapter}{\uppercase{#1}}%
}

% Generate appendices with the correct numbering - modified
\renewcommand{\appendix}{
    \clearpage\phantomsection
    \chapter*{APPENDIX\vspace{-12pt}}
    \addcontentsline{toc}{chapter}{APPENDIX}%
    \setcounter{section}{0}
    \setcounter{equation}{0}
    \setcounter{appendixtable}{0}
    \setcounter{appendixfigure}{0}
    \setcounter{appendixscheme}{0}
    \setcounter{appendixlisting}{0}
    \renewcommand{\appendixtablename}{Table}
    \renewcommand{\theappendixtable}{A.\arabic{appendixtable}}
    \renewcommand{\appendixfigurename}{Figure}
    \renewcommand{\theappendixfigure}{A.\arabic{appendixfigure}}
    \renewcommand{\appendixschemename}{Scheme}
    \renewcommand{\theappendixscheme}{A.\arabic{appendixscheme}}
    \renewcommand{\appendixlistingname}{Listing}
    \renewcommand{\theappendixlisting}{A.\arabic{appendixlisting}}
    \addtocontents{toc}{\setlength{\protect\cftchapnumwidth}{0pt}}
    % \addcontentsline already issued by \clearpage\phantomsection block above
    \renewcommand{\thesection}{A.\arabic{section}} 	
    \renewcommand{\theequation}{A.\arabic{equation}}
    \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}% toc up to subsection
}

% Usage: 	\namedappendices{A}{Appendix title}
\newcommand{\namedappendices}[2]{ % for multiple appendices - updated Feb 19, 2026 - TOC hyperlink corrected
    \clearpage\phantomsection
    \chapter*{APPENDIX #1. #2\vspace{-12pt}}
    \setcounter{section}{0}
    \setcounter{equation}{0}
    \setcounter{appendixfigure}{0}
    \setcounter{appendixtable}{0}
    \renewcommand{\thechapter}{#1}% Igathi
    \renewcommand\theHsection{\thechapter.\Alph{section}} % Igathi - theHsection is unique counter
    \renewcommand{\appendixtablename}{Table}
    \renewcommand{\theappendixtable}{#1.\arabic{appendixtable}}
    \renewcommand{\appendixfigurename}{Figure}
    \renewcommand{\theappendixfigure}{#1.\arabic{appendixfigure}}
    \renewcommand{\appendixschemename}{Scheme}
    \renewcommand{\theappendixscheme}{#1.\arabic{appendixscheme}}
    \renewcommand{\appendixlistingname}{Listing}
    \renewcommand{\theappendixlisting}{#1.\arabic{appendixlisting}}
    \addtocontents{toc}{\setlength{\protect\cftchapnumwidth}{0pt}}    
    \addcontentsline{toc}{chapter}{APPENDIX #1.{\hspace{1.5ex}}\uppercase{#2}}
    \renewcommand{\thesection}{#1.\arabic{section}} 	
    \renewcommand{\theequation}{#1.\arabic{equation}}
    \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}% toc up to subsection
}

% New(er) commands
%---------------------------------------------------------------

% suppressing Chapter labels and leaving only the number
\addto\captionsamerican{%
\renewcommand\chaptername{}} 

% Command to ensure the list of both appendix tables and figures
% Usage: \closeappendices on the last-named appendix at the end (or) separately before the \end{document}	
\newcommand{\closeappendices}{% Igathi
\clearpage% for single file
\renewcommand{\appendixfigurename}{}
\renewcommand{\theappendixfigure}{}
\renewcommand{\appendixtablename}{}
\renewcommand{\theappendixtable}{}
\begin{appendixfigure}[H]% required
\caption[]{}
\end{appendixfigure}
\begin{appendixtable}[H]
\caption[]{}
\end{appendixtable}
\let\clearpage\relax% for multiple files
}


% The thesis had only appendix tables
\newcommand{\closeappendixtables}{% Igathi
\renewcommand{\appendixtablename}{}
\renewcommand{\theappendixtable}{}
\begin{appendixtable}[H]
\caption[]{}
\end{appendixtable}
\vspace{-25ex}
}

% The thesis had only appendix figures
\newcommand{\closeappendixfigures}{% Igathi
\renewcommand{\appendixfigurename}{}
\renewcommand{\theappendixfigure}{}
\begin{appendixfigure}[H]
\caption[]{}
\end{appendixfigure}
\vspace{-25ex}
}

% The thesis had only appendix schemes
\newcommand{\closeappendixschemes}{% Igathi
\renewcommand{\appendixschemename}{}
\renewcommand{\theappendixscheme}{}
\begin{appendixscheme}[H]
\caption[]{}
\end{appendixscheme}
\vspace{-25ex}
}

% The thesis had only listings
\newcommand{\closeappendixlistings}{% Igathi
\renewcommand{\appendixlistingname}{}
\renewcommand{\theappendixlisting}{\hspace{}}
\begin{appendixlisting}[H]
\caption[]{}
\end{appendixlisting}
\vspace{-25ex}
}


\newcommand\vsalign{\vspace{-4ex}} 
\newcommand\vseqn{\vspace{-2ex}} 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Example usage: 
% \myfig[aboveskip=3ex]{placement=ht}{width=0.8}{file=fig1.pdf}{caption=My caption goes here}{label=fig1}
% \myfig[aboveskip]{ht}{0.8}{fig1.pdf}{My caption goes here}{fig1}

% Regular figure command with placement (htpbH as the first argument)
\newcommand{\myfig}[6][0ex]{%3.5 earlier
\vspace{2ex}
\begin{figure}[#2]
\centering 
\captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} %, singlelinecheck=true for centering; 14 pt
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption{#5}
   \label{#6}
\end{figure}
}


% Regular figure command with placement (htpbH as the first argument) and space between two floats for proper LOF spacing
\newcommand{\myfigs}[7][0ex]{%3.5 earlier
\vspace{2ex}
\begin{figure}[#2]
\centering 
\captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} %, singlelinecheck=true for centering; 14 pt
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption{#5}
   \label{#6}
   \vspace{#7}
\end{figure}
}

% Regular scheme command with placement (htpbH as the first argument)
\newcommand{\mysch}[6][0ex]{%3.5 earlier
\vspace{2ex}
\begin{scheme}[#2]
\centering 
   \setlength{\belowcaptionskip}{#1 plus 2pt minus 2pt}%captionsetup not working with scheme
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption{#5}
   \label{#6}
\end{scheme}
}

% Regular scheme command with placement (htpbH as the first argument) and space between two floats for proper LOS spacing
\newcommand{\myschs}[7][0ex]{%3.5 earlier
\vspace{2ex}
\begin{scheme}[#2]
\centering 
   \setlength{\belowcaptionskip}{#1 plus 2pt minus 2pt}%captionsetup not working with scheme
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption{#5}
   \label{#6}
   \vspace{#7}
\end{scheme}
}

% Example usage: 
% \myfigls[aboveskip]{ht}{0.8}{fig1.pdf}{My caption goes here}{fig1}

% Landscape figure command with placement (htpbH as the first argument)
\newcommand{\myfigls}[6][0ex]{
\begin{landscape}
\begin{figure}[#2]
\centering 
\captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} %, singlelinecheck=true for centering
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption{#5}
   \label{#6}
\end{figure}
\end{landscape}
}

% Landscape scheme command with placement (htpbH as the first argument)
\newcommand{\myschls}[6][0ex]{
\begin{landscape}
\begin{scheme}[#2]
\centering 
   \setlength{\belowcaptionskip}{#1 plus 2pt minus 2pt}%captionsetup not working with scheme
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption{#5}
   \label{#6}
\end{scheme}
\end{landscape}
}

% Example usage: 
% \myfigap[aboveskip]{ht}{0.5}{appenddfig1.pdf}{My appendix caption goes here}{figA1}

% Appendix figure command - with placement (htpbH as the first argument)
\newcommand{\myfigap}[6][0ex]{
\vspace{2ex}
\begin{appendixfigure}[#2]
   \centering 
   \captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#6}
\end{appendixfigure}
}

% Appendix figure command - with placement (htpbH as the first argument) and  vertical placement
\newcommand{\myfigaps}[7][0ex]{
\vspace{2ex}
\begin{appendixfigure}[#2]
   \centering 
   \captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#6}
   \vspace{#7}
\end{appendixfigure}
}

% Example usage: 
% \myfigapls{ht}{0.5}{appenddfig1.pdf}{My appendix caption goes here}{figA1}

% Appendix landscape figure command - with placement (htpbH as the first argument)
\newcommand{\myfigapls}[6][0ex]{
\begin{landscape}
\begin{appendixfigure}[#2]
   \centering 
  \captionsetup[scheme]{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#6}
\end{appendixfigure}
\end{landscape}
}


% Appendix scheme  command - with placement (htpbH as the first argument)
\newcommand{\myschap}[6][0ex]{
\vspace{2ex}
\begin{appendixscheme}[#2]
   \centering 
   \captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#6}
\end{appendixscheme}
}

% Appendix scheme command - with placement (htpbH as the first argument) and  vertical placement
\newcommand{\myschaps}[7][0ex]{
\vspace{2ex}
\begin{appendixscheme}[#2]
   \centering 
   \captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#6}
   \vspace{#7}
\end{appendixscheme}
}

% Example usage: 
% \myfigapls{ht}{0.5}{appenddfig1.pdf}{My appendix caption goes here}{figA1}

% Appendix landscape scheme  command - with placement (htpbH as the first argument)
\newcommand{\myschapls}[6][0ex]{
\begin{landscape}
\begin{appendixscheme}[#2]
   \centering 
  \captionsetup[scheme]{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#6}
\end{appendixscheme}
\end{landscape}
}



% Dummy only table caption for multipage long tables for longtblr 
\newcommand\mytabcap[3][-8ex]{%1 optional verti spacing +2 arguments
\begin{table}[h!]
\caption{#2}%LOAT entry and caption are same
\label{#3}
\end{table}
\vspace{#1}
\addtocounter{table}{-1}% for this dummy table, the counter should be reduced by 1
}

% Dummy only figure caption for later use 
\newcommand\myfigcap[3][-3ex]{%1 optional vert spacing +2 arguments
\vspace{#1}
\begin{figure}[h!]
\caption{#2}%LOAT entry and caption are same
\label{#3}
\end{figure}
}


% Dummy only appendix table caption for listings and multipage figures
\newcommand\mytabapcap[3][-8ex]{%1 optional verti spacing +2 arguments
\begin{appendixtable}[h!]
\caption{#2}%LOAT entry and caption are same
\label{#3}
\end{appendixtable}
\vspace{#1}
}

% Dummy only appendix figure caption for appendix listings and multipage figures
\newcommand\myfigapcap[3][-3ex]{%1 optional vert spacing +2 arguments
\vspace{#1}
\begin{appendixfigure}[h!]
\caption{#2}%LOAT entry and caption are same
\label{#3}
\end{appendixfigure}
}

% Dummy only appendix listing caption for listings and multipage figures
\newcommand\mylisapcap[3][-3ex]{%1 optional verti spacing +2 arguments
\begin{appendixlisting}[h!]
\caption{#2}%LOAT entry and caption are same
\label{#3}
\end{appendixlisting}
\vspace{#1}
}

% Dummy listing caption for listing
\newcommand\myliscap[3][-3ex]{%1 optional verti spacing +2 arguments
\begin{listing}[h!]
\caption{#2}%LOAT entry and caption are same
\label{#3}
\end{listing}
\vspace{#1}
}


% Equations command for better vertical alignment with text 
% myeqn, myfraceqn (different spacing), myalign, 
% myfracalign, mygather, myfracgather, with their starred (*) versions 
% + mydisp, myfracdisp
% (different spacing, when frac as first or last equation)
%  Automatic adjustment for smaller and 1.9 linespacing

\newcommand{\myeqn}[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.3in}\begin{equation} #1 \end{equation}\par\vspace{-0.12in}}
{\vspace{-0.1in}\begin{equation} #1 \end{equation}\par}}
\WithSuffix\newcommand\myeqn*[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.3in}\begin{equation*}#1\end{equation*}\par\vspace{-0.12in}}
{\vspace{-0.1in}\begin{equation*}#1\end{equation*}\par}}

\newcommand{\myfraceqn}[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.3in}\begin{equation} #1 \end{equation}\par\vspace{-0.12in}}
{\vspace{-0.1in}\begin{equation} #1 \end{equation}\par}}
\WithSuffix\newcommand\myfraceqn*[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.3in}\begin{equation*}#1\end{equation*}\par\vspace{-0.12in}}
{\vspace{-0.1in}\begin{equation*}#1\end{equation*}\par}}

\newcommand{\myalign}[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.54in}\addtolength{\jot}{0in}% spacing between equations
\begin{align}#1\end{align}\par\vspace{-0.24in}}
{\vspace{-0.1in}\addtolength{\jot}{0in}
\begin{align}#1\end{align}\par}}
\WithSuffix\newcommand\myalign*[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.54in}\addtolength{\jot}{0in}% spacing between equations
\begin{align*}#1\end{align*}\par\vspace{-0.24in}}
{\vspace{-0.1in}\addtolength{\jot}{-0.05in}
\begin{align*}#1\end{align*}\par}}

\newcommand{\myfracalign}[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.54in}\addtolength{\jot}{0in}
\begin{align}#1\end{align}\par\vspace{-0.2in}}
{\vspace{-0.1in}\addtolength{\jot}{0in}
\begin{align}#1\end{align}\par}}
\WithSuffix\newcommand\myfracalign*[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.54in}\addtolength{\jot}{0in}
\begin{align*}#1\end{align*}\par\vspace{-0.2in}}
{\vspace{-0.1in}\addtolength{\jot}{0in}
\begin{align*}#1\end{align*}\par}}

\newcommand{\mygather}[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.64in}\addtolength{\jot}{-0in}
\begin{gather}#1\end{gather}\par\vspace{-0.28in}}
{\vspace{-0.1in}\addtolength{\jot}{-0in}
\begin{gather}#1\end{gather}\par}}
\WithSuffix\newcommand\mygather*[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.64in}\addtolength{\jot}{0in}
\begin{gather*}#1\end{gather*}\par\vspace{-0.28in}}
{\vspace{-0.1in}\addtolength{\jot}{0in}
\begin{gather*}#1\end{gather*}\par}}

\newcommand{\myfracgather}[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.645in}\addtolength{\jot}{0.05in}
\begin{gather}#1\end{gather}\par\vspace{-0.28in}}
{\vspace{-0.1in}\addtolength{\jot}{0.05in}
\begin{gather}#1\end{gather}\par}}
\WithSuffix\newcommand\myfracgather*[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.645in}\addtolength{\jot}{0.05in}
\begin{gather*}#1\end{gather*}\par\vspace{-0.28in}}
{\vspace{-0.1in}\addtolength{\jot}{0.05in}
\begin{gather*}#1\end{gather*}\par}}

\newcommand{\mydisp}[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.35in}\[ #1 \] \par\vspace{-0.15in}}
{\vspace{-0.1in}\[ #1 \] \par}}

\newcommand{\myfracdisp}[1]{
\ifdimcomp{\myspacing pt}{>}{1.8999 pt}
{\vspace{-0.325in}\[ #1 \] \par\vspace{-0.125in}}
{\vspace{-0.1in}\[ #1 \] \par}}

% Highlight command defined
\newcommand\hl{\bgroup\markoverwith
  {\textcolor{DodgerBlue!25!white}{\rule[-.5ex]{.1pt}{2.5ex}}}\ULon}%Turquoise1!50!white; 
    
\definecolor{newtext}{rgb}{0.1,0.6,0.1}
\newcommand\dt[1]{\textcolor{red}{\sout{#1}}\xspace}
\newcommand\nt[1]{\textcolor{newtext}{#1}\xspace}
\newcommand\rt[2]{{\textcolor{red}{\sout{#1}}}{\textcolor{newtext}{#2}}\xspace}
\newcommand\notes[1]{\vspace{2ex}\todo[color=green!35, inline]{#1}}
\newcommand\td[1]{\vspace{2ex}\todo[color=green!35, inline]{#1}}


\setlength\abovedisplayskip{6pt plus 3pt minus 3pt}
\setlength\abovedisplayshortskip{0pt plus 3pt minus 3pt}
\setlength\belowdisplayskip{6pt plus 3pt minus 3pt}
\setlength\belowdisplayshortskip{3pt plus 1pt minus 1pt}

\RequirePackage{subfiles} % Best loaded last in the preamble

% ==============================================================
% These commands are to support the ASABE style (reference + captions)
% Others may ignore these commands and will not interfere with other styles
% ==============================================================
% 
%*************** ASABE style references and captions  ****************
% Works with biblatex - Can be commented for other styles
\newcommand\setbiblatexASABE{%
\AtBeginBibliography{%
  \renewcommand*{\finalnamedelim}{%
    \ifnumgreater{\value{liststop}}{2}{\finalandcomma}{}%
    \addspace\&\space}%
}
\DeclareDelimFormat*{finalnamedelim} % replacing & with "and" in citation & in listing 
{\ifnum\value{liststop}>2 \finalandcomma\fi\addspace\bibstring{and}\space}
}

% New command for setting up the captions
\newcommand\setcapASABE{%
\captionsetup[table]
{labelfont={normalsize,bf},font={normalsize,bf},labelsep=period,justification=raggedright,aboveskip=10pt,belowskip=0pt, singlelinecheck=true} %specifying floats caption options (options of labelsep = period, newline, and dash)
\captionsetup[figure]{labelfont={normalsize},font={normalsize,bf},labelsep=period,justification=raggedright,aboveskip=10pt,belowskip=-5pt,singlelinecheck=true} %specifying floats caption options 
\captionsetup[scheme]{labelfont={normalsize},font={normalsize,bf},labelsep=period,justification=raggedright,aboveskip=10pt,belowskip=-5pt,singlelinecheck=true} %specifying floats caption options 


%Appendix tables and figures in bold - for tables > 9 use [lot] directly
\captionsetup[appendixtable]{font={normalsize,bf},singlelinecheck=true} %bold for tables 
\captionsetup[appendixfigure]{font={normalsize,bf},singlelinecheck=true}%bold for figures
}
%*************** ASABE style references and captions  ****************
% ==============================================================

\newcommand{\chapterspath}[1]{%
\makeatletter
\def\input@path{{#1}} 
\makeatother
}

% Showframe option to show correctly with landscape pages
% https://tex.stackexchange.com/questions/115908/geometry-showframe-landscape
\makeatletter
\newcommand*{\gmshow@textheight}{\textheight}
\newdimen\gmshow@@textheight
\g@addto@macro\landscape{%
  \gmshow@@textheight=\hsize
  \renewcommand*{\gmshow@textheight}{\gmshow@@textheight}%
}
\def\Gm@vrule{%
  \vrule width 0.2pt height\gmshow@textheight depth\z@
}%
\makeatother

% The \phantomcaption command is required for the subfig to operate 
% without captions in the appendices
\makeatletter
\providecommand\phantomcaption{\caption@refstepcounter\@captype}
\makeatother


% The dummy vspace necessary to have vertical spacing with landscape mode
\newcommand\dvspace[1]{\,\!\!\vspace{#1}}

% Negative vspace commands
\newcommand{\vh}{\vspace{-0.05in}}% vspace half -ve
\newcommand{\vo}{\vspace{-0.1in}}% vspace one-ve
\newcommand{\voh}{\vspace{-0.15in}}% vspace one half -ve
\newcommand{\vt}{\vspace{-0.2in}}% vspace two -ve
\newcommand{\vth}{\vspace{-0.25in}}% vspace two half -ve
\newcommand{\vr}{\vspace{-0.3in}}% vspace three  -ve
\newcommand{\vrh}{\vspace{-0.35in}}% vspace three half -ve

% Positive vspace commands -  required with tagged PDFs
\newcommand{\pvh}{\vspace{0.05in}}% vspace half +ve
\newcommand{\pvo}{\vspace{0.1in}}% vspace one +ve
\newcommand{\pvoh}{\vspace{0.15in}}% vspace one half +ve
\newcommand{\pvt}{\vspace{0.2in}}% vspace two +ve
\newcommand{\pvth}{\vspace{0.25in}}% vspace two half +ve
\newcommand{\pvr}{\vspace{0.3in}}% vspace three +ve
\newcommand{\pvrh}{\vspace{0.35in}}% vspace three half +ve


\newcommand{\mytop}{\clearpage\vspace*{-0.4in}}% vspace with clear page and  -0.45in 
\newcommand{\mysectop}{\clearpage\vspace*{-0.44in}}% vspace with clear page and  -0.45in, -0.38

\newcommand{\vs}[1]{\vspace*{#1in}}% vspace star version 
\newcommand{\vc}[1]{\clearpage\vspace*{#1in}}% vspace with clear page and *

\newcommand\cptp{\footnote{\hl{Compatible PDF tagging package}}}% Compatible PDF tagging package


%-----------------------------------------------------------------------------------------------------
%%%%%%%%%% Tagging Related Update Commands  %%%%%%%%%%
%-----------------------------------------------------------------------------------------------------

% Tagging - spacing around list without enumitem package
\makeatletter
\def\@listi{\leftmargin\leftmargini
            \parsep 0\p@ \@plus\p@ \@minus\p@
            \topsep -2.5\p@   \@plus\p@ \@minus\p@% both top and bottom separation
            \itemsep 0\p@ \@plus\p@ \@minus\p@} %adapt
\let\@listI\@listi
\@listi
\makeatother

\setlength{\leftmargini}{0.5in}


% Tagging caption setup direct - boldfont for names
\makeatletter
\renewcommand{\fnum@figure}{\textbf{\figurename~\thefigure}}
\renewcommand{\fnum@table}{\textbf{\tablename~\thetable}}
\renewcommand{\fnum@scheme}{\textbf{\schemename~\thescheme}}
\renewcommand{\fnum@appendixfigure}{\textbf{\appendixfigurename~\theappendixfigure}}
\renewcommand{\fnum@appendixtable}{\textbf{\appendixtablename~\theappendixtable}}
\makeatother

\makeatletter% Singlelinecheck and labelsep changed to dot
\AtBeginDocument{%
  \long\def\@makecaption#1#2{%
    \vskip\abovecaptionskip
    \setbox\@tempboxa\hbox{#1. #2}%
    \ifdim\wd\@tempboxa>\hsize
      #1. #2\par
    \else
      \raggedright #1. #2\par
    \fi
    \vskip\belowcaptionskip
  }%
}
\makeatother


% Listing of codes using fancyvrb and pgfkeys
% options:  [] required, [frame=none, single] [numbers=none, left, right]
% [fontsize=\tiny, \small, etc.] [xleftmargin = 2ex, any dims], and a combination of these options separated by commas.]
% Usage \begin{mylinsting}[] ....your code.... \end{listing}

\pgfkeys{
  /mylisting/.is family,
  /mylisting,
  frame/.store in    = \mylistingFrame,
  numbers/.store in  = \mylistingNumbers,
  fontsize/.store in = \mylistingFontsize,
  xleftmargin/.store in = \mylistingXleftmargin,
  % defaults
  frame    = single,
  numbers  = left,
  fontsize = \normalsize,
  xleftmargin = 2ex,
}

\newenvironment{mylisting}[1][]{%
  \pgfkeys{/mylisting, #1}%
  \singlespacing
  \Verbatim[frame=\mylistingFrame, framerule=0.1mm,
            numbers=\mylistingNumbers, numbersep=2pt,
            xleftmargin=\mylistingXleftmargin, fontsize=\mylistingFontsize]%
}{%
  \endVerbatim
}



% -----------------------------------------------------------------------
% Metadata validation — warn students if required fields were not set.
% -----------------------------------------------------------------------
\AtBeginDocument{%
  \ifx\@title\@empty
    \ClassWarning{thesis-tagged}{No \string\title\space set. PDF title will be empty.}\fi
  \ifx\@author\@empty
    \ClassWarning{thesis-tagged}{No \string\author\space set. PDF author will be empty.}\fi
  \ifx\@department\@empty
    \ClassWarning{thesis-tagged}{No \string\department\space set.}\fi
}



% PDF automatic output tile, author, and advanced language setting - accessibility
\AtBeginDocument{
\hypersetup{
  pdftitle={\mytitle},%{\myshorttitle},
  pdfauthor={\myauthor},% Also done by pdfusetitle
  pdfsubject= {\mydegree~Dissertation},
  pdflang={en-US}
  }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example usage: 
% \myfig[aboveskip=3ex]{placement=ht}{width=0.8}{file=fig1.pdf}{caption=My caption goes here}{label=fig1}
% \myfig[aboveskip]{ht}{0.8}{fig1.pdf}{My caption goes here}{fig1}

% Tagged regular figure {cap + alt}  command with placement (htpbH as the first argument)
% \myfigt[aboveskip]{ht}{0.8}{fig1.pdf}{Alt text of figure}{My caption goes here}{fig1}
% Usage [#1 adust] {#2 placement}{#3 size}{#4 image file}{#5 caption}{#6 alt text}{#7 lable}

\newcommand{\myfigt}[7][0ex]{%3.5 earlier
\vspace{2ex}
\begin{figure}[#2]
\centering 
\captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} %, singlelinecheck=true for centering; 14 pt
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{5pt} 
   \caption{#5}
   \label{#7}
   \vspace{0.1in}
\end{figure}
}

\newcommand{\myfigtt}[8][0ex]{%3.5 earlier
\vspace{2ex}
\begin{figure}[#2]
\centering 
\captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} %, singlelinecheck=true for centering; 14 pt
   \includegraphics[width=#3\textwidth,alt={#7}]{#4}
   \vspace{#5} 
   \caption{#6}
   \label{#8}
\end{figure}
}


% Regular figure command with placement (htpbH as the first argument) and space between two floats for proper LOF spacing
\newcommand{\myfigst}[8][0ex]{%3.5 earlier
\vspace{2ex}
\begin{figure}[#2]
\centering 
\captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} %, singlelinecheck=true for centering; 14 pt
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{5pt} 
   \caption{#5}
   \label{#7}
   \vspace{#8}
\end{figure}
}

% Regular scheme command with placement (htpbH as the first argument)
\newcommand{\myscht}[7][0ex]{%3.5 earlier
\vspace{2ex}
\begin{scheme}[#2]
\centering 
%   \setlength{\belowcaptionskip}{#1 plus 2pt minus 2pt}%captionsetup not working with scheme
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{#1} 
   \caption{#5}
   \label{#7}
\end{scheme}
}

% Regular scheme command with placement (htpbH as the first argument)
\newcommand{\myschst}[8][0ex]{%3.5 earlier
\vspace{2ex}
\begin{scheme}[#2]
\centering 
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{#1} 
   \caption{#5}
   \label{#7}
   \vspace{#8}
\end{scheme}
}


%----------------------------------- To be retired --------------------------------
% Regular scheme command with placement (htpbH as the first argument)
\newcommand{\myschtt}[8][0ex]{%3.5 earlier
\vspace{2ex}
\begin{scheme}[#2]
\centering 
   \setlength{\belowcaptionskip}{#1 plus 2pt minus 2pt}%captionsetup not working with scheme
   \includegraphics[width=#3\textwidth,alt={#7}]{#4}
   \vspace{#5} 
   \caption{#6}
   \label{#8}
\end{scheme}
}

\newcommand{\myschstt}[9][0ex]{%3.5 earlier
\vspace{2ex}
\begin{scheme}[#2]
\centering 
   \includegraphics[width=#3\textwidth,alt={#7}]{#4}
   \vspace{#5} 
   \caption{#6}
   \label{#8}
   \vspace{#9}
\end{scheme}
}
%----------------------------------- To be retired --------------------------------


% Example usage: 
% \myfigls[aboveskip]{ht}{0.8}{fig1.pdf}{My caption goes here}{fig1}

% Landscape figure command with placement (htpbH as the first argument)
\newcommand{\myfiglst}[7][0ex]{
\begin{landscape}
\begin{figure}[#2]
\centering 
\captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} %, singlelinecheck=true for centering
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{5pt} 
   \caption{#5}
   \label{#7}
\end{figure}
\end{landscape}
}

% Landscape scheme command with placement (htpbH as the first argument)
\newcommand{\myschlst}[7][0ex]{
\begin{landscape}
\begin{scheme}[#2]
\centering 
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{#1} 
   \caption{#5}
   \label{#7}
\end{scheme}
\end{landscape}
}

% Example usage: 
% \myfigap[aboveskip]{ht}{0.5}{appenddfig1.pdf}{My appendix caption goes here}{figA1}

% Appendix figure command - with placement (htpbH as the first argument)
\newcommand{\myfigapt}[7][0ex]{
\vspace{2ex}
\begin{appendixfigure}[#2]
   \centering 
   \captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#7}
\end{appendixfigure}
}

% Appendix figure command - with placement (htpbH as the first argument) and  vertical placement
\newcommand{\myfigapst}[8][0ex]{
\vspace{2ex}
\begin{appendixfigure}[#2]
   \centering 
   \captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#7}
   \vspace{#8}
\end{appendixfigure}
}

% Example usage: 
% \myfigapls{ht}{0.5}{appenddfig1.pdf}{My appendix caption goes here}{figA1}

% Appendix landscape figure command - with placement (htpbH as the first argument)
\newcommand{\myfigaplst}[7][0ex]{
\begin{landscape}
\begin{appendixfigure}[#2]
   \centering 
  \captionsetup[scheme]{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#7}
\end{appendixfigure}
\end{landscape}
}


% Appendix scheme  command - with placement (htpbH as the first argument)
\newcommand{\myschapt}[7][0ex]{
\vspace{2ex}
\begin{appendixscheme}[#2]
   \centering 
   \captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#7}
\end{appendixscheme}
}

% Appendix scheme command - with placement (htpbH as the first argument) and  vertical placement
\newcommand{\myschapst}[8][0ex]{
\vspace{2ex}
\begin{appendixscheme}[#2]
   \centering 
   \captionsetup{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#7}
   \vspace{#8}
\end{appendixscheme}
}

% Example usage: 
% \myfigapls{ht}{0.5}{appenddfig1.pdf}{My appendix caption goes here}{figA1}

% Appendix landscape scheme  command - with placement (htpbH as the first argument)
\newcommand{\myschaplst}[7][0ex]{
\begin{landscape}
\begin{appendixscheme}[#2]
   \centering 
  \captionsetup[scheme]{aboveskip = #1 plus 2pt minus 2pt, belowskip = 0pt} 
   \includegraphics[width=#3\textwidth,alt={#6}]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#7}
\end{appendixscheme}
\end{landscape}
}


% ------------------------- Some common shortcuts --------------------------------------

\DeclareSIUnit{\USD}{\$}
\definecolor{ndsugreen}{RGB}{0,72,51}
\definecolor{ndsuyellow}{RGB}{251,205,22}

\newcommand{\start}{\colorbox{ndsugreen}{\textcolor{ndsuyellow}{Start here \Rightarrow}}\xspace}

\newcommand\mt[1]{\text{#1}}  % math text
\newcommand\pt[1]{\qty[mode = text]{#1}{\percent}\xspace} % \qty{}{} new SI command
\newcommand\pr[1]{\qty[mode = text]{#1}{\percent}\xspace}
\newcommand\dg[1]{\qty[mode = text]{#1}{\degreeCelsius}\xspace}

\newcommand{\mlt}[1]{\qty{#1}{$\mu$\liter}\xspace}% for tagged micro liter in SI 
\newcommand\dct[1]{\qty[mode = text]{#1}{\textdegree{C}}\xspace}% for tagged degree centigrade in SI
\newcommand\dgt[1]{\qty[mode = text]{#1}{\textdegree{C}}\xspace}% for tagged 

\newcommand\SU[2]{\qty[mode = text]{#1}{#2}\xspace} % redefined using qty
\newcommand\su[1]{\unit[mode = text]{#1}\xspace} % redefined using unit

\newcommand{\LX}{\LaTeX{}\xspace}% LaTeX logo
\newcommand{\tb}{\textbackslash\xspace}%  text backslash
\newcommand{\tbp}{\textbullet\xspace}%  text bullet point

\newcommand{\tdeg}{\textdegree\xspace}%  text degree
\newcommand{\treg}{\textsuperscript{\textregistered}\xspace}%  textt registered
\newcommand{\ttm}{{\texttrademark}\xspace}%  textt trademark
\newcommand{\tcr}{\textsuperscript{\textcopyright}\xspace}%  textt copyright

\newcommand\dsf{\todo[inline, color=green!30!white]{\scriptsize Done so far!}}
\newcommand{\hlc}[1]{{\fboxsep0.15em\colorbox{green!50!white}
	{\parbox{0.99\textwidth}{#1}}\xspace}}% highlighting in caption


\newcommand{\tcb}[1]{\textcolor{blue}{#1}\xspace}% text color blue 
\newcommand{\tcm}[1]{\textcolor{magenta}{#1}\xspace}% text in magenta 

\newcommand\cmd[1]{\textbackslash\texttt{#1}}  % for commands
\newcommand\cmdd[1]{\textbackslash\texttt{#1}\{\ldots\!\}}  % for commands with ldots
\newcommand\te[1]{\ensuremath\text{#1}}% text in eqation - shortcut
\newcommand{\repeatN}[1]{Text {\foreach \n in {1,...,#1}{text }}\ldots\xspace}% filler text
\newcommand{\repeatTN}[2]{Start {\foreach \n in {1,...,#2}{#1 }}\ldots{end.}\xspace}% filler text



%-----------------------------------------------------------------------------------------------------
%%%%%%%%%% Tagging Related Update Commands  %%%%%%%%%%
%-----------------------------------------------------------------------------------------------------

% Widow and orphan control — set at begin document so they cannot be
% accidentally overridden by a package loaded after the class.
\AtBeginDocument{%
  \widowpenalty=10000
  \clubpenalty=10000
}

\AtBeginDocument{%
  \setstretch{1.9} % 1.9=23/page; Applied to the whole document
}

\endinput


%---------------------------------------------------
%------------------END---------------------------
%---------------------------------------------------
