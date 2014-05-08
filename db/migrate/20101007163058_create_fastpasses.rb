class CreateFastpasses < ActiveRecord::Migration
  def self.up
    create_table :fastpasses do |t|
      t.integer :attractions_id
      t.integer :hour
      t.string :cust_id

      t.timestamps
    end
  end

  def self.down
    drop_table :fastpasses
  end
end
