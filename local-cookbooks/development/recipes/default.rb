# update locale language to be UTF8
include_recipe 'development::set_locale'

# install dependencies with apt
include_recipe 'development::apt'

# provisions global node packages
include_recipe 'development::npm'

# generate ssh-key
include_recipe 'development::ssh-key'

# install dotfiles
include_recipe 'development::dotfiles'

# install rake
include_recipe 'development::rake'

# install gems
include_recipe 'development::gems'

# install zsh
include_recipe 'development::zsh'
include_recipe 'development::prezto'
