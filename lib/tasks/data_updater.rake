namespace :data_updater do

  desc 'Updates stock data for all stocks'
  task update_data: :environment do
    puts 'Running task'
    Stock.all.each do |stock|
      puts "Updateing: #{stock.label}"
      stock.create_data!
      sleep(3)
    end
    puts 'Ran task'
  end
end