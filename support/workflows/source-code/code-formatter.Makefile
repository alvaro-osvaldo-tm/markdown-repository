format:

	[ $$(git status --porcelain | wc -l) -eq 0 ] || ( printf "%s\n" '[FATAL] The git repository is not clean.' ; false )

	make --silent format-run

	git add '*'
	git commit --all -s -m "chore: Applied lint to all documents"


format-run:

	make --silent format-support-directory
	make --silent format-markdown-files

format-support-directory:

	npx prettier --config support/configurations/linters/prettierrc.json --write "./support/**/*.sh"
	 	

format-markdown-files:

	npx markdownlint-cli --config ./support/configurations/linters/markdownlint.json --ignore node_modules -f $${DIRECTORY:=.} || true