# provisions global node packages
node.development.application.npm_packages.each_pair do |pkg, ver|
    bash "npm install -g #{pkg}@#{ver}" do
        code <<-EOF
            npm install -g #{pkg}@#{ver}
        EOF
        not_if { ::File.exists?("/usr/local/lib/node_modules/#{pkg}") }
    end
end
