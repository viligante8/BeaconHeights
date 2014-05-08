class CreateAttractions < ActiveRecord::Migration
  def self.up
    create_table :attractions do |t|
      t.string :name
      t.string :type
      t.integer :min_height
      t.integer :fastpass
      t.decimal :fee
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :attractions
  end
end
