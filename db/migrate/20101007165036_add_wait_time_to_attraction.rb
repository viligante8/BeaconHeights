class AddWaitTimeToAttraction < ActiveRecord::Migration
  def self.up
    add_column :attractions, :wait_time, :integer
  end

  def self.down
    remove_column :attractions, :wait_time
  end
end
