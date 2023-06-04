FC=gfortran
CC=gcc
CFLAGS=-Wall -O2 -g
FFLAGS=-Wall -fcheck=all -O2 -g

ex1:
	$(FC) $(FFLAGS) -c main1.f90 -o main1.o
	$(CC) $(CFLAGS) -c func1.c -o func1.o
	$(FC) func1.o main1.o -o main1
	./main1