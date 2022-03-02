class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  after_save :update_user_with_clearbit
         
  private

  def update_user_with_clearbit
    UpdateUserJob.perform_later(self)
  end
end
