execute "install java" do
command "sudo apt-get install -y python-software-properties debconf-utils"
end

execute "install java" do
command "sudo add-apt-repository -y ppa:webupd8team/java"
end
execute "install java" do
command "sudo apt-get update -y"
end

execute "install java" do
command "echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections"
end

execute "install java" do
command "sudo apt-get install -y oracle-java8-installer"
end




