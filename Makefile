default: test

BIN_DIR=node_modules/.bin

clean:
	@rm -rf dist
lint:
	@$(BIN_DIR)/eslint lib test
test: lint
	@$(BIN_DIR)/ava --require "babel-core/register"
test-cov:
	@$(BIN_DIR)/nyc --cache --reporter=text \
		$(BIN_DIR)/ava --require "babel-core/register"
	@$(BIN_DIR)/nyc check-coverage --lines 95 --functions 95 --branches 95
build: clean lint
	@$(BIN_DIR)/babel lib -d dist

.PHONY: test test-cov
