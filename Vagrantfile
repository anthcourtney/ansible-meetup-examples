# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_check_update = false

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "vagrant.yml"
    ansible.extra_vars = {}
  end

end
