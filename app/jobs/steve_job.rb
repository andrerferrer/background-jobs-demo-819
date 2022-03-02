class SteveJob < ApplicationJob
  queue_as :super_important

  def perform
    puts 'My first story is about love and loss'
    sleep 2
    puts 'My second story is about connecting the dots'
    sleep 2
    puts 'Stay Hungry Stay Foolish'
  end
end
