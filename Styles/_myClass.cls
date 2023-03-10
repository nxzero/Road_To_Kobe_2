\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Styles/_myClass}[Provides your own style]
\LoadClass[twoside, a4paper, 12pt]{report}
\RequirePackage{etoolbox}
\usepackage{titlesec}

%%Preliminary definitions, needed by the options
\newcommand{\headlinecolor}{\normalcolor}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage[table,xcdraw]{xcolor}
\definecolor{slcolor}{HTML}{882B21}
\definecolor{LightSkyBlue}{RGB}{90,143,210}
\definecolor{LionRed}{RGB}{238,38,34}
\definecolor{GoldenLion}{RGB}{251,189,9}
\definecolor{GoldenLionMark}{RGB}{255,180,30}
\definecolor{CrestBlack}{RGB}{35,31,32}
\definecolor{TextBlack}{RGB}{0,0,0}
\definecolor{SkinColour}{RGB}{0,0,0}

%%This parts handles the options passed to the class.
\DeclareOption{onecolumn}{\OptionNotUsed}
%\DeclareOption{onecolumn}{\onecolstyletrue}
\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}

\DeclareOption{eyerest}{
    \definecolor{TextBlack}{RGB}{30,30,30}
    \definecolor{SkinColour}{RGB}{30,30,30}
    \color{TextBlack}\global\let\default@color\current@color
}

\DeclareOption{skincolourblue}{
    \definecolor{SkinColour}{RGB}{90,143,210}
}

\DeclareOption{skincolourgold}{
    \definecolor{SkinColour}{RGB}{251,189,9}
}

\DeclareOption{skincolourred}{
    \definecolor{SkinColour}{RGB}{238,38,34}
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{Styles/titlepage}%custom titlepage package

%Packages
\RequirePackage{import} %use of \import functions
\RequirePackage{tikz}
\RequirePackage{kantlipsum}
\RequirePackage{lipsum}
\RequirePackage{amsmath, amsfonts, amssymb, bm}
\RequirePackage{setspace}
\RequirePackage{url}
\RequirePackage{graphicx}
\RequirePackage{adjustbox} % for making noice tables
\RequirePackage{wrapfig}
\RequirePackage[UKenglish, nodayofweek]{datetime}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{pict2e}
%Packages
\RequirePackage[percent]{overpic}
\RequirePackage[figuresright]{rotating}
\RequirePackage{pdfpages}
\RequirePackage{pdflscape}
\RequirePackage{siunitx}
\DeclareSIUnit{\wtpercent}{wt\%}
\DeclareSIUnit\angstrom{\text {Å}}
\RequirePackage{xfrac}
% \RequirePackage{asymptote}
\RequirePackage{mathrsfs}
\RequirePackage{afterpage}
\RequirePackage{changepage}
\RequirePackage{needspace, blindtext, changepage, setspace, float, placeins}
\RequirePackage[symbol, bottom]{footmisc}

\RequirePackage{appendix}
\RequirePackage{emptypage}


\makeatletter
\patchcmd{\@makechapterhead}{50\p@}{0pt}{}{}
\patchcmd{\@makeschapterhead}{50\p@}{0pt}{}{}
\makeatother

\RequirePackage{booktabs}
\RequirePackage{marvosym }
\RequirePackage{commath}
\RequirePackage{multicol}

\usepackage{acro}

\usepackage{fmtcount}
\usepackage[nomessages]{fp}
\usepackage{calc}

%non-slanted greek letter

\newcommand{\magnitude}[1]{\left\lVert#1\right\rVert}

\newcommand\question[1]{%
{\begin{itemize}
%TC:ignore
    \item \color{red}{#1?}
%TC:endignore
\end{itemize}}
}

\newcommand\comment[1]{%
{\begin{itemize}
%TC:ignore
    \item \color{blue}{#1}
%TC:endignore
\end{itemize}}
}


\usepackage{tikz}
\usetikzlibrary{shapes.misc,shadows}
\usepackage{makecell} %for table

\DeclareSIUnit{\million}{\text{million}}

%Commands that are mine!
\newcommand{\vectg}[3]{$\text{\sfrac{#1}{#2}}  \text{$\langle$}#3\text{$\rangle$} $}
\newcommand{\dir}[1]{\text{$\langle$}#1\text{$\rangle$}}
\newcommand{\gantt}[1]{\hyperref[fig:Gantt]{#1}}
\newcommand{\vectbr}[3]{$\text{\sfrac{#1}{#2}}${[}$\text{#3}${]}}
\newcommand{\dislo}[3]{$\text{\sfrac{a}{#1}}\dir{#2}${$\{\text{#3}\}$}} %sfrac
\newcommand{\Burgers}{$\text{\sfrac{a}{2}}\dir{111}$}
\newcommand{\tempC}[1]{\SI{#1}{\degreeCelsius}}
\newcommand{\MC}[0]{$\ch{M_{23}C_6}${}}

\newcommand{\prenumber}{
    \pagenumbering{roman}
    \setcounter{page}{1}
    %\fancyhead[RO,LE]{Page \thepage}
}

\newcommand{\postnumber}{
    \pagenumbering{arabic}
    \setcounter{page}{1}
    %\fancyhead[RO,LE]{Page \thepage \hspace{1pt} of \hypersetup{linkcolor=black}{\pageref*{mylastpage}}}
}

\newcommand\blankpage{%
    \null
    \thispagestyle{plain}%
    %\addtocounter{page}{1}%
    \newpage}

%\sloppy - required if text falls off page
%\fussy - if you want to undo \sloppy

%Title modifications

%Paragraphs
\RequirePackage{indentfirst}
\setlength{\parindent}{0ex}
\setlength{\parskip}{0ex}

%Word Count
\newcommand{\quickwordcount}[1]{%
  \immediate\write18{texcount -1 -sum=1,1,1,1,1,1,1 -merge #1.tex > #1-words}%
  \input{#1-words}%
}
%\quickwordcount{main} - name of main.tex document (extension not required)
%counts (text words, header words, caption words, #headers, #floats, #inlined formulae, #displayed formulae)



%colourbox
\newcommand\mybar{\kern1pt\rule[-\dp\strutbox]{1pt}{\baselineskip}\kern1pt}
\RequirePackage{color}
\definecolor{lightgray}{gray}{0.85}
\newcommand\greybox[1]{%
  \par\noindent\colorbox{lightgray}{%
    \begin{minipage}{\textwidth}#1\end{minipage}%
  }%
  \vskip\baselineskip%
}



%\thanks{The University of Birmingham}

%\title{\textbf{The Title of the Journal Article}}

\usepackage{microtype}
\RequirePackage{titling}

\pretitle{% add some rules
  %\vskip 1.5em
    \huge\bfseries
    \begin{flushleft}
}%, make the fonts bigger, make the title (only) bold
\posttitle{%
  \end{flushleft}%
  %\noindent\vrule height 2.5pt width \textwidth
  %\vskip .75em plus .25em minus .25em%a increase the vertical spacing a bit, make this particular glue stretchier
}
%\RequirePackage{microtype}
\newcommand{\Keywords}{Keyword1, keyword2, keyword3}

\preauthor{%
    \vspace{0em}
    %\large
    \begin{flushleft}
    \vspace{0.0em}\Large %\bfseries %edit bold
}
\postauthor{%
    \end{flushleft}%
    \vskip 0em
    \vspace{0em}
    \noindent\textnormal{\quickwordcount{_main}Words} 
    \hfill \textls[-20]{Student ID:1234567}\\ %
    \textls[45]{\textbf{Keywords:}} {\Keywords}
    \vspace{-0.8em} %change distance from
}

%Date Settings
\predate{
\hfill\begin{minipage}[t]{0.3\textwidth}\begin{flushright}\textls[10]{
}
\postdate{\end{flushright}\end{minipage}}}

%Custom Abstract
\RequirePackage{expl3,xparse,xcoffins}
\ExplSyntaxOn
\coffin_new:N \l_my_abstract_coffin %Ignore errors
\dim_zero_new:N \l_my_width_dim
\keys_define:nn { my / abstract }
  {
    width .code:n = {
      \dim_set:Nn \l_my_width_dim {#1\textwidth}
    }
  }

\NewDocumentCommand \myabstract { O {width=0.85} m }{%
  \keys_set:nn { my / abstract } { #1 }
  \SetVerticalCoffin \l_my_abstract_coffin {\l_my_width_dim} {#2}
  \renewcommand\maketitlehookd{%
  \textcolor{SkinColour}{\noindent\rule{\textwidth}{1pt}}\\
  
  %\section*{Abstract}
  %\text{Abstract}\\
  
    \mbox{}\medskip %\par
    \centering
    \TypesetCoffin \l_my_abstract_coffin\\
    \vspace{-2em}
    
    \textcolor{SkinColour}{
    \noindent\rule{\textwidth}{1pt}}
    
    \vspace{-1em} %move intro closer to abstract
  }

}
\ExplSyntaxOff

%Links and colours
\definecolor{azure}{rgb}{0.0, 0.5, 1.0}
\RequirePackage[bookmarks, hidelinks]{hyperref}
\hypersetup{
    pdfnewwindow=true,
    colorlinks=true,
    linkcolor=azure,
    filecolor=magenta,      
    urlcolor=azure,
    citecolor=azure,
    hypertexnames=true
}

%abbreviations
\RequirePackage{Styles/ac}

%Margins and Columns
% \RequirePackage[includeheadfoot,top=0.5in, bottom=0.5in, 
%     left=1in, right=1in, headheight=15pt]{geometry} %chnaged to 15 for size 12pt font

%
\RequirePackage[					% page layout modifications
	paper=a4paper,					% 	- use A4 paper size
	%scale={0.86,0.94},				% 	- total body size (h,v)
	%scale={0.86,0.94},				% 	- total body size (h,v)
	nohead,							% 	- no header
	includefoot,					% 	- include footer space
	%includemp,						% 	- include side note space
	%bindingoffset=0.5cm,			% 	- binding correction
	top= 0.5 in,					% 	- total body: top margin
	left= 1 in,					   % 	- total body: left margin (odd pages)
	right= 1 in,					% 	- total body: right margin (odd pages)
	bottom= 0.5 in,					% 	- total body: bottom margin
	%marginparwidth=1.75cm,			% 	- width for side note
	%marginparsep=10pt,				% 	- space between notes and body text          (content)
	footskip=2cm,					% 	- footer skip size
]{geometry}
%

\setlength{\columnsep}{10mm} %Column spacing

%Badness
\widowpenalty10000
\clubpenalty10000
\hbadness=999999
\vbadness=999999

% \showboxbreadth=50 
% \showboxdepth=50

%Strechpars for paragraph neatness
\newenvironment{stretchpars}
{\par\setlength{\parfillskip}{0pt}}
{\par}


\newenvironment{changemargin}[2]{%
\begin{list}{}{%
\setlength{\topsep}{0pt}%
\setlength{\leftmargin}{#1}%
\setlength{\rightmargin}{#2}%
\setlength{\listparindent}{\parindent}%
\setlength{\itemindent}{\parindent}%
\setlength{\parsep}{\parskip}%
}%
\item[]}{\end{list}}


%Section Style
\titlespacing{\section}{2pt}{2ex}{2ex}
\titlespacing{\subsection}{1.5pt}{1.5ex}{1.5ex}
\titlespacing{\subsubsection}{1pt}{1ex}{1ex}

\RequirePackage{blindtext, color, tipa}
\newcommand{\hsp}{\hspace{20pt}}
\titleformat{\section}[hang]{\Large\bfseries}{\thesection\hsp\textcolor{SkinColour}{|}\hsp}{0pt}{\Large\bfseries} %headers %line

\usetikzlibrary{positioning}
%Headings and Footers
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\RequirePackage[absolute,overlay]{textpos}


%Figures and Tables
\RequirePackage[compatibility=false,labelfont=it, singlelinecheck=false]{caption} %,textfont={bf,it}
\captionsetup{labelfont=bf} %textfont=bf
\renewcommand{\figurename}{Fig.}
\captionsetup[table]{labelformat=simple, labelsep=newline}
\captionsetup[figure]{labelformat=simple, labelsep=period}


%Use code inline
\RequirePackage{listings}

\RequirePackage[utf8]{inputenc}
\DeclareUnicodeCharacter{394}{$\Delta$}
\DeclareUnicodeCharacter{3008}{$\langle$}
\DeclareUnicodeCharacter{3009}{$\rangle$}
\DeclareUnicodeCharacter{2212}{$_{-}$}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=4
}

\lstset{style=mystyle}

%References 
\RequirePackage{natbib}
\bibliographystyle{apalike}
%Add reference files!!!
%Fancy Line Rule
\makeatletter
\newcommand{\EnglischeLinie}{%
  \@afterindentfalse
  {\begin{center}
    \resizebox{0.8\linewidth}{0.4ex}{{%
        \fontsize{20}{24}\usefont{U}{webo}{xl}{n}{4}}}%
  \end{center}}\@afterheading}
\makeatother


\newcommand{\contents}
{
    {
        \hypersetup{linkcolor=TextBlack}
        \blankpage % break break to separate contents
        \tableofcontents\newpage %\protect\thispagestyle{title}
        \blankpage
        \listoffigures\newpage
        \listoftables\newpage
        \printacronyms\newpage %ac
    }
}

\newcommand{\fancycite}[1]{\hfill\noindent\begin{tikzpicture}[baseline=(char.base)]
\node(char)[draw,fill=white,
  shape=rounded rectangle,
  drop shadow={opacity=.5,shadow xshift=0pt},
  minimum width=1.8cm]
  {\citeauthor{#1}\supercite{#1}};
\end{tikzpicture}
\vspace{1em}
}

\newcommand{\ACKNOWLEDGEMENTS}{
    %\phantomsection
    \addcontentsline{toc}{section}{Acknowledgements}
    \vspace*{\fill}
    
    \chapter*{Acknowledgements}
    
    %\begin{stretchpars}
    \noindent 

    \input{Styles/Acknowledgements}
    
    %\end{stretchpars}
    
    \vspace*{\fill}
}
%
%
%
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{%
	\markboth{%
		\footnotesize%
		{\color{TextBlack}\textbf{\chaptername\ \thechapter}}%
		\quad%
		{\color{SkinColour}#1}%
	}{}%
}
\renewcommand{\sectionmark}[1]{%
	\markright{%
		\footnotesize%
		{\color{TextBlack}\textbf{\thesection}}%
		\quad%
		{\color{SkinColour}#1}%
	}%
}
%
\fancypagestyle{plain}{%
	\fancyhf{}

	\fancyfootoffset[LO]{0cm}
	\fancyfoot[LO]{%
		{\color{SkinColour}\rule[-90pt]{2.25pt}{100pt}}%
		\hspace*{10pt}\begin{minipage}[b]{1.5cm}%
			\color{TextBlack}\normalsize\textbf{\thepage}%
		\end{minipage}%
	}

	\fancyfootoffset[RE]{0cm}
	\fancyfoot[RE]{%
		\begin{minipage}[b]{1.5cm}%
			\raggedleft\color{TextBlack}\normalsize\textbf{\thepage}%
		\end{minipage}%
		\hspace*{10pt}{\color{SkinColour}\rule[-90pt]{2.25pt}{100pt}}%
	}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}

\pagestyle{plain} 
%
%
%
% chapter quotations
\newcommand{\book}{\fontfamily{pbk}\fontseries{m}\fontsize{11}{13}\selectfont}
\newcommand{\hugequote}{%
	{\book\fontsize{75}{80}\selectfont%
	\hspace*{-.575em}\color{TextBlack}%
	\textit{``}%
	\vskip -.66em}%
}
\newcommand{\chapterquote}[3]{%
	\begin{minipage}{.865\textwidth}%
		\begin{flushright}
			\begin{minipage}{.65\textwidth}%
				\begin{flushleft}
					{\hugequote}\textit{#1}
				\end{flushleft}
	    		\begin{flushright}
    				--- \textbf{#2} \\
    				#3
		    	\end{flushright}
		    \end{minipage}%
		\end{flushright}
	\end{minipage}%
	\bigskip
}
%
% Quotation environment
\newenvironment{thesis_quotation}%
	{%
	\begin{minipage}{.865\textwidth}%
		\begin{flushright}
			\begin{minipage}{.95\textwidth}%
	}%
	{%
			\end{minipage}%
		\end{flushright}
	\end{minipage}%
	}%
%

%Chaper style
\titleformat{\chapter}[display]
  {\normalfont\raggedleft}
  {\color{SkinColour}\MakeUppercase{\chaptertitlename}%
    \rlap{\color{SkinColour}\resizebox{!}{1.5cm}{\thechapter} \color{SkinColour}\rule{5cm}{1.5cm}}}
  {10pt}{\Huge}
\titlespacing*{\chapter}{0pt}{30pt}{20pt}

% Add new stuff here
