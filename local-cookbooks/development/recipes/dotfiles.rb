execute "install dotfiles" do
    command "su -l vagrant -c 'cd /home/vagrant/.dotfiles && bash -i ./dotfiles'"
    action :run
    not_if { ::File.exists?("/home/vagrant/.vimrc") }
end
