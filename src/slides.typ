#import "@preview/titleize:0.1.1": titlecase

#import "./base.typ": *

#let presentation(..params, doc) = [
  #show: base.with(..params)

  #set text(17pt)
  #set par(justify: false)

  #set heading(numbering: none)
  #show heading.where(level: 1): set text(26pt, weight: 400)
  #show heading.where(level: 1): set block(above: 0.8em, below: 0.8em)
  #show heading.where(level: 2): set text(22pt)
  #show heading.where(level: 2): set block(above: 0.8em, below: 0.8em)
  #show heading.where(level: 3): set text(18pt)
  #show heading.where(level: 3): set block(above: 1em, below: 1.5em)

  #set image(height: 100%)

  #set figure(placement: none)
  #show figure.caption: set text(12pt)
  #show footnote.entry: set text(12pt)

  #show bibliography: set text(10pt)

  #set columns(gutter: 40pt)

  #set list(marker: ([•], $->$))

  #doc
]

#let appear(content) = [
  #figure(none, kind: "appear", supplement: none)
  #content
]

#let slide(
  heading: none,
  first: false,
  ..params,
  content
) = context {
  page(
    ..params,
    flipped: true,
    footer: context [
      #if first == false [
        #set align(right + horizon)
        #set text(12pt)

        #counter(page).display(
          "1/1",
          both: true
        )
      ] else []
    ]
  )[
    #if heading != none [
      #heading
      #v(15pt)
    ]

    #let contentSize = measure(content)

    #let minheight(body) = layout(
      available => {
        let size = measure(body, width: available.width, height: auto)
        let args = if size.height <= available.height { (height: 1fr) }

        block(width: available.width, ..args, body)
      }
    )

    #set align(horizon)

    #minheight(content)
  ]

}

#let titleSlide(..params, content) = context {
  return slide(first: true, ..params)[
    #block(width: 70%)[

      #v(1fr)

      #title()

      #[
        #set par(spacing: 1em, leading: 0.65em, justify: false)

        #text(26pt)[
          #titlecase(info.get().subtitle)
        ]

        #h(20pt)

        #content

      ]

      #v(1fr)

      #text(12pt)[
        #info.get().author, #datetime.today().display("[day].[month].[year]")
      ]
    ]
  ]
}

#let quote(content) = box(inset: (left: 3cm, right: 3cm))[
  #set align(center)
  #set text(24pt)

  #emph(content)
]
