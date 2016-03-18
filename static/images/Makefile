JPEGS != ls | grep -v "\-small.jpg" | grep ".jpg"
SMALL  = $(JPEGS:.jpg=-small.jpg)


all: $(SMALL)
	@echo "converted: $(SMALL)"

$(SMALL): $(.TARGET:-small.jpg=.jpg)
	convert -strip -interlace Plane -gaussian-blur 0.05 -quality 85% -resize 90% $(.ALLSRC) $(.TARGET)
