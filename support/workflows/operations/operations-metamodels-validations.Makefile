#
# Validate the Operations Metamodel Application
#

operation-metamodels-validatation-run:
	${BWRAP} tests/support/metamodels/repository\ metamodels/run-all-metamodels-tests.sh

.ONESHELL:
operation-metamodels-validatation-watch:

		( 
			bash "./support/operations/repository introspection/list-all-operations-scripts.sh"
			find tests/support/metamodels -type f

		) | entr -rc make operation-metamodels-validatation-run

	
