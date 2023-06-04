FC=gfortran
CC=gcc
CFLAGS=-O2 -g
FFLAGS=-O2 -g

ex1:
	$(FC) --version
	$(FC) $(FFLAGS) -c routine1.f90 -o routine1.o
	$(CC) --version
	$(CC) $(CFLAGS) -c main.c -o main.o
	$(FC) main.o routine1.o -o main
	./main