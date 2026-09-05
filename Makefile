#
# Task runners for this project's development lifecycle.
#

.PHONY: start build stop help

help:
	@echo "Available targets:"
	@echo "  start   - Start the asciidoctor Docker container"
	@echo "  build   - Build the book to PDF, in dist/"
	@echo "  stop    - Stop the asciidoctor Docker container"
	@echo "  help    - Show this help message"

start:
	./run/start

build:
	./run/build

stop:
	./run/stop
