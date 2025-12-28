#!/usr/bin/env bash

function limit_execution_time {

	declare -A options
	options['command']=''
	options['simulation']=0
	options['pid']=''
	options['timer']=''
	options['verbose']=0

	function configure() {

		local arguments="$@"
		if ! arguments=$(getopt --long 'monitor::,timer::,clear:,do-not-run,verbose' -o 'm::,t::,c:,n,v' -n "$(basename "$0")" -- $arguments); then
			printf "[FATAL] Option not recognised\n"
			help
			exit 255
		fi

		eval set -- "$arguments"

		while true; do

			case "$1" in
				--monitor | -m)

					options['command']="monitor"
					shift

					if [[ "$1" =~ [0-9] ]]; then
						options['pid']="$1"
						shift
					elif [[ -z "$1" ]]; then
						shift
					fi

					continue

					;;
				--timer | -t)

					shift

					options['timer']="$1"
					shift
					continue
					;;

				--clear | -c)

					options['command']="clear"

					shift
					options['pid']="$1"
					shift
					continue
					;;

				--do-not-run | -n)
					options['simulation']=1
					shift
					continue
					;;

				--verbose | -v)
					options['verbose']=1
					shift
					continue
					;;
				--)
					break
					;;
				*)
					fatal "Falhou o processamento de comandos"
					break
					;;

			esac

		done

		if [[ -z "${options['command']}" ]]; then
			command="monitor"
		fi

		if [[ "${options['command']}" == "monitor" ]]; then

			if [[ -z "${options[pid]}" ]]; then
				options[pid]="$(ps -o pgid= -p $$ | awk '{print $1}')"
			fi

			if [[ -z "${options[timer]}" ]]; then
				options[timer]=2
			fi

		elif [[ "${options['command']}" == "clear" ]]; then

			if [[ -z "${options[pid]}" ]]; then
				fatal "pid for 'limit_execution_time' was not defined"
				exit 1
			fi

		fi

	}

	function inform_monitor_configuration() {

		local pid="$1"
		local timer="$2"

		info "Script pid '$pid' , was limited to run for '$timer' seconds"
	}

	function inform_monitor_cleanup() {
		local pid="$1"
		info "Monitor pid '$pid' is being cleaned"
	}

	function install_monitor() {

		local pid="$1"
		local timer="$2"

		(
			sleep "$timer"
			kill -ALRM "$pid" || true
			sleep 2s
			kill -9 "$pid" || true

		) > /dev/null 2> /dev/null &

		printf "$!"

	}

	function clear_monitor() {

		local pid_control="$1"

		kill -9 "$pid_control" || true
		wait "$pid_control" || true

	} > /dev/null 2> /dev/null

	function main() {

		if [[ "${options['command']}" == "monitor" ]]; then

			local pid_control=''

			if [[ "${options['verbose']}" -eq 1 ]]; then
				inform_monitor_configuration "${options[pid]}" "${options[timer]}"
			fi

			if [[ "${options['simulation']}" -eq 0 ]]; then
				pid_control="$(install_monitor "${options[pid]}" "${options[timer]}")"
				printf "%d\n" "$pid_control"
			fi

		elif [[ "${options['command']}" == "clear" ]]; then

			if [[ "${options['verbose']}" -eq 1 ]]; then
				inform_monitor_cleanup "${options[pid]}"
			fi

			if [[ "${options['simulation']}" -eq 0 ]]; then
				clear_monitor "${options[pid]}"
			fi

		fi

	}

	configure "$@"
	main

}
