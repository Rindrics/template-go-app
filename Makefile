.PHONY: lint generate test help
.DEFAULT_GOAL := help


lint: ## Lint codes
	golangci-lint run

generate: ## Generate codes
	go generate ./...

test: ## Execute tests
	go test -race -v -shuffle=on ./...

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST)| \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

FORCE:
