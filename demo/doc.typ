#import "/main.typ": *

#import "@preview/titleize:0.1.1": titlecase

#show: doc.with(
  title: "Demo Document",
  subtitle: "Demonstrating the documents of this Typst System",
  author: "Maximilian Rudolph"
)

#frontpage()


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
