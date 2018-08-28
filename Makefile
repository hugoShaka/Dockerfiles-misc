containers = $(subst /,,$(shell ls -d */))
from_images = $(sort $(shell head -n1 -q */Dockerfile | cut -c 6- ))

pull:
	echo -n "$(from_images)" | xargs -d " " -i docker pull {}

build: $(addprefix build_, $(containers))

pull_%: %/Dockerfile
	$(eval IMG := $(shell head -n1 $*/Dockerfile | cut -c 6- ))
	docker pull $(IMG)

build_%: %/Dockerfile
	docker build $* -t $*

rebuild_%: %/Dockerfile
	docker build $* -t $* --no-cache


