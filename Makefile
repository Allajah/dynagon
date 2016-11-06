MAIN_PACKAGE=github.com/Allajah/dynagon
CMD_PACKAGE=cmd/dynagon
fmt:
	@go fmt ./...
install: fmt
	@go get $(MAIN_PACKAGE)/$(CMD_PACKAGE)
build: fmt
	go build -o ./bin/dynagon $(MAIN_PACKAGE)/$(CMD_PACKAGE)
run: install
	@dynagon
build_linux: fmt
	GOOS=linux GOARC=amd64 go build -o ./bin/dynagon $(MAIN_PACKAGE)/$(CMD_PACKAGE)
