# iyte-master-thesis-template
### A LaTeX Class for writing a Master Thesis for Izmir Institute of Technology (2018)
-----

###### Ronny Majani





How to use this class:
--------

1. Download the files and folders in this repository, and put them in a folder of your choice:

   - `iyte.cls`
   - pages/
     - `title.tex`
     - `signature.tex`

2. In the same folder, create a new file for your thesis. Your folder should now have the following layout:

   - `iyte.cls`
   - `mythesis.tex` *or any other name. this is your main tex file.*
   - pages/
     - `title.tex`
     - `signature.tex`

3. In the beginning of your file add the following line:

   `\documentclass{iyte}`

4. After the `\begin{document}` statement, enable roman numeral page numbers by adding the following command:

   `\pagenumbering{roman}`

5. Then you need to call the following commands, filling the parameter(s) with the appropriate text:

   ```latex
   \thesistitle{fill with your thesis's title}
   \turkishthesistitle{fill with the Turkish version of your thesis's title}
   \thesisauthor{fill with your name and surname}
   \thesisdegree{fill with name of your degree eg: MASTER of Engineering}
   \thesismajor{fill with the name of your major eg: Computer Engineering}
   \thesisdate{Month}{Year}
   ```

6. After defining the previous commands, you should now include the Title page:

   ```latex
   \input{pages/title.tex}
   \newpage
   ```

7. Next you need to define commands that will be used by the signature page:

   ```latex
   \signaturedate{Day}{Month}{Year}
   \thesiscommitteememberA{Committee Member 1's Title and Name}{Department}{Institute}
   \thesiscommitteememberB{Committee Member 2's Title and Name}{Department}{Institute}
   \thesiscommitteememberC{Committee Member 3's Title and Name}{Department}{Institute}
   \thesiscommitteememberD{Committee Member 4's Title and Name}{Department}{Institute}
   \thesiscommitteememberE{Committee Member 5's Title and Name}{Department}{Institute}
   \thesissupervisor{Thesis Supervisor's Title and Name}{Department}{Institute}
   \thesiscosupervisor{Thesis Co-Supervisor's Title and Name}{Department}{Institute}
   \thesisheadofdepartment{Head of Department's Title and Name}{Department}
   \thesisdeanofgraduateschool{Dean of Graduate School's Title and Name}
   ```

   - You can add up to 5 committee members in total. If you don't need all of them, you can simply **comment out** the one's you don't need.

   - Optionally you can manually set the vertical spacing of the signature page by using the following command:

     ```latex
     \setsignaturepagespacing{0.8cm}  % replace the argument with the desired value
     ```

8. Now you can include the signature page:

   ```latex
   \input{pages/signature.tex}
   \newpage
   ```

9. If you want, you can add any of the optional preliminary pages:

   - *Dedication*:

     ```latex
     \begin{dedication}
     	Insert dedication here
     \end{dedication}
     ```

   - *Acknowledgments*:

     ```latex
     \begin{acknowledgments}
     	Insert Acknowledgments here
     \end{acknowledgments}
     ```

   - *Preface*:

     ```latex
     \begin{preface}
     	Insert Preface here
     \end{preface}
     ```

10. Now you should add your abstract:

  ```latex
  \begin{abstract}
  	Fill in your abstract here
  \end{abstract}
  ```

  And it's Turkish version

  ```latex
  \begin{ozet}
  	Burada bir \"{o}zet yaz
  \end{ozet}
  ```

11. Finally before you start writing the main part of your thesis, you should generate the *Table of Contents*, *List of Figures*, and *List of Tables*:

    ```latex
    \tableofcontents
    \newpage
    \listoffigures
    \newpage
    \listoftables
    \newpage
    ```

12. Now you can begin writing the main part of your thesis. The only thing left to do is enable Arabic numeral page numbers again by adding the line `\pagenumbering{arabic}` after the first section. eg:

    ```latex
    \chapter{INTRODUCTION}
    \pagenumbering{arabic}
    ```



#####  Your document should now look something like this:

```latex
\documentclass{iyte}

\begin{document}
% Enable roman numeral page numbering (i, ii, iii, iv, v, vi, ...)
\pagenumbering{roman}

% Title Page Definitions
\thesistitle{fill with your thesis's title}
\turkishthesistitle{fill with the Turkish version of your thesis's title}
\thesisauthor{fill with your name and surname}
\thesisdegree{fill with name of your degree eg: MASTER of Engineering}
\thesismajor{fill with the name of your major eg: Computer Engineering}
\thesisdate{Month}{Year}
% insert Title Page
\input{pages/title.tex}
\newpage

% Signature Page Definitions
\signaturedate{Day}{Month}{Year}
\thesiscommitteememberA{Committee Member 1's Title and Name}{Department}{Institute}
\thesiscommitteememberB{Committee Member 2's Title and Name}{Department}{Institute}
\thesiscommitteememberC{Committee Member 3's Title and Name}{Department}{Institute}
\thesiscommitteememberD{Committee Member 4's Title and Name}{Department}{Institute}
\thesiscommitteememberE{Committee Member 5's Title and Name}{Department}{Institute}
\thesissupervisor{Thesis Supervisor's Title and Name}{Department}{Institute}
\thesiscosupervisor{Thesis Co-Supervisor's Title and Name}{Department}{Institute}
\thesisheadofdepartment{Head of Department's Title and Name}{Department}
\thesisdeanofgraduateschool{Dean of Graduate School's Title and Name}
% insert Signature Page
\input{pages/signature.tex}
\newpage

% insert Dedication Page (optional):
\begin{dedication}
	Insert dedication here
\end{dedication}
% insert Acknowledgments Page (optional):
\begin{acknowledgments}
	Insert Acknowledgments here
\end{acknowledgments}
% insert Preface Page (optional):
\begin{preface}
	Insert Preface here
\end{preface}

% insert Abstract Page:
\begin{abstract}
	Fill in your abstract here
\end{abstract}
% insert Turkish Abstract Page
\begin{ozet}
	Burada bir \"{o}zet yaz
\end{ozet}

% insert Table of Contents
\tableofcontents
\newpage
% insert List of Figures
\listoffigures
\newpage
% insert List of Tables
\listoftables
\newpage

% Main Content of your Thesis
\chapter{INTRODUCTION} % first chapter
% Enable Arabic numeral page numbering (1, 2, 3, 4, 5, 6, ...)
\pagenumbering{arabic}
```



##### Sections Commands

```latex
\chapter{}
\section{}
\subsection{}
\subsubsection{}
\subsubsubsection{} or \paragraph{}
\subsubsubsubsection{} or \subparagraph{}
```

for your convenience, we provided the aliases `\subsubsubsection` and `\subsubsubsubsection` which are equivalent to the `\paragraph` and `\subpargraph`  commands respectively. 



## Overview of this Class:

- This class extends the LaTeX `report` class
- The dimensions are set to **A4 Paper** 
- The left margin is set to **3.5cm**
- The top, right, and bottom margins are set to **2.5cm**
- `utf8` encoding is used
- Line spacing is set to **1.5** *(one half spacing)*
- Font is set to **Times New Roman**
- The thesis title uses **18pt** font size
- Main headings are set to use **16pt** font size
- Subheadings are set to use **14pt** font size
- The default font size is set to **12pt**
- Paragraph indent is set to **1.27cm**
- There is no spacing between consecutive paragraphs
- **2x1.5** spacing is used before and after each heading/subheading
- **2x1.5** spacing is used between the chapter number and it's title
- footnotes' font size is **10pt**, their left margin is **1cm**, and their line separator is **5cm** wide





## Packages Used by this class:

- `geometry` used for specifying the dimensions, padding, and margins of the document
- `inputenc` used for adding Turkish character support
- `fontenc`, `newtxmath`, `newtxtext` used for providing *Times New Roman* font
- `titlesec` used for modifying section headings' font
- `indentfirst` used to force indentation of first paragraphs too
- `setspace` used for setting the line spacing of the document
- `fancyhdr` used for formatting the page numbering of the document
- `tikz` used for drawing horizontal lines (such as in the signature page)
- `tocbibind` used so the *Table of Contents* also lists the *List of Figures* and *List of Tables*
- `tocloft` used to modify the format of the *Table of Contents*, *List of Figures*, and *List of Tables*
- `textpos` used to force the absolute positioning of the elements in the Title Page
- `footmisc` used to set the footnotes left margin
- `appendix` used to provide appendices





## Using Turkish in your Thesis:

Turkish support is added to this class using the `inputenc` package set to use `utf8` encoding.

You can directly write Turkish characters in your document, so long as you save the document in UTF-8 encoding. Alternatively, you can manually call the appropriate encoding commands corresponding to the Turkish characters you want to write, by using the following table:

| Turkish | LaTeX Code |
| :-----: | :--------: |
|    ğ    |   \\u{g}   |
|    Ğ    |   \\u{G}   |
|    ç    |   \\c{c}   |
|    Ç    |   \\c{C}   |
|    ş    |   \\c{s}   |
|    Ş    |   \\c{S}   |
|    ü    |   \\"{u}   |
|    Ü    |   \\"{U}   |
|    ö    |   \\"{o}   |
|    Ö    |   \\"{O}   |
|    ı    |   {\\i}    |
|    İ    |   \\.{I}   |





## Hyperref

If you wish to use the `hyperref` package in your document to enable links and URLs in the pdf, just add the following commands:

```latex
\usepackage[unicode]{hyperref}
\hypersetup{
	colorlinks   = true,    % Colours the links' text instead of drawing ugly boxes around them
	urlcolor     = blue,    % Colour for external hyperlinks set to blue
	linkcolor    = black,   % Colour of internal links text set to black
	citecolor    = black      % Colour of citations text set to black
}
```





## References

You can use any reference style you like, but we advise you use the ACM reference style. We provide the bibtex style file in this repository. To use this style, you must add the `url` and `natbib` package in the preamble of our document using:

```latex
\usepackage{url}
\usepackage{natbib}
```

And when you want to add the references section at the end of your document (but before the appendices) add the following lines:

```latex
\bibliographystyle{ACM-Reference-Format}
\bibliography{name-of-your-references-file}
```





## Appendices

This class defines an environment for adding appendices. Simple add the `thesisappendices` environment near the end of your document:

```latex
\begin{thesisappendices}
	\chapter{Misc}
	The contents...
\end{thesisappendices}
```

For each appendix simple call the `\chapter{title}` command.





## Abbreviation, Acronyms, and Nomenclature

If you wish to use abbreviations, acronyms, or nomenclature in your tex file, we suggest you use the `acro` package. Simply add `\usepackage{acro}` in the preamble of your document. With this you can easily define new acronyms and then with one command print them all out. This package provides a `\printacronyms` command that prints all the abbreviations you've defined. We only suggest that when you use such a command, to specify via the command's optional arguments, to use the `\chapter*` heading command. In the case of the `\printacronyms` command you would do this as follows:

```latex
\printacronyms[name=ABBREVIATIONS,heading=chapter*]
```

You can change the title name to whatever you see fit, but we suggest writing it in all caps.





## Possible Problems and How to Fix Them:

- Font Compile problems: https://tex.stackexchange.com/a/152749
- Turkish Character Problems: [see *Using Turkish in your Thesis*](#using-turkish-in-your-thesis:)
- [`Package inputenc Error: Unicode char ... not found`](https://tex.stackexchange.com/a/135734)
- If a change in your bibliography file isn't showing when you compile your document, try deleting all the auxiliary files generated by latex (any file with the same name as your main tex but not ending with .tex or .bib)





### Sources that contributed to the making of the class file:

- [Minutes in Less Than Hours: Using LATEX Resources](https://tug.org/pracjourn/2005-4/hefferon/hefferon.pdf)
- [Making subparagraph work like a subsubsubsubsection](https://tex.stackexchange.com/a/392015)
- [Changing font of sections](https://tex.stackexchange.com/questions/59726/change-size-of-section-subsection-subsubsection-paragraph-and-subparagraph-ti/59727)
- [Formatting the page number to appear in the bottom right](https://tex.stackexchange.com/a/153176)
- [Force our page number formatting to be used in title pages](https://tex.stackexchange.com/a/30230/828)
- [Ways to customize Table of Contents](https://texblog.org/2011/09/09/10-ways-to-customize-tocloflot/)
- [Add horizontal dots to table of contents entry](https://tex.stackexchange.com/a/53901)
- [Adding the header to *List of Figures* and *List of Tables*](https://tex.stackexchange.com/a/346301)
- [Using `textbox` to position text in page with absolute coordinates](https://tex.stackexchange.com/a/286821)
- [Setting the line width of the footnote separator](https://tex.stackexchange.com/a/21917)
- [Adjusting spacing of float environments in LaTeX](http://www-h.eng.cam.ac.uk/help/tpl/textprocessing/squeeze.html)