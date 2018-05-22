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
\RequirePackage[latin5]{inputenc}
\RequirePackage{mathptmx}
\RequirePackage{times}
% Font Size
\RequirePackage{titlesec}
\titleformat*{\section}{\fontsize{16pt}{20pt}\selectfont}
\titleformat*{\subsection}{\fontsize{14pt}{17pt}\selectfont}
\titleformat*{\subsubsection}{\fontsize{14pt}{17pt}\selectfont}
\titleformat*{\paragraph}{\fontsize{14pt}{17pt}\selectfont}
\titleformat*{\subparagraph}{\fontsize{14pt}{17pt}\selectfont}

% Spacing
\RequirePackage{setspace}
\setstretch{1.5}
\setlength{\parindent}{1.27cm}
\setlength{\parskip}{0pt}








