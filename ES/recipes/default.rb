execute "install java" do
  command "add-apt-repository -y ppa:webupd8team/java
"
end

execute " update apt" do
  command "apt update -y"
end

execute "install java" do
  command "apt-get -y install oracle-java8-installer"
end

