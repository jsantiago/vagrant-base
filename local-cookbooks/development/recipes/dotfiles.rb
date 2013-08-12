execute "install dotfiles" do
    command "su -l vagrant -c 'cd /home/vagrant/.dotfiles && bash -i ./dotfiles'"
    action :run
end
