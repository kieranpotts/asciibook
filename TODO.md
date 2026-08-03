# TODO

## Building

Include the ./dist files in source control, for easier preview of output.

Add a Makefile for easier build config. Examples:
https://github.com/akosma/eBook-Template/blob/master/Makefile
https://github.com/akosma/eBook-Template/blob/6736a8a2bbcd43c21a2bcf0abbc92563ebee91c5/Makefile

## Output formats

Add support for Kindle (.mobi). Example:
https://github.com/akosma/eBook-Template/tree/master

Add custom epub styles. Example:
https://github.com/akosma/eBook-Template/tree/master/_resources/epubstyles

Add custom CSS for HTML output.

Support embedded diagram like PlantUML. Example:
https://github.com/akosma/eBook-Template/tree/master

Subset fonts, see
https://docs.asciidoctor.org/pdf-converter/latest/theme/custom-font/#subset

Automatically compress the cover image for "screen" output.

Demonstrate how code snippets can be imported:

```
include::code-samples/example.py[lines=1..10]
```
eg. https://github.com/akosma/eBook-Template/blob/6736a8a2bbcd43c21a2bcf0abbc92563ebee91c5/code/code.swift

Support book parts: https://docs.asciidoctor.org/asciidoc/latest/sections/parts/
