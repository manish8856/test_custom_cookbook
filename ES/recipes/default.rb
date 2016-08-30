execute "install java" do
command "echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list"
end

execute "install java" do
command "apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886"
end

execute "install java" do
command "apt-get update -yes"
end

execute "install java" do
command "apt-get install --yes oracle-java7-installer"
end



