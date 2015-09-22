namespace :data do
  desc 'pull data from google'
  task pull: :environment do
    require 'chain_getter'
    ChainGetter.call
  end
end
