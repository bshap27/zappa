class BandPracticeLocation < ActiveRecord::Base
  has_many :band_practices
  belongs_to :band
end
