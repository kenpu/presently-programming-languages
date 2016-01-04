PRESENTLY = $(HOME)/bin/presently-v2
.phony: all

all: dev

dev:
	mkdir -p ./www
	$(PRESENTLY)/presently

compile:
	mkdir -p ./www
	rm -rf ./www/static
	$(PRESENTLY)/presently -compile
	cp -LR $(PRESENTLY)/resources ./www/static

upload:
	$(PRESENTLY)/upload.sh ./www
