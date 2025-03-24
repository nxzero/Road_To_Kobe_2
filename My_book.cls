\ProvidesClass{My_book}[2022/07/02 My_book]
\NeedsTeXFormat{LaTeX2e}
% \DeclareOption{print}{\def\@cv@print{}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}
\usepackage[utf8]{inputenc}

\RequirePackage{graphicx}
% \RequirePackage{tikz}

\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{mathrsfs}
\RequirePackage{empheq}

\RequirePackage{bm}
\RequirePackage[
  colorlinks=true
]{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue!50!black,
    filecolor=blue!50!black,
    citecolor = green!50!black,
    urlcolor=cyan,
}
\RequirePackage{natbib}
\bibliographystyle{apalike}

\RequirePackage{url}
\RequirePackage{authblk}
\RequirePackage{multirow}

\RequirePackage{stmaryrd}

\RequirePackage[nameinlink,capitalize]{cleveref}
\AtBeginDocument{\newcommand{\refn}[1]{\ref{#1}}}
% \AtBeginDocument{\renewcommand{\ref}[1]{\autoref{#1}}}
\AtBeginDocument{\renewcommand{\ref}[1]{\cref{#1}}}
\numberwithin{equation}{section}

\usepackage[bmargin=2cm,tmargin=2cm,lmargin=2.5cm,rmargin=2.5cm]{geometry}
\usepackage{xcolor}

\usepackage{listings}

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
    tabsize=2
}

\lstset{style=mystyle}

\RequirePackage{float}
\RequirePackage{mathtools}% it load amsmath 
\RequirePackage{tikz}
\RequirePackage{todonotes}
\RequirePackage{csquotes}

\usetikzlibrary{arrows.meta,
                chains,
                calc,
                positioning,
                shapes.geometric,
                backgrounds}
\usetikzlibrary{fit,positioning}
\usepackage{amsmath,amssymb}




\RequirePackage{pgfplots}
\RequirePackage{pgf}
\usepgfplotslibrary{polar}
\pgfplotsset{compat=newest}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\newcommand{\chapabstract}[1]{
    \begin{quote}
      \singlespacing\small
      \textbf{Abstract}
        \rule{12.1cm}{1pt}
        % \fbox{
        %   \parbox{\textwidth}{
            #1
          % }}
        \vskip-4mm
        \rule{14cm}{1pt}
  \end{quote}
}

% \RequirePackage{etoc}
\RequirePackage{enumitem}

\usepackage[k-tight,tight]{minitoc} 
\setcounter{secnumdepth}{3}
% \renewcommand{\minitoc}{\minitoc\newpage}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\newcommand{\size}{0.22\textwidth}
\newcommand{\avg}[1]{\left<#1\right>}
\renewcommand{\avg}[1]{\left<#1\right>}
\newcommand{\Exp}[1]{\overline{\overline{#1}}}
\newcommand{\davg}[1]{\left<#1\right>_d}
\newcommand{\cavg}[1]{\left<#1\right>_c}
\newcommand{\pavg}[1]{\avg{\delta_p #1}}
% \newcommand{\pnavg}[1]{n\left<#1\right>_p}

\newcommand{\avgcond}[1]{\left<#1\right>}
\renewcommand{\avgcond}[1]{\overline{#1}}
\newcommand{\condavg}[2]{\overline{#1}^{#2}}
\newcommand{\ravg}[1]{\avgcond{#1}^\textbf{r}}
\newcommand{\Tavg}[1]{\avgcond{#1}^T}
\newcommand{\Xavg}[1]{\avgcond{#1}^V}
\newcommand{\TXavg}[1]{\Tavg{\Xavg{#1}}}
\newcommand{\kavg}[1]{\avgcond{#1}^k}
\newcommand{\Iavg}[1]{\avgcond{#1}^I}
\newcommand{\pnnavg}[1]{\avgcond{#1}^{p}}
\newcommand{\pnavg}[1]{n_p\pnnavg{#1}}
\newcommand{\oneavg}[1]{\avgcond{#1}^1}
\newcommand{\twoavg}[1]{\avgcond{#1}^2}
\newcommand{\smallavg}[2]{\avgcond{#1}^{#2}}
\newcommand{\sym}[1]{\text{Sym}\left[#1\right]}

\newcommand{\nstavg}[1]{\overline{#1}^{nst}}
\newcommand{\nstrelavg}[1]{\overline{#1}^{nst}_{rel}}
\newcommand{\mavg}[1]{\left<#1\right>_m}
\newcommand{\gavg}[2][\gamma]{\left<#2\right>_{#1}}
\newcommand{\partials}[1]{\partial_{i_1}\partial_{i_2}\ldots\partial{i_{#1}}}
\newcommand{\partialp}[2]{ \prod_{m=#1}^{#2} \partial_{i_m}}
\newcommand{\hatpartialp}[2]{ \prod_{m=#1}^{#2} \hat{\partial}_{j_m}}
\newcommand{\hatpartialpi}[2]{ \prod_{m=#1}^{#2} \hat{\partial}_{i_m}}
\newcommand{\pri}[2]{ \prod_{m=#1}^{#2} r_{i_m}}
\newcommand{\prj}[2]{ \prod_{m=#1}^{#2} r_{j_m}}

\newcommand{\grad}{\mathbf{\nabla}}
\renewcommand{\div}{\mathbf{\nabla}\cdot}
\newcommand{\gradI}{\mathbf{\nabla}_{||}}
\newcommand{\divI}{\mathbf{\nabla}_{||}\cdot}

\newcommand{\ddt}{\frac{d}{dt}}
% \renewcommand{\ddt}{d_t}
\newcommand{\pddt}{\frac{\partial}{\partial t}}
\newcommand{\Dt}{D_t}
\newcommand{\pddx}{\frac{\partial}{\partial \textbf{x}}}
\newcommand{\pddz}{\frac{\partial}{\partial \textbf{z}}}
\newcommand{\pddr}{\frac{\partial}{\partial \textbf{r}}}
\newcommand{\pddy}{\frac{\partial}{\partial \textbf{y}}}
\newcommand{\pddw}{\frac{\partial}{\partial \textbf{w}}}
\newcommand{\pddu}{\frac{\partial}{\partial \textbf{u}}}
\renewcommand{\pddx}{{\partial_\textbf{x}}}
\renewcommand{\pddz}{{\partial_\textbf{z}}}
\renewcommand{\pddr}{{\partial_\textbf{r}}}
\renewcommand{\pddy}{{\partial_\textbf{y}}}
\renewcommand{\pddw}{{\partial_\textbf{w}}}
\renewcommand{\pddu}{{\partial_\textbf{u}}}
\renewcommand{\pddx}{{\grad_\textbf{x}}}
\renewcommand{\pddz}{{\grad_\textbf{z}}}
\renewcommand{\pddr}{{\grad_\textbf{r}}}
\renewcommand{\pddy}{{\grad_\textbf{y}}}
\renewcommand{\pddw}{{\grad_\textbf{w}}}
\renewcommand{\pddu}{{\grad_\textbf{u}}}
\newcommand{\pdda}{\partial_a}
\renewcommand{\pddt}{\partial_t}
\newcommand{\norm}[1]{\hat{#1}}
\newcommand{\Jump}[1]{\llbracket #1 \rrbracket \cdot \textbf{n}_k }
% \renewcommand{\Jump}[1]{\sum_{k=d,f} \left[#1\right] \cdot \textbf{n}_k }
\newcommand{\CC}{\mathscr{C}}
\newcommand{\PP}{\mathscr{P}}
\newcommand{\FF}{\mathscr{F}}

\newcommand{\intOf}[2][\alpha]{\int_{\Omega_f} #2 d\Omega}
% \renewcommand{\intO}[1]{ ( #1 )_{\Omega}}
\newcommand{\intO}[2][\alpha]{\int_{\Omega_{#1}} #2 d\Omega}
\newcommand{\intS}[2][\alpha]{\oint_{\Gamma_{#1}} #2 d\Gamma}
\newcommand{\intOF}[2][\alpha]{\int_{\Omega_{#1}(\FF,t)} #2 d\Omega}
\newcommand{\intSF}[2][\alpha]{\oint_{\Gamma_{#1}(\FF,t)} #2 d\Gamma}
% \renewcommand{\intS}[1]{ ( #1 )_{\Sigma}}
\newcommand{\pOavg}[1]{\pavg{\intO{#1}}}
\newcommand{\pSavg}[1]{\pavg{\intS{#1}}}
\newcommand{\pMavg}[1]{\mathscr{M}\!\!\left[#1\right]}
\newcommand{\pMOavg}[1]{\mathscr{M}_\Omega\!\!\left[#1\right]}
\newcommand{\pMSavg}[1]{\mathscr{M}_\Sigma\!\!\left[#1\right]}


%%% Utiliser pour les commentaires
\newcommand{\JL}[1]{\color{red}#1\color{black}}
\newcommand{\DL}[1]{\color{green}#1\color{black}}
\newcommand{\tb}[1]{\color{blue}#1\color{black}}
% \renewcommand{\alpha}{}
% \renewcommand{\tb}[1]{}

\renewcommand{\size}[1]{0.3\textwidth}
\newcommand{\expo}[2][n]{\frac{(-1)^#1}{#1!} \partialp{1}{#1} \pavg{\intO{ \pri{1}{#1}#2 }}}
\newcommand{\expoU}[2][n]{\frac{(-1)^#1}{#1!} \partialp{1}{#1} \pavg{\textbf{u}_\alpha\intO{ \pri{1}{#1}#2 }}}
\newcommand{\expoS}[2][n]{\frac{(-1)^#1}{#1!} \partialp{1}{#1} \pavg{\intS{\pri{1}{#1}#2 }}}

% \newcommand{\numref}[1]{\ref{#1}}
\renewcommand{\ref}[1]{\autoref{(#1)}}





%%%%%%%%%% colors 

\definecolor{col1}{HTML}{0C5DA5}
\definecolor{col2}{HTML}{00B945}
\definecolor{col3}{HTML}{FF9500}
\definecolor{col4}{HTML}{FF2C00}
\definecolor{col5}{HTML}{845B97}
\definecolor{col6}{HTML}{474747}
\definecolor{col7}{HTML}{9e9e9e}