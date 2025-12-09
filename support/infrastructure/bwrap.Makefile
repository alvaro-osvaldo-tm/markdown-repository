# Add support for Bwrap isolation

BWRAP=bwrap --die-with-parent --unshare-all --ro-bind / / --tmpfs /tmp --tmpfs /dev/shm --dev /dev --proc /proc --ro-bind "$$PWD" "$$PWD" --chdir "$$PWD"
BWRAP_EXEC:=bash

bwrap:
	${BWRAP} ${BWRAP_EXEC}