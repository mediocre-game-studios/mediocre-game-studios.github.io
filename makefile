files:
	./node_modules/svgo/bin/svgo ./files/logo.svg -o ./files/logo.svg
	convert ./files/logo.svg ./files/logo.png
	convert ./files/logo.png -define icon:auto-resize=64,48,32,16 ./files/logo.ico

requirements:
	cat ./requirements.txt | xargs npm install

clean:
	rm ./package-lock.json
	rm -r ./node_modules

.PHONY: files requirements clean
