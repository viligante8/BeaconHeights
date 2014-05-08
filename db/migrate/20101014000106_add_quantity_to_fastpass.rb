class AddQuantityToFastpass < ActiveRecord::Migration
  def self.up
    add_column :fastpasses, :quantity, :integer
  end

  def self.down
    remove_column :fastpasses, :quantity
  end
end
