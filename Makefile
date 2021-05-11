CONFIG_MODULE_SIG=n

obj-m := driver.o

KDIR := /usr/src/linux-headers-5.8.0-49-generic

PWD := $(shell pwd)

default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	rm -rf *.o *.ko .*cmd modules.* Module.* .tmp_versions *.mod.c test
