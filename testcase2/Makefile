FC=gfortran
CC=gcc
CFLAGS=-O2 -g
FFLAGS=-O2 -g

ex1:
	$(FC) --version
	$(FC) $(FFLAGS) -c routine1.f90 -o routine1.o
	$(CC) --version
	$(CC) $(CFLAGS) -c main2.c -o main2.o
	$(CC) main2.o routine1.o -o main2 -lgfortran
	./main2