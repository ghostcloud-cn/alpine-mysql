
.PHONY: build test

build:
	docker build -t mirror.ghostcloud.cn/library/mysql:ghsotcloud-alpine .

test: build
	docker run --rm -v $(PWD)/init.sql:/init.sql mirror.ghostcloud.cn/library/mysql:ghsotcloud-alpine