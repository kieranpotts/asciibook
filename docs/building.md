# Building

The [official Asciidoctor Docker container image](https://hub.docker.com/r/asciidoctor/docker-asciidoctor) is used to compile books from the AsciiDoc source files.

To start the Docker container, run:

```sh
./run/start
```

The start script keeps the container running indefinitely (until it is explicitly stopped), so you can re-run the build command again and again, and each time it will be executed immediately without restarting the container.

To compile your book, run the `build` script:

```sh
./run/build
```

> **Tip:** If you get a permissions error on the `dist` directory, delete it then re-run the `build` script. The `build` script should recreate the directory with the correct permissions.

The script will build the book in PDF, EPUB, and HTML formats, and place the output files in the `dist` directory. Both light-mode and dark-mode versions of the PDF will be generated.

When you've finished your work, stop the container:

```sh
./run/stop
```

## Advanced usage

If you want to run custom AsciiDoctor commands, you can run the container in interactive mode. The following command maps this repository's root directory to the `/documents` directory inside the container, and takes you to the container's shell environment.

```sh
docker run -it -v ./:/documents/ asciidoctor/docker-asciidoctor:1.88
```

From the container's shell environment, run the following command to use the [`asciidoctor-pdf`](https://asciidoctor.org/docs/asciidoctor-pdf/) program to compile the book to PDF format:

```sh
asciidoctor-pdf -D dist -o "book.pdf" src/index.adoc
```

See the [Asciidoctor Docker Container documentation](https://github.com/asciidoctor/docker-asciidoctor) for further documentation.

Type `Ctrl`+`D` to exit the container shell.

## CI/CD build

There's a simple [GitHub Actions workflow](https://github.com/kieranpotts/asciibook/actions/workflows/generate-pdf.yaml) that builds the book in the PDF format with the default (light) theme, and uploads the resulting PDF file as an artifact (which is retained for 5 days). The workflow is triggered manually.

You can use this workflow as a starting point for your own automated build pipeline.
