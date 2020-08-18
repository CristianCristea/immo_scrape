class CreateRealEstates < ActiveRecord::Migration[6.0]
  def change
    create_table :real_estates do |t|
      t.string :address
      t.decimal :price

      t.timestamps
    end
  end
end
