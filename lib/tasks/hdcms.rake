namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app swt-voters --confirm swt-voters
      heroku run rake db:migrate --app swt-voters
      heroku run rake db:seed --app swt-voters')	
  end
end
