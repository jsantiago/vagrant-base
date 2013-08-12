execute "generate ssh key" do
    user "vagrant"
    creates "/home/vagrant/.ssh/id_rsa.pub"
    command "ssh-keygen -t rsa -q -f /home/vagrant/.ssh/id_rsa -P \"\""
end
