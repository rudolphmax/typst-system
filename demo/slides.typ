#import "/main.typ": *

#import "@preview/titleize:0.1.1": titlecase

#show: presentation

#set document(
  title: "Demo Presentation",
  author: "Maximilian Rudolph"
)

#titleSlide(
  "Demonstrating the Slides of this Typst System",
  [
    Maximilian Rudolph, #datetime.today().display("[day].[month].[year]")
  ],
)[
  With this being a boring but functional and pretty title slide.
]

#set text(white)
#titleSlide(
  "I am also representative of this presentation",
  [
    Maximilian Rudolph, #datetime.today().display("[day].[month].[year]")
  ],
  fill: rgb(61, 99, 194),
)[
  But have a slightly more interesting background. All attributes of a `page` can be used here.
]
#set text(black)

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
  == Big Image
])[
  #figure(
    image("alsterpark.jpg"),
    caption: [I have way more space, because there are no columns.]
  )
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

#slide(heading: [
  = Elements
  == Overflowing Content
])[
  #lorem(300)
]

#slide()[
  #figure(
    image("typing-on-computer-zny0u49rxpblwjt6-1161443826.gif"),
    caption: [Beavis typing angrily (source: https://gifdb.com/gif/beavis-and-butt-head-computer-typing-xc7dmx2s14a8ehez.html)]
  )
]
