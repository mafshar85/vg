source "vagrant" "centos7_mod" {
        communicator = "ssh"
        source_path = "centos7"
        provider = "virtualbox"
        output_dir = "output-vagrant"
        add_force = true
        box_name = "centos7_mod"
}

build {
        sources = ["sources.vagrant.centos7_mod"]
	provisioner "ansible"{
			playbook_file="./playbook.yml"
				    
				}
	}

