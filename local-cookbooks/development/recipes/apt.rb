# for each package, run apt-get install
node.development.application.apt_packages.each do |pkg|
    apt_package "#{pkg}" do
        action :install
    end
end
