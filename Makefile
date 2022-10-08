help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install:  ## install this snippets dir to ~/.vim/code_snippets
	ln -is `pwd`/vim/ ~/.vim/code_snippets

clean:
	rm -rf ~/.vim/code_snippets
