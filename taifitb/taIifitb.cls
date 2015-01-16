\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../taifitb/taIifitb}[2014/12/24 Tugas Akhir Prodi IF ITB - dalam pengembangan]

% [begin] Preliminary declaration
\LoadClass[12pt,a4paper,titlepage]{article}

% [begin] Global variable
% spacing
\newcommand{\onehalf}{1.4}
\newcommand{\semidouble}{1.6}
\newcommand{\double}{2.2}
\newcommand{\afterspace}{8pt}

% *width
\newcommand{\tablewidth}{\textwidth*7/8}
\newcommand{\figurewidth}{\textwidth*7/8}

% table entry counter
\newcounter{etable}[table]
% [end] Global variable

% File management
\RequirePackage{subfiles}

% Input and font encoding
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

% Localization
\RequirePackage[bahasa]{babel}

% Font type
\RequirePackage{mathptmx} % set default font to (be likely) Times New Roman

% Color
\RequirePackage[table]{xcolor}

% Hyphenation
\RequirePackage{hyphenat}

% Page margin
\RequirePackage[left=4cm,top=3cm,right=3cm,bottom=3cm]{geometry}

% Line space
\RequirePackage{setspace}
\renewcommand{\baselinestretch}{1.5}
\setlength{\parindent}{0em}
\setlength{\parskip}{0.5em}

% Headings etc.
\RequirePackage{titlesec}
\titlespacing*{\subsection}{0em}{1em}{0em}
\titlespacing*{\subsubsection}{0em}{1em}{0em}

% List in paragraph
\RequirePackage{paralist}

% Math
\RequirePackage{mathtools}
\RequirePackage{amsfonts}

% Hyperlink
\RequirePackage[unicode=true]{hyperref}
\expandafter\def\expandafter\UrlBreaks\expandafter{\UrlBreaks%  save the current one
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j%
  \do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t%
  \do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D%
  \do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N%
  \do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X%
  \do\Y\do\Z
}

% Table of content
\RequirePackage{tocloft}

% Glossary, acronym, and symbol
\RequirePackage{calc}
\RequirePackage{booktabs}
\RequirePackage[xindy,toc]{glossaries}
\makeglossaries

% Figure
\RequirePackage{graphicx}
\graphicspath{{figures/}{../figures/}}

% Caption
\usepackage[
	format=hang,
	labelsep=period
]{caption}

% Multicolumn
\RequirePackage{multicol}

% Multirow
\RequirePackage{multirow}

% Bibliography
\RequirePackage{csquotes}
\RequirePackage[
	backend=biber,
	style=apa,
	sorting=nyt
]{biblatex}
\DeclareLanguageMapping{english}{english-apa}
\addbibresource{../bibliography/ref.bib}

% Chinese, Japanese, and Korean support
\RequirePackage{CJKutf8}
% [end] Preliminary declaration

% [begin] Option handler
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
% [end] Option handler

% [begin] Macro definition
% Format teks judul dan subjudul
\newcommand{\judul}[1]{\textbf{\MakeUppercase{\large #1}}}
\newcommand{\subjudul}[1]{\textbf{\large #1}}

% Format bab
\newcommand\invisiblesection[1]{%
  \refstepcounter{section}%
  \addcontentsline{toc}{section}{\protect\numberline{\thesection}#1}%
  \sectionmark{#1}
}
\newcommand{\bab}[1]{
    \invisiblesection{\textbf{#1}}
    \begin{center}
    \textbf{\large\thesection\\[12pt]#1}
    \end{center}
    
    \setlength{\parskip}{0.5em}

    \setcounter{figure}{0}
    \setcounter{table}{0}
    \setcounter{equation}{0}
}

% Penomoran pada tabel
\newcommand{\tableitem}{
  \stepcounter{etable}
  \arabic{etable}
}

% NIM
\newcommand\nim[1]{\renewcommand\@nim{#1}}
\newcommand\@nim{\@latex@error{No \noexpand\nim given}\@ehc}

% Pembimbing I
\newcommand\pembimbingI[1]{\renewcommand\@pembimbingI{#1}}
\newcommand\@pembimbingI{\@latex@error{No \noexpand\pembimbingI given}\@ehc}

% NIP pembimbing I
\newcommand\nipI[1]{\renewcommand\@nipI{#1}}
\newcommand\@nipI{\@latex@error{No \noexpand\nipI given}\@ehc}

% Pembimbing II
\newcommand\pembimbingII[1]{\renewcommand\@pembimbingII{#1}}
\newcommand\@pembimbingII{\@latex@error{No \noexpand\pembimbingII given}\@ehc}

% NIP pembimbing II
\newcommand\nipII[1]{\renewcommand\@nipII{#1}}
\newcommand\@nipII{\@latex@error{No \noexpand\nipII given}\@ehc}

% Versi (waktu penyelesaian tugas akhir)
\newcommand{\Version}{%
	\ifcase\the\month
		\or Januari% 1
		\or Februari% 2
		\or Maret% 3
		\or April% 4
		\or Mei% 5
		\or Juni% 6
		\or Juli% 7
		\or Agustus% 8
		\or September% 9
		\or Oktober% 10
		\or November% 11
		\or Desember% 12
	\fi
	\space\the\year
}

% Daftar lampiran
\newcommand{\listappendicesname}{\large DAFTAR LAMPIRAN \vspace{22pt}}
\newcommand{\listappendicesnameX}{DAFTAR LAMPIRAN}
\newlistof{appendices}{apc}{\listappendicesname}
\newcommand{\appendices}[1]{\addcontentsline{apc}{appendices}{\hspace{1em} \textbf{#1}}}
\newcommand{\subappendices}[1]{\addcontentsline{apc}{appendices}{\hspace{1em}\hspace{1em} #1}}
\newcommand{\newappendix}[1]{\stepcounter{section}\section*{\large Lampiran \Alph{section} #1}\appendices{Lampiran \Alph{section} #1}}
\newcommand{\newsubappendix}[1]{\stepcounter{subsection}\subsection*{\Alph{section}.\arabic{subsection} #1}\subappendices{\Alph{section}.\arabic{subsection} #1}}

% Daftar istilah, lambang, dan singkatan
\newlength\maxlength
\newlength\thislength

\newglossarystyle{mystyle}
{%
  \renewenvironment{theglossary}%
  {% start of glossary
   % Find maximum width of the first column:
    \setlength{\maxlength}{0pt}%
    \forglsentries[\currentglossary]{\thislabel}%
    {%
       \settowidth{\thislength}{\glsentrytext{\thislabel}}%
       \ifdim\thislength>\maxlength
         \setlength{\maxlength}{\thislength}%
       \fi
    }%
    % Now calculate the width of the second column:
    \settowidth{\thislength}{\hspace{1.5em}=\hspace{1em}}%
    \setlength{\glsdescwidth}{\linewidth-\maxlength-\thislength-2\tabcolsep-4em}%
    % Start the tabular environment
    \begin{tabular}{l p{\glsdescwidth} r}
    \toprule
    \multicolumn{1}{l}{\textbf{Singkatan/Istilah}} &
    \multicolumn{1}{l}{\textbf{Deskripsi}} &
    \multicolumn{1}{r}{\textbf{Hal.}} \\%
    \midrule
  }%
  {% end of glossary
     \bottomrule
     \end{tabular}%
  }%
  % Header has been incorporated into \begin{theglossary}
  \renewcommand*{\glossaryheader}{}%
  % Don't do anything between letter groups
  \renewcommand*{\glsgroupheading}[1]{}%
  \renewcommand*{\glsgroupskip}{}%
  % Set display for each the acronym entry
  \renewcommand{\glossentry}[2]{%
    \textbf{\glsentrytext{##1}}
    &
    \Glsentrydesc{##1}.% long form
    &
    ##2
    \\% end of row
  }%
  % No sub-entries, so \subglossentry doesn't need redefining
}
% [end] Macro definition

% [begin] Macro modification
% Daftar isi
\setcounter{tocdepth}{5}
\addto\captionsbahasa{\renewcommand*\contentsname{\large DAFTAR ISI \vspace{22pt}}}
\newcommand{\contentsnameX}{DAFTAR ISI}
\renewcommand*\l@section{\@dottedtocline{1}{1.5em}{3.8em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{2.4em}{2.8em}}
\renewcommand*\l@paragraph{\@dottedtocline{4}{5.2em}{3.6em}}

% Section/subsection/.. numbering
\setcounter{secnumdepth}{5}
\renewcommand\thesection{\textbf{BAB \Roman{section}}}
\renewcommand\thesubsection{\Roman{section}.\arabic{subsection}}
\renewcommand\thesubsubsection{\Roman{section}.\arabic{subsection}.\arabic{subsubsection}}

% Daftar gambar
\addto\captionsbahasa{\renewcommand*\listfigurename{\large DAFTAR GAMBAR \vspace{22pt}}}
\newcommand{\listfigurenameX}{DAFTAR GAMBAR}
\renewcommand{\thefigure}{\Roman{section}.\arabic{figure}}
\newlength{\mylen}
\renewcommand{\cftfigpresnum}{\figurename\enspace}
\renewcommand{\cftfigaftersnum}{. }
\settowidth{\mylen}{\cftfigpresnum\cftfigaftersnum}
\addtolength{\cftfignumwidth}{\mylen}

% Daftar tabel
\addto\captionsbahasa{\renewcommand*\listtablename{\large DAFTAR TABEL \vspace{22pt}}}
\newcommand{\listtablenameX}{DAFTAR TABEL}
\renewcommand{\thetable}{\Roman{section}.\arabic{table}}
\renewcommand{\cfttabpresnum}{\tablename\enspace}
\renewcommand{\cfttabaftersnum}{. }
\settowidth{\mylen}{\cfttabpresnum\cfttabaftersnum}
\addtolength{\cfttabnumwidth}{\mylen}

% Pengaturan spasi pada daftar
\let\oldenumerate\enumerate
\renewcommand{\enumerate}{
	\oldenumerate
	\setlength{\itemsep}{1em}
	\setlength{\parskip}{-1em}
	\setlength{\parsep}{0em}
}

% Penomoran persamaan
\renewcommand{\theequation}{\arabic{section}.\arabic{equation}}

% Style url
\urlstyle{tt}

% Daftar pustaka (biblatex untuk bahasa Indonesia)
\newcommand{\referencesnameX}{DAFTAR PUSTAKA}
\DefineBibliographyStrings{english}{
	references       = {\hfill\large DAFTAR PUSTAKA\hfill \vspace{22pt}},
	and              = {dan},
	andothers        = {dkk\adddot},
	andmore          = {dkk\adddot},
	%in               = {{d}{alam}},
	%page             = {{}{}},
	%pages            = {{}{}},
}
% [end] Macro modification