# config/unicorn.rb
worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
timeout 15
preload_app true
stdout_path './log/unicorn.log'
stderr_path './log/unicorn_error.log'

app_home_path = ENV['SEBEROV_RAILS_HOME_PATH'] || nil

if app_home_path.nil?
 raise 'Please setup SEBEROV_RAILS_HOME_PATH environment variable! It must looks like: /home/user/rails_app_dir'
end

pid "#{app_home_path}/tmp/pids/unicorn.pid"
listen "#{app_home_path}/tmp/sockets/unicorn.sock", backlog: 64
listen 3001, tcp_nopush: true

before_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
