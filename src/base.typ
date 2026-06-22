#import "@preview/titleize:0.1.1": titlecase

#let info = state(
  "info",
  (
    title: "",
    subtitle: "",
    author: "",
  )
)

#let base(title: "", subtitle: "", author: "", dense: false, doc) = {
  info.update((
    title: title,
    subtitle: subtitle,
    author: author,
  ))

  set document(title: title, author: author)

  [
    #set page(
      margin: if dense == false {(top: 2.5cm, left: 3cm)} else {(top: 2cm, left: 2.15cm)}
    )
    #set text(12pt, lang: "en", region: "GB")
    #set par(spacing: 1.5em, leading: 1em, justify: true)

    #show title: titlecase
    #show title: set text(if dense == false {37pt} else {22pt})
    #show title: set par(leading: 0.5em, justify: false)
    #show title: set block(below: 1em)

    #show heading: titlecase
    #show heading.where(level: 1): set par(leading: 0.65em)
    #show heading.where(level: 1): set block(
      above: if dense == false {2em} else {1.5em},
      below: if dense == false {1.5em} else {1em},
    )
    #show heading.where(level: 2): set par(leading: 0.65em)
    #show heading.where(level: 2): set block(
      above: if dense == false {2em} else {1.7em},
      below: if dense == false {1.5em} else {1.3em},
    )
    #show heading.where(level: 3): set text(13pt)
    #show heading.where(level: 3): set block(above: 1.5em, below: 1em)

    #set heading(numbering: "1.")

    #show bibliography: set heading(numbering: "1.")

    #set figure(placement: top)
    #show figure.caption: set par(leading: 0.65em)

    #show link: underline

    #doc
  ]
}
