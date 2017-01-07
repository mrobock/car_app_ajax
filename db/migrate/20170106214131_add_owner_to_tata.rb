class AddOwnerToTata < ActiveRecord::Migration
  def change
    add_reference :tata, :owner, index: true, foreign_key: true
  end
end
