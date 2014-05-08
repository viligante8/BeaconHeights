class AddAttractionTypeToAttraction < ActiveRecord::Migration
  def self.up
    add_column :attractions, :attraction_type, :string
  end

  def self.down
    remove_column :attractions, :attraction_type
  end
end
