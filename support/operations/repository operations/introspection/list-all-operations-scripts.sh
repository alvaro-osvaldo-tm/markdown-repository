#!/usr/bin/env bash
# metamodel:local.bash.basic/v1

set -e

declare -A options

options[help]=0
options[only - app]=0
options[include - tests]=1
options[filter]=''

function help() {

	printf "Usage: %s [options]\n" "$(basename "$0")"
	printf "%s\n" "List all support operational scripts."
	printf "Options:\n"
	printf "  %2.2s, %-16.16s    %s\n" "-h" "--help" "Show this help message"
	printf "  %2.2s, %-16.16s    %s\n" "-r" "--run" "Run script functionality"
	printf "  %2.2s, %-16.16s    %s\n" "-b" "--only-app" "Report only applications"
	printf "  %2.2s, %-16.16s    %s\n" "-t" "--exclude-tests" "Exclude operational tests scripts"
	printf "\n"

}

function configure() {

	local arguments
	arguments="$@"

	if [[ "$arguments" == "" ]]; then
		arguments='--help'
	fi

	if ! arguments=$(getopt --long 'help,run,only-app,exclude-tests' -o 'h,r,b,t' -n "$(basename "$0")" -- $arguments); then
		printf "[FATAL] Option no recognized\n"
		help
		exit 255
	fi

	eval set -- "$arguments"

	while true; do

		case "$1" in
			--help | -h)
				options[help]=1
				shift
				continue
				;;
			--run | -r)
				options[run]=1
				shift
				continue
				;;
			--only-app | -b)
				options[only - app]=1
				shift
				continue
				;;
			--exclude-tests | -t)
				options[include - tests]=0
				shift
				continue
				;;
			--)
				break
				;;
			*)
				break
				;;
		esac

	done

	if [[ "${options[run]}" -eq 0 ]]; then
		options[help]=1
	fi

	if [[ "${options[help]}" -eq 1 ]]; then
		help
		exit 0
	fi

	trap abort SIGABRT

}

function abort() {
	info "Script aborted"
	exit 6
}

function move_to_git_root_directory() {
	cd "$(git rev-parse --show-toplevel)"
}

function list_operational_scripts() {

	find \
		support \
		-type f \
		-wholename '**/*.sh' -o -wholename '**/*.Makefile'

}

function list_tests_scripts() {

	find \
		tests \
		-type f \
		-wholename '**/*.sh' -o -wholename '**/*.Makefile'

}

function filter_only_applications() {
	grep -E '^.*\.sh$' | grep -v '\.inc\.sh'
}

function main() {

	move_to_git_root_directory

	(

		list_operational_scripts

		if [[ "${options[include - tests]}" -eq 1 ]]; then
			list_tests_scripts
		fi

	) | (

		if [[ "${options[only - app]}" -eq 1 ]]; then
			filter_only_applications
		else
			cat
		fi

	)

}

configure "$@"
main
