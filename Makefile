IMGDIR = ./static/images
JPGS  != ls $(IMGDIR) | grep .jpg
IMGS   = $(JPGS:.jpg=)
PNGS   = $(JPGS:.jpg=.png)

build:
	hugo

server:
	hugo server -w

deploy: build
	cd public; \
	git add -A; \
	date | git commit -F-; \
	git push

images:
	cd ./static/images && make

clean:
	cd public; \
	rm -rf ./*
