execute "install wget" do
  command "sudo apt-get install -y wget"
end

execute "install java" do
  cwd "/tmp"
  command "wget --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.tar.gz"
end

execute "extract_some_tar" do
  cwd "/tmp"
  command "tar -xzvf jdk-8u102-linux-x64.tar.gz"
end

execute "install es" do
  command <<-EOF
    wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
    echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list|sudo apt-get update|sudo apt-get -y install elasticsearch
    EOF
end

execute "es.config.yml" do
  command "echo 'node.name: manish' >>  /etc/elasticsearch/elasticsearch.yml"
end 

execute "set hostname " do 
  command "node.name: #{:HOSTNAME}"
end

service "elasticsearch" do
  action :enable , :restart
end





