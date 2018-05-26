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


% Font Size
%----------------------------
\RequirePackage{titlesec}
\titleformat*{\section}{\fontsize{14pt}{21pt}\selectfont}
\titleformat*{\subsection}{\fontsize{14pt}{21pt}\selectfont}
\titleformat*{\subsubsection}{\fontsize{14pt}{21pt}\selectfont}
\titleformat*{\paragraph}{\fontsize{14pt}{21pt}\selectfont}
\titleformat*{\subparagraph}{\fontsize{14pt}{21pt}\selectfont}

\titleformat{\chapter}[display]
{\fontsize{16pt}{24pt}\selectfont\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\fontsize{16pt}{24pt}\selectfont}


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



% Commands:
%-----------

