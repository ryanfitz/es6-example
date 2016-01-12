default: test

lint:
	@node_modules/.bin/eslint lib test
test: lint
	@node_modules/.bin/ava
test-cov:
	@node node_modules/lab/bin/lab -t 100

.PHONY: test test-cov
