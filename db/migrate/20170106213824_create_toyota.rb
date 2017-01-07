class CreateToyota < ActiveRecord::Migration
  def change
    create_table :toyota do |t|
      t.integer :year
      t.string :model
      t.integer :acceleration
      t.integer :braking

      t.timestamps null: false
    end
  end
end
