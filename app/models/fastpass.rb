class Fastpass < ActiveRecord::Base
  default_scope :order => 'hour'
  has_one :attraction
  has_one :customer
end
