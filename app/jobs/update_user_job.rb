class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts 'UPDATING THE USER'
    # @user.update_with_an_api - CLEARBIT
    sleep 2
    puts "#{user.email} has been updated succesfully"
  end
end
