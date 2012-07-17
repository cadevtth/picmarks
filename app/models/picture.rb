class Picture < ActiveRecord::Base
  attr_accessible :favorite, :notes, :url
end
