class AddOwnerToToyota < ActiveRecord::Migration
  def change
    add_reference :toyota, :owner, index: true, foreign_key: true
  end
end
