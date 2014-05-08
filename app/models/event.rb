class Event < ActiveRecord::Base
  default_scope :order => 'event_date'
  validates :name, :event_date, :event_time, :arena, :performers, :description, :event_type, :presence => true
end
