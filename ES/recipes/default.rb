execute "install java" do
  command "add-apt-repository ppa:webupd8team/java -y"
end

execute " update apt" do
  command "apt update -y"
end

execute "install java" do
  command "apt-get install oracle-java8-installer -y"
end

