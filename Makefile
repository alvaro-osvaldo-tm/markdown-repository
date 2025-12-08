.SHELLFLAGS=-ec
.PHONY: prepare format

include ./support/workflows/repository-bootstrap.Makefile
include ./support/workflows/code-formatter.Makefile


# You can add or overwrite the workflow with 'custom.Makefile'
-include ./custom.Makefile