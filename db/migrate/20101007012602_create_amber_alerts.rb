class CreateAmberAlerts < ActiveRecord::Migration
  def self.up
    create_table :amber_alerts do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :race
      t.string :hairColor
      t.text :description
      t.text :lastSeenLocation
      t.time :lastSeenTime
      t.time :submitTime
      t.string :photo

      t.timestamps
    end
  end

  def self.down
    drop_table :amber_alerts
  end
end
