class AddPhotoToAttraction < ActiveRecord::Migration
  def self.up
    add_column :attractions, :photo, :string
  end

  def self.down
    remove_column :attractions, :photo
  end
end
