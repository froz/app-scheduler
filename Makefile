
all:
	scripts/build.sh

dist:
	scripts/dist.sh

clean:
	rm -f bin/* || true
	rm -rf .gopath || true

test:
	go test -v ./...

vet:
	go vet ./...

here:
	go build -o bin/app-scheduler

.PHONY: all	dist clean test
