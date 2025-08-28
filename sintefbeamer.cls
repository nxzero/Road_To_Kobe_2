% Template for SINTEF presentations with LaTeX beamer.
%
% Use of class is deprecated, we can fit all in a theme.

\ProvidesClass{sintefbeamer}[2021/11/02]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}


\ProcessOptions\relax
\LoadClass{beamer}
\logo{
    \transparent{0.2}
\includegraphics[width=.1
\textwidth]{image/Logo_IFPEN.png}
\vspace{-1cm}
}

\ClassWarningNoLine{sintefbeamer}{You should use the SINTEF theme for Beamer 
directly; sintefbeamer is only a wrapper around it and will be removed in the 
future}

\usetheme{sintef}

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
\newcommand{\pddr}{\frac{\partial}{\partial \textbf{r}}}
\newcommand{\pddy}{\frac{\partial}{\partial \textbf{y}}}
\newcommand{\pddw}{\frac{\partial}{\partial \textbf{w}}}
\newcommand{\pddu}{\frac{\partial}{\partial \textbf{u}}}
\renewcommand{\pddx}{{\partial_\textbf{x}}}
\renewcommand{\pddr}{{\partial_\textbf{r}}}
\renewcommand{\pddy}{{\partial_\textbf{y}}}
\renewcommand{\pddw}{{\partial_\textbf{w}}}
\renewcommand{\pddx}{{\grad_\textbf{x}}}
\renewcommand{\pddr}{{\grad_\textbf{r}}}
\renewcommand{\pddy}{{\grad_\textbf{y}}}
\renewcommand{\pddw}{{\grad_\textbf{w}}}
\renewcommand{\pddu}{{\grad_\textbf{u}}}
\newcommand{\pdda}{\partial_a}
\renewcommand{\pddt}{\partial_t}
\newcommand{\norm}[1]{\hat{#1}}
\newcommand{\Jump}[1]{\llbracket #1 \rrbracket \cdot \textbf{n}_k }
% \renewcommand{\Jump}[1]{\sum_{k=d,f} \left[#1\right] \cdot \textbf{n}_k }

\newcommand{\intOf}[2][i]{\int_{V_f} #2 dV}
\newcommand{\intO}[2][i]{\int_{V_{#1}} #2 dV}
\newcommand{\intS}[2][i]{\oint_{S_{#1}} #2 dS}

\newcommand{\pOavg}[2][i]{\pavg{\intO[#1]{#2}}}
\newcommand{\pSavg}[2][i]{\pavg{\intS[#1]{#2}}}
\newcommand{\pMavg}[1]{\mathscr{M}\!\!\left[#1\right]}
\newcommand{\pMOavg}[1]{\mathscr{M}_\Omega\!\!\left[#1\right]}
\newcommand{\pMSavg}[1]{\mathscr{M}_\Sigma\!\!\left[#1\right]}
\newcommand{\CC}{\mathscr{C}}
\newcommand{\PP}{\mathscr{P}}
\newcommand{\FF}{\mathscr{F}}

%%% Utiliser pour les commentaires
\newcommand{\JL}[1]{\color{red}#1\color{black}}
\newcommand{\DL}[1]{\color{green}#1\color{black}}
\newcommand{\tb}[1]{\color{blue}#1\color{black}}
% \renewcommand{\alpha}{}
\renewcommand{\JL}[1]{}
% \renewcommand{\tb}[1]{}

\renewcommand{\size}[1]{0.3\textwidth}
\newcommand{\expo}[2][n]{\frac{(-1)^#1}{#1!} \partialp{1}{#1} \pavg{\int_{\Omega_\alpha} \pri{1}{#1}#2 d\Omega}}
\newcommand{\expoU}[2][n]{\frac{(-1)^#1}{#1!} \partialp{1}{#1} \pavg{\textbf{u}_\alpha\int_{\Omega_\alpha} \pri{1}{#1}#2 d\Omega}}
\newcommand{\expoS}[2][n]{\frac{(-1)^#1}{#1!} \partialp{1}{#1} \pavg{\int_{\Sigma_\alpha} \pri{1}{#1}#2 d\Sigma}}

% \newcommand{\numref}[1]{\ref{#1}}
\renewcommand{\ref}[1]{\autoref{#1}}
\usepackage{transparent}
