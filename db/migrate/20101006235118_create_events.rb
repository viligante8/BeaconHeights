class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.time :event_time
      t.string :arena
      t.string :performers
      t.string :description
      t.string :event_type

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
