NAME :=lki
OBJS=main.o version.o run.o control.o rootkit.o lib.o
EXTRA_CFLAGS=-D__DEBUG__
#EXTRA_CFLAGS=-D__DEBUG1__


obj-m	:= $(NAME).o

$(NAME)-objs	:= $(OBJS)


all:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd)

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) clean

run:
	sudo insmod lki.ko
	dmesg  |less
rm:
	sudo rmmod lki

$(NAME).o: $(OBJS)
	$(LD) -r -o $@ $(OBJS)

