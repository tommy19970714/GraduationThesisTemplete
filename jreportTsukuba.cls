%%
%% This is file `jreportTsukuba.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% jclasses.dtx  (with options: `report,yoko')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from jreport.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file jclasses.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% File: jclasses.dtx
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{jreportTsukuba}
  [2005/09/16 v0.1 modified by Yohei Seki from jreport.cls
 Standard pLaTeX class]
\newcounter{@paper}
\newif\if@landscape \@landscapefalse
\newcommand{\@ptsize}{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\hour\time \divide\hour by 60\relax
\@tempcnta\hour \multiply\@tempcnta 60\relax
\minute\time \advance\minute-\@tempcnta
\newif\if@stysize \@stysizefalse
\newif\if@enablejfam \@enablejfamtrue
\DeclareOption{a4paper}{\setcounter{@paper}{1}%
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}{\setcounter{@paper}{2}%
  \setlength\paperheight {210mm}
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4paper}{\setcounter{@paper}{3}%
  \setlength\paperheight {364mm}
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5paper}{\setcounter{@paper}{4}%
  \setlength\paperheight {257mm}
  \setlength\paperwidth  {182mm}}
\DeclareOption{a4j}{\setcounter{@paper}{1}\@stysizetrue
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5j}{\setcounter{@paper}{2}\@stysizetrue
  \setlength\paperheight {210mm}
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4j}{\setcounter{@paper}{3}\@stysizetrue
  \setlength\paperheight {364mm}
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5j}{\setcounter{@paper}{4}\@stysizetrue
  \setlength\paperheight {257mm}
  \setlength\paperwidth  {182mm}}
\DeclareOption{a4p}{\setcounter{@paper}{1}\@stysizetrue
  \setlength\paperheight {297mm}%
  \setlength\paperwidth  {210mm}}
\DeclareOption{a5p}{\setcounter{@paper}{2}\@stysizetrue
  \setlength\paperheight {210mm}
  \setlength\paperwidth  {148mm}}
\DeclareOption{b4p}{\setcounter{@paper}{3}\@stysizetrue
  \setlength\paperheight {364mm}
  \setlength\paperwidth  {257mm}}
\DeclareOption{b5p}{\setcounter{@paper}{4}\@stysizetrue
  \setlength\paperheight {257mm}
  \setlength\paperwidth  {182mm}}
\if@compatibility
  \renewcommand{\@ptsize}{0}
\else
  \DeclareOption{10pt}{\renewcommand{\@ptsize}{0}}
\fi
\DeclareOption{11pt}{\renewcommand{\@ptsize}{1}}
\DeclareOption{12pt}{\renewcommand{\@ptsize}{2}}
\DeclareOption{landscape}{\@landscapetrue
  \setlength\@tempdima{\paperheight}%
  \setlength\paperheight{\paperwidth}%
  \setlength\paperwidth{\@tempdima}}
\DeclareOption{tombow}{%
  \tombowtrue \tombowdatetrue
  \setlength{\@tombowwidth}{.1\p@}%
  \@bannertoken{%
     \jobname\space:\space\number\year/\number\month/\number\day
      (\number\hour:\number\minute)}
  \maketombowbox}
\DeclareOption{tombo}{%
  \tombowtrue \tombowdatefalse
  \setlength{\@tombowwidth}{.1\p@}%
  \maketombowbox}
\DeclareOption{mentuke}{%
  \tombowtrue \tombowdatefalse
  \setlength{\@tombowwidth}{\z@}%
  \maketombowbox}
\DeclareOption{tate}{%
  \AtBeginDocument{\tate\message{$B!T=DAH%b!<%I!U(B}%
                   (J\(Badjustbaseline}%
}
(J\(BDeclareOption{oneside}{(J\(B@twosidefalse}
(J\(BDeclareOption{twoside}{(J\(B@twosidetrue}
(J\(BDeclareOption{onecolumn}{(J\(B@twocolumnfalse}
(J\(BDeclareOption{twocolumn}{(J\(B@twocolumntrue}
(J\(BDeclareOption{titlepage}{(J\(B@titlepagetrue}
(J\(BDeclareOption{notitlepage}{(J\(B@titlepagefalse}
(J\(Bif@compatibility
(J\(Belse
(J\(BDeclareOption{openright}{(J\(B@openrighttrue}
(J\(BDeclareOption{openany}{(J\(B@openrightfalse}
(J\(Bfi
(J\(BDeclareOption{leqno}{(J\(Binput{leqno.clo}}
(J\(BDeclareOption{fleqn}{(J\(Binput{fleqn.clo}}
(J\(BDeclareOption{openbib}{%
  (J\(BAtEndOfPackage{%
   (J\(Brenewcommand(J\(B@openbib@code{%
      (J\(Badvance(J\(Bleftmargin(J\(Bbibindent
      (J\(Bitemindent -(J\(Bbibindent
      (J\(Blistparindent (J\(Bitemindent
      (J\(Bparsep (J\(Bz@
      }%
   (J\(Brenewcommand(J\(Bnewblock{(J\(Bpar}}}
(J\(Bif@compatibility
(J\(Belse
  (J\(BDeclareOption{disablejfam}{(J\(B@enablejfamfalse}
(J\(Bfi
(J\(BDeclareOption{draft}{(J\(Bsetlength(J\(Boverfullrule{5pt}}
(J\(BDeclareOption{final}{(J\(Bsetlength(J\(Boverfullrule{0pt}}
(J\(BExecuteOptions{a4paper,10pt,oneside,onecolumn,final,openany}
(J\(BProcessOptions(J\(Brelax
(J\(Binput{jsize1(J\(B@ptsize.clo}
(J\(Bif@stysize
  (J\(Bsetlength(J\(Bcolumnsep{2(J\(BCwd}
(J\(Belse
  (J\(Bsetlength(J\(Bcolumnsep{10(J\(Bp@}
(J\(Bfi
(J\(Bsetlength(J\(Bcolumnseprule{0(J\(Bp@}
(J\(Bsetlength(J\(Blineskip{1(J\(Bp@}
(J\(Bsetlength(J\(Bnormallineskip{1(J\(Bp@}
(J\(Brenewcommand{(J\(Bbaselinestretch}{}
(J\(Bsetlength(J\(Bparskip{0(J\(Bp@ (J\(B@plus (J\(Bp@}
(J\(Bsetlength(J\(Bparindent{1(J\(BCwd}
(J\(B@lowpenalty   51
(J\(B@medpenalty  151
(J\(B@highpenalty 301
(J\(Bsetcounter{topnumber}{2}
(J\(Bsetcounter{bottomnumber}{1}
(J\(Bsetcounter{totalnumber}{3}
(J\(Bsetcounter{dbltopnumber}{2}
(J\(Brenewcommand{(J\(Btopfraction}{.7}
(J\(Brenewcommand{(J\(Bbottomfraction}{.3}
(J\(Brenewcommand{(J\(Btextfraction}{.2}
(J\(Brenewcommand{(J\(Bfloatpagefraction}{.5}
(J\(Brenewcommand{(J\(Bdbltopfraction}{.7}
(J\(Brenewcommand{(J\(Bdblfloatpagefraction}{.5}
(J\(Bdef(J\(Bps@plain{(J\(Blet(J\(B@mkboth(J\(B@gobbletwo
   (J\(Blet(J\(Bps@jpl@in(J\(Bps@plain
   (J\(Blet(J\(B@oddhead(J\(B@empty
   (J\(Bdef(J\(B@oddfoot{(J\(Breset@font(J\(Bhfil(J\(Bthepage(J\(Bhfil}%
   (J\(Blet(J\(B@evenhead(J\(B@empty
   (J\(Blet(J\(B@evenfoot(J\(B@oddfoot}
(J\(Blet(J\(Bps@jpl@in(J\(Bps@plain
(J\(Bdef(J\(Bps@headnombre{(J\(Blet(J\(B@mkboth(J\(B@gobbletwo
    (J\(Blet(J\(Bps@jpl@in(J\(Bps@headnombre
  (J\(Bdef(J\(B@evenhead{(J\(Bthepage(J\(Bhfil}%
  (J\(Bdef(J\(B@oddhead{(J\(Bhfil(J\(Bthepage}%
  (J\(Blet(J\(B@oddfoot(J\(B@empty(J\(Blet(J\(B@evenfoot(J\(B@empty}
(J\(Bdef(J\(Bps@footnombre{(J\(Blet(J\(B@mkboth(J\(B@gobbletwo
    (J\(Blet(J\(Bps@jpl@in(J\(Bps@footnombre
  (J\(Bdef(J\(B@evenfoot{(J\(Bthepage(J\(Bhfil}%
  (J\(Bdef(J\(B@oddfoot{(J\(Bhfil(J\(Bthepage}%
  (J\(Blet(J\(B@oddhead(J\(B@empty(J\(Blet(J\(B@evenhead(J\(B@empty}
(J\(Bif@twoside
  (J\(Bdef(J\(Bps@headings{(J\(Blet(J\(Bps@jpl@in(J\(Bps@headnombre
    (J\(Blet(J\(B@oddfoot(J\(B@empty(J\(Blet(J\(B@evenfoot(J\(B@empty
    (J\(Bdef(J\(B@evenhead{(J\(Bthepage(J\(Bhfil(J\(Bleftmark}%
    (J\(Bdef(J\(B@oddhead{{(J\(Brightmark}(J\(Bhfil(J\(Bthepage}%
    (J\(Blet(J\(B@mkboth(J\(Bmarkboth
  (J\(Bdef(J\(Bchaptermark##1{(J\(Bmarkboth{%
     (J\(Bifnum (J\(Bc@secnumdepth >(J\(Bm@ne
         (J\(B@chapapp(J\(Bthechapter(J\(B@chappos(J\(Bhskip1zw
     (J\(Bfi
     ##1}{}}%
  (J\(Bdef(J\(Bsectionmark##1{(J\(Bmarkright{%
     (J\(Bifnum (J\(Bc@secnumdepth >(J\(Bz@ (J\(Bthesection.(J\(Bhskip1zw(J\(Bfi
     ##1}}%
  }
(J\(Belse % if not twoside
  (J\(Bdef(J\(Bps@headings{(J\(Blet(J\(Bps@jpl@in(J\(Bps@headnombre
    (J\(Blet(J\(B@oddfoot(J\(B@empty
    (J\(Bdef(J\(B@oddhead{{(J\(Brightmark}(J\(Bhfil(J\(Bthepage}%
    (J\(Blet(J\(B@mkboth(J\(Bmarkboth
(J\(Bdef(J\(Bchaptermark##1{(J\(Bmarkright{%
   (J\(Bifnum (J\(Bc@secnumdepth >(J\(Bm@ne
       (J\(B@chapapp(J\(Bthechapter(J\(B@chappos(J\(Bhskip1zw
   (J\(Bfi
   ##1}}%
  }
(J\(Bfi
(J\(Bif@twoside
  (J\(Bdef(J\(Bps@bothstyle{(J\(Blet(J\(Bps@jpl@in(J\(Bps@footnombre
    (J\(Bdef(J\(B@evenhead{(J\(Bleftmark(J\(Bhfil}% right page
    (J\(Bdef(J\(B@evenfoot{(J\(Bthepage(J\(Bhfil}% right page
    (J\(Bdef(J\(B@oddhead{(J\(Bhfil(J\(Brightmark}% left page
    (J\(Bdef(J\(B@oddfoot{(J\(Bhfil(J\(Bthepage}% left page
  (J\(Blet(J\(B@mkboth(J\(Bmarkboth
(J\(Bdef(J\(Bchaptermark##1{(J\(Bmarkboth{%
     (J\(Bifnum (J\(Bc@secnumdepth >(J\(Bm@ne
         (J\(B@chapapp(J\(Bthechapter(J\(B@chappos(J\(Bhskip1zw
     (J\(Bfi
     ##1}{}}%
  (J\(Bdef(J\(Bsectionmark##1{(J\(Bmarkright{%
     (J\(Bifnum (J\(Bc@secnumdepth >(J\(Bz@ (J\(Bthesection.(J\(Bhskip1zw(J\(Bfi
     ##1}}%
  }
(J\(Belse % if one column
  (J\(Bdef(J\(Bps@bothstyle{(J\(Blet(J\(Bps@jpl@in(J\(Bps@footnombre
    (J\(Bdef(J\(B@oddhead{(J\(Bhfil(J\(Brightmark}%
    (J\(Bdef(J\(B@oddfoot{(J\(Bhfil(J\(Bthepage}%
    (J\(Blet(J\(B@mkboth(J\(Bmarkboth
  (J\(Bdef(J\(Bchaptermark##1{(J\(Bmarkright{%
     (J\(Bifnum (J\(Bc@secnumdepth >(J\(Bm@ne
         (J\(B@chapapp(J\(Bthechapter(J\(B@chappos(J\(Bhskip1zw
     (J\(Bfi
     ##1}}%
  }
(J\(Bfi
(J\(Bdef(J\(Bps@myheadings{(J\(Blet(J\(Bps@jpl@in(J\(Bps@plain%
  (J\(Blet(J\(B@oddfoot(J\(B@empty(J\(Blet(J\(B@evenfoot(J\(B@empty
  (J\(Bdef(J\(B@evenhead{(J\(Bthepage(J\(Bhfil(J\(Bleftmark}%
  (J\(Bdef(J\(B@oddhead{{(J\(Brightmark}(J\(Bhfil(J\(Bthepage}%
  (J\(Blet(J\(B@mkboth(J\(B@gobbletwo
  (J\(Blet(J\(Bchaptermark(J\(B@gobble
  (J\(Blet(J\(Bsectionmark(J\(B@gobble
}
(J\(Bif@compatibility
(J\(Bnewenvironment{titlepage}
    {%
     (J\(Bif@twocolumn(J\(B@restonecoltrue(J\(Bonecolumn
     (J\(Belse(J\(B@restonecolfalse(J\(Bnewpage(J\(Bfi
     (J\(Bthispagestyle{empty}%
     (J\(Bsetcounter{page}(J\(Bz@
    }%
    {(J\(Bif@restonecol(J\(Btwocolumn(J\(Belse(J\(Bnewpage(J\(Bfi
    }
(J\(Belse
(J\(Bnewenvironment{titlepage}
    {%
      (J\(Bif@twocolumn
        (J\(B@restonecoltrue(J\(Bonecolumn
      (J\(Belse
        (J\(B@restonecolfalse(J\(Bnewpage
      (J\(Bfi
      (J\(Bthispagestyle{empty}%
      (J\(Bsetcounter{page}(J\(B@ne
    }%
    {(J\(Bif@restonecol(J\(Btwocolumn (J\(Belse (J\(Bnewpage (J\(Bfi
     (J\(Bif@twoside(J\(Belse
        (J\(Bsetcounter{page}(J\(B@ne
     (J\(Bfi
    }
(J\(Bfi
(J\(Bdef(J\(Bp@thanks#1{(J\(Bfootnotemark
  (J\(Bprotected@xdef(J\(B@thanks{(J\(B@thanks
    (J\(Bprotect{(J\(Bnoindent$(J\(Bm@th^(J\(Bthefootnote$(J~(B#1(J\(Bprotect(J\(Bpar}}}
(J\(Bif@titlepage
  (J\(Bnewcommand{(J\(Bmaketitle}{(J\(Bbegin{titlepage}%
  (J\(Blet(J\(Bfootnotesize(J\(Bsmall
  (J\(Blet(J\(Bfootnoterule(J\(Brelax
  (J\(Blet(J\(Bfootnote(J\(Bthanks
  (J\(Bnull(J\(Bvfil
  (J\(Bvskip 60(J\(Bp@
  (J\(Bbegin{center}%
    {(J\(BLARGE (J\(B@title (J\(Bpar}%
    (J\(Bvskip 3em%
    {(J\(BLarge
     (J\(Blineskip .75em%
      (J\(Bbegin{tabular}[t]{c}%
        (J\(B@author
      (J\(Bend{tabular}(J\(Bpar}%
      (J\(Bvskip 1.5em%
    {(J\(Blarge (J\(B@date (J\(Bpar}%       % Set date in (J\(Blarge size.
  (J\(Bend{center}(J\(Bpar
  (J\(B@thanks(J\(Bvfil(J\(Bnull
  (J\(Bend{titlepage}%
  (J\(Bsetcounter{footnote}{0}%
  (J\(Bglobal(J\(Blet(J\(Bthanks(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(Bmaketitle(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(Bp@thanks(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(B@thanks(J\(B@empty
  (J\(Bglobal(J\(Blet(J\(B@author(J\(B@empty
  (J\(Bglobal(J\(Blet(J\(B@date(J\(B@empty
  (J\(Bglobal(J\(Blet(J\(B@title(J\(B@empty
  (J\(Bglobal(J\(Blet(J\(Btitle(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(Bauthor(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(Bdate(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(Band(J\(Brelax
  }%
(J\(Belse
  (J\(Bnewcommand{(J\(Bmaketitle}{(J\(Bpar
  (J\(Bbegingroup
    (J\(Brenewcommand{(J\(Bthefootnote}{(J\(Bfnsymbol{footnote}}%
    (J\(Bdef(J\(B@makefnmark{(J\(Bhbox{(J\(Bifydir $(J\(Bm@th^{(J\(B@thefnmark}$
      (J\(Belse(J\(Bhbox{(J\(Byoko$(J\(Bm@th^{(J\(B@thefnmark}$}(J\(Bfi}}%
     (J\(Blong(J\(Bdef(J\(B@makefntext##1{(J\(Bparindent 1em(J\(Bnoindent
       (J\(Bhbox to1.8em{(J\(Bhss$(J\(Bm@th^{(J\(B@thefnmark}$}##1}%
    (J\(Bif@twocolumn
      (J\(Bifnum (J\(Bcol@number=(J\(B@ne (J\(B@maketitle
      (J\(Belse (J\(Btwocolumn[(J\(B@maketitle]%
      (J\(Bfi
    (J\(Belse
      (J\(Bnewpage
      (J\(Bglobal(J\(B@topnum(J\(Bz@   % Prevents figures from going at top of page.
      (J\(B@maketitle
    (J\(Bfi
     (J\(Bthispagestyle{jpl@in}(J\(B@thanks
  (J\(Bendgroup
  (J\(Bsetcounter{footnote}{0}%
  (J\(Bglobal(J\(Blet(J\(Bthanks(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(Bmaketitle(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(Bp@thanks(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(B@thanks(J\(B@empty
  (J\(Bglobal(J\(Blet(J\(B@author(J\(B@empty
  (J\(Bglobal(J\(Blet(J\(B@date(J\(B@empty
  (J\(Bglobal(J\(Blet(J\(B@title(J\(B@empty
  (J\(Bglobal(J\(Blet(J\(Btitle(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(Bauthor(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(Bdate(J\(Brelax
  (J\(Bglobal(J\(Blet(J\(Band(J\(Brelax
  }
  (J\(Bdef(J\(B@maketitle{%
  (J\(Bnewpage(J\(Bnull
  (J\(Bvskip 2em%
  (J\(Bbegin{center}%
  (J\(Blet(J\(Bfootnote(J\(Bthanks
    {(J\(BLARGE (J\(B@title (J\(Bpar}%
    (J\(Bvskip 1.5em%
    {(J\(Blarge
      (J\(Blineskip .5em%
      (J\(Bbegin{tabular}[t]{c}%
        (J\(B@author
      (J\(Bend{tabular}(J\(Bpar}%
    (J\(Bvskip 1em%
    {(J\(Blarge (J\(B@date}%
  (J\(Bend{center}%
  (J\(Bpar(J\(Bvskip 1.5em}
(J\(Bfi
(J\(Bif@titlepage
  (J\(Bnewenvironment{abstract}{%
      (J\(Btitlepage
      (J\(Bnull
      (J\(B@beginparpenalty(J\(B@lowpenalty
      (J\(Bbegin{center}%
        {(J\(Bbfseries(J\(Babstractname}%
        (J\(B@endparpenalty(J\(B@M
      (J\(Bend{center}}%
      {(J\(Bpar(J\(Bvfil(J\(Bnull(J\(Bendtitlepage}
(J\(Belse
  (J\(Bnewenvironment{abstract}{%
    (J\(Bif@twocolumn
      (J\(Bsection*{(J\(Babstractname}%
    (J\(Belse
      (J\(Bsmall
      (J\(Bbegin{center}%
        {(J\(Bbfseries(J\(Babstractname(J\(Bvspace{-.5em}(J\(Bvspace{(J\(Bz@}}%
      (J\(Bend{center}%
      (J\(Bquotation
    (J\(Bfi}{(J\(Bif@twocolumn(J\(Belse(J\(Bendquotation(J\(Bfi}
(J\(Bfi
(J\(Bnewcommand*{(J\(Bchaptermark}[1]{}
(J\(Bsetcounter{secnumdepth}{2}
(J\(Bnewcounter{part}
(J\(Bnewcounter{chapter}
(J\(Bnewcounter{section}[chapter]
(J\(Bnewcounter{subsection}[section]
(J\(Bnewcounter{subsubsection}[subsection]
(J\(Bnewcounter{paragraph}[subsubsection]
(J\(Bnewcounter{subparagraph}[paragraph]
(J\(Brenewcommand{(J\(Bthepart}{(J\(B@Roman(J\(Bc@part}
(J\(Brenewcommand{(J\(Bthechapter}{(J\(B@arabic(J\(Bc@chapter}
(J\(Brenewcommand{(J\(Bthesection}{(J\(Bthechapter.(J\(B@arabic(J\(Bc@section}
(J\(Brenewcommand{(J\(Bthesubsection}{(J\(Bthesection.(J\(B@arabic(J\(Bc@subsection}
(J\(Brenewcommand{(J\(Bthesubsubsection}{%
   (J\(Bthesubsection.(J\(B@arabic(J\(Bc@subsubsection}
(J\(Brenewcommand{(J\(Btheparagraph}{%
   (J\(Bthesubsubsection.(J\(B@arabic(J\(Bc@paragraph}
(J\(Brenewcommand{(J\(Bthesubparagraph}{%
   (J\(Btheparagraph.(J\(B@arabic(J\(Bc@subparagraph}
(J\(Bnewcommand{(J\(B@chapapp}{(J\(Bprechaptername}
(J\(Bnewcommand{(J\(B@chappos}{(J\(Bpostchaptername}
(J\(Bnewcommand{(J\(Bpart}{%
  (J\(Bif@openright (J\(Bcleardoublepage (J\(Belse (J\(Bclearpage (J\(Bfi
  (J\(Bthispagestyle{empty}%
  (J\(Bif@twocolumn(J\(Bonecolumn(J\(B@tempswatrue(J\(Belse(J\(B@tempswafalse(J\(Bfi
  (J\(Bnull(J\(Bvfil
  (J\(Bsecdef(J\(B@part(J\(B@spart}
(J\(Bdef(J\(B@part[#1]#2{%
  (J\(Bifnum (J\(Bc@secnumdepth >-2(J\(Brelax
    (J\(Brefstepcounter{part}%
    (J\(Baddcontentsline{toc}{part}{%
       (J\(Bprepartname(J\(Bthepart(J\(Bpostpartname(J\(Bhspace{1em}#1}%
  (J\(Belse
    (J\(Baddcontentsline{toc}{part}{#1}%
  (J\(Bfi
  (J\(Bmarkboth{}{}%
  {(J\(Bcentering
   (J\(Binterlinepenalty(J\(B@M(J\(Breset@font
   (J\(Bifnum (J\(Bc@secnumdepth >-2(J\(Brelax
     (J\(Bhuge(J\(Bbfseries(J\(Bprepartname(J\(Bthepart(J\(Bpostpartname
     (J\(Bpar(J\(Bvskip20(J\(Bp@
   (J\(Bfi
   (J\(BHuge(J\(Bbfseries#2(J\(Bpar}%
   (J\(B@endpart}
(J\(Bdef(J\(B@spart#1{{%
  (J\(Bcentering
  (J\(Binterlinepenalty(J\(B@M(J\(Breset@font
  (J\(BHuge(J\(Bbfseries#1(J\(Bpar}%
  (J\(B@endpart}
(J\(Bdef(J\(B@endpart{(J\(Bvfil(J\(Bnewpage
   (J\(Bif@twoside(J\(Bnull(J\(Bthispagestyle{empty}(J\(Bnewpage(J\(Bfi
   (J\(Bif@tempswa(J\(Btwocolumn(J\(Bfi}
(J\(Bnewcommand{(J\(Bchapter}{%
  (J\(Bif@openright(J\(Bcleardoublepage(J\(Belse(J\(Bclearpage(J\(Bfi
  (J\(Bthispagestyle{jpl@in}%
  (J\(Bglobal(J\(B@topnum(J\(Bz@
  (J\(B@afterindenttrue
  (J\(Bsecdef(J\(B@chapter(J\(B@schapter}
(J\(Bdef(J\(B@chapter[#1]#2{%
  (J\(Bifnum (J\(Bc@secnumdepth >(J\(Bm@ne
    (J\(Brefstepcounter{chapter}%
    (J\(Btypeout{(J\(B@chapapp(J\(Bspace(J\(Bthechapter(J\(Bspace(J\(B@chappos}%
    (J\(Baddcontentsline{toc}{chapter}%
      {(J\(Bprotect(J\(Bnumberline{(J\(B@chapapp(J\(Bthechapter(J\(B@chappos}#1}%
  (J\(Belse
    (J\(Baddcontentsline{toc}{chapter}{#1}%
  (J\(Bfi
  (J\(Bchaptermark{#1}%
  (J\(Baddtocontents{lof}{(J\(Bprotect(J\(Baddvspace{10(J\(Bp@}}%
  (J\(Baddtocontents{lot}{(J\(Bprotect(J\(Baddvspace{10(J\(Bp@}}%
  (J\(B@makechapterhead{#2}(J\(B@afterheading}
(J\(Bdef(J\(B@makechapterhead#1{(J\(Bhbox{}%
  (J\(Bvskip2(J\(BCvs
  {(J\(Bparindent(J\(Bz@
   (J\(Braggedright
   (J\(Breset@font(J\(Bhuge(J\(Bbfseries
   (J\(Bleavevmode
   (J\(Bifnum (J\(Bc@secnumdepth >(J\(Bm@ne
     (J\(Bsetlength(J\(B@tempdima{(J\(Blinewidth}%
     (J\(Bsetbox(J\(Bz@(J\(Bhbox{(J\(B@chapapp(J\(Bthechapter(J\(B@chappos(J\(Bhskip1zw}%
     (J\(Baddtolength(J\(B@tempdima{-(J\(Bwd(J\(Bz@}%
     (J\(Bunhbox(J\(Bz@(J\(Bnobreak
     (J\(Bvtop{(J\(Bhsize(J\(B@tempdima#1}%
   (J\(Belse
     #1(J\(Brelax
   (J\(Bfi}(J\(Bnobreak(J\(Bvskip3(J\(BCvs}
(J\(Bdef(J\(B@schapter#1{%
  (J\(B@makeschapterhead{#1}(J\(B@afterheading
}
(J\(Bdef(J\(B@makeschapterhead#1{(J\(Bhbox{}%
  (J\(Bvskip2(J\(BCvs
  {(J\(Bparindent(J\(Bz@
   (J\(Braggedright
   (J\(Breset@font(J\(Bhuge(J\(Bbfseries
   (J\(Bleavevmode
   (J\(Bsetlength(J\(B@tempdima{(J\(Blinewidth}%
   (J\(Bvtop{(J\(Bhsize(J\(B@tempdima#1}}(J\(Bvskip3(J\(BCvs}
(J\(Bnewcommand{(J\(Bsection}{(J\(B@startsection{section}{1}{(J\(Bz@}%
   {1.5(J\(BCvs (J\(B@plus.5(J\(BCvs (J\(B@minus.2(J\(BCvs}%
   {.5(J\(BCvs (J\(B@plus.3(J\(BCvs}%
   {(J\(Breset@font(J\(BLarge(J\(Bbfseries}}
(J\(Bnewcommand{(J\(Bsubsection}{(J\(B@startsection{subsection}{2}{(J\(Bz@}%
   {1.5(J\(BCvs (J\(B@plus.5(J\(BCvs (J\(B@minus.2(J\(BCvs}%
   {.5(J\(BCvs (J\(B@plus.3(J\(BCvs}%
   {(J\(Breset@font(J\(Blarge(J\(Bbfseries}}
(J\(Bnewcommand{(J\(Bsubsubsection}{(J\(B@startsection{subsubsection}{3}{(J\(Bz@}%
   {1.5(J\(BCvs (J\(B@plus.5(J\(BCvs (J\(B@minus.2(J\(BCvs}%
   {.5(J\(BCvs (J\(B@plus.3(J\(BCvs}%
   {(J\(Breset@font(J\(Bnormalsize(J\(Bbfseries}}
(J\(Bnewcommand{(J\(Bparagraph}{(J\(B@startsection{paragraph}{4}{(J\(Bz@}%
   {3.25ex (J\(B@plus 1ex (J\(B@minus .2ex}%
   {-1em}%
   {(J\(Breset@font(J\(Bnormalsize(J\(Bbfseries}}
(J\(Bnewcommand{(J\(Bsubparagraph}{(J\(B@startsection{subparagraph}{5}{(J\(Bz@}%
   {3.25ex (J\(B@plus 1ex (J\(B@minus .2ex}%
   {-1em}%
   {(J\(Breset@font(J\(Bnormalsize(J\(Bbfseries}}
(J\(Bnewcommand{(J\(Bappendix}{(J\(Bpar
  (J\(Bsetcounter{chapter}{0}%
  (J\(Bsetcounter{section}{0}%
  (J\(Brenewcommand{(J\(B@chapapp}{(J\(Bappendixname}%
  (J\(Brenewcommand{(J\(B@chappos}(J\(Bspace%
  (J\(Brenewcommand{(J\(Bthechapter}{(J\(B@Alph(J\(Bc@chapter}}
(J\(Bif@twocolumn
  (J\(Bsetlength(J\(Bleftmargini {2em}
(J\(Belse
  (J\(Bsetlength(J\(Bleftmargini {2.5em}
(J\(Bfi
(J\(Bsetlength(J\(Bleftmarginii  {2.2em}
(J\(Bsetlength(J\(Bleftmarginiii {1.87em}
(J\(Bsetlength(J\(Bleftmarginiv  {1.7em}
(J\(Bif@twocolumn
  (J\(Bsetlength(J\(Bleftmarginv {.5em}
  (J\(Bsetlength(J\(Bleftmarginvi{.5em}
(J\(Belse
  (J\(Bsetlength(J\(Bleftmarginv {1em}
  (J\(Bsetlength(J\(Bleftmarginvi{1em}
(J\(Bfi
(J\(Bsetlength  (J\(Blabelsep  {.5em}
(J\(Bsetlength  (J\(Blabelwidth{(J\(Bleftmargini}
(J\(Baddtolength(J\(Blabelwidth{-(J\(Blabelsep}
(J\(B@beginparpenalty -(J\(B@lowpenalty
(J\(B@endparpenalty   -(J\(B@lowpenalty
(J\(B@itempenalty     -(J\(B@lowpenalty
(J\(Brenewcommand{(J\(Btheenumi}{(J\(B@arabic(J\(Bc@enumi}
(J\(Brenewcommand{(J\(Btheenumii}{(J\(B@alph(J\(Bc@enumii}
(J\(Brenewcommand{(J\(Btheenumiii}{(J\(B@roman(J\(Bc@enumiii}
(J\(Brenewcommand{(J\(Btheenumiv}{(J\(B@Alph(J\(Bc@enumiv}
(J\(Bnewcommand{(J\(Blabelenumi}{(J\(Btheenumi.}
(J\(Bnewcommand{(J\(Blabelenumii}{((J\(Btheenumii)}
(J\(Bnewcommand{(J\(Blabelenumiii}{(J\(Btheenumiii.}
(J\(Bnewcommand{(J\(Blabelenumiv}{(J\(Btheenumiv.}
(J\(Brenewcommand{(J\(Bp@enumii}{(J\(Btheenumi}
(J\(Brenewcommand{(J\(Bp@enumiii}{(J\(Btheenumi((J\(Btheenumii)}
(J\(Brenewcommand{(J\(Bp@enumiv}{(J\(Bp@enumiii(J\(Btheenumiii}
(J\(Brenewenvironment{enumerate}
  {(J\(Bifnum (J\(B@enumdepth >(J\(Bthr@@(J\(B@toodeep(J\(Belse
   (J\(Badvance(J\(B@enumdepth(J\(B@ne
   (J\(Bedef(J\(B@enumctr{enum(J\(Bromannumeral(J\(Bthe(J\(B@enumdepth}%
   (J\(Blist{(J\(Bcsname label(J\(B@enumctr(J\(Bendcsname}{%
      (J\(Biftdir
         (J\(Bifnum (J\(B@listdepth=(J\(B@ne (J\(Btopsep.5(J\(Bnormalbaselineskip
           (J\(Belse(J\(Btopsep(J\(Bz@(J\(Bfi
         (J\(Bparskip(J\(Bz@ (J\(Bitemsep(J\(Bz@ (J\(Bparsep(J\(Bz@
         (J\(Blabelwidth1zw (J\(Blabelsep.3zw
         (J\(Bifnum (J\(B@enumdepth=(J\(B@ne (J\(Bleftmargin1zw(J\(Brelax
           (J\(Belse(J\(Bleftmargin(J\(Bleftskip(J\(Bfi
         (J\(Badvance(J\(Bleftmargin 1zw
      (J\(Bfi
         (J\(Busecounter{(J\(B@enumctr}%
         (J\(Bdef(J\(Bmakelabel##1{(J\(Bhss(J\(Bllap{##1}}}%
   (J\(Bfi}{(J\(Bendlist}
(J\(Bnewcommand{(J\(Blabelitemi}{(J\(Btextbullet}
(J\(Bnewcommand{(J\(Blabelitemii}{%
  (J\(Biftdir
     {(J\(Btextcircled{(J~(B}}
  (J\(Belse
     {(J\(Bnormalfont(J\(Bbfseries(J\(Btextendash}
  (J\(Bfi
}
(J\(Bnewcommand{(J\(Blabelitemiii}{(J\(Btextasteriskcentered}
(J\(Bnewcommand{(J\(Blabelitemiv}{(J\(Btextperiodcentered}
(J\(Brenewenvironment{itemize}
  {(J\(Bifnum (J\(B@itemdepth >(J\(Bthr@@(J\(B@toodeep(J\(Belse
   (J\(Badvance(J\(B@itemdepth(J\(B@ne
   (J\(Bedef(J\(B@itemitem{labelitem(J\(Bromannumeral(J\(Bthe(J\(B@itemdepth}%
   (J\(Bexpandafter
   (J\(Blist{(J\(Bcsname (J\(B@itemitem(J\(Bendcsname}{%
      (J\(Biftdir
         (J\(Bifnum (J\(B@listdepth=(J\(B@ne (J\(Btopsep.5(J\(Bnormalbaselineskip
           (J\(Belse(J\(Btopsep(J\(Bz@(J\(Bfi
         (J\(Bparskip(J\(Bz@ (J\(Bitemsep(J\(Bz@ (J\(Bparsep(J\(Bz@
         (J\(Blabelwidth1zw (J\(Blabelsep.3zw
         (J\(Bifnum (J\(B@itemdepth =(J\(B@ne (J\(Bleftmargin1zw(J\(Brelax
           (J\(Belse(J\(Bleftmargin(J\(Bleftskip(J\(Bfi
         (J\(Badvance(J\(Bleftmargin 1zw
      (J\(Bfi
         (J\(Bdef(J\(Bmakelabel##1{(J\(Bhss(J\(Bllap{##1}}}%
   (J\(Bfi}{(J\(Bendlist}
(J\(Bnewenvironment{description}
  {(J\(Blist{}{(J\(Blabelwidth(J\(Bz@ (J\(Bitemindent-(J\(Bleftmargin
   (J\(Biftdir
     (J\(Bleftmargin(J\(Bleftskip (J\(Badvance(J\(Bleftmargin3(J\(BCwd
     (J\(Brightmargin(J\(Brightskip
     (J\(Blabelsep=1zw (J\(Bitemsep(J\(Bz@
     (J\(Blistparindent(J\(Bz@ (J\(Btopskip(J\(Bz@ (J\(Bparskip(J\(Bz@ (J\(Bpartopsep(J\(Bz@
   (J\(Bfi
           (J\(Blet(J\(Bmakelabel(J\(Bdescriptionlabel}}{(J\(Bendlist}
(J\(Bnewcommand{(J\(Bdescriptionlabel}[1]{%
   (J\(Bhspace(J\(Blabelsep(J\(Bnormalfont(J\(Bbfseries #1}
(J\(Bnewenvironment{verse}
  {(J\(Blet(J\\\(B@centercr
   (J\(Blist{}{(J\(Bitemsep(J\(Bz@ (J\(Bitemindent -1.5em%
           (J\(Blistparindent(J\(Bitemindent
           (J\(Brightmargin(J\(Bleftmargin (J\(Badvance(J\(Bleftmargin 1.5em}%
           (J\(Bitem(J\(Brelax}{(J\(Bendlist}
(J\(Bnewenvironment{quotation}
  {(J\(Blist{}{(J\(Blistparindent 1.5em%
           (J\(Bitemindent(J\(Blistparindent
           (J\(Brightmargin(J\(Bleftmargin
           (J\(Bparsep(J\(Bz@ (J\(B@plus(J\(Bp@}%
           (J\(Bitem(J\(Brelax}{(J\(Bendlist}
(J\(Bnewenvironment{quote}
  {(J\(Blist{}{(J\(Brightmargin(J\(Bleftmargin}%
           (J\(Bitem(J\(Brelax}{(J\(Bendlist}
(J\(Bnewcounter{figure}[chapter]
(J\(Brenewcommand{(J\(Bthefigure}{%
  (J\(Bifnum(J\(Bc@chapter>(J\(Bz@(J\(Bthechapter.(J\(Bfi(J\(B@arabic(J\(Bc@figure}
(J\(Bdef(J\(Bfps@figure{tbp}
(J\(Bdef(J\(Bftype@figure{1}
(J\(Bdef(J\(Bext@figure{lof}
(J\(Bdef(J\(Bfnum@figure{(J\(Bfigurename(J~\(Bthefigure}
(J\(Bnewenvironment{figure}
               {(J\(B@float{figure}}
               {(J\(Bend@float}
(J\(Bnewenvironment{figure*}
               {(J\(B@dblfloat{figure}}
               {(J\(Bend@dblfloat}
(J\(Bnewcounter{table}[chapter]
(J\(Brenewcommand{(J\(Bthetable}{%
  (J\(Bifnum(J\(Bc@chapter>(J\(Bz@(J\(Bthechapter.(J\(Bfi(J\(B@arabic(J\(Bc@table}
(J\(Bdef(J\(Bfps@table{tbp}
(J\(Bdef(J\(Bftype@table{2}
(J\(Bdef(J\(Bext@table{lot}
(J\(Bdef(J\(Bfnum@table{(J\(Btablename(J~\(Bthetable}
(J\(Bnewenvironment{table}
               {(J\(B@float{table}}
               {(J\(Bend@float}
(J\(Bnewenvironment{table*}
               {(J\(B@dblfloat{table}}
               {(J\(Bend@dblfloat}
(J\(Bnewlength(J\(Babovecaptionskip
(J\(Bnewlength(J\(Bbelowcaptionskip
(J\(Bsetlength(J\(Babovecaptionskip{10(J\(Bp@}
(J\(Bsetlength(J\(Bbelowcaptionskip{0(J\(Bp@}
(J\(Blong(J\(Bdef(J\(B@makecaption#1#2{%
  (J\(Bvskip(J\(Babovecaptionskip
  (J\(Biftdir(J\(Bsbox(J\(B@tempboxa{#1(J\(Bhskip1zw#2}%
    (J\(Belse(J\(Bsbox(J\(B@tempboxa{#1: #2}%
  (J\(Bfi
  (J\(Bifdim (J\(Bwd(J\(B@tempboxa >(J\(Bhsize
    (J\(Biftdir #1(J\(Bhskip1zw#2(J\(Brelax(J\(Bpar
      (J\(Belse #1: #2(J\(Brelax(J\(Bpar(J\(Bfi
  (J\(Belse
    (J\(Bglobal (J\(B@minipagefalse
    (J\(Bhbox to(J\(Bhsize{(J\(Bhfil(J\(Bbox(J\(B@tempboxa(J\(Bhfil}%
  (J\(Bfi
  (J\(Bvskip(J\(Bbelowcaptionskip}
(J\(Bsetlength(J\(Barraycolsep{5(J\(Bp@}
(J\(Bsetlength(J\(Btabcolsep{6(J\(Bp@}
(J\(Bsetlength(J\(Barrayrulewidth{.4(J\(Bp@}
(J\(Bsetlength(J\(Bdoublerulesep{2(J\(Bp@}
(J\(Bsetlength(J\(Btabbingsep{(J\(Blabelsep}
(J\(Bskip(J\(B@mpfootins = (J\(Bskip(J\(Bfootins
(J\(Bsetlength(J\(Bfboxsep{3(J\(Bp@}
(J\(Bsetlength(J\(Bfboxrule{.4(J\(Bp@}
(J\(B@addtoreset{equation}{chapter}
(J\(Brenewcommand{(J\(Btheequation}{%
  (J\(Bifnum(J\(Bc@chapter>(J\(Bz@(J\(Bthechapter.(J\(Bfi (J\(B@arabic(J\(Bc@equation}
(J\(Bif@enablejfam
  (J\(BDeclareSymbolFont{mincho}{JY1}{mc}{m}{n}
  (J\(BDeclareSymbolFontAlphabet{(J\(Bmathmc}{mincho}
  (J\(BSetSymbolFont{mincho}{bold}{JY1}{gt}{m}{n}
  (J\(BDeclareMathAlphabet{(J\(Bmathgt}{JY1}{gt}{m}{n}
  (J\(BreDeclareMathAlphabet{(J\(Bmathrm}{(J\(B@mathrm}{(J\(B@mathmc}
  (J\(BreDeclareMathAlphabet{(J\(Bmathbf}{(J\(B@mathbf}{(J\(B@mathgt}
  (J\(Bjfam(J\(Bsymmincho
(J\(Belse
  (J\(BDeclareRobustCommand{(J\(Bmathmc}{%
    (J\(B@latex@error{Command (J\(Bnoexpand(J\(Bmathmc invalid with(J\(Bspace
       `disablejfam' class option.}(J\(B@eha
  }
  (J\(BDeclareRobustCommand{(J\(Bmathgt}{%
    (J\(B@latex@error{Command (J\(Bnoexpand(J\(Bmathgt invalid with(J\(Bspace
       `disablejfam' class option.}(J\(B@eha
  }
(J\(Bfi
(J\(BDeclareOldFontCommand{(J\(Bmc}{(J\(Bnormalfont(J\(Bmcfamily}{(J\(Bmathmc}
(J\(BDeclareOldFontCommand{(J\(Bgt}{(J\(Bnormalfont(J\(Bgtfamily}{(J\(Bmathgt}
(J\(BDeclareOldFontCommand{(J\(Brm}{(J\(Bnormalfont(J\(Brmfamily}{(J\(Bmathrm}
(J\(BDeclareOldFontCommand{(J\(Bsf}{(J\(Bnormalfont(J\(Bsffamily}{(J\(Bmathsf}
(J\(BDeclareOldFontCommand{(J\(Btt}{(J\(Bnormalfont(J\(Bttfamily}{(J\(Bmathtt}
(J\(BDeclareOldFontCommand{(J\(Bbf}{(J\(Bnormalfont(J\(Bbfseries}{(J\(Bmathbf}
(J\(BDeclareOldFontCommand{(J\(Bit}{(J\(Bnormalfont(J\(Bitshape}{(J\(Bmathit}
(J\(BDeclareOldFontCommand{(J\(Bsl}{(J\(Bnormalfont(J\(Bslshape}{(J\(B@nomath(J\(Bsl}
(J\(BDeclareOldFontCommand{(J\(Bsc}{(J\(Bnormalfont(J\(Bscshape}{(J\(B@nomath(J\(Bsc}
(J\(BDeclareRobustCommand*{(J\(Bcal}{(J\(B@fontswitch(J\(Brelax(J\(Bmathcal}
(J\(BDeclareRobustCommand*{(J\(Bmit}{(J\(B@fontswitch(J\(Brelax(J\(Bmathnormal}
(J\(Bsetcounter{tocdepth}{2}
(J\(Bnewcommand{(J\(B@pnumwidth}{1.55em}
(J\(Bnewcommand{(J\(B@tocrmarg}{2.55em}
(J\(Bnewcommand{(J\(B@dotsep}{4.5}
(J\(Bnewdimen(J\(Btoclineskip
(J\(Bsetlength(J\(Btoclineskip{(J\(Bz@}
(J\(Bnewdimen(J\(B@lnumwidth
(J\(Bdef(J\(Bnumberline#1{(J\(Bhbox to(J\(B@lnumwidth{#1(J\(Bhfil}}
(J\(Bdef(J\(B@dottedtocline#1#2#3#4#5{%
  (J\(Bifnum #1>(J\(Bc@tocdepth (J\(Belse
    (J\(Bvskip(J\(Btoclineskip (J\(B@plus.2(J\(Bp@
    {(J\(Bleftskip #2(J\(Brelax (J\(Brightskip (J\(B@tocrmarg (J\(Bparfillskip -(J\(Brightskip
     (J\(Bparindent #2(J\(Brelax(J\(B@afterindenttrue
     (J\(Binterlinepenalty(J\(B@M
     (J\(Bleavevmode
     (J\(B@lnumwidth #3(J\(Brelax
     (J\(Badvance(J\(Bleftskip (J\(B@lnumwidth (J\(Bhbox{}(J\(Bhskip -(J\(Bleftskip
     {#4}(J\(Bnobreak
     (J\(Bleaders(J\(Bhbox{$(J\(Bm@th (J\(Bmkern (J\(B@dotsep mu.(J\(Bmkern (J\(B@dotsep mu$}%
     (J\(Bhfill(J\(Bnobreak
     (J\(Bhb@xt@(J\(B@pnumwidth{(J\(Bhss(J\(Bnormalfont (J\(Bnormalcolor #5}%
     (J\(Bpar}%
  (J\(Bfi}
(J\(Bdef(J\(Baddcontentsline#1#2#3{%
  (J\(Bprotected@write(J\(B@auxout
    {(J\(Blet(J\(Blabel(J\(B@gobble (J\(Blet(J\(Bindex(J\(B@gobble (J\(Blet(J\(Bglossary(J\(B@gobble
(J\(B@temptokena{(J\(Bthepage}}%
    {(J\(Bstring(J\(B@writefile{#1}%
       {(J\(Bprotect(J\(Bcontentsline{#2}{#3}{(J\(Bthe(J\(B@temptokena}}}%
}
(J\(Bnewcommand{(J\(Btableofcontents}{%
  (J\(Bif@twocolumn(J\(B@restonecoltrue(J\(Bonecolumn
  (J\(Belse(J\(B@restonecolfalse(J\(Bfi
  (J\(Bchapter*{(J\(Bcontentsname
    (J\(B@mkboth{(J\(Bcontentsname}{(J\(Bcontentsname}%
  }(J\(B@starttoc{toc}%
  (J\(Bif@restonecol(J\(Btwocolumn(J\(Bfi
}
(J\(Bnewcommand*{(J\(Bl@part}[2]{%
  (J\(Bifnum (J\(Bc@tocdepth >-2(J\(Brelax
    (J\(Baddpenalty{-(J\(B@highpenalty}%
    (J\(Baddvspace{2.25em (J\(B@plus(J\(Bp@}%
    (J\(Bbegingroup
    (J\(Bparindent(J\(Bz@(J\(Brightskip(J\(B@pnumwidth
    (J\(Bparfillskip-(J\(B@pnumwidth
    {(J\(Bleavevmode(J\(Blarge(J\(Bbfseries
     (J\(Bsetlength(J\(B@lnumwidth{4zw}%
     #1(J\(Bhfil(J\(Bnobreak
     (J\(Bhbox to(J\(B@pnumwidth{(J\(Bhss#2}}(J\(Bpar
    (J\(Bnobreak
    (J\(Bglobal(J\(B@nobreaktrue
    (J\(Beverypar{(J\(Bglobal(J\(B@nobreakfalse(J\(Beverypar{}}%
     (J\(Bendgroup
  (J\(Bfi}
(J\(Bnewcommand*{(J\(Bl@chapter}[2]{%
  (J\(Bifnum (J\(Bc@tocdepth >(J\(Bm@ne
    (J\(Baddpenalty{-(J\(B@highpenalty}%
    (J\(Baddvspace{1.0em (J\(B@plus(J\(Bp@}%
    (J\(Bbegingroup
      (J\(Bparindent(J\(Bz@ (J\(Brightskip(J\(B@pnumwidth (J\(Bparfillskip-(J\(Brightskip
      (J\(Bleavevmode(J\(Bbfseries
      (J\(Bsetlength(J\(B@lnumwidth{4zw}%
      (J\(Badvance(J\(Bleftskip(J\(B@lnumwidth (J\(Bhskip-(J\(Bleftskip
      #1(J\(Bnobreak(J\(Bhfil(J\(Bnobreak(J\(Bhbox to(J\(B@pnumwidth{(J\(Bhss#2}(J\(Bpar
      (J\(Bpenalty(J\(B@highpenalty
    (J\(Bendgroup
  (J\(Bfi}
(J\(Bnewcommand*{(J\(Bl@section}{(J\(B@dottedtocline{1}{1.5em}{2.3em}}
(J\(Bnewcommand*{(J\(Bl@subsection}   {(J\(B@dottedtocline{2}{3.8em}{3.2em}}
(J\(Bnewcommand*{(J\(Bl@subsubsection}{(J\(B@dottedtocline{3}{7.0em}{4.1em}}
(J\(Bnewcommand*{(J\(Bl@paragraph}    {(J\(B@dottedtocline{4}{10em}{5em}}
(J\(Bnewcommand*{(J\(Bl@subparagraph} {(J\(B@dottedtocline{5}{12em}{6em}}
(J\(Bnewcommand{(J\(Blistoffigures}{%
  (J\(Bif@twocolumn(J\(B@restonecoltrue(J\(Bonecolumn
  (J\(Belse(J\(B@restonecolfalse(J\(Bfi
  (J\(Bchapter*{(J\(Blistfigurename
  (J\(B@mkboth{(J\(Blistfigurename}{(J\(Blistfigurename}}%
  (J\(B@starttoc{lof}%
  (J\(Bif@restonecol(J\(Btwocolumn(J\(Bfi
}
(J\(Bnewcommand*{(J\(Bl@figure}{(J\(B@dottedtocline{1}{1.5em}{2.3em}}
(J\(Bnewcommand{(J\(Blistoftables}{%
  (J\(Bif@twocolumn(J\(B@restonecoltrue(J\(Bonecolumn
  (J\(Belse(J\(B@restonecolfalse(J\(Bfi
  (J\(Bchapter*{(J\(Blisttablename
  (J\(B@mkboth{(J\(Blisttablename}{(J\(Blisttablename}}%
  (J\(B@starttoc{lot}%
  (J\(Bif@restonecol(J\(Btwocolumn(J\(Bfi
}
(J\(Blet(J\(Bl@table(J\(Bl@figure
(J\(Bnewdimen(J\(Bbibindent
(J\(Bsetlength(J\(Bbibindent{1.5em}
(J\(Bnewcommand{(J\(Bnewblock}{(J\(Bhskip .11em(J\(B@plus.33em(J\(B@minus.07em}
(J\(Bnewenvironment{thebibliography}[1]
{(J\(Bchapter*{(J\(Bbibname(J\(B@mkboth{(J\(Bbibname}{(J\(Bbibname}}%
   (J\(Blist{(J\(B@biblabel{(J\(B@arabic(J\(Bc@enumiv}}%
        {(J\(Bsettowidth(J\(Blabelwidth{(J\(B@biblabel{#1}}%
         (J\(Bleftmargin(J\(Blabelwidth
         (J\(Badvance(J\(Bleftmargin(J\(Blabelsep
         (J\(B@openbib@code
         (J\(Busecounter{enumiv}%
         (J\(Blet(J\(Bp@enumiv(J\(B@empty
         (J\(Brenewcommand(J\(Btheenumiv{(J\(B@arabic(J\(Bc@enumiv}}%
   (J\(Bsloppy
   (J\(Bclubpenalty4000
   (J\(B@clubpenalty(J\(Bclubpenalty
   (J\(Bwidowpenalty4000%
   (J\(Bsfcode`(J\(B.(J\(B@m}
  {(J\(Bdef(J\(B@noitemerr
    {(J\(B@latex@warning{Empty `thebibliography' environment}}%
   (J\(Bendlist}
(J\(Blet(J\(B@openbib@code(J\(B@empty
(J\(Bnewenvironment{theindex}
  {(J\(Bif@twocolumn(J\(B@restonecolfalse(J\(Belse(J\(B@restonecoltrue(J\(Bfi
   (J\(Bcolumnseprule(J\(Bz@ (J\(Bcolumnsep 35(J\(Bp@
   (J\(Btwocolumn[(J\(B@makeschapterhead{(J\(Bindexname}]%
   (J\(B@mkboth{(J\(Bindexname}{(J\(Bindexname}%
   (J\(Bthispagestyle{jpl@in}(J\(Bparindent(J\(Bz@
   (J\(Bparskip(J\(Bz@ (J\(B@plus .3(J\(Bp@(J\(Brelax
   (J\(Blet(J\(Bitem(J\(B@idxitem}
  {(J\(Bif@restonecol(J\(Bonecolumn(J\(Belse(J\(Bclearpage(J\(Bfi}
(J\(Bnewcommand{(J\(B@idxitem}{(J\(Bpar(J\(Bhangindent 40(J\(Bp@}
(J\(Bnewcommand{(J\(Bsubitem}{(J\(B@idxitem (J\(Bhspace*{20(J\(Bp@}}
(J\(Bnewcommand{(J\(Bsubsubitem}{(J\(B@idxitem (J\(Bhspace*{30(J\(Bp@}}
(J\(Bnewcommand{(J\(Bindexspace}{(J\(Bpar (J\(Bvskip 10(J\(Bp@ (J\(B@plus5(J\(Bp@ (J\(B@minus3(J\(Bp@(J\(Brelax}
(J\(Brenewcommand{(J\(Bfootnoterule}{%
  (J\(Bkern-3(J\(Bp@
  (J\(Bhrule width .4(J\(Bcolumnwidth
  (J\(Bkern 2.6(J\(Bp@}
(J\(B@addtoreset{footnote}{chapter}
(J\(Bnewcommand(J\(B@makefntext[1]{(J\(Bparindent 1em
  (J\(Bnoindent(J\(Bhbox to 1.8em{(J\(Bhss(J\(B@makefnmark}#1}
(J\(Bnewif(J\(Bif$B@>Nq(B (J\$B@>Nq(Bfalse
(J\(Bdef(J\$B@>Nq(B{(J\$B@>Nq(Btrue}
(J\(Bdef(J\$BOBNq(B{(J\$B@>Nq(Bfalse}
(J\(Bnewcount(J\(Bheisei (J\(Bheisei(J\(Byear (J\(Badvance(J\(Bheisei-1988(J\(Brelax
(J\(Bdef(J\(Btoday{{%
  (J\(Biftdir
    (J\(Bif$B@>Nq(B
      (J\(Bkansuji(J\(Bnumber(J\(Byear $BG/(B
      (J\(Bkansuji(J\(Bnumber(J\(Bmonth $B7n(B
      (J\(Bkansuji(J\(Bnumber(J\(Bday $BF|(B
    (J\(Belse
      $BJ?@.(J\(Bifnum(J\(Bheisei=1 $B85G/(J\(Belse(J\(Bkansuji(J\(Bnumber(J\(Bheisei $BG/(J\(Bfi
      (J\(Bkansuji(J\(Bnumber(J\(Bmonth $B7n(B
      (J\(Bkansuji(J\(Bnumber(J\(Bday $BF|(B
    (J\(Bfi
  (J\(Belse
    (J\(Bif$B@>Nq(B
      (J\(Bnumber(J\(Byear(J~$BG/(B
      (J\(Bnumber(J\(Bmonth(J~$B7n(B
      (J\(Bnumber(J\(Bday(J~$BF|(B
    (J\(Belse
      $BJ?@.(J\(Bifnum(J\(Bheisei=1 $B85G/(J\(Belse(J\(Bnumber(J\(Bheisei(J~$BG/(J\(Bfi
      (J\(Bnumber(J\(Bmonth(J~$B7n(B
      (J\(Bnumber(J\(Bday(J~$BF|(B
    (J\(Bfi
  (J\(Bfi}}
(J\(Bnewcommand{(J\(Bprepartname}{$BBh(B}
(J\(Bnewcommand{(J\(Bpostpartname}{$BIt(B}
(J\(Bnewcommand{(J\(Bprechaptername}{$BBh(B}
(J\(Bnewcommand{(J\(Bpostchaptername}{$B>O(B}
(J\(Bnewcommand{(J\(Bcontentsname}{$BL\(B $B<!(B}
(J\(Bnewcommand{(J\(Blistfigurename}{$B?^(B $BL\(B $B<!(B}
(J\(Bnewcommand{(J\(Blisttablename}{$BI=(B $BL\(B $B<!(B}
(J\(Bnewcommand{(J\(Bbibname}{$B4XO"?^=q(B}
(J\(Bnewcommand{(J\(Bindexname}{$B:w(B $B0z(B}
(J\(Bnewcommand{(J\(Bfigurename}{$B?^(B}
(J\(Bnewcommand{(J\(Btablename}{$BI=(B}
(J\(Bnewcommand{(J\(Bappendixname}{$BIU(B $BO?(B}
(J\(Bnewcommand{(J\(Babstractname}{$B35(B $BMW(B}
(J\(Bpagestyle{plain}
(J\(Bpagenumbering{arabic}
(J\(Braggedbottom
(J\(Bif@twocolumn
  (J\(Btwocolumn
  (J\(Bsloppy
(J\(Belse
  (J\(Bonecolumn
(J\(Bfi
(J\(Bif@twoside
  (J\(B@mparswitchtrue
(J\(Belse
  (J\(B@mparswitchfalse
(J\(Bfi
(J\(Bendinput
%%
%% End of file `jreport.cls'.
