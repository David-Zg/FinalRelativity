%% Esto es el archivo 'rif.cls'
%% Codificado por Pablo H. Rivera
%% Modoficado por Cesar Jiménez T.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rif}[2020/02/22 V.3.0]

\LoadClassWithOptions{extarticle}

\RequirePackage[spanish]{babel}
%\RequirePackage{ucs}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{pgf}
\RequirePackage{bm}
\RequirePackage{fixltx2e}
\RequirePackage[absolute]{textpos}
\RequirePackage[affil-it]{authblk}
\RequirePackage{rotating}
\RequirePackage{amssymb,amsmath,amsfonts,amsthm}
\RequirePackage{lscape}
\RequirePackage{pdflscape}
\RequirePackage{array}
\RequirePackage{color}
\RequirePackage{colortbl}
\RequirePackage{xcolor}
\RequirePackage{cite}
\RequirePackage{tikz}
\RequirePackage{dsfont}
\RequirePackage{cancel}
\RequirePackage{alltt}
\RequirePackage{hyperref}
%\RequirePackage{siunitx}
\RequirePackage{gensymb}
\RequirePackage{textcomp}
\RequirePackage{paralist}
%\RequirePackage[version=3]{mhchem}

%\renewcommand{\familydefault}{\sfdefault} %Tipo de letra Arial o Times Nes Roman

\renewcommand{\Authands}{ y }
\renewcommand{\Authand}{ y }

\addtolength{\oddsidemargin}{-1.5cm}
\addtolength{\evensidemargin}{-3.5cm}
\addtolength{\textwidth}{5.0cm}
\addtolength{\textheight}{2cm}
\addtolength{\columnsep}{0.3cm}

\spanishdecimal{.} % reemplaza la coma decimal por el punto decimal
\addto\captionsspanish{\renewcommand{\tablename}{Tabla}}

%\setlength{\TPHorizModule}{10mm}
%\setlength{\TPVertModule}{10mm}

\newcommand{\clav}[1]{\noindent\textbf{Palabras clave}: #1.\par}
\newcommand{\key}[1]{\noindent\textbf{Keywords}: #1.\par}
\newenvironment{res}{\begin{center} \begin{minipage}{14.4cm}\vspace{-0.5cm}}{\end{minipage}\end{center}\medskip}
\newenvironment{abst}{\begin{center} \begin{minipage}{14.4cm}}{\end{minipage}\end{center}\medskip}

\newcommand{\tit}[1]{\centerline{\Large\textbf{#1}}\par}
\newcommand{\vol}[1]{\textbf{#1}}
\newcommand{\num}[1]{#1}
\newcommand{\cod}[1]{#1}
\newcommand{\ano}[1]{#1}
\newcommand{\linea}{\centerline{\rule{85mm}{0.2mm}}}
\newcommand{\raya}{\centerline{\rule{40mm}{0.2mm}}}
\newcommand{\rayita}{\noindent\rule{\textwidth}{0.2mm}}

\newcounter{Figcount}
\setcounter{Figcount}{0}
\newcounter{Tabcount}
\setcounter{Tabcount}{0}
\newcommand{\capfig}[1]{\par\noindent\textbf{Figura \arabic{Figcount}}: {\small #1}\medskip}
\newcommand{\captab}[1]{\par\noindent\textbf{Tabla \arabic{Tabcount}}: {\small #1}\medskip}
\newenvironment{fig}{\medskip\refstepcounter{Figcount}}{\par}
\newenvironment{tab}{\medskip\refstepcounter{Tabcount}}{\par}
\newcommand{\capfige}[1]{\par\noindent\textbf{Figure \arabic{Figcount}}: {\small #1}\medskip}
\newcommand{\captabe}[1]{\par\noindent\textbf{Table \arabic{Figcount}}: {\small #1}\medskip}

\newcommand{\logo}[3]{
\begin{textblock*}{297mm}(22mm,26.5mm)
\href{http://www.unmsm.edu.pe/}{
\includegraphics[scale=0.26]{unmsm-logo}}
\end{textblock*}
\begin{textblock*}{297mm}(62mm,45mm)
\href{http://fisica.unmsm.edu.pe/rif}{Revista de Investigaci\'on de F\'{\i}sica} 
\textbf{#1}, (#3)
\end{textblock*}
\begin{textblock*}{297mm}(162mm,26mm)
\includegraphics[scale=0.30]{csi-logo}
\end{textblock*} 
\begin{textblock*}{297mm}(162mm,45mm)
eISSN:1728-2977 
\end{textblock*}
}

\newcommand{\bra}[1]{\langle #1|}
\newcommand{\ket}[1]{|#1\rangle}
\newcommand{\med}[1]{\langle #1\rangle}
