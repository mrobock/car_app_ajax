class AddOwnerToTesla < ActiveRecord::Migration
  def change
    add_reference :teslas, :owner, index: true, foreign_key: true
  end
end
