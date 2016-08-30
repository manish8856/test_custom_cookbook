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

execute "install es" do
  command <<-EOF
    wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
    echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list
 
sudo apt-get update
sudo apt-get -y install elasticsearch
EOF
end


execute "es.config.yml" do
  command "echo 'cluster.name: manish' >>  /etc/elasticsearch/elasticsearch.yml
end 
execute "set hostname " do 
  command "node.name: #{HOSTNAME}"
end

service "elasticsearch" do
  action :enable , :restart
end

execute "update-rc.d" do 



execute "do memory" do 
  command "echo '#{}" > /etc/elasticsearch/elasticsearch.ym"
end
execute "memory_heap_Settings" do
  commamd "
