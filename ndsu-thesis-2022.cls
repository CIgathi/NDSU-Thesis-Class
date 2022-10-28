% --- README file contents of the ndsu-thesis-2022 LaTeX document class
% 
% This is the ndsu-thesis-2022 document class. This is an upgraded version of 
% ndsu-thesis document class. Copyright 2022, Aaron Feickert, Jonathan Totushek, 
% and Igathinathane Cannayen.
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
% Contact: i.cannayen@ndsu for bug reports and enquires.
%
% This new class or the old can be used independently, and these classes are 
% appropriately invoked through the documentclass command with required options. 
% It can be used to produce disquisitions (MS and PhD) for submission to the NDSU 
% Graduate School and the final acceptance rests with the University Dissertation 
% and Thesis Coordinator, and the Graduate Committee.  
%
% Files included are:
%  README - this information file
%  ndsu-thesis-2022.cls - class file
%  ndsu-thesis-2022-documentation.tex - class file documentation (source)
%  ndsu-thesis-2022-documentation.pdf - class file documentation 
%  ndsu-example.tex - simple thesis example file (source)
%  ndsu-example.pdf - simple thesis example file
%  NDSU-Thesis-Extended.tex - extended thesis example illustrating several 
%  features (source)
%  NDSU-Thesis-Extended.pdf - extended thesis example illustrating several 
%  features
%  mybib.bib - sample bibliography database file used in theses examples 
%  frog.jpg - free sample image file used in extended thesis example
%  figures - subfolder holding the images of documentation 
%  
%  --- End README content ---
%
%---------------------------------------------------------------------------------------------------------
%---------------------------------------------------------------------------------------------------------
%  Several upgrades as commands and options were performed by 
%  C. Igathinathane ABEN, NDSU. Bug reports/Enquiries: i.cannayen@ndsu.edu
%  		Numbered and non-numbered versions 
% 		Justification (full and raggedright) 
% 		Whole document point sizes
% 		Fonts options
%              SI units 
% 		Show frame using geometry package
% 		URL breaking and URL font same as text 
% 		Long tables
% 		Landscape figures and tables
%             	Subfigures and multi-page figures
%          	Captions small centered long left justified
%          	URL same font as text
%              Chapter styles nonumber, chapternumber, and default numbered
%              Major heading (chapter) font, linespacing, above and below skips 
% 		Subfiles capability - standalone chapter compilation
% 		Programs and algorithm listing with listings package
% 		BibTeX , BibLaTeX plus subfiles compilation
% 		Friendly natbib style citations 
% 		Clever reference with cleveref package
% 		Figures shortcuts with optional caption vertical placement 
% 		Figure & table caption (#>9) horizontal space adjustment
% 		Full-width tables with tabularray package tblr environment
%              Package soul was replaced by ulem
%              Documentation and samples updated (2022-10-24)
%
%  Last updated: 2022-10-24
%  Last updated: 2022-10-07
%  Last updated: 2022-07-10
%---------------------------------------------------------------------------------------------------------
%---------------------------------------------------------------------------------------------------------
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ndsu-thesis-2022}[2022/07/10 NDSU Thesis Class] 
\DeclareOption{draft}{\PassOptionsToClass{draft}{book}}
\def\@@ptsize{12pt}		
\DeclareOption{10pt}{\def\@@ptsize{10pt}}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{12pt}{\def\@@ptsize{12pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[oneside,notitlepage,\@@ptsize]{book}  

% RequirePackage command and other essential packages used
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[obeyspaces,spaces,hyphens]{url}
\RequirePackage[linktocpage,breaklinks,linktoc=all,hidelinks]{hyperref}
\RequirePackage[colorinlistoftodos,prependcaption,textsize=scriptsize]{todonotes}
\RequirePackage{lineno}
\RequirePackage{setspace}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{titling}
\RequirePackage{ifthen}
\RequirePackage{titlesec}
\RequirePackage{indentfirst}
\RequirePackage[titles]{tocloft}
\RequirePackage[normalem]{ulem} % replacing soul
\RequirePackage{xcolor}
\RequirePackage{etoolbox}
\RequirePackage{mwe}
\RequirePackage{kantlipsum}
\RequirePackage{subfig}
\RequirePackage[figure,table]{totalcount}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage[within=chapter]{newfloat}
\RequirePackage[labelsep=period]{caption}
\RequirePackage{comment}
\RequirePackage{tikz}
\usetikzlibrary{matrix,arrows,decorations.pathmorphing}
\RequirePackage{etoolbox}
\RequirePackage{tocloft}
\RequirePackage{xtab}
\RequirePackage{siunitx}   % [binary-units = true]   
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{pdflscape} 
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{longtable} 
\RequirePackage{threeparttable}
\RequirePackage{threeparttablex} 
\RequirePackage{xspace}
\RequirePackage{rotating}
\RequirePackage{listings}
\RequirePackage{tabularray}
\RequirePackage{comment}
\RequirePackage{enumitem}
\RequirePackage[american]{babel} % english
\RequirePackage{csquotes}
\RequirePackage[export]{adjustbox}
\RequirePackage[nameinlink]{cleveref} %capitalise, noabbrev 

\UseTblrLibrary{amsmath} % to avoid potential conflict in tabularray
\UseTblrLibrary{booktabs} 
\UseTblrLibrary{counter}
\UseTblrLibrary{diagbox}
\UseTblrLibrary{siunitx}
\UseTblrLibrary{varwidth}

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
  \do\V\do\W\do\X\do\Y\do\Z}%

% Overall  
\urlstyle{same}  % same font used for url than the regular tt font
\captionsetup[figure]{singlelinecheck=true} % for figures (centered and left)
\setlist{nosep, leftmargin=0.5in} % enumerate setup (no extra line spacing and let margin at 0.5in like other indent
\newbool{whole}  % to be used with main and subfiles
\setbool{whole}{true} % false produces refs individual subfiles - default
\newbool{biblatexused}  % to be used with main and subfiles
\setbool{biblatexused}{false} % false produces refs individual subfiles - default
\newbool{subcomp}  % to be used with main and subfiles
\setbool{subcomp}{false} % false produces refs individual subfiles - default

% Spacing between number and captions (table and figures) 
\setlength{\cfttabnumwidth}{2.5em} % table - tocloft package
\setlength{\cftfignumwidth}{2.5em} % figure - tocloft package

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
\ProcessOptions

% Nonumber and chapter number (only chapters numbered) options - two types of NDSU templates (Now offering 3 types)
\newcommand{\numbertype}{none}
\DeclareOption{nonumber}{\renewcommand{\numbertype}{nonumber}}
\DeclareOption{chapternumber}{\renewcommand{\numbertype}{chapternumber}}
\ProcessOptions
\ifthenelse{\equal{\numbertype}{nonumber}}{\setcounter{secnumdepth}{-1}}{
\ifthenelse{\equal{\numbertype}{chapternumber}}{\setcounter{secnumdepth}{0}}{
}}{}

% Justification option for the whole document - default is justified nojustify is ragged-right format. NDSU default is "ragged-right" but allows "justified" format as well
\newcommand{\justifytype}{none1}
\DeclareOption{nojustify}{\renewcommand{\justifytype}{nojustify}}
\ProcessOptions
\ifthenelse{\equal{\justifytype}{nojustify}}{\AtBeginDocument{\raggedright}}{}

% Font options: Any one can be used bookman, charter, gentium, kpfonts, libertine, lmodern, mathdesign, mathptmx, newcent, palatino, tgtermes, times, tgbonum, tgpagella, tgschola, utopia, zlmtt. Note: all will not support the math characters - in such cases, only the math font falls back to the default computer modern. SI units also will be influenced. 

\newcommand{\fonttype}{none2}
\DeclareOption{bookman}{\renewcommand{\fonttype}{bookman}}
\DeclareOption{charter}{\renewcommand{\fonttype}{charter}}
\DeclareOption{gentium}{\renewcommand{\fonttype}{gentium}}
\DeclareOption{kpfonts}{\renewcommand{\fonttype}{kpfonts}}
\DeclareOption{libertine}{\renewcommand{\fonttype}{libertine}}
\DeclareOption{lmodern}{\renewcommand{\fonttype}{lmodern}}
\DeclareOption{mathdesign}{\renewcommand{\fonttype}{mathdesign}}
\DeclareOption{mathptmx}{\renewcommand{\fonttype}{mathptmx}}
\DeclareOption{newcent}{\renewcommand{\fonttype}{newcent}}
\DeclareOption{palatino}{\renewcommand{\fonttype}{palatino}}
\DeclareOption{tgtermes}{\renewcommand{\fonttype}{tgtermes}}
\DeclareOption{times}{\renewcommand{\fonttype}{times}}
\DeclareOption{tgbonum}{\renewcommand{\fonttype}{tgbonum}}
\DeclareOption{tgpagella}{\renewcommand{\fonttype}{tgpagella}}
\DeclareOption{tgschola}{\renewcommand{\fonttype}{tgschola}}
\DeclareOption{utopia}{\renewcommand{\fonttype}{utopia}}
\DeclareOption{zlmtt}{\renewcommand{\fonttype}{zlmtt}}
\ProcessOptions

\ifthenelse{\equal{\fonttype}{bookman}}{\usepackage{bookman}}{
\ifthenelse{\equal{\fonttype}{charter}}{\usepackage{charter}}{
\ifthenelse{\equal{\fonttype}{gentium}}{\usepackage{gentium}}{
\ifthenelse{\equal{\fonttype}{kpfonts}}{\usepackage{kpfonts}}{
\ifthenelse{\equal{\fonttype}{libertine}}{\usepackage{libertine}}{
\ifthenelse{\equal{\fonttype}{lmodern}}{\usepackage{lmodern}}{
\ifthenelse{\equal{\fonttype}{mathdesign}}{\usepackage[bitstream-charter]{mathdesign}}{
\ifthenelse{\equal{\fonttype}{mathptmx}}{\usepackage{mathptmx}}{
\ifthenelse{\equal{\fonttype}{newcent}}{\usepackage{newcent}}{
\ifthenelse{\equal{\fonttype}{palatino}}{\usepackage{palatino}}{
\ifthenelse{\equal{\fonttype}{tgtermes}}{\usepackage{tgtermes}}{
\ifthenelse{\equal{\fonttype}{times}}{\usepackage{times}}{
\ifthenelse{\equal{\fonttype}{tgbonum}}{\usepackage{tgbonum}}{
\ifthenelse{\equal{\fonttype}{tgpagella}}{\usepackage{tgpagella}}{
\ifthenelse{\equal{\fonttype}{tgschola}}{\usepackage{tgschola}}{
\ifthenelse{\equal{\fonttype}{utopia}}{\usepackage{utopia}}{
\ifthenelse{\equal{\fonttype}{zlmtt}}{\usepackage{zlmtt}}
}}}}}}}}}}}}}}}}{}

% Showframe 
\newcommand{\frameshow}{none3}
\DeclareOption{showframe}{\renewcommand{\frameshow}{showframe}}
\ProcessOptions
\ifthenelse{\equal{\frameshow}{showframe}}
{\RequirePackage[top=1in,bottom=1.25in,left=1in,right=1in,letterpaper,showframe]{geometry}}{\RequirePackage[top=1in,bottom=1.25in,left=1in,right=1in,letterpaper]{geometry}}

% ChapterBibliography 
\newcommand{\chapbib}{none4}
\DeclareOption{chaptersbib}{\renewcommand{\chapbib}{chaptersbib}}
\ProcessOptions
\ifthenelse{\equal{\chapbib}{chaptersbib}}
{\setbool{whole}{false}
\setbool{biblatexused}{true}}
{\setbool{whole}{true}
\setbool{biblatexused}{false}}

% Subfile compilation 
\newcommand{\subcom}{none5}
\DeclareOption{subfileref}{\renewcommand{\subcom}{subfileref}}
\ProcessOptions
\ifthenelse{\equal{\subcom}{subfileref}}
{\setbool{subcomp}{true}}
{\setbool{subcomp}{false}}

% Table of contents tweaks
\addto\captionsamerican{\renewcommand{\contentsname}{TABLE OF CONTENTS}}
\addto\captionsamerican{\renewcommand{\listtablename}{LIST OF TABLES}}
\addto\captionsamerican{\renewcommand{\listfigurename}{LIST OF FIGURES}}
\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
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
\DeclareTotalCounter{appendixfigure}
\DeclareTotalCounter{appendixtable}
\DeclareFloatingEnvironment[fileext=loaf,placement={ht},listname={LIST OF APPENDIX FIGURES},name=Figure]{appendixfigure}
\DeclareFloatingEnvironment[fileext=loat,placement={ht},listname={LIST OF APPENDIX TABLES},name=Table]{appendixtable}

% Fix table captions and row spacing
%\AtBeginEnvironment{tabular}{\singlespacing}
\captionsetup[table]{position=top,skip=\baselineskip, singlelinecheck=false} % left-aligned
\captionsetup[appendixtable]{position=top,skip=0.75\baselineskip,singlelinecheck=false} % left-aligned

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

\renewcommand\title[1]{\def\@title{\uppercase{#1}}}
\let\@title=\@empty

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

% Other frontmatter sections
\newcommand\abstract[1]{\def\@abstract{\setlength\parindent{0.5in}\clearpage\chapter*{ABSTRACT}\addcontentsline{toc}{chapter}{ABSTRACT}#1}}
\let\@abstract=\@empty   

\newcommand\acknowledgements[1]{\def\@acknowledgements{\clearpage\chapter*{ACKNOWLEDGEMENTS}\addcontentsline{toc}{chapter}{ACKNOWLEDGEMENTS}#1}}
\let\@acknowledgements=\@empty

\newcommand\dedication[1]{\def\@dedication{\clearpage\chapter*{DEDICATION}\addcontentsline{toc}{chapter}{DEDICATION}\begin{center}#1\end{center}}}
\let\@dedication=\@empty

\newcommand\preface[1]{\def\@preface{\clearpage\chapter*{PREFACE}\addcontentsline{toc}{chapter}{PREFACE}#1}}
\let\@preface=\@empty

% LIST OF ABBREVIATIONS - Igathi
% A 2-col tabular environment; Usage: SI & System International - flowing over multipage
\newcommand\listofabbreviations[1]{
\def\@listofabbreviations{\clearpage\chapter*{\vspace{-1ex}LIST OF ABBREVIATIONS}\addcontentsline{toc}{chapter}{LIST OF ABBREVIATIONS}
\vspace{-2ex} 
\renewcommand{\arraystretch}{1.5}
\begin{singlespace}
\xentrystretch{-0.1}
\begin{xtabular}{>{\hspace{-0.05in}}p{2.3in}<{\dotfill}@{}p{3.5in}}
#1
\end{xtabular}
\end{singlespace}
\renewcommand{\arraystretch}{1}
}}
\let\@listofabbreviations=\@empty

% LIST OF SYMBOLS - Igathi
% A 2-col tabular environment; Usage: $\alpha$ & The angle ($\dg$)
\newcommand\listofsymbols[1]{
\def\@listofsymbols{\clearpage\chapter*{\vspace{-1ex}LIST OF SYMBOLS}\addcontentsline{toc}{chapter}{LIST OF SYMBOLS}
\vspace{-2ex} 
\renewcommand{\arraystretch}{1.5}
\begin{singlespace}
\xentrystretch{-0.1}
\begin{xtabular}{>{\hspace{-0.05in}}p{2.3in}<{\dotfill}@{}p{3.5in}}
#1
\end{xtabular}
\end{singlespace}
\renewcommand{\arraystretch}{1}
}}
\let\@listofsymbols=\@empty

% Title page
\setlength{\droptitle}{-1in}
\pretitle{\doublespacing \vfill \begin{center}}
\posttitle{\vfill \singlespacing A \@papertype \\ Submitted to the Graduate Faculty \\ of the \\ North Dakota State University \\ of Agriculture and Applied Science \end{center}}
\preauthor{\vfill \begin{center} By \\ \vspace{\baselineskip}}
\postauthor{\vfill \singlespacing In Partial Fulfillment of the Requirements \\ for the Degree of \\ \@degree \vfill Major~\@progdeptchoice: \\ \@department \end{center}}
\predate{\vfill \begin{center}}
\postdate{\vfill Fargo, North Dakota \end{center}}

% These control the frontmatter sections
\newcommand{\makeapproval}{
\clearpage
\thispagestyle{empty}
\doublespacing
\vfill
\begingroup
    \centering {\Large \textbf{NORTH DAKOTA STATE UNIVERSITY}} \\
    {\large Graduate School} \\
    \vspace{.1in}
    \hrule height 1pt
    \begin{center}
    \parbox{5.5in}{
        \begin{center}
        \textbf{Title} \\
        \@title
        \vspace{.2in}
        \hrule
        \vspace{.2in}
        \textbf{By} \\
        \@author
        \vspace{.2in}
        \hrule
        \end{center}
    }
    \end{center}
\endgroup
\vspace{-1.2\baselineskip}
\vfill
\begingroup
\leftskip1em
\rightskip\leftskip
{\noindent The Supervisory Committee certifies that this \MakeLowercase{\@papertype} complies with North Dakota State University's regulations and meets the accepted standards for the degree of}\\
\par
\endgroup

\begin{center}
\textbf{\@degree}
\vfill
\parbox{5.5in}{
    \hspace{-0.35in}SUPERVISORY COMMITTEE: \\[0.06in]
    \@cchair
    \@cochaira
    \@cochairb
    \@cmembera
    \@cmemberb
    \@cmemberc
    \@cmemberd
}
\parbox{5.5in}{
    \vspace{0.2in}\hspace{-0.35in}Approved: \\[0.1in]
    \noindent \parbox{1.5in}{\centering\@approvaldate\vspace{.05in}\hrule\vspace{.05in}{\tiny Date}} \hfill
    \parbox{3in}{\centering\@approver\vspace{.05in}\hrule\vspace{.05in}{\tiny Department Chair}}
}
\end{center}
}

\newlength{\standardchapnumwidth}  
\AtBeginDocument{\setlength{\standardchapnumwidth}{\cftchapnumwidth}}
\AtBeginDocument{\frontmatter \maketitle\thispagestyle{empty} \makeapproval \@abstract \@acknowledgements \@dedication \@preface 

\begin{singlespace}\tableofcontents\end{singlespace}
\iftotaltables
\begingroup
	\renewcommand*{\addvspace}[1]{}
	\begin{singlespace}\listoftables\end{singlespace}
\endgroup
\fi
\iftotalfigures
\begingroup
	\renewcommand*{\addvspace}[1]{}
	\begin{singlespace}\listoffigures\end{singlespace}
\endgroup
\fi

\@listofabbreviations  
\@listofsymbols

\iftotalappendixtables\begin{singlespace}\listofappendixtables\end{singlespace}\fi
\iftotalappendixfigures\begin{singlespace}\listofappendixfigures\end{singlespace}\fi
\mainmatter}

\pagestyle{plain}
\addtocontents{lot}{\noindent\underline{Table}\hfill \underline{Page}\par}
\addtocontents{lof}{\noindent\underline{Figure}\hfill \underline{Page}\par}
\addtocontents{loat}{\noindent\underline{Table}\hfill \underline{Page}\par}
\addtocontents{loaf}{\noindent\underline{Figure}\hfill \underline{Page}\par}
\addtocontents{loa}{\noindent\underline{Figure}\hfill \underline{Page}\par}  

% Labels chapters correctly
\newcommand{\heading}[1]{\chapter{\uppercase{#1}}}

% Format headings correctly
% Chapter title centered properly  - Use \myheading{} command
\titleformat{\chapter}
    {\centering\normalfont\bfseries\setstretch{1.6}}
    {{\large\MakeUppercase{{\chaptertitlename}}\ }}{0em}{\large\MakeUppercase}
    \titlespacing*{\chapter}{0pt}{-0.6\baselineskip}{0.4\baselineskip} 

% Two versions based on "nonumber" option other two carry chapter numbers
\ifthenelse{\equal{\numbertype}{nonumber}}{  
\newcommand{\myheading}[1]{\chapter[\uppercase{#1}]{{#1}}} 
}{
\newcommand{\myheading}[1]{\chapter[\uppercase{#1}]{\thechapter.~{#1}}}
}

\newcommand\blfootnote[1]{  
  \begingroup
  \renewcommand\thefootnote{}\footnote{#1}%
  \addtocounter{footnote}{-1}%
  \endgroup
}

% Usage: \mypaperheading{Title}{footnote mark}{footnote text}  - 3 arguments

\ifthenelse{\equal{\numbertype}{nonumber}}{  
\newcommand{\mypaperheading}[3]{\chapter[\uppercase{#1}]{{#1\,#2}\vspace{-3.2ex}}\blfootnote{\raggedright#2\,#3}} 
}{
\newcommand{\mypaperheading}[3]{\chapter[\uppercase{#1}]{\thechapter.~{#1\,#2}\vspace{-3.2ex}}\blfootnote{\raggedright#2\,#3}} 
}

% NDSU - MAJOR HEADING - Centered, bold, All Caps, e.g., 1. MAJOR HEADING
     
\titleformat{\section}  
    {\centering\normalfont\bfseries}{\thesection.}{0.3em}{} 
    \titlespacing*{\section}{0pt}{*0}{0pt}    
% NDSU - First Level Subheading  - Centered, bold, Title Case, 
% e.g., 1.1. First Level Subheading
    
\titleformat{\subsection} % Igathi
    {\normalfont\bfseries}{\thesubsection.}{0.3em}{}
    \titlespacing*{\subsection}{0pt}{*0}{0pt}
% NDSU - Second Level Subheading  - Left aligned, bold, Title Case, 
% e.g., 1.1.1.Second Level Subheading

\titleformat{\subsubsection} % Igathi
    {\normalfont\bfseries\itshape}{\thesubsubsection.}{0.3em}{} 
    \titlespacing*{\subsubsection}{0pt}{*0}{0pt}
% NDSU - Third level subheading  - Left aligned, bold, italics, Sentence case, 
% e.g., 1.1.1.1. Third level subheading

\titleformat{\paragraph}
    {\normalfont}{\theparagraph.}{0.3em}{} 
    \titlespacing*{\paragraph}{0pt}{*0}{0pt}
% Not in NDSU - Fourth level subheading  - Left aligned, normal, Sentence case, 
%e.g., 1.1.1.1.1. Fourth level subheading

\titleformat{\subparagraph}
    {\normalfont\itshape}{\thesubparagraph.}{0.3em}{} 
    \titlespacing*{\subparagraph}{0pt}{*0}{0pt}
% Not in NDSU - Fifth level subheading  - Left aligned, italics, Sentence case, 
%e.g., 1.1.1.1.1.1. Fifth level subheading 
    
\newcommand\bibtocsubstart{ % used in latter command
\newpage
\phantomsection
\addcontentsline{toc}{chapter}{REFERENCES}
\addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
\renewcommand{\refname}{\vspace{-0.45in}}
\renewcommand{\bibname}{REFERENCES}
}

% Usage: \biblio{reference-styleFile}{reference-bibFile}  -  Command to have references
\newcommand\biblio[2]{
\bibtocsubstart
\bibliographystyle{#1} 	% *.bst file  
\bibliography{#2}    		% *.bib file 
\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
}  

% Usage: \tempend{reference-styleFile}{reference-bibFile}  - Command to end temporarily 
\newcommand\tempend[2]{ 
\bibtocsubstart
\bibliographystyle{#1} 		% *.bst file
\bibliography{#2}    			% *.bib file 
\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
\end{spacing}
\end{document}
}

% Usage: \tend the \makebib was recursively passed
\newcommand\tend{ 
\bibtocsubstart
\makebib
\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
\end{spacing}
\end{document}
}

% Generate appendices with the correct numbering - modified
\renewcommand{\appendix}{
    \chapter*{APPENDIX}
    \setcounter{appendixfigure}{0}
    \renewcommand{\appendixfigurename}{Figure}
    \renewcommand{\theappendixfigure}{A\arabic{appendixfigure}}
    \setcounter{appendixtable}{0}
    \renewcommand{\appendixtablename}{Table}
    \renewcommand{\theappendixtable}{A\arabic{appendixtable}}
    \addtocontents{toc}{\setlength{\protect\cftchapnumwidth}{0pt}}    
    \addcontentsline{toc}{chapter}{APPENDIX}
    \renewcommand{\thesection}{A.\arabic{section}} 	
    \setcounter{section}{0}
    \renewcommand{\theequation}{A.\arabic{equation}}
    \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}% toc up to subsection
}

% Usage: 	\namedappendices{A}{Appendix title}
\newcommand{\namedappendices}[2]{ % for multiple appendices
    \chapter*{APPENDIX #1. #2} 
    \setcounter{appendixfigure}{0}
    \renewcommand{\appendixfigurename}{Figure}
    \renewcommand{\theappendixfigure}{#1\arabic{appendixfigure}}
    \setcounter{appendixtable}{0}
    \renewcommand{\appendixtablename}{Table}
    \renewcommand{\theappendixtable}{#1\arabic{appendixtable}}
    \addtocontents{toc}{\setlength{\protect\cftchapnumwidth}{0pt}}    
    \addcontentsline{toc}{chapter}{APPENDIX #1.{\hspace{1.5ex}}\uppercase{#2}}
    \renewcommand{\thesection}{#1.\arabic{section}} 	
%    \addcontentsline{toc}{section}{#1.\arabic{section}}
    \setcounter{section}{0}
    \renewcommand{\theequation}{#1.\arabic{equation}}
    \addtocontents{toc}{\protect\setcounter{tocdepth}{2}}% toc up to subsection
}

% New(er) commands
%---------------------------------------------------------------

% suppressing Chapter labels and leaving only the number
\addto\captionsamerican{%
\renewcommand\chaptername{}} 

% Command to ensure list of both appendix tables and figures
% Usage: \closeappendices on the last named appendix at the end or separately before the \end{document}	
\newcommand{\closeappendices}{  % Igathi
\renewcommand{\appendixfigurename}{}
\renewcommand{\theappendixfigure}{}
\renewcommand{\appendixtablename}{}
\renewcommand{\theappendixtable}{}
\begin{appendixfigure}[H]
\caption[]{}
\end{appendixfigure}
\begin{appendixtable}[H]
\caption[]{}
\end{appendixtable}
\vspace{-25ex}
}

% the thesis had only appendix tables
\newcommand{\closeappendixtables}{  % Igathi
\renewcommand{\appendixtablename}{}
\renewcommand{\theappendixtable}{}
\begin{appendixtable}[H]
\caption[]{}
\end{appendixtable}
\vspace{-25ex}
}

% the thesis had only appendix figures
\newcommand{\closeappendixfigures}{  % Igathi
\renewcommand{\appendixfigurename}{}
\renewcommand{\theappendixfigure}{}
\begin{appendixfigure}[H]
\caption[]{}
\end{appendixfigure}
\vspace{-25ex}
}

\newcommand\vsalign{\vspace{-4ex}} 
\newcommand\vseqn{\vspace{-2ex}} 

% Example usage: 
% \myfig[aboveskip=3ex]{placement=ht}{width=0.8}{file=fig1.pdf}{caption=My caption goes here}{label=fig1}
% \myfig[aboveskip]{ht}{0.8}{fig1.pdf}{My caption goes here}{fig1}

% Regular figure command with placement (htpbH as first argument)
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

% Example usage: 
% \myfigls[aboveskip]{ht}{0.8}{fig1.pdf}{My caption goes here}{fig1}

% Landscape figure command with placement (htpbH as first argument)
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

% Example usage: 
% \myfigap[aboveskip]{ht}{0.5}{appenddfig1.pdf}{My appendix caption goes here}{figA1}

% Appendix figure command - with placement (htpbH as first argument)
\newcommand{\myfigap}[6][0ex]{
\vspace{2ex}
\begin{appendixfigure}[#2]
\centering 
\captionsetup{belowskip = 0pt, aboveskip = #1 plus 2pt minus 2pt} %, singlelinecheck=true for centering
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#6}
\end{appendixfigure}
}

% Example usage: 
% \myfigapls{ht}{0.5}{appenddfig1.pdf}{My appendix caption goes here}{figA1}

% Appendix landscape figure command - with placement (htpbH as first argument)
\newcommand{\myfigapls}[6][0ex]{
\begin{landscape}
\begin{appendixfigure}[#2]
\centering 
\captionsetup{belowskip = 0pt, aboveskip = #1 plus 2pt minus 2pt} %, singlelinecheck=true for centering
   \includegraphics[width=#3\textwidth]{#4}
   \vspace{5pt} 
   \caption[#5]{#5}
   \label{#6}
\end{appendixfigure}
\end{landscape}
}

% Highlight command defined
\newcommand\hl{\bgroup\markoverwith
  {\textcolor{yellow}{\rule[-.5ex]{.1pt}{2.5ex}}}\ULon}
    
\definecolor{newtext}{rgb}{0.1,0.6,0.1}
\newcommand\dt[1]{\textcolor{red}{\sout{#1}}\xspace}
\newcommand\nt[1]{\textcolor{newtext}{#1}\xspace}
\newcommand\rt[2]{{\textcolor{red}{\sout{#1}}}{\textcolor{newtext}{#2}}\xspace}
\newcommand\notes[1]{\vspace{2ex}\todo[color=green!35, inline]{#1}}
\newcommand\td[1]{\vspace{2ex}\todo[color=green!35, inline]{#1}}

\newcommand\mt[1]{\text{#1}}  % math text
\newcommand\pt[1]{\qty[mode = text]{#1}{\percent}\xspace} % \qty{}{} new SI command
\newcommand\pr[1]{\qty[mode = text]{#1}{\percent}\xspace}
\newcommand\dg[1]{\qty[mode = text]{#1}{\degreeCelsius}\xspace}

\newcommand\SU[2]{\qty[mode = text]{#1}{#2}\xspace} % redefined using qty
\newcommand\su[1]{\unit[mode = text]{#1}\xspace} % redefined using qty
\newcommand\no[1]{\num[mode = text]{#1}\xspace} % redefined using qty


\setlength\abovedisplayskip{6pt plus 3pt minus 3pt}
\setlength\abovedisplayshortskip{0pt plus 3pt minus 3pt}
\setlength\belowdisplayskip{6pt plus 3pt minus 3pt}
\setlength\belowdisplayshortskip{3pt plus 1pt minus 1pt}

\RequirePackage{subfiles} % Best loaded last in the preamble

% ==============================================================
% These commands are to support ASABE style (reference + captions)
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

%Appendix tables and figures in bold - for tables > 9 use [lot] directly
\captionsetup[appendixtable]{font={normalsize,bf}} %bold for tables 
\captionsetup[appendixfigure]{font={normalsize,bf}}%bold for figures
}
%*************** ASABE style references and captions  ****************
% ==============================================================

\widowpenalty=10000
\clubpenalty=10000

\endinput
