execute "install java" do
  command "sudo apt-add-repository ppa:webupd8team/java"
end

execute " update apt" do
  command "sudo apt-get update -y"
end

execute "install java" do
  command "sudo apt-get install oracle-java8-installer"
end

