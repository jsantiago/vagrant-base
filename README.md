1. Install [VirtualBox][1]
2. Install [Vagrant][2]
3. Install [librarian-chef plugin][3]
4. Add cookbooks to the Cheffile
    * [https://github.com/opscode-cookbooks][4]
    * [http://community.opscode.com/search][5]


Start it up!

    :::bash
        $ vagrant plugin install vagrant-librarian-chef
        $ vagrant up


Make sure your SSH key has been added to the `ssh-agent`

    :::bash
        # Add if not already added
        key_file=~/.ssh/id_rsa
        [[ -z $(ssh-add -L | grep $key_file) ]] && ssh-add $key_file


[1]: https://www.virtualbox.org/wiki/Downloads
[2]: http://downloads.vagrantup.com/
[3]: https://github.com/jimmycuadra/vagrant-librarian-chef
[4]: https://github.com/opscode-cookbooks
[5]: http://community.opscode.com/search
