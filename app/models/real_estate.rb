# frozen_string_literal: true

class RealEstate < ApplicationRecord
  has_many :user_real_estates
  has_many :users, through: :user_real_estates
end
