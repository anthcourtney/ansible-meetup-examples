clean:

create:

prepare: syntax-check

converge:
	@ansible-playbook -i inventory site.yml

test:

#
# Tests
#

syntax-check:
	@ansible-playbook -i inventory --syntax-check site.yml
