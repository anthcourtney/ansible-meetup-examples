clean:

create:

prepare: syntax-check

converge: run-playbook

test: idempotency-test

# Prepare helpers

syntax-check:
	@ansible-playbook -i inventory --syntax-check site.yml

# Test helpers

idempotency-test:
	@${MAKE} run-playbook-check-mode | tee /tmp/ansible_$$$$.txt; \
	grep -q 'changed=0.*failed=0' /tmp/ansible_$$$$.txt \
	  && (echo 'Passed idempotency test'; exit 0) \
	  || (echo "Failed idempotency test"; exit 1)

# Converge helpers

run-playbook:
	@ansible-playbook -i inventory site.yml

run-playbook-check-mode:
	@ansible-playbook -i inventory --check --diff site.yml
