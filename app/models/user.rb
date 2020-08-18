class User < ApplicationRecord
  has_many :user_real_estates
  has_many :real_estates, through: :user_real_estates
end
