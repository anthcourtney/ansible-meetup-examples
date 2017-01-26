clean: vagrant-destroy
	rm -rf vagrant

setup:
	@ansible-playbook -i localhost, setup.yml

go: vagrant-up vagrant-rsync vagrant-provision vagrant-ssh

vagrant-destroy:
	@vagrant destroy -f

vagrant-up:
	@vagrant up --no-provision

vagrant-rsync:
	@vagrant rsync

vagrant-provision:
	@vagrant provision

vagrant-ssh:
	@vagrant ssh
