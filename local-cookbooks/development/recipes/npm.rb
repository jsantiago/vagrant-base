# provisions global node packages
node.development.application.npm_packages.each_pair do |pkg, ver|
    npm_package pkg do
        version ver
    end
end
