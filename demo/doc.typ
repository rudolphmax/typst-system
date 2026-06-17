#import "/base.typ": base, footer

#import "@preview/titleize:0.1.1": titlecase

#show: base

#set document(
  title: "Demo Document",
  author: "Maximilian Rudolph"
)

#[
  #set align(center)
  #set text(30pt)

  Demo Document
]

#v(2cm)

#[
  #set par(spacing: 1em, leading: 0.65em, justify: false)

  #[
    #set text(21pt)
    #titlecase("Demonstrating the documents of this Typst system")
  ]

  #v(0.25cm)

  Maximilian Rudolph, #datetime.today().display("[day].[month].[year]")
]

#v(1.5cm)
#outline()

#pagebreak()

#set page(
  footer: footer(numbered: true, [
    Maximilian Rudolph
  ])
)


= Introduction

#lorem(50)

== About one thing

#lorem(20)

== And another

#lorem(10)

= Figures, Lists and such

What? This figure is at the top of the page. Look up!

#figure(
  image("majumdarVisualAestheticAnalysis2016_data.png", width: 30%),
  caption: "Well, this is an Image from somewhere."
)

#columns(2)[
  - And then there are lists
  - that tell you more things
    - much more quickly
  - than text does (sometimes).

  #colbreak()

  + Or nicely number stuff
  + from one
    + to some other number
  + depending on how long the list is.
]
