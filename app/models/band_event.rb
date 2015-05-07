class BandEvent < ActiveRecord::Base
  belongs_to :band
  belongs_to :event
  belongs_to :stay
  belongs_to :tour
end
