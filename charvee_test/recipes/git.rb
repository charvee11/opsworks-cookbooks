

#execute 'test' do
 #   cwd 'myapp-codecommit/myfiles'
 # command 'git clone https://'+node[:awscli][:GIT_USER]+':'+node[:awscli][:GIT_PASS]+'@bitbucket.org/charvee/node-jenkins-pipeline-test.git'
    #command 'git clone https://'+node[:awscli][:GIT_USER]+':'+node[:awscli][:GIT_PASS]+'@git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'
 # command '$(git describe --abbrev=0 --tags)'
  
 #puts "output is #{command}"

#end
	
# You can swap in some other resource like s3_file, the principle is the same.
#  source lazy {
#    git_describe = shell_out!('git describe --abbrev=0 --tags', cwd: 'myapp-codecommit/myfiles').stdout.strip
#    "https://s3.amazonaws.com/versiontags/"
    #"https://s3.amazonaws.com/versiontags/master-1.0.177.jar"
 # }
#end


#remote_file 'test2.jar' do
 # source lazy {
  #  git_describe = shell_out!('git describe --abbrev=0 --tags', cwd: 'node-jenkins-pipeline-test').stdout.strip
   #  "https://s3.amazonaws.com/versiontags/#{git_describe}"
     #"https://s3.amazonaws.com/versiontags/#{git_describe}.jar"
  #}
#end
include_recipe "nodejs"
include_recipe "pm2"

execute "start node app via PM2" do
  cwd "/test2"
  command "pm2 start hello.js"
end


#execute 'dep' do
 
 #source lazy {
 #   git_describe = shell_out!('git describe --abbrev=0 --tags', cwd: 'myapp-codecommit').stdout.strip
 #    "https://s3.amazonaws.com/versiontags/#{git_describe}.jar"
#  }

#end



#execute "package_xyz" do
#cwd "myapp-codecommit/myfiles"
#command <<-EOH
#last_tag=$(git describe --abbrev=0 --tags)
#EOH
#creates "opt/$last_tag"
#end





#'s3cmd get s3://versiontags/#{git_describe}.jar'
	#https://s3.amazonaws.com/versiontags/#{git_describe}.jar


# You can swap in some other resource like s3_file, the principle is the same.
#  source lazy {
#    git_describe = shell_out!('git describe --abbrev=0 --tags', cwd: '/path/to/myapp-codecommit/myfiles').stdout.strip
#    "https://something/path/to/myapp-#{git_describe}.jar"
 # }
#end





#puts 'charvee git example'

#include_recipe 'git'

#git "var/www/html/" do
 # repository "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit"
  #reference "master"
  #action :sync
#end


	#command 'echo "hello"'
	#command 'echo -e "protocol=https\npath=/v1/repos/myapp-codecommit\nhost=git-codecommit.us-east-1.amazonaws.com" | aws codecommit credential-helper get'
#	command 'git clone https://'+node[:awscli][:GIT_USER]+':'+node[:awscli][:GIT_PASS]+'@git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'



 # command 'git describe --abbrev=0 --tags'
    #command '$(git describe --abbrev=0 --tags)'
  
  #  command  `mkdir charvee`
  #  command  'mkdir punia'
#    command `cat pom.xml`
	#command 'myapp-codecommit'
	#command = `ls -latr`
	#command =`mkdir charvee`
	#command = `git describe --abbrev=0 --tags`

















#	command "git describe --abbrev=0 --tags"

    #command = 'ls -latr'
  #   command "git describe --abbrev=0 --tags > ~/test.txt"
	#output = `git describe --abbrev=0 --tags`
	#commond 'ls -latr'
	#last_tag = 'git describe --abbrev=0 --tags'
	#command 'echo Latest version: $last_tag'
	#so = shell_out(git describe --abbrev=0 --tags) # Returns a Mixlib::ShellOut object
    #output = so.stdout
    #command bash -c 'git describe --abbrev=0 --tags'

  #  output = `ls`
#puts "output is #{output}"

#	puts "output be ...... #{command}"

#	action :run
#end 
	#bash 'hi' do
    #cwd 'myapp-codecommit/myapp-codecommit'
    #code <<-EOH
    #echo a = $(git describe --abbrev=0 --tags)
    #EOH
 
#end
	
	#command 'git describe --abbrev=0 --tags'
	#action :run
	#command 'echo last_tag=git describe --abbrev=0 --tags> ~/test.txt'
	#command 'echo $last_tag'
  # command = git describe --abbrev=0 --tags
  # command_out = shell_out(command)

   #command 'last_tag=git describe --abbrev=0 --tags > ~/test.txt'
  #command 'echo '+last_tag=git describe --abbrev=0 --tags+' > ~/.test'

	#command 'echo $last_tag > ~/.test'
   # command 'echo "'+(git describe --abbrev=0 --tags)+'" > ~/etc/test.txt'
  #  command 'echo $output'
    



	
#end
#command 'vi etc/test.txt'
  #code 'echo "[credential] \nhelper = !aws --profile CodeCommitProfile codecommit credential-helper $@ \nUseHttpPath = true \n\n[user] \nemail = charvee@example.com \nname = testuser" > ~/.gitconfig'
 # command 'echo "[credentials] \nusername = '+ node[:awscli][:GIT_USER] +'\npassword = '+ node[:awscli][:GIT_PASS] +'" > ~/.credentials'
  # command 'echo "machine git-codecommit.us-east-1.amazonaws.com" >> ~/.netrc'
 #  command 'echo "login node[:awscli][:GIT_USER]" >> ~/.netrc'
 #  command 'echo "password node[:awscli][:GIT_PASS]" >> ~/.netrc'
  #command 'git clone -b master https://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'
   #command 'git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'
#  repository "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit"
#  reference "master"
#  action :sync
#end


#template "/tmp/.ssh/chef_ssh_deploy_wrapper.sh" do
 # source "chef_ssh_deploy_wrapper.sh.erb"
  #owner node[:base][:username]
  #mode 0770
#end

#template "/home/#{node[:base][:username]}/.ssh/id_rsa.pub" do
  #source "id_rsa.pub.erb"
  #owner node[:base][:username]
  #mode 0600
#end

#template "/home/#{node[:base][:username]}/.ssh/id_rsa" do
 # source "id_rsa.erb"
 # owner node[:base][:username]
 # mode 0600
#end




#ruby_block "something" do
#    block do
        #tricky way to load this Chef::Mixin::ShellOut utilities
#        Chef::Resource::RubyBlock.send(:include, Chef::Mixin::ShellOut)  
      #  cwd '/myapp-codecommit/myapp-codecommit'    
#        command = 'git describe --abbrev=0 --tags'
 #       command_out = shell_out(command)
 #       node.set['a'] = command_out.stdout
 #   end
#    action :create
#end