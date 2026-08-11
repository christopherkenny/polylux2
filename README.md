![logo](assets/polylux-logo.svg)

# Polylux
This is a package for creating presentation slides in [Typst](https://typst.app/).
Read the [docs](https://christopherkenny.github.io/polylux2/) to learn all
about it and click [here](https://christopherkenny.github.io/polylux2/changelog.html)
to see what's new!

If you like it, consider [giving a star on GitHub](https://github.com/andreasKroepelin/polylux)!

[![Docs badge](https://img.shields.io/badge/docs-quarto-green)](https://christopherkenny.github.io/polylux2/)
![GitHub](https://img.shields.io/github/license/andreasKroepelin/polylux)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/andreasKroepelin/polylux)
![GitHub Repo stars](https://img.shields.io/github/stars/andreasKroepelin/polylux)
[![Demo badge](https://img.shields.io/badge/demo-pdf-blue)](https://github.com/andreasKroepelin/polylux/releases/latest/download/demo.pdf)
[![Templates badge](https://img.shields.io/badge/templates-Typst%20Universe-aqua)](https://typst.app/universe/search/?q=polylux&kind=templates)


## Quickstart
For the bare-bones, do-it-yourself experience, all you need is:
```typ
// Get Polylux from the official package repository
#import "@preview/polylux:0.4.0": *

// Make the paper dimensions fit for a presentation and the text larger
#set page(paper: "presentation-16-9")
#set text(size: 25pt, font: "Lato")

// Use #slide to create a slide and style it using your favourite Typst functions
#slide[
  #set align(horizon)
  = Very minimalist slides

  A lazy author

  July 23, 2023
]

#slide[
  == First slide

  Some static text on this slide.
]

#slide[
  == This slide changes!

  You can always see this.
  // Make use of features like #uncover, #only, and others to create dynamic content
  #uncover(2)[But this appears later!]
]
```
This code produces these PDF pages:
![minimal example](examples/minimal.png)

From there, you can either start creatively adapting the looks to your likings
or you directly start by using a
[template](https://typst.app/universe/search/?q=polylux&kind=templates).
The simplest one of them is called
["basic"](https://github.com/polylux-typ/basic).
It is still very unintrusive but gives you some sensible defaults.

For dynamic content, Polylux also provides [a convenient API for complex
overlays](https://christopherkenny.github.io/polylux2/dynamic/dynamic.html).

If you use [pdfpc](https://pdfpc.github.io/) to display your slides, you can
rely on [Polylux' support for it](https://christopherkenny.github.io/polylux2/external/pdfpc.html)
and create speaker notes, hide slides, configure the timer and more!

Visit the
[docs](https://christopherkenny.github.io/polylux2/)
for more details or take a look at the
[demo PDF](https://github.com/andreasKroepelin/polylux/releases/latest/download/demo.pdf)
where you can see the features of this template in action.

**⚠ This package is under active development and there are no backwards
compatibility guarantees!**

## polylux2

This repository, **polylux2**, is a fork of the original
[Polylux](https://github.com/andreasKroepelin/polylux) package, maintained by
[Christopher Kenny](https://github.com/christopherkenny). Please file issues
and pull requests for this fork here rather than upstream. See
[LICENSE](LICENSE) for copyright details.

## Acknowledgements
Various people have contributed to this package and I will certainly forget
someone here, but amongst others I would like to thank
[@rmburg](https://github.com/rmburg),
[@drupol](https://github.com/drupol),
[@Enivex](https://github.com/Enivex),
[@MarkBlyth](https://github.com/MarkBlyth),
[@ntjess](https://github.com/ntjess),
[@JuliusFreudenberger](https://github.com/JuliusFreudenberger), and
[@fncnt](https://github.com/fncnt) (who came up with the name _Polylux_).
