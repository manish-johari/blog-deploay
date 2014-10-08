# # Deployment server info
# set :application, "blog-deploay"      # "APP NAME"

# # SCM info
# set :repository,  "git@github.com:manish-johari/blog-deploay.git"  # "GIT REMOTE REPO URL"
# #set :scm,         :git

# set :deploy_to, "/home/kiwitech/rails_projects/self_learning"   # the destination dir



# # set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# # Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
# set :branch, '2_setup_new_project_on_gitHub'

# set :use_sudo, false

# set :rails_env, 'development'

# # General config stuff
# set :keep_releases, 4

# role :web, '127.0.0.1'          # Your HTTP server, Apache/etc
# role :app, '127.0.0.1'          # This may be the same as your `Web` server
# #role :db,  "127.0.0.1", :primary => true # This is where Rails migrations will run
# role :db, '127.0.0.1'

# set :scm, :git

# #set :deploy_via, :copy


# # if you want to clean up old releases on each deploy uncomment this:
# # after "deploy:restart", "deploy:cleanup"

# # if you're still using the script/reaper helper you will need
# # these http://github.com/rails/irs_process_scripts

# # If you are using Passenger mod_rails uncomment this:
# # namespace :deploy do
# #   task :start do ; end
# #   task :stop do ; end
# #   task :restart, :roles => :app, :except => { :no_release => true } do
# #     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
# #   end
# # end

set :application, "blog-deploay"
set :repository,  "git@github.com:manish-johari/blog-deploay.git"

set :branch, '2_setup_new_project_on_gitHub'

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "localhost"                          # Your HTTP server, Apache/etc
role :app, "localhost"                          # This may be the same as your `Web` server
role :db,  "localhost", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

set :use_sudo, false
set :deploy_to, "/home/kiwitech/rails_projects/self_learning"
set :keep_releases, 4