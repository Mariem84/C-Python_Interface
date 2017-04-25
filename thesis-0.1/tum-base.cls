%\ProvidesClass{tum-base}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc} % Zeichensatzkodierung
\RequirePackage{calc} % Berechnungen
\RequirePackage[ngerman,english]{babel} % Englische Lokalisierung
\selectlanguage{english}
\RequirePackage[export]{adjustbox}
\RequirePackage[absolute, overlay]{textpos} % Positionierung
\RequirePackage[gen]{eurosym}
\DeclareUnicodeCharacter{20AC}{\euro{}}

%\RequirePackage{mathptmx} % skalierbare Formelschriften
\RequirePackage{sansmath}
\RequirePackage[scaled]{helvet} % Schriftart Helvetica:
\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\rmdefault}{\sfdefault}
\fontfamily{phv}\selectfont

\RequirePackage{graphicx} % Grafiken
\RequirePackage{tabularx}
\RequirePackage{multicol} % mehrspaltiger Text
\RequirePackage{hyphenat} % Silbentrennung
\def\UrlBreaks{\do\/\do-}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\RequirePackage[pdftex,hidelinks,breaklinks]{hyperref}
\RequirePackage{tikz}
\usetikzlibrary{arrows, shapes, shapes.multipart, trees, positioning,
    backgrounds, fit, matrix}

% Diagramme:
\RequirePackage{pgfplots}
\pgfplotsset{compat=default}

\widowpenalty=10000     % Hurenkinder
\clubpenalty=10000      % Schusterjungen
\displaywidowpenalty=10000

% Blautöne:
\definecolor{TUMBlau}{RGB}{0,101,189} % Pantone 300
\definecolor{TUMBlauDunkel}{RGB}{0,82,147} % Pantone 301
\definecolor{TUMBlauHell}{RGB}{152,198,234} % Pantone 283
\definecolor{TUMBlauMittel}{RGB}{100,160,200} % Pantone 542

% Hervorhebung:
\definecolor{TUMElfenbein}{RGB}{218,215,203} % Pantone 7527 -Elfenbein
\definecolor{TUMGruen}{RGB}{162,173,0} % Pantone 383 - Grün
\definecolor{TUMOrange}{RGB}{227,114,34} % Pantone 158 - Orange
\definecolor{TUMGrau}{gray}{0.6} % Grau 60%

% Allgemein:
\newcommand{\AllgemeinGestalter}{ediundsepp Gestaltungsgesellschaft}
\newcommand{\AllgemeinErsteller}{eWorks GmbH}

% Universität:
\newcommand{\UniversitaetName}{Technische Universität München}
\newcommand{\UniversitaetAbkuerzung}{TUM}
\newcommand{\UniversitaetWebseite}{www.tum.de}
\newcommand{\UniversitaetLogoBreite}{19mm}
\newcommand{\UniversitaetLogoHoehe}{1cm}

\newcommand{\EinstellungBankName}{Bayerische Landesbank}
\newcommand{\EinstellungBankIBAN}{DE10700500000000024866}
\newcommand{\EinstellungBankBIC}{BYLADEMM}
\newcommand{\EinstellungSteuernummer}{143/241/80037}
\newcommand{\EinstellungUmsatzsteuerIdentifikationsnummer}{DE811193231}

\newcommand{\UniversitaetAdresse}{%
    Arcisstraße~21\\%
    80333~München%
}

% TODO:
% Titel prefix/postfix
% where to place this information ?
% cls could be in user folder or system folder
% personal information only in user folder

\input{_Einstellungen.tex}

\usepackage[super]{nth}
\usepackage{siunitx}
\sisetup{
  detect-all,
%  list-pair-separator = { \translate{und} },
%  list-final-separator = { \translate{und} },
%  range-phrase = { \translate{bis} },
%  output-decimal-marker = {,}
}



\usepackage{cite}
\newcommand{\etal}{\italic{et al.\ }}

% CPH specific
\usepackage{braket}

\newcommand{\trace}{\operatorname{trace}}
\newcommand{\rot}{\operatorname{rot}}
\newcommand{\grad}{\operatorname{grad}}
\renewcommand{\div}{\operatorname{div}}
\newcommand{\laplace}{\operatorname{\Delta}}
\newcommand{\laplacevec}{\operatorname{\nabla^2}}
\newcommand{\pd}[1]{\operatorname{\partial}_{#1}}
\newcommand{\pdd}[1]{\operatorname{\partial}_{#1}^2}
\newcommand{\diff}[2]{\frac{\operatorname{d}#2}{\operatorname{d}#1}}
\renewcommand{\d}[1]{\operatorname{d}_#1}
\newcommand{\imu}{i}
\newcommand{\qmo}[1]{\hat #1}
\renewcommand{\Re}{\operatorname{Re}}
\renewcommand{\Im}{\operatorname{Im}}

\newcommand{\realp}[1]{\mathrm{Re}\left\{ #1 \right\}}
\newcommand{\imagp}[1]{\mathrm{Im}\left\{ #1 \right\}}

\newcommand{\comm}[2]{\left[ \qmo{#1},  \qmo{#2} \right]}


\usepackage{listings}
\lstset{
%  numbers=left,
  basicstyle=\small\ttfamily,
  keywordstyle=\color{TUMBlau}\ttfamily,
  stringstyle=\color{TUMOrange}\ttfamily,
  commentstyle=\color{TUMGruen}\ttfamily,
%  aboveskip=0cm,
%  belowskip=0cm,
  morecomment=[l][\color{TUMElfenbein}]{\#},
}
