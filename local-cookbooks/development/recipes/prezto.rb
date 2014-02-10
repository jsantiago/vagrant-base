git "/home/vagrant/.zprezto" do
    repository "https://github.com/sorin-ionescu/prezto.git"
    reference "master"
    action :sync
end

# Link
# - zlogin
# - zlogout
# - zprofile
# - zshenv
#
# Controlled by dotfiles
# - zpreztorc
# - zshrc
%w{ zlogin zlogout zprofile zshenv }.each do |zfile|
    link "/home/vagrant/.#{zfile}" do
        to "/home/vagrant/.zprezto/runcoms/#{zfile}"
    end
end
