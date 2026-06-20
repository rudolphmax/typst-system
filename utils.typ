#import "@preview/titleize:0.1.1": titlecase

#let slide(
  heading: none,
  background: none,
  first: false,
  content
) = context page(
  background: background,
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
  ] else []

  #let contentSize = measure(content)

  #let minheight(body) = layout(
    available => {
      let size = measure(body, width: available.width, height: auto)
      let args = if size.height <= available.height { (height: 1fr) }

      block(..args, body)
    }
  )

  #set align(horizon)

  #minheight(content)
]

#let titleSlide(subtitle, credits, content: []) = {
  return slide(first: true)[
    #block(width: 70%)[

      #v(1fr)

      #title()

      #[
        #set par(spacing: 1em, leading: 0.65em, justify: false)

        #text(26pt)[
          #titlecase(subtitle)
        ]

        #content

        #v(1fr)

        #text(12pt)[
          #credits
        ]
      ]
    ]
  ]
}

#let quote(content) = box(inset: (left: 3cm, right: 3cm))[
  #set align(center)
  #set text(24pt)

  #emph(content)
]
