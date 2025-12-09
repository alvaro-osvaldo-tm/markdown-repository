# Add support for Bats Shell Testing


BATS=bats --pretty --print-output-on-failure --timing --show-output-of-passing-tests --recursive

bats:
	${BWRAP} ${BATS} "${TEST}"