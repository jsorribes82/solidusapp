# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

namespace :change_prices_db do
  desc "change the price of each product and show it on screen"

  task :change_price_to_10_more => :environment do
      Spree::Variant.all.each do |t|
        puts t.sku
        t.delay.update_attributes(cost_price: t.cost_price*0.1 + t.cost_price)
        puts t.cost_price
      end
  end
end
