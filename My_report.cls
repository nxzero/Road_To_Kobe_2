\ProvidesClass{My_report}[2022/07/02 My_report]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{book}
}
\ProcessOptions\relax
\LoadClass{book}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Using Packages %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{empheq}
\RequirePackage{mdframed}
\RequirePackage{booktabs}
\RequirePackage{lipsum}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{psfrag}
\RequirePackage{pgfplots}
\RequirePackage{bm}
\RequirePackage[colorlinks=true]{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue!50!black,
    filecolor=blue!50!black,
    citecolor = green!50!black,      
    urlcolor=cyan,
}
\RequirePackage{mathtools}
\RequirePackage{amsthm}
\RequirePackage{empheq}
\RequirePackage{bm}
\RequirePackage{tikz}
\RequirePackage{subcaption}
\RequirePackage{multicol}
% Other Settings
\RequirePackage{wasysym}
\RequirePackage{ifthen}
\RequirePackage{fancyhdr}
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{wallpaper}
% \RequirePackage{nomencl}
\RequirePackage{sectsty}
\RequirePackage{etoolbox}
%%%%%%%%%%%%%%%%%%%%%%%%%% Page Setting %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
\RequirePackage{appendix}
\RequirePackage{natbib}
% \bibliographystyle{apalike}

\RequirePackage{enumitem}
\setlist{nolistsep}
\setlength{\columnsep}{10mm} %Column spacing
%Badness
\widowpenalty10000
\clubpenalty10000
\hbadness=999999
\vbadness=999999

%Packages
\RequirePackage{import} %use of \import functions
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
\RequirePackage{needspace, changepage, setspace, float, placeins}
\RequirePackage[symbol, bottom]{footmisc}

\RequirePackage{appendix}
\RequirePackage{emptypage}

%%%%%%%%%%%%%%%%%%%%%%%%%% Define some useful colors %%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{ocre}{RGB}{243,102,25}
\definecolor{mygray}{RGB}{243,243,244}
\definecolor{deepGreen}{RGB}{26,111,0}
\definecolor{shallowGreen}{RGB}{235,255,255}
\definecolor{deepBlue}{RGB}{61,124,222}
\definecolor{shallowBlue}{RGB}{235,249,255}
\definecolor{vertcanard}{RGB}{0,69,78}
\definecolor{darkred}{RGB}{84,10,0}
\definecolor{saumon}{RGB}{100,49,42}
% Awesome colors
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
\definecolor{awesome-purple}{HTML}{5D3FD3}
\definecolor{titlepagecolor}{cmyk}{1,.60,0,.40}
\definecolor{namecolor}{cmyk}{1,.50,0,.10} 
\colorlet{awesome}{awesome-red}

% red colormap
\definecolor{color_1}{HTML}{581845}
\definecolor{color_2}{HTML}{900C3F}
\definecolor{color_3}{HTML}{C70039}
\definecolor{color_4}{HTML}{FF5733}
\definecolor{color_5}{HTML}{FFC30F}
% green colormap
\definecolor{color_11}{HTML}{02231c}
\definecolor{color_12}{HTML}{004d25}
\definecolor{color_13}{HTML}{11823b}
\definecolor{color_14}{RGB}{72,191,83}
\definecolor{color_15}{RGB}{145,240,134}

%%%%%%%%%%%%%%%%%%%%%%%%%% Define an orangebox command %%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\orangebox[1]{\fcolorbox{ocre}{mygray}{\hspace{1em}#1\hspace{1em}}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%% English Environments %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtheoremstyle{mytheoremstyle}{3pt}{3pt}{\normalfont}{0cm}{\rmfamily\bfseries}{}{1em}{{\color{black}\thmname{#1}~\thmnumber{#2}}\thmnote{\,--\,#3}}
\newtheoremstyle{myproblemstyle}{3pt}{3pt}{\normalfont}{0cm}{\rmfamily\bfseries}{}{1em}{{\color{black}\thmname{#1}~\thmnumber{#2}}\thmnote{\,--\,#3}}
\theoremstyle{mytheoremstyle}
\newmdtheoremenv[linewidth=1pt,backgroundcolor=shallowGreen,linecolor=deepGreen,leftmargin=0pt,innerleftmargin=20pt,innerrightmargin=20pt,]{theorem}{Theorem}[section]
\theoremstyle{mytheoremstyle}
\newmdtheoremenv[linewidth=1pt,backgroundcolor=shallowBlue,linecolor=deepBlue,leftmargin=0pt,innerleftmargin=20pt,innerrightmargin=20pt,]{definition}{Definition}[section]
\theoremstyle{myproblemstyle}
\newmdtheoremenv[linecolor=black,leftmargin=0pt,innerleftmargin=10pt,innerrightmargin=10pt,]{problem}{Problem}[section]

%%%%%%%%%%%%%%%%%%%%%%%%%% LABELING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\figurename}{\color{SkinColour}{\textsc{Figure.}}}%
\renewcommand{\tablename}{\color{SkinColour}{\textsc{Table.}}}%
\AtBeginDocument{\renewcommand{\ref}[1]{\autoref{#1}}}

\newcommand{\sfig}[1]{\begin{subfigure}{0.32\textwidth}
        \centering
        #1
        \subcaption{}
\end{subfigure}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NEw co
\newcommand{\hhhrule}{\hrule\hrule\hrule\hrule\hrule\hrule}
%%%%%%%%%%%%%%%%% Titles %%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}
\newcommand{\headlinecolor}{\normalcolor}
\renewcommand{\familydefault}{\sfdefault}

\definecolor{gray75}{gray}{0.75}
\definecolor{slcolor}{HTML}{882B21}
\definecolor{LightSkyBlue}{RGB}{90,143,210}
\definecolor{LionRed}{RGB}{238,38,34}
\definecolor{GoldenLion}{RGB}{251,189,9}
\definecolor{GoldenLionMark}{RGB}{255,180,30}
\definecolor{CrestBlack}{RGB}{35,31,32}
\definecolor{TextBlack}{RGB}{0,0,0}
\definecolor{SkinColour}{RGB}{251,189,9}
%Section Style
\titlespacing{\section}{2pt}{2ex}{2ex}
\titlespacing{\subsection}{1.5pt}{1.5ex}{1.5ex}
\titlespacing{\subsubsection}{1pt}{1ex}{1ex}


\makeatletter
\patchcmd{\@makechapterhead}{50\p@}{0pt}{}{}
\patchcmd{\@makeschapterhead}{50\p@}{0pt}{}{}
\makeatother

\RequirePackage{booktabs}
\RequirePackage{marvosym}
\RequirePackage{commath}
\RequirePackage{multicol}

\usepackage{fmtcount}
\usepackage[nomessages]{fp}
\usepackage{calc}
\usepackage{acro}
\newcommand{\magnitude}[1]{\left\lVert#1\right\rVert}
\usepackage{tikz}
\usetikzlibrary{shapes.misc,shadows}
\RequirePackage{tikz-3dplot}
\usepackage{tikz-3dplot}
%Styles
\tikzset{axis/.style={thick,-latex}}
\tikzset{vec/.style={thick,blue}}
\tikzset{univec/.style={thick,red,-latex}}
\usepackage{makecell} %for table
\usepackage{microtype}
\RequirePackage{titling}
% \RequirePackage{tipa}

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
%%%%%%%%%%%%%%%%%%%% title stuf %%%%%%%%%%%%%%%%%%%%%%%%%%
% \titleformat{\section}[hang]{\Large\bfseries}{\thesection\hsp\textcolor{SkinColour}{|}\hsp}{0pt}{\Large\bfseries} %headers %line
\newcommand{\hsp}{\hspace{10pt}}
\titleformat{\section}[hang]{\Large\bfseries}{\thesection\hsp\textcolor{SkinColour}{\textbf{|}
}\hsp}{0pt}{\Large\bfseries} %headers %line

%Chaper style
\titleformat{\chapter}[display]
  {\normalfont\raggedleft}
  {\color{SkinColour}\MakeUppercase{\chaptertitlename}%
    \rlap{\color{SkinColour}\resizebox{!}{1.5cm}{\thechapter} \color{SkinColour}\rule{5cm}{1.5cm}}}
  {10pt}{\Huge}
\titlespacing*{\chapter}{0pt}{30pt}{20pt}



\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\RequirePackage[absolute,overlay]{textpos}

%%%%%%%%%%%%%%%% Headers %%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\RequirePackage[compatibility=false,labelfont=it, singlelinecheck=false]{caption} %,textfont={bf,it}
\captionsetup{labelfont=bf} %textfont=bf
\captionsetup[table]{labelformat=simple, labelsep=newline}
\captionsetup[figure]{labelformat=simple, labelsep=period}
\RequirePackage{listings}

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
\newcommand{\contents}
{
    {
        \hypersetup{linkcolor=TextBlack}
        \tableofcontents\newpage %\protect\thispagestyle{title}
        \listoffigures\newpage
        \listoftables\newpage
    }
}
\newcommand\blankpage{%
    \null
    \thispagestyle{plain}%
    %\addtocounter{page}{1}%
    \newpage}



\RequirePackage{nomencl}
%Fancy Line Rule
\makeatletter
\newcommand{\EnglischeLinie}{%
  \@afterindentfalse
  {\begin{center}
    \resizebox{0.8\linewidth}{0.4ex}{{%
        \fontsize{20}{24}\usefont{U}{webo}{xl}{n}{4}}}%
  \end{center}}\@afterheading}
\makeatother
% \newcommand{\fairemarges}{
% \pagestyle{fancy}
% % \fancyheadoffset{1cm}
% % \setlength{\headheight}{2cm}
% \lhead{\includegraphics[scale=0.5]{image/Logo_IFPEN.png}} %Affichage de l'image au top de la page
% \rhead{\nouppercase{\leftmark}}
% \rfoot{\thepage}
% \cfoot{\textit{Bibliographic report}}
% }
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
% \fancyhead[LO]{\chaptername\ \thechapter. \leftmark}
\fancyfoot[C]{\thechapter}
\newcommand{\sizebis}{0.5}

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
%Strechpars for paragraph neatness
\newenvironment{stretchpars}
{\par\setlength{\parfillskip}{0pt}}
{\par}

% nomenclature set up 
\immediate\write18{makeindex -s nomencl.ist -o "\jobname.nls" "\jobname.nlo"}
