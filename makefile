run:
	jekyll serve

files:
	./node_modules/svgo/bin/svgo includes/logo.svg
	convert includes/logo.svg files/logo.png
	convert files/logo.png -define icon:auto-resize=64,48,32,16 files/logo.ico

requirements:
	cat requirements.txt | xargs npm install

clean-requirements:
	rm package-lock.json
	rm -r node_modules

clean:
	rm -r _site

.PHONY: run files requirements clean-requirements clean
