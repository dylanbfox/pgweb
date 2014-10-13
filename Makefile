build:
	rm -f bindata.go
	go-bindata static/...
	gox -osarch="darwin/amd64 linux/amd64 linux/386 windows/amd64 windows/386" -output="./bin/pgweb_{{.OS}}_{{.Arch}}"

deps:
	go get github.com/mitchellh/gox
	go get github.com/jteeuwen/go-bindata/...

clean:
	rm -f ./pgweb
	rm -f ./bin/*