class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :email
      t.string :hashed_password
      t.string :salt
      t.string :name
      t.integer :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
