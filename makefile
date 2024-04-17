CC = gcc
CFLAGS = -Wall -O2
OBJS = main.o hw.o
TARGET_DIR = target
TARGET = $(TARGET_DIR)/helloworld

$(TARGET): $(OBJS) | $(TARGET_DIR)
	$(CC) -o $@ $^

$(TARGET_DIR):
	mkdir -p $@

main.o: main.c hw.c
	$(CC) $(CFLAGS) -c $^

hw.o: hw.c
	$(CC) $(CFLAGS) -c $^

clean:
	rm -f *.o $(TARGET)
