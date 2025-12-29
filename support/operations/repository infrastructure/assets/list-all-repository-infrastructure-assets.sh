#!/usr/bin/env bash
#metamodel:local.bash.basic/v1
#metamodel:local.support.asset.lists/v1

set -e

declare -A options

options[help]=0
options["bash-files"]=1
options["workflow-files"]=1
options["tests-files"]=1

function help() {

	printf "Usage: %s [options]\n" "$(basename "$0")"
	printf "%s\n" "List all repository infraestructure assets"
	printf "Options:\n"
	printf "  %2.2s, %-16.16s    %s\n" "-h" "--help" "Show this help message"
	printf "  %2.2s, %-16.16s    %s\n" "-b" "--hide-bash" "Hide Bash related"
	printf "  %2.2s, %-16.16s    %s\n" "-w" "--hide-workflow" "Hide workflow related files"
	printf "  %2.2s, %-16.16s    %s\n" "-t" "--hide-tests" "Hide related tests files"
	printf "  %2.2s, %-16.16s    %s\n" "-h" "--run" "Generate the report"
	printf "\n"

}

function configure() {

	local arguments
	arguments="$@"

	if [[ "$arguments" == "" ]]; then
		arguments='--help'
	fi

	if ! arguments=$(getopt --long 'help,run,hide-bash,hide-workflow,hide-tests' -o 'h,r,b,w,t' -n "$(basename "$0")" -- $arguments); then
		printf "[FATAL] Option not recognised\n"
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

			--hide-bash | -b)
				options["bash-files"]=0
				shift
				continue

				;;

			--hide-workflow | -w)
				options["workflow-files"]=0
				shift
				continue

				;;

			--hide-tests | -t)
				options["tests-files"]=0
				shift
				continue

				;;

			--run | -r)
				options[run]=1
				shift
				continue
				;;
			--)
				break
				;;
			*) ;;
		esac

	done

	trap abort SIGINT
	trap abort SIGALRM

	if [[ "${options[run]}" -eq 0 ]]; then
		options[help]=1
	fi

	if [[ "${options[help]}" -eq 1 ]]; then
		help
		exit 0
	fi

}

function abort() {
	printf "[INFO] Script aborted\n"
	exit 6
}

function move_to_git_root_directory() {
	cd "$(git rev-parse --show-toplevel)"
}

function list_all_repository_infrastructure_bash_assets() {
	find support/infrastructure -type f -wholename '*.sh'
}

function list_all_repository_infrastructure_workflow_assets() {
	find support/infrastructure -type f -name '*Makefile'
}

function list_all_repository_infrastructure_tests() {
	find tests/infrastructure -type f -name '*.bats' -o -name '*.sh'
}

function main() {

	if [[ "${options[run]}" -ne 1 ]]; then
		return 0
	fi

	move_to_git_root_directory

	if [[ "${options["bash-files"]}" -eq 1 ]]; then
		list_all_repository_infrastructure_bash_assets
	fi

	if [[ "${options["workflow-files"]}" -eq 1 ]]; then
		list_all_repository_infrastructure_workflow_assets
	fi

	if [[ "${options["tests-files"]}" -eq 1 ]]; then
		list_all_repository_infrastructure_tests
	fi

}

configure "$@"
main
