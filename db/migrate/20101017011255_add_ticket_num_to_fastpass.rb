class AddTicketNumToFastpass < ActiveRecord::Migration
  def self.up
    add_column :fastpasses, :ticket_num, :integer
  end

  def self.down
    remove_column :fastpasses, :ticket_num
  end
end
