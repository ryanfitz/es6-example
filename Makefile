default: test

clean:
	@rm -rf dist
lint:
	@node_modules/.bin/eslint lib test
test: lint
	@node_modules/.bin/ava --require "babel-core/register"
build: clean lint
	@node_modules/.bin/babel lib -d dist
test-cov:
	@node_modules/.bin/nyc \
		--cache --reporter=text \
		./node_modules/.bin/ava --require "babel-core/register"
	@node_modules/.bin/nyc check-coverage --lines 95 --functions 95 --branches 95

.PHONY: test test-cov
