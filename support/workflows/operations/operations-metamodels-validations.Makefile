#
# Validate the Operations Metamodel Application
#

operation-metamodels-validatation-run:
	${BWRAP} ${BATS} tests/support/operations/repository\ operations/*.bats
	

operation-metamodels-validatation-watch:

	find \
		support/workflows/operations \
		support/operations/repository\ operations \
		tests/support/operations/repository\ operations \
		-type f | entr -rc make operation-metamodels-validatation-run
	
