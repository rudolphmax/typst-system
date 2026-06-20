#import "/main.typ": *

#import "@preview/titleize:0.1.1": titlecase

#show: presentation

#set document(
  title: "Demo Presentation",
  author: "Maximilian Rudolph"
)

#slide(first: true)[
  #v(1fr)

  #[
    #set par(spacing: 1em, leading: 0.65em, justify: false)

    #title()

    #text(26pt)[
      #titlecase("Demonstrating the Slides of this Typst System")
    ]

    #v(1fr)

    #text(12pt)[
      Maximilian Rudolph, #datetime.today().display("[day].[month].[year]")
    ]
  ]
]

#slide(heading: [
  = Elements
  == Text and Images
])[
  #columns(2)[
    #lorem(40)

    #colbreak()

    #figure(
      image("majumdarVisualAestheticAnalysis2016_data.png"),
      caption: [An image is also here.]
    )
  ]
]

#slide(heading: [
  = Elements
  == Lists
])[
  #set list(marker: $->$)

  + *Some numbered points* (however important)
    - have consequences

  + Others are more *important*

  + But have no consequences

  + Though multiple do
    - Not just one!
]

#slide(heading: [
  = Elements
  == Quote
])[
  #v(1fr)

  #quote("I am much more important than ordinary text. Like a research question? Or an important statement.")

  #v(1fr)

  And then some explanations might be needed.

  #lorem(20)
]
