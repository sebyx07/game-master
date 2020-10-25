desc 'Stop all containers'
task :stop do
  sh 'docker stop $(docker ps -a -q)'
end

desc 'Chown'
task :chown do
  sh "sudo chown $USER app -R"
end

desc 'ssh'
task :ssh do
  sh "ssh deploy@144.76.14.222"
end

desc "Enter binding.pry"
task :debug do
  opened_containers = `docker ps`.split("\n")
  backend = nil

  opened_containers.reverse_each do |c|
    line = c.split(" ")
    if line[1] == "game-master_app"
      backend = line.last
      break
    end
  end
  sh "docker attach #{backend}"
end

desc "Deploy"
task :deploy do
  sh "git add ."
  sh "git commit -m 'deploy'"
  sh "git subtree push --prefix app heroku master"
end
