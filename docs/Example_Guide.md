---
title: Example Guide
date: November 6, 2023
author: v1.2.3
geometry: "left=25mm,right=25mm,top=25mm,bottom=25mm"
fontsize: 8pt
output: pdf_document
header-includes:
 - \usepackage{tcolorbox}
 - \newtcolorbox{codeblock}{colback=lightgray!40!white, colframe=white!75!white}
 - \renewenvironment{Shaded}{\begin{codeblock}\footnotesize}{\end{codeblock}}
 - \hypersetup{colorlinks=true,
              linkcolor=blue,
              urlcolor=red}
---
<!-- The above is meta for setting up the document -->

\newpage

<!-- Table of Content Block (and hyperlink color setup) -->
```{=latex}
\setcounter{tocdepth}{4}
\hypersetup{colorlinks=true,
            linkcolor=black}
\tableofcontents
```
\hypersetup{colorlinks=true,
            linkcolor=blue,
            urlcolor=red}

\newpage

# Overview
This is an example guide to show how the documentation builder works.

## Contents
This project contains nothing as it is only server as an example for building markdown into beautiful documentation.

- Example_Guide.pdf
  - This guide is not really a guide, more of an example. Hence it being called an example!

**This is bold:**

- something_here.tar
  - I am sure its a great tarball

\newpage
# Examples of code blocks comments

## Shell
<!-- \background  -->
```{.sh}
run --name container_name image --arg1 127.0.0.1 --arg2 8001 arg3 test
```

### Another Shell
```{.sh}
usage: build [-h | --help]

Build some docs

optional arguments:
  -h, --help           Show this help message and exit.
  -d, --docs           Build only the docs.
```

## Python
```{.py}
from ipaddress import ip_address

import argparse
import datetime
import sys


class Tuxedo:
    """Class for doing stuff."""

    HATS = 28

    def __init__(self, args):
        """Initialize attributes."""
        self.var1 = 0
        self.var2 = 0
        self.count = 1
```

\newpage
# Table Example
`wooden` table:

| Field Name          | Type      | Description |
| --- | --- | ----------- |
| wood type           |VARCHAR(30)| Primary Key. What type of wood is it. |
| num_legs            | DOUBLE    | How many legs it has.|
| color               | STRING    | The color.|
| num_seats           | DOUBLE    | How many can sit at the table.|
