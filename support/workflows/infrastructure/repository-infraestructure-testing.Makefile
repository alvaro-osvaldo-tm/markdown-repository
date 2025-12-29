#
# Test the repository infrastructure
# rationale: Any change in any repository infrastructure asset trigger
# the tests.
#



test-repository-infrastructure-run:

	TEST="tests/infrastructure/bash-infrastructure.bats" make --silent bats 

test-repository-infrastructure-watch:

		( 		
			bash support/operations/repository\ infrastructure/assets/list-all-repository-infrastructure-assets.sh --run
		) | entr -rc make --silent test-repository-infrastructure-run


