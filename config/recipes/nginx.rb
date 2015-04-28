set_default :scheme, rails_env == 'production' ? 'https' : 'http'

namespace :nginx do
  desc "Setup application in nginx"
  task "setup", :role => :web do
    template "nginx_conf.erb", "/tmp/nginx.conf"
    set :user, sudo_user
    run "#{sudo} mv /tmp/nginx.conf /etc/nginx/sites-available/#{application}"
    run "#{sudo} ln -fs /etc/nginx/sites-available/#{application} /etc/nginx/sites-enabled/#{application}"
  end

  desc "Reload nginx configuration"
  task :reload, :role => :web do
    set :user, sudo_user
    run "#{sudo} /etc/init.d/nginx reload"
  end
end