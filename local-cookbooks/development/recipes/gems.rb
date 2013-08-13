# install each gem
node.development.application.gems.each do |gem|
    gem_package "#{gem}" do
        action :install
    end
end
