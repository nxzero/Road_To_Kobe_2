\ProvidesClass{My_article}[2022/07/02 My_article]
\NeedsTeXFormat{LaTeX2e}
% \DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{graphicx}
% \RequirePackage{tikz}

\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{mathrsfs}
\RequirePackage{empheq}

\RequirePackage{bm}
% \RequirePackage{mdframed}
\RequirePackage[
  % colorlinks=true
]{hyperref}
% \hypersetup{
%     colorlinks=true,
%     linkcolor=blue!50!black,
%     filecolor=blue!50!black,
%     citecolor = green!50!black,
%     urlcolor=cyan,
% }
%\RequirePackage[doublespacing]{setspace}
\RequirePackage{natbib}
\bibliographystyle{apalike}

\RequirePackage{url}
\RequirePackage{authblk}
\renewcommand\Affilfont{\itshape\small}

\RequirePackage{stmaryrd}

\AtBeginDocument{\newcommand{\refn}[1]{\ref{#1}}}
\AtBeginDocument{\renewcommand{\ref}[1]{\autoref{#1}}}
\numberwithin{equation}{section}
\RequirePackage[
    a4paper,
    left=20mm,
    right=20mm,
    top=20mm
]{geometry}
\RequirePackage{ragged2e}
\RequirePackage{times}
% \RequirePackage{newtxtext}
\RequirePackage{float}
\RequirePackage{mathtools}% it load amsmath 
\RequirePackage{tikz}
