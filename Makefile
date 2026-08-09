.DEFAULT_GOAL := help

start: ## Start the asciidoctor Docker container
	./run/start

build: ## Build the book to PDF, in dist/
	./run/build

stop: ## Stop the asciidoctor Docker container
	./run/stop

help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: start build stop help
