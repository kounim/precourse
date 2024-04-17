CC = gcc
CFLAGS = -Wall -O2
OBJS = main.o hw.o
TARGET = helloworld

helloworld: main.o hw.o
	$(CC) -o $(TARGET) $(OBJS)

main.o: main.c hw.c
	$(CC) $(CFLAGS) -c main.c

hw.o: hw.c
	$(CC) $(CFLAGS) -c hw.c

clean:
	rm -f *.o $(TARGET)
