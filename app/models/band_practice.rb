class BandPractice < ActiveRecord::Base
  belongs_to :band
  belongs_to :band_practice_location
end
