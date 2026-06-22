#import "./base.typ": *

#let footer(numbered: true, dateOverride: none) = context [
  #let content = info.get().author

  #set align(center + horizon)
  #set text(10pt)

  #let numbering = []

  #if numbered == true {
    let numbering = counter(page).display(
      "1/1",
      both: true,
    )
  }

  #layout(size => [
    #content
    #h(size.width / 2 - measure(numbering).width / 2 - measure(content).width)
    #counter(page).display(
      "1 / 1",
      both: true,
    )
    #h(1fr)
    #if dateOverride == none [
      #datetime.today().display("[day].[month].[year]")
    ] else [
      #dateOverride
    ]
  ])
]

#let doc(
  ..params,
  doc
) = [
  #show: base.with(..params)

  #show title: set text(weight: 400)

  #set page(
    footer: footer()
  )

  #doc
]

#let subtitle(content) = [
  #set text(weight: 400)
  #heading(level: 1, content, numbering: none)
]

#let frontpage(showOutline: true, content: []) = context page()[
  #[
    #set align(center)
    #set text(30pt)

    #title()
  ]

  #v(2cm)

  #[
    #set par(spacing: 1em, leading: 0.65em, justify: false)

    #[
      #set text(21pt)
      #titlecase(info.get().subtitle)
    ]

    #v(0.25cm)

    #info.get().author, #datetime.today().display("[day].[month].[year]")

    #content
  ]

  #if showOutline == true [
    #v(1.5cm)
    #outline()
  ]
]
