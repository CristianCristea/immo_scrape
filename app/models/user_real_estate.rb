# frozen_string_literal: true

class UserRealEstate < ApplicationRecord
  belongs_to :user
  belongs_to :real_estate
end
