class User < ApplicationRecord
  #authenticated :user, lambda { |u| u.admin? } do
  #  namespace :madmin do
  #  end
  #end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
