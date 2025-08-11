%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e} % [1996/12/01]
\ProvidesClass{Thesis}
        [2025/08/11 v1.0.0-alpha.1
   LaTeX document class for August 2025 FEP PhD thesis (based on book class).]

% Require LuaLaTeX
\begingroup
  \edef\engine{\detokenize{%
  \ifx\directlua\undefined
    not-lualatex
  \else
    lualatex
  \fi
  }}
  \ifx\engine\detokenize{not-lualatex}
  \PackageError{Thesis}{%
    This class requires LuaLaTeX.%
  }{%
    Please compile your document with LuaLaTeX.%
  }
  \fi
\endgroup

\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
  \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
  \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

\newcommand\bhrule{
    \typeout{-----------------------------------------------------}
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year
} % \today of the form "Month Year"

%-------------------------------------------------------------------------
%	PARAGRAPHS
%-------------------------------------------------------------------------
\usepackage[nodisplayskipstretch]{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{8pt}

%-------------------------------------------------------------------------
%	CHAPTERS & SECTIONS
%-------------------------------------------------------------------------
\usepackage{titlesec}

%-------------------------------------------------------------------------
%	MARGINS & GEOMETRY
%-------------------------------------------------------------------------
\usepackage[a4paper,
  bindingoffset=0cm,
	top=3.0cm,
	outer=2.5cm,
	inner=3.5cm,
	bottom=3.0cm
]{geometry}

\raggedbottom % Do not stretch the text to fill the page vertically

\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.

%-------------------------------------------------------------------------
%	HEADER/FOOTER STYLES
%-------------------------------------------------------------------------
\usepackage{fancyhdr}
\fancypagestyle{plain}{} % Redefine the plain page style to be empty
\pagestyle{fancy}
\fancyhf{} % clears header and footer
\fancyfoot[LE,RO]{\thepage} % Number pages on the left side of even pages and right side of odd pages
    
\renewcommand{\headrulewidth}{0pt}

%-------------------------------------------------------------------------
%	CLEAR TWOSIDE PAGES
%-------------------------------------------------------------------------
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%-------------------------------------------------------------------------
%	MATH RELATED
%-------------------------------------------------------------------------
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace,mathtools}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}

%-------------------------------------------------------------------------
%	CAPTIONS
%-------------------------------------------------------------------------
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}

%-------------------------------------------------------------------------
%	REFERENCES
%-------------------------------------------------------------------------
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\newcommand{\gref}[1]{Graphic~\ref{#1}}

%-------------------------------------------------------------------------
%	FRACTIONS & OTHER
%-------------------------------------------------------------------------
\renewcommand{\topfraction}{0.85} % Allow floats to occupy up to 85% of the top of a text page
\renewcommand{\bottomfraction}{.85} % Allow floats to occupy up to 85% of the bottom of a text page
\renewcommand{\textfraction}{0.1} % Require at least 10% of a page to be text (not floats)
\renewcommand{\dbltopfraction}{.85} % Allow double-column floats to occupy up to 85% of the top of a page
\renewcommand{\floatpagefraction}{0.75} % Require at least 75% of a float page to be floats (rest can be blank)
\renewcommand{\dblfloatpagefraction}{.75} % Require at least 75% of a double-column float page to be floats
\setcounter{topnumber}{9} % Allow up to 9 floats at the top of a text page
\setcounter{bottomnumber}{9} % Allow up to 9 floats at the bottom of a text page
\setcounter{totalnumber}{20} % Allow up to 20 floats on a single page
\setcounter{dbltopnumber}{9} % Allow up to 9 double-column floats at the top of a page
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{threeparttable}
\usepackage{rotating}
\usepackage{listings}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor=black,citecolor=black,urlcolor=black,
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}

%-------------------------------------------------------------------------
%	THESIS RELATED COMMANDS
%-------------------------------------------------------------------------

\newcommand*{\supervisor}[2][]{
  \def\supnamenolink{#2}
  \ifthenelse{\equal{#1}{}}{
    \def\supname{#2}
  }{
    \def\supname{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\cosupervisor}[2][]{
  \def\cosupnamenolink{#2}
  \ifthenelse{\equal{#1}{}}{
    \def\cosupname{#2}
  }{
    \def\cosupname{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\thesistitle}[1]{
  \def\ttitle{#1}
  \hypersetup{pdftitle={\ttitle}}
}

\newcommand*{\thesistype}[1]{
  \def\ttype{#1}
}

\newcommand*{\examiner}[2][]{
  \def\examnamenolink{#2}
  \ifthenelse{ \equal{#1}{}}{
    \def\examname{#2}
  }{
    \def\examname{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\degree}[1]{
  \def\degreename{#1}
}

\newcommand*{\authors}[2][]{
  \def\authornamesnolink{#2}
  \hypersetup{pdfauthor=\authornamesnolink}
  \ifthenelse{\equal{#1}{}}{
    \def\authornames{#2}
  }{
    \def\authornames{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\addresses}[1]{
  \def\addressnames{#1}
}

\newcommand*{\university}[2][]{
  \def\univnamenolink{#2}
  \ifthenelse{\equal{#1}{}}{
    \def\univname{#2}
  }{
    \def\univname{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\UNIVERSITY}[2][]{
  \def\UNIVNAMEnolink{#2}
  \ifthenelse{\equal{#1}{}}{
    \def\UNIVNAME{#2}
  }{
    \def\UNIVNAME{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\department}[2][]{
  \def\deptnamenolink{#2}
  \ifthenelse{\equal{#1}{}}{
    \def\deptname{#2}
  }{
    \def\deptname{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\DEPARTMENT}[2][]{
  \def\DEPTNAMEnolink{#2}
  \ifthenelse{\equal{#1}{}}{
    \def\DEPTNAME{#2}
  }{
    \def\DEPTNAME{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\group}[2][]{
  \def\groupnamenolink{#2}
  \ifthenelse{\equal{#1}{}}{
    \def\groupname{#2}
  }{
    \def\groupname{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\GROUP}[2][]{
  \def\GROUPNAMEnolink{#2}
  \ifthenelse{\equal{#1}{}}{
    \def\GROUPNAME{#2}
  }{
    \def\GROUPNAME{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\faculty}[2][]{
  \def\facnamenolink{#2}
  \ifthenelse{\equal{#1}{}}{
    \def\facname{#2}
  }{
    \def\facname{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\FACULTY}[2][]{
  \def\FACNAMEnolink{#2}
  \ifthenelse{\equal{#1}{}}{
    \def\FACNAME{#2}
  }{
    \def\FACNAME{\texorpdfstring{\href{#1}{#2}}{#2}}
  }
}

\newcommand*{\subject}[1]{
  \def\subjectname{#1}
  \def\pdfsubjectstr{\ttype\ in \subjectname}
  \makeatletter
  \g@addto@macro\pdfsubjectstr{, \univname}
  \g@addto@macro\pdfsubjectstr{, \the\year}
  \makeatother
  \hypersetup{pdfsubject=\pdfsubjectstr}
}

\newcommand*{\keywords}[1]{
  \def\keywordnames{#1}
  \hypersetup{pdfkeywords=\keywordnames}
}

%-------------------------------------------------------------------------
%	TITLE PAGE DESIGN
%-------------------------------------------------------------------------
\renewcommand\maketitle{
% TITLE PAGE
\thispagestyle{empty}
\begin{titlepage}
\pagestyle{empty}
\begin{center}
\Large
You used the command \texttt{\textbackslash maketitle} to render this page.
\end{center}
  
\normalsize
Instead, set up the cover pages (front and back) and the title page PDFs 
from the MS Word templates \texttt{.fep/FEP Capa doutoramento.docx}\ and 
\texttt{.fep/Cover sheet.docx}, export them to 
the files \texttt{Front/cover.pdf}\ and \texttt{Front/title.pdf}, 
RESPECTIVELY, and use the following commands before the \texttt{\textbackslash frontmatter}:\\[1em]
\texttt{\textbackslash pagestyle\{empty\}}\\
\texttt{\textbackslash includepdf[pages=\{1\},pagecommand=\{\},scale=1]\{Front/covers\}}\\
\texttt{\textbackslash cleardoublepage}\\
\texttt{\textbackslash includepdf[pages=\{1\},pagecommand=\{\},scale=1]\{Front/title\}}\\
\texttt{\textbackslash cleardoublepage}\\
\texttt{\textbackslash pagestyle\{fancy\}}

Don't forget to insert the back cover as the document's last page with 
the commands:\\[1em]
\texttt{\textbackslash pagestyle\{empty\}}\\
\texttt{\textbackslash includepdf[pages=\{2\},pagecommand=\{\},scale=1]\{Front/covers\}}\\
\end{titlepage}
\cleardoublepage
}

%-------------------------------------------------------------------------
%	PRE-TEXTUAL PAGE DESIGN
%-------------------------------------------------------------------------
\NewDocumentEnvironment{envprecontent}{o m}
{
  \btypeout{#2}
  \chapter*{#2}
  \par
  \IfValueT{#1}{\begin{otherlanguage}{#1}} % Switch language if provided
  \begin{spacing}{2}
  \normalsize\normalfont
}
{
  \end{spacing}
  \IfValueT{#1}{\end{otherlanguage}} % Switch language if provided
  \cleardoublepage
}

% redefines backmatter to the next part start on the right side
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse}
\endinput
