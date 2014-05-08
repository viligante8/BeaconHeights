class AddMaxTixHourToAttraction < ActiveRecord::Migration
  def self.up
    add_column :attractions, :max_tix_hour, :integer
  end

  def self.down
    remove_column :attractions, :max_tix_hour
  end
end
