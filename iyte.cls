% iyte.cls

\def\fileversion{0.01}
\def\filedate{2018/05/22}

%  Take minutes of meetings
% 2005-Sept-01 Jim Hefferon jhefferon (at) smcvt.edu
% --- Class structure: identification part
% ---
\ProvidesClass{iyte}[2018/05/22 version 0.01 IYTE Master Thesis]
\NeedsTeXFormat{LaTeX2e}

% --- Class structure: declaration of options part
% ---
% This class extends the article class
\LoadClass[12pt]{report}
% Read all the documentclass options; pass them to report
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
% --- Class structure: execution of options part
% ---
\ProcessOptions \relax
% --- Class structure: declaration of options part
% ---
% Page layout
\RequirePackage[a4paper,left=3.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}



% Font Family
%----------------------------
\RequirePackage[utf8]{inputenc}  %TODO: change to UTF-8?
%\RequirePackage{mathptmx}
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxmath,newtxtext}
%\RequirePackage{times}

% for font compile problems:
% https://tex.stackexchange.com/a/152749


% Sections
%----------------------------
% https://tex.stackexchange.com/a/392015
\setcounter{secnumdepth}{6}
\makeatletter
\renewcommand\subparagraph{%
	\@startsection {subparagraph}{5}{\z@ }{3.25ex \@plus 1ex
		\@minus .2ex}{-1em}{\normalfont \normalsize \bfseries }}%
\makeatother


% Sections
%----------------------------
\newcommand{\thesisbigfont}{\fontsize{16pt}{24pt}\selectfont\bfseries}
\newcommand{\thesismediumfont}{\fontsize{14pt}{21pt}\selectfont}
\RequirePackage{titlesec}

% Format Sections
\titleformat{\section}{\bfseries\thesismediumfont}{\thesection}{1em}{}
\titleformat{\subsection}{\bfseries\thesismediumfont}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\bfseries\thesismediumfont}{\thesubsubsection}{1em}{}
\titleformat{\paragraph}{\bfseries\thesismediumfont}{\theparagraph}{1em}{}
\titleformat{\subparagraph}{\bfseries\thesismediumfont}{\thesubparagraph}{1em}{}

% Format Chapters
\titleformat{\chapter}[display]
{\thesisbigfont\bfseries\centering}{\chaptertitlename\  \thechapter}{3ex}{}
\renewcommand\chaptername{CHAPTER}

% Section Spacing
\titlespacing*{\section}{0pt}{3ex}{3ex}
\titlespacing*{\section}{0pt}{3ex}{3ex}
\titlespacing*{\subsection}{0pt}{3ex}{3ex}
\titlespacing*{\subsubsection}{0pt}{3ex}{3ex}
\titlespacing*{\paragraph}{0pt}{3ex}{3ex}
\titlespacing*{\subparagraph}{0pt}{3ex}{3ex}



% Spacing
%----------------------------
\RequirePackage{setspace}
\onehalfspacing
\setlength{\parindent}{1.27cm}
\setlength{\parskip}{0pt}


% Pagination
%----------------------------
% https://tex.stackexchange.com/a/153176
\RequirePackage{fancyhdr}
\RequirePackage{afterpage}
% Turn on the style
\pagestyle{fancy}
% Clear the header and footer
\fancyhead{}
\fancyfoot{}
% Set the right side of the footer to be the page number
\fancyfoot[R]{\thepage}
% Redefine plain style, which is used for titlepage and chapter beginnings
% From https://tex.stackexchange.com/a/30230/828
\fancypagestyle{plain}{%
	\renewcommand{\headrulewidth}{0pt}%
	\fancyhf{}%
	\fancyfoot[R]{\thepage}%
}
\renewcommand{\headrulewidth}{0pt} % remove header horizontal bar



% Definitions
%------------------
% Thesis Title
\newcommand{\showthesistitle}{
	Please define your title with\\$\backslash$thesistitle\{My Title\}
}
\newcommand{\thesistitle}[1]{\renewcommand{\showthesistitle}{#1}}
% Thesis Author
\newcommand{\showthesisauthor}{
	Please define your title with\\$\backslash$thesisauthor\{Name SURNAME\}
}
\newcommand{\thesisauthor}[1]{\renewcommand{\showthesisauthor}{#1}}
% Thesis Degree
\newcommand{\showthesisdegree}{
	Please define your title with\\$\backslash$thesisdegree\{MASTER OF SCIENCE\}
}
\newcommand{\thesisdegree}[1]{\renewcommand{\showthesisdegree}{#1}}
% Thesis Major
\newcommand{\showthesismajor}{
	Please define your title with\\$\backslash$thesismajor\{Mathematics\}
}
\newcommand{\thesismajor}[1]{\renewcommand{\showthesismajor}{#1}}
% Thesis Date
\newcommand{\showthesisdate}{
	Please define your title with\\$\backslash$thesisdate\{June\}\{2018\}
}
\newcommand{\thesisdate}[2]{\renewcommand{\showthesisdate}{#1 #2}}



% Signature Page
%------------------
\RequirePackage{tikz}
% command to generate signature box's horizontal line
\newcommand{\namesigdatehrule}[1]{\par\tikz \draw [black, ultra thick] (0,0) -- (#1,0);\par}
% Commands to generate signature box
\newcommand{\thesissignaturebox}[2]{
	\begin{minipage}{7cm}%
		\vspace{1.0cm}\namesigdatehrule{6cm}\smallskip
		\noindent{
			\textbf{#1}\\
			#2
		}
	\end{minipage}
	\vspace{0.5em}
}
\newcommand{\thesiscommitteemember}[3]{\thesissignaturebox{#1}{#2, #3}}

% definitions for committee members
\newcommand{\thesiscommitteememberA}[3]{
	\newcommand{\showthesiscommitteememberA}{\thesiscommitteemember{#1}{#2}{#3}}
}
\newcommand{\thesiscommitteememberB}[3]{
	\newcommand{\showthesiscommitteememberB}{\thesiscommitteemember{#1}{#2}{#3}}
}
\newcommand{\thesiscommitteememberC}[3]{
	\newcommand{\showthesiscommitteememberC}{\thesiscommitteemember{#1}{#2}{#3}}
}
\newcommand{\thesiscommitteememberD}[3]{
	\newcommand{\showthesiscommitteememberD}{\thesiscommitteemember{#1}{#2}{#3}}
}
\newcommand{\thesiscommitteememberE}[3]{
	\newcommand{\showthesiscommitteememberE}{\thesiscommitteemember{#1}{#2}{#3}}
}
% definitions for reamining signatures
% Supervisor
\newcommand{\thesissupervisor}[3]{
	\newcommand{\showthesissupervisor}{\thesiscommitteemember{#1}{Supervisor, #2}{#3}}
}
% Co-Supervisor
\newcommand{\thesiscosupervisor}[3]{
	\newcommand{\showthesiscosupervisor}{\thesiscommitteemember{#1}{Co-Supervisor, #2}{#3}}
}
% Head of Department
\newcommand{\thesisheadofdepartment}[2]{
	\newcommand{\showthesisheadofdepartment}{\thesissignaturebox{#1}{Head of the Department of #2}}
}
% Dean of Graduate School
\newcommand{\thesisdeanofgraduateschool}[1]{
	\newcommand{\showthesisdeanofgraduateschool}{\thesissignaturebox{#1}{Dean of the Graduate School of Engineering and Sciences}}
}
\newcommand{\signaturedate}[3]{\newcommand{\showsignaturedate}{#1/#2/#3}}



% Abstract:
%-----------
\makeatletter
\renewenvironment{abstract}{%
	\begin{center}%
		{\bfseries\thesisbigfont ABSTRACT}\\
		 \vspace{1.5ex}
		 
		{\thesismediumfont\showthesistitle}\\
		 \vspace{1.5ex}
	\end{center}%
	\quotation}{\newpage}
\makeatother


\makeatletter
\newenvironment{ozet}{%
	\begin{center}%
		{\bfseries\thesisbigfont ÖZET}\\
		\vspace{1.5ex}
		
		{\thesismediumfont\showthesistitle}\\
		\vspace{1.5ex}
	\end{center}%
	\quotation}{\newpage}
\makeatother



% Dedication, Acknowledgments, and Preface:
%-----------
\makeatletter
\newenvironment{dedication}{
	\begin{center}
}{\end{center}\newpage}

\newenvironment{acknowledgments}{\thispagestyle{empty}  % hides page number
	\begin{center}%
		{\bfseries\thesisbigfont ACKNOWLEDGMENTS}\\
		\vspace{3ex}
	\end{center}%
	\quotation
}{\newpage}

\newenvironment{preface}{\thispagestyle{empty}  % hides page number
	\begin{center}%
		{\bfseries\thesisbigfont PREFACE}\\
		\vspace{3ex}
	\end{center}%
	\quotation
}{\newpage}
\makeatother




% Table of Content and List of Figures and Tables:
%-----------
% https://texblog.org/2011/09/09/10-ways-to-customize-tocloflot/
% https://tex.stackexchange.com/a/53901
\usepackage[nottoc]{tocbibind} % make LoF and LoT show up in ToC
\RequirePackage{tocloft}
\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\listfigurename}{LIST OF FIGURES}

\renewcommand{\cfttoctitlefont}{\hspace*{\fill}\thesisbigfont\bfseries}
\renewcommand{\cftaftertoctitle}{\hspace*{\fill}}
\renewcommand{\cftlottitlefont}{\hspace*{\fill}\thesisbigfont\bfseries}
\renewcommand{\cftafterlottitle}{\hspace*{\fill}}
\renewcommand{\cftloftitlefont}{\hspace*{\fill}\thesisbigfont\bfseries}
\renewcommand{\cftafterloftitle}{\hspace*{\fill}}

\renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}} % for parts
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} % for chapters
\newlength\mylength
\renewcommand\cftchappresnum{\chaptername~}
\renewcommand\cftchapaftersnum{.}
\settowidth\mylength{\cftchappresnum\cftchapaftersnum\quad}
\addtolength\cftchapnumwidth{\mylength}

%\usepackage{titletoc}%
%\titlecontents{chapter}% <section-type>
%[0pt]% <left>
%{\bfseries}% <above-code>
%{\chaptername\ \thecontentslabel:\quad}% <numbered-entry-format>
%{}% <numberless-entry-format>
%{\hfill\contentspage}% <filler-page-format>

% Bibliography
%-----------
% Rename title of Bibliography
\ifdefined\bibname
	\renewcommand\bibname{REFERENCES}
\fi
\ifdefined\refname
	\renewcommand{\refname}{REFERENCES}
\fi

