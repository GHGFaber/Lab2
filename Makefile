CFLAGS = -I ./include
##LIB = ./libggfonts.so
LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: lab2 

lab2 : lab2.cpp log.cpp
	g++ $(CFLAGS) lab2.cpp log.cpp libggfonts.a -Wall -Wextra $(LFLAGS) -olab2 -lX11 -lGL -lGLU -lm

clean:
	rm -f lab2 

