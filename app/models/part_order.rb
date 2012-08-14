class PartOrder < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :partnumber, :mapping_number, :name
end
