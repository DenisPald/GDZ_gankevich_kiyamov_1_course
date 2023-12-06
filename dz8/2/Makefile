LDFLAGS=$(shell pkg-config --libs zlib)

all: main.hh
	g++ main.cc -o main $(LDFLAGS)
