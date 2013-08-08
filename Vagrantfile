Vagrant.configure("2") do |config|
    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    config.vm.network :forwarded_port, guest: 80, host: 9000, auto_correct: true

    config.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = "cookbooks"

        # https://github.com/opscode-cookbooks
        chef.add_recipe "apt"
        chef.add_recipe "build-essential"
        chef.add_recipe "git"
        chef.add_recipe "gunicorn"
        chef.add_recipe "nginx"
        chef.add_recipe "ohai"
        chef.add_recipe "python"
        chef.add_recipe "screen"
        chef.add_recipe "vim"

        chef.add_recipe "nodejs"
        chef.add_recipe "nodejs::npm"

        chef.json = {
            'nodejs' => {
                'version' => '0.11.0',
                'npm' => '1.2.15'
            }
        }
    end
end
