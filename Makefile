default: test

clean:
	@rm -rf dist
lint:
	@node_modules/.bin/eslint lib test
test: lint
	@node_modules/.bin/ava
build: clean lint
	@node_modules/.bin/babel lib -d dist
test-cov:
	@node node_modules/lab/bin/lab -t 100

.PHONY: test test-cov
