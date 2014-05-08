class AddIsFastpassToAttraction < ActiveRecord::Migration
  def self.up
    add_column :attractions, :is_fastpass, :integer
  end

  def self.down
    remove_column :attractions, :is_fastpass
  end
end
