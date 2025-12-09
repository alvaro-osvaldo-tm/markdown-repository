format:

	[ $$(git status --porcelain | wc -l) -eq 0 ] || ( printf "%s\n" '[FATAL] The git repository is not clean.' ; false )

	# npx markdownlint-cli --config ./Support/Configurations/Linters/markdownlint.json --ignore node_modules -f $${DIRECTORY:=.} || true
	# npx prettier --config ./Support/Configurations/Linters/prettierrc.json --write ./Support
	# npx prettier --config ./Support/Configurations/Linters/prettierrc.json --write ./snippets
 
	# git add '*'
	# git commit --all -s -m "chore: Applied lint to all documents"
