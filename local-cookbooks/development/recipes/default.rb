# provisions global node packages
include_recipe 'development::npm'

# generate ssh-key
include_recipe 'development::ssh-key'

# install dotfiles
include_recipe 'development::dotfiles'
