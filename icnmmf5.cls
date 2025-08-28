 % Class for the ICNMMF5.
% Based on multiple exemples found in the internet

\LoadClass[11pt,a4paper]{article}

\RequirePackage[english]{babel}
\RequirePackage{graphicx}
%\RequirePackage{amsmath}
%\RequirePackage{amssymb}
%\RequirePackage{amsthm}
\RequirePackage{times}

% Set page style, etc.
%\pagestyle{empty}
%\thispagestyle{empty}
\setlength\paperheight    {297mm}
\setlength\paperwidth     {210mm}
%
\setlength\unitlength     {1mm}
%
\setlength\oddsidemargin  {0in}            %   Left margin on odd-numbered pages.
\setlength\evensidemargin {\oddsidemargin} %   Left margin on even-numbered pages.
\setlength\marginparwidth {1in}            %   Width of marginal notes.
\setlength\textwidth      {\paperwidth}
\addtolength\textwidth    {-2in}
\addtolength\textwidth    {-2\oddsidemargin}
%
\setlength\topmargin      {0in}
\setlength\textheight     {\paperheight}
\addtolength\textheight   {-0.5in}
\addtolength\topmargin    {-\headheight}
\addtolength\topmargin    {-0.8in}
\addtolength\textheight   {\topmargin}
%
\setlength\abovecaptionskip{0pt}
\setlength\belowcaptionskip{0pt}

% Modify \maketitle to get the conference name on the first page
\let\orig@maketitle=\maketitle
\def\maketitle{\def\LARGE{\large\bfseries}\orig@maketitle\thispagestyle{firstpage}\vspace*{-3ex}}
%
\def\confname{\parbox[t]{\hsize}{\footnotesize
%
\hbox to \hsize{\emph{International Conference on Numerical Methods in Multiphase Flows 5} - July 26-28, Reykjav\'ik, Iceland \hfil}}
%May 9--11, 2017, Venice, Italy}
%%
%%
%\hbox to \hsize{EUROMECH Colloquium 596                \hfil May 9--11, 2017}
%\hbox to \hsize{Numerical simulations of flows with    \hfil  San servolo island}
%\hbox to \hsize{particles, bubbles and droplets  \hfil Venice, Italy}}%
\vspace*{-7ex}}
%
\def\ps@firstpage{\let\@mkboth\@gobbletwo
     \let\@oddhead\confname\def\@oddfoot{\reset@font\hfil~
     \hfil}\let\@evenhead\@oddhead\let\@evenfoot\@oddfoot}

%% Redefine caption to indent long caption on both sides
%\long\def\@makecaption#1#2{%
%  \vskip\abovecaptionskip
%  \sbox\@tempboxa{#1: #2}%
%  \ifdim \wd\@tempboxa >.9\hsize
%    \global \@minipagefalse
%    \hb@xt@\hsize{\hfil\parbox{.9\hsize}{#1: #2\par}\hfil}%
%  \else
%    \global \@minipagefalse
%    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
%  \fi
%  \vskip\belowcaptionskip}
