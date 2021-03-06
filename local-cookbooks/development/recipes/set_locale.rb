unless ENV["LANGUAGE"] == "en_US.UTF-8" && ENV["LANG"] == "en_US.UTF-8" && ENV["LC_ALL"] == "en_US.UTF-8"
    template "/etc/profile.d/lang.sh" do
        source  "lang.sh.erb"
        mode "0644"
        owner "root"
        group "root"
    end

    execute "locale-gen" do
        command "locale-gen en_US.UTF-8"
    end

    execute "dpkg-reconfigure-locales" do
        command "dpkg-reconfigure locales"
    end
end
