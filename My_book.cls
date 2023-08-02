\ProvidesClass{My_minimal_report}[2022/07/02 My_minimal_report]
\NeedsTeXFormat{LaTeX2e}
% \DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{book}
}
\ProcessOptions\relax
\LoadClass{book}
\RequirePackage{tikz}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{mathrsfs}
\RequirePackage{empheq}
\RequirePackage{mdframed}
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
\RequirePackage{bm}
\RequirePackage{multicol}
\RequirePackage{natbib}
\bibliographystyle{apalike}

\RequirePackage{url}
\RequirePackage{tikz-3dplot}


\RequirePackage{stmaryrd}
\RequirePackage{nomencl}
\immediate\write18{makeindex -s nomencl.ist -o "\jobname.nls" "\jobname.nlo"}
\AtBeginDocument{\renewcommand{\ref}[1]{\autoref{#1}}}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead[LE,RO]{\footnotesize\centering\textit}
\fancyhead[LO]{\footnotesize\centering\textit{\MakeLowercase{\leftmark}}}
\fancyhead[RE]{\footnotesize\centering\textit{\MakeLowercase{\rightmark}}}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[LE,RO]{}
\fancyhead[LO]{\itshape\nouppercase{\rightmark}}
\fancyhead[RE]{\itshape\nouppercase{\leftmark}}
\setlength{\headheight}{52pt}
