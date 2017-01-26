clean:

create:

prepare:

converge:
	@ansible-playbook -i localhost, site.yml

test: deprecated-syntax

# Test helpers

deprecated-syntax:
	ansible-lint -t	deprecated site.yml
