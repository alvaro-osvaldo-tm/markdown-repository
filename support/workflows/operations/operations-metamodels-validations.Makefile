#
# Validate the Operations Metamodel Application
#

operation-metamodels-validatation-run:
	bash tests/support/metamodels/repository\ metamodels/run-all-metamodels-tests.sh

.ONESHELL:
operation-metamodels-validatation-watch:

		( 
			
			bash "./support/operations/repository introspection/list-all-operations-scripts.sh" --run
			find tests/infrastructure tests/support/metamodels -type f

		) | entr -rc make operation-metamodels-validatation-run

	
