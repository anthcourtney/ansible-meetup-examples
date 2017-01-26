clean:

syntax-check:
	@ansible-playbook -i inventory --syntax-check site.yml

test: syntax-check

go:
	@ansible-playbook -i inventory site.yml
