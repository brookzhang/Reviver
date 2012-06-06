class Unit < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :code, :name, :shortname, :region
end
