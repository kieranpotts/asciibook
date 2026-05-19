# Source files

The source files for the book – AsciiDoc files, plus images, style sheets, and other assets – are all bundled together in the `src` directory.

The source files are organized to model the structure of the book:

```
.
├── README.md
└── src
    └── _/
    │   ├── fonts/
    │   ├── images/
    │   └── themes/
    │
    ├── index.adoc
    ├── preface.adoc
    ├── foreword.adoc
    │
    ├── chapter-01
    │   └── index.adoc
    ├── chapter-02
    │   └── index.adoc
    └── chapter-03
        └── index.adoc
```

The main entry point is `src/index.adoc`. This is the file that the `asciidoctor` program targets when compiling the book. Other `*.adoc` files are included in the book by referencing them from the root `index.adoc` file.

The underscore (`_`) directory is the "includes" directory that contains all the assets – fonts, images, and themes – that are referenced from the source AsciiDoc files.
