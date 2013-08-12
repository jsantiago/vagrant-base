# provisions global node packages
node.development.application.npm_packages.each_pair do |pkg, ver|
    bash "npm install -g #{pkg}@#{ver}" do
        code <<-EOF
            npm install -g #{pkg}@#{ver}
        EOF
    end
end
