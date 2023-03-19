clean:
	rm -rf target *.deb

build:
	./build.sh

test-man:
	pandoc src/md/image-sitter-delete-if-exists.1.md -s -t man | man -l -
	pandoc src/md/image-sitter-init.1.md -s -t man | man -l -
	pandoc src/md/image-sitter-pull-always.1.md -s -t man | man -l -
	pandoc src/md/image-sitter-pull-if-not-exists.1.md -s -t man | man -l -
	pandoc src/md/image-sitter.1.md -s -t man | man -l -

delete-tags:
	git tag --delete 1.0.0
	git push --delete origin 1.0.0

install:
	sudo apt install -f ./siakhooi-image-sitter_1.0.0_amd64.deb
uninstall:
	sudo apt remove -y siakhooi-image-sitter
terminalizer:
	terminalizer render docs/terminalizer-image-sitter.yml

docker-ubuntu-bash:
	docker run --rm -it -w /working -v $$(pwd):/working ubuntu bash
#	. in-container-init.sh

docker-debian-bash:
	docker run --rm -it -w /working -v $$(pwd):/working debian bash
#	. in-container-init.sh
