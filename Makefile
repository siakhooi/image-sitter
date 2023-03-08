clean:
	rm -rf target *.deb

build:
	./build.sh

test-man:
	pandoc src/md/image-sitter.1.md -s -t man | man -l -

delete-tags:
	git tag --delete 1.0.0
	git push --delete origin 1.0.0

install:
	sudo apt install -f ./siakhooi-image-sitter_1.0.0_amd64.deb
uninstall:
	sudo apt remove -y siakhooi-image-sitter
