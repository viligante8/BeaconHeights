class AddIsUsedToFastpass < ActiveRecord::Migration
  def self.up
    add_column :fastpasses, :is_used, :integer
  end

  def self.down
    remove_column :fastpasses, :is_used
  end
end
