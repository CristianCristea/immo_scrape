# frozen_string_literal: true

class CreateUserRealEstates < ActiveRecord::Migration[6.0]
  def change
    create_table :user_real_estates do |t|
      t.belongs_to :user
      t.belongs_to :real_estate
      t.timestamps
    end
  end
end
