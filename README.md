# `csquotes`: Context sensitive quotation facilities

## About

This package provides advanced facilities for inline and display
quotations. It is designed for a wide range of tasks ranging from
the most simple applications to the more complex demands of formal
quotations. The facilities include commands, environments, and
user-definable 'smart quotes' which dynamically adjust to their
context. Quotation marks are switched automatically if quotations
are nested and they can be adjusted to the current language. There
are additional facilities designed to cope with the more specific
demands of academic writing, especially in the humanities and the
social sciences. All quote styles as well as the optional active
quotes are freely configurable.

## License

Copyright (c) 2003-2011 Philipp Lehman, 2015-2019,2021,2022 Joseph Wright.
Permission is granted to copy, distribute and/or modify this
software under the terms of the LaTeX Project Public License (LPPL),
version 1.3c or any later version.

This software is provided 'as is', without warranty of any kind,
either expressed or implied, including, but not limited to, the
implied warranties of merchantability and fitness for a particular
purpose.

## Requirements

- e-TeX
- `etoolbox` 1.7 or later
- `keyval`

AUTOMATIC INSTALLATION

TeX Live: The `csquotes` package is included in TeX Live.
          Use the TeX Live package manager to install it.

MiKTeX:   The `csquotes` package is included in MiKTeX.
          Use the MiKTeX package manager to install it.

## Semi-automatic installation

1. Download the file

   http://mirror.ctan.org/install/macros/latex/contrib/csquotes.tds.zip

2. Unpack the archive in the root directory of the local TeX
   installation tree, for example

        /usr/local/share/texmf/
    
   or

        /usr/share/texmf-local/

   or

        C:\Local TeX Files\

3. Update the file hash tables (also known as the file name
   database).
   
   On teTeX and TeX Live systems, run `texhash` as root (`sudo
   texhash`). On MiKTeX, run `initexmf --update-fndb` in a command
   window or use the 'Refresh FNDB' button of the MiKTeX Options
   window.

## Manual installation

1. Copy the files `csquotes.sty`,  `csquotes.def`, `csq-compat.def`,
   and `csquotes.cfg` to

        <TEXMFLOCAL>/tex/latex/csquotes/

   where `<TEXMFLOCAL>` denotes the root of the local TeX installation
   tree, for example

        /usr/local/share/texmf/

   or

        /usr/share/texmf-local/

   or

        C:\Local TeX Files\

2. The file `csquotes.pdf` goes to

        <TEXMFLOCAL>/doc/latex/csquotes/

3. Update the file hash tables (also known as the file name
   database).

   On teTeX and TeX Live systems, run `texhash` as root (`sudo
   texhash`). On MiKTeX, run `initexmf --update-fndb` in a command
   window or use the 'Refresh FNDB' button of the MiKTeX Options
   window.

Note that you may have to create some or all of the above
directories if this is the first package you're installing locally
(as opposed to via a package manager).

## Usage

Refer to `csquotes.pdf` for a systematic reference manual.

## Changes

A list of changes relevant to users of this package is included at
the end of `csquotes.pdf`. Skimming the respective section of the
manual is highly recommended.
