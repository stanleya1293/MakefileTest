# @file Makefile
# @author Arden Stanley
# @date 2023-09-22
# @brief The purpose of this Makefile is to automate compilation of the files in employee.zip 

CC = g++
TARGET = employee
CFLAGS = -c -Wall -Wextra

all: $(TARGET)

$(TARGET): main.o Employee.o Officer.o Supervisor.o
	$(CC) main.o Employee.o Officer.o Supervisor.o -o $(TARGET)

main.o: main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) main.cpp -o main.o

Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) Employee.cpp -o Employee.o

Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) Officer.cpp -o Officer.o

Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) Supervisor.cpp -o Supervisor.o

clean:
	$(RM) $(TARGET) *.o *~
