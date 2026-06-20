#let doc(doc) = [
  #show: base
]

#let subtitle(content) = [
  #set text(weight: 400)
  #heading(level: 1, content, numbering: none)
]

#let footer(numbered: true, dateOverride: none, content) = context [
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
