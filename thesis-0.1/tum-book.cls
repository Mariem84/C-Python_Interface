\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tum-book}[2016/11/02 TUM Corporate Design Book]

% load base class
\LoadClass[fontsize=11pt,a4paper,bibtotoc,idxtotoc]{scrbook}
% ,headsepline,footsepline,footexclude,BCOR12mm,DIV13

\input{tum-base.cls}

\newcommand{\Titel}{~}
\newcommand{\Untertitel}{~}
\newcommand{\Author}{~}
\newcommand{\Verlag}{~}
\newcommand{\Beschreibung}{~}
\newcommand{\Extra}{~}

% Seitenränder:
\newcommand{\SeitenrandOben}{25.8mm}
\newcommand{\SeitenrandRechts}{21mm}
\newcommand{\SeitenrandLinks}{40mm}
\newcommand{\SeitenrandUnten}{24.8mm}
\newcommand{\FusszeileHoehe}{11.7mm}

\RequirePackage[a4paper,head=0pt]{geometry}
\RequirePackage{caption} % Anpassen von Beschriftungen

\AtBeginDocument{
  % title page
  \newgeometry{top=20mm, bottom=10mm, inner=20mm, outer=20mm}
  \begin{titlepage}
    \raggedleft\includegraphics{Ressourcen/_Bilder/Universitaet_Logo_RGB.pdf}

    \begin{textblock*}{\textwidth}(20mm, 40mm)
      \flushleft
      \Huge \textbf{\Titel}
    \end{textblock*}

    \begin{textblock*}{\textwidth}(20mm, 61mm)
      \flushleft
      \LARGE \Untertitel
    \end{textblock*}

    \begin{textblock*}{\textwidth}(20mm, 100mm)
      \flushleft
      \Large \textbf{\Author}\\
      \Verlag
    \end{textblock*}
    
    \begin{textblock*}{\textwidth}(20mm, 140mm)
      \flushleft
      \Large \Beschreibung
    \end{textblock*}

    \begin{textblock*}{\textwidth}(20mm, 180mm)
      \flushleft
      \large \Extra
    \end{textblock*}

    \begin{textblock*}{10.82cm}(\paperwidth - 128.2mm, 140mm)
        \includegraphics{Ressourcen/Praesentation/Bilder/TUM_Uhrenturm.png}
    \end{textblock*}
    
    \vfill

  \end{titlepage}
  \newgeometry{top=\SeitenrandOben, bottom=\SeitenrandUnten, inner=\SeitenrandLinks, outer=\SeitenrandRechts}
}

% -- Tabellen:
\captionsetup[table]{
  format=plain,
  font={small},
  labelfont={small,bf},
  labelsep=space
}

\renewcommand{\arraystretch}{1.1} % Skalierung der Tabellen

% -- Abbildungen:
\captionsetup[figure]{
  format=plain,
  font={small},
  labelfont={small,bf},
  labelsep=space
}

% -- Listings:
\captionsetup[lstlisting]{
  format=plain,
  font={small},
  labelfont={small,bf},
  labelsep=space,
  singlelinecheck=off
}
