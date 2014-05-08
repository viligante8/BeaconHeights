class Attraction < ActiveRecord::Base
  belongs_to :fastpass
  default_scope :order => 'attraction_type'
end
