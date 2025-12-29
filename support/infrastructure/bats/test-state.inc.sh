function test_state_uuid() {
	printf "%s" "$BATS_TEST_FILENAME" | sha1sum | cut -d ' ' -f 1
}

function test_state_file() {

	local uuid="$(test_state_uuid)"

	if [[ ! -d /tmp/test-states/ ]]; then
		mkdir /tmp/test-states/
	fi

	printf "/tmp/test-states/%s" "$uuid"

}

function was_test_started() {

	local file="$(test_state_file)"

	[[ -f "$file" ]]

}

function set_test_as_started() {

	local file="$(test_state_file)"

	touch "$file"

}
