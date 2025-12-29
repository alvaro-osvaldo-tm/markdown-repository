# metamodel:local.repository.basic/v1
SHELL=/bin/bash
.SHELLFLAGS=-ec
.PHONY: prepare format


include ./support/infrastructure/infrastructure.Makefile

include ./support/workflows/operations.Makefile
include ./support/workflows/infrastructure.Makefile

#include ./support/workflows/unitialized.Makefile
include support/workflows/source-code/code-formatter.Makefile


# You can add or overwrite the workflow with 'custom.Makefile'
-include ./custom.Makefile