execute "install wget" do
  command "sudo apt-get install -y wget"
end

execute "install java" do
  cwd "/tmp"
  command "wget --no-check-certificate --no-cookies --header"Cookie: oraclelicense=accept-securebackup-cookie"http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.tar.gz"
end



