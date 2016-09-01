execute "install wget" do
  command "sudo apt-get install -y wget"
end

execute "install java" do
  cwd "/tmp"
  command "add-apt-repository ppa:webupd8team/java| apt-get update -y|apt-get install oracle-java8-installer -y"
end

execute "extract_some_tar" do
  cwd "/tmp"
  command "tar -xzvf jdk-8u102-linux-x64.tar.gz"
end


