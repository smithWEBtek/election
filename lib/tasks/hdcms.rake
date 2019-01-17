namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app election --confirm election
      heroku run rake db:migrate --app election
      heroku run rake db:seed --app election')	
  end
end
