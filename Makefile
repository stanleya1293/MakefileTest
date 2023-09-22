# @file Makefile
# @author Arden Stanley
# @date 2023-09-22
# @brief The purpose of this Makefile is to automate compilation of the files in employee.zip 

CC = g++ #The call to the compiler
TARGET = employee #The executable file to obtain
CFLAGS = -c -Wall -Wextra #Compiler flags that provide any and all warnings. Also the flag to produce an object file.

all: $(TARGET)

$(TARGET): main.o Employee.o Officer.o Supervisor.o
	$(CC) main.o Employee.o Officer.o Supervisor.o -o $(TARGET) #final compilation

main.o: main.cpp Employee.h Officer.h Supervisor.h #main.cpp object file
	$(CC) $(CFLAGS) main.cpp -o main.o

Employee.o: Employee.cpp Employee.h #Employee.cpp object file
	$(CC) $(CFLAGS) Employee.cpp -o Employee.o

Officer.o: Officer.cpp Officer.h #Officer.cpp object file
	$(CC) $(CFLAGS) Officer.cpp -o Officer.o

Supervisor.o: Supervisor.cpp Supervisor.h #Supervisor.cpp object file
	$(CC) $(CFLAGS) Supervisor.cpp -o Supervisor.o

clean: #cleans up object files and executables
	$(RM) $(TARGET) *.o *~
