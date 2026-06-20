# Typst System

My personal layout & design system, if you can even call it that, for most documents I create with [Typst](https://typst.app/).

Demos can be found in the `/demo` folder. Refer to those for usage.

## Installation

Locally install this package by symlinking (or placing) this repo into you local Typst package folder.

First, find the location of the local Typst package folder:

```bash
$ typst info

...
Packages
  Package path       <package-path>       # This is what you're looking for
...
```

Then, symlink, clone or place this repo into `<package-path>/local/rudolphmax-typst-system/0.0.0` (you may have to create some or all of the directories in this path beforehand).

Then use in your Typst files.

```typst
#import "@local/rudolphmax-typst-system:0.0.0": *
```
