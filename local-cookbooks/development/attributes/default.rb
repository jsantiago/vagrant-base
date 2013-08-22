# defines npm packages to install globally
default.development.application.npm_packages = {
    'grunt-cli' => '0.1.9',
    'bower'     => '1.1.1'
}

# defines apt packages to install
default.development.application.apt_packages = [
    'apache2-utils',
    'libxslt-dev',
    'libxml2-dev'
]

# defines gems to install
default.development.application.gems = [
    'aws-sdk'
]
