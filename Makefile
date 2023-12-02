all:
	g++ rgb2x.cpp -o rgb2x
	g++ x2rgb.cpp -o x2rgb

clean:
	rm -f rgb2x x2rgb
