class Band < ActiveRecord::Base
  has_many :band_members
  has_many :band_practices
  has_many :band_events
  has_many :events, :through => :band_events
  has_many :tours, :through => :events
  has_many :stays
end
