# Подключаем необходимые библиотеки
require 'rvm/capistrano'         # Для работы RVM
require 'bundler/capistrano'     # Для работы Bundler

################
# Разные опции #
################
secrets = YAML.load_file("config/secrets.yml")
ssh_options[:forward_agent] = true # Для авторизации по ssh-ключам
default_run_options[:pty]   = true # Password required

######################
# Настройки серверов #
######################
set :user,                'astronz'         # Имя пользователя на сервере
set :server_master_host,  'w1.feedman.ru'   # Боевой сервер

# Для авторизации на сервере через ssh-ключ
set :server_master, "#{user}@#{server_master_host}"

set :branch, 'master'
set :rails_env, 'production'
set :server_name, 'w1.feedman.ru'
server server_master, :web, :app, :db, primary: true

# Настройки для Nginx
set :sudo_user,           'astronz'
set :server_name,         fetch(:server_name, 'w1.feedman.ru')

########################
# Настройки приложения #
########################
set :application,     'statek-rails'                          # Название приложения
set :deploy_to,       "/home/#{user}/www/#{application}"      # Каталог приложения
set :use_sudo,        false                                   # Не используем sudo
set :bundle_dir,      File.join(fetch(:shared_path), 'gems')  # Каталог для гемов
set :bundle_without,  [:development, :test]                   # Не устанавливать пакеты для разработки и тестирования

#########################
# Настройки репозитория #
#########################
set :scm,                   :git                                  # Используем git
set :repository,            "git@github.com:laminelli/statek-rails.git" # Путь до репозитория
set :deploy_via,            :remote_cache                         # Используем кэш
set :git_enable_submodules, true                                  # Включаем поддержку sub-модулей

#################
# Настройки RVM #
#################
set :rvm_ruby_string,   secrets['global']['env']['current_ruby']          # Какая версия Ruby и какой gemset будем использовать
set :rvm_type,          :user                                             # Если RVM установлен глобально, то стоит указать :system
set :bundle_cmd,        "rvm use #{rvm_ruby_string} do bundle"            # Используем RVM для запуска bundle
set :rake,              "rvm use #{rvm_ruby_string} do bundle exec rake --trace"  # Используем RVM для запуска rake


#####################
# Настройки Unicorn #
#####################
set :unicorn_conf, "#{deploy_to}/current/config/unicorn.rb"   # Путь до конфига Unicorn
set :unicorn_pid,  "#{deploy_to}/shared/pids/unicorn.pid"     # Где храним PID-файл Unicorn



############
# Триггеры #
############
before 'deploy:setup',  'rvm:install_rvm', 'rvm:install_ruby'   # Устанавливаем RVM и Ruby
after 'deploy:setup',   'nginx:setup', 'nginx:reload'           # Настраиваем и перезапускаем Nginx
after 'deploy',         'rvm:trust_rvmrc'
after 'deploy',         'deploy:cleanup'                        # Храним только 5 последних релизов

#####################
# Задачи capistrano #
#####################

load 'config/recipes/base'
load 'config/recipes/nginx'
load 'config/recipes/unicorn'
load 'config/recipes/check'

#################
# Разные методы #
#################

namespace :rvm do
  task :trust_rvmrc do
    run "rvm rvmrc trust #{release_path}"
  end
end

# Проверка на существование файла или директории
def remote_file_exists?(full_path)
  'true' == capture("if [ -e #{full_path} ]; then echo 'true'; fi").strip
end
