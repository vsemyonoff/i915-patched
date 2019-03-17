modname  := i915
moddir   := "$$(pwd)/drivers/gpu/drm/$(modname)"
obj-m    := $(modname).o

KVERSION := $(shell uname -r)
KDIR     := /lib/modules/$(KVERSION)/build

default:
	$(MAKE) -C $(KDIR) M=$(moddir) modules

clean:
	$(MAKE) O=$(moddir) -C $(KDIR) M=$(moddir) clean
