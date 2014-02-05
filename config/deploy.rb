set :application, 'Hedy'
set :repo_url, 'git@github.com:excid3/myapp.git'

set :deploy_to, '/home/deploy/myapp'

set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :finishing, 'deploy:cleanup'
end
Now we need to open up our config/deploy/production.rb file to set the server IP address that we want to deploy to:

set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server '127.0.0.1', user: 'deploy', roles: %w{web app}