execute "install dotfiles" do
    command "su -l vagrant -c 'cd /home/vagrant/.dotfiles && bash -i ./dotfiles'"
    action :run
    only_if { ::File.directory?("/home/vagrant/.dotfiles") }
end
