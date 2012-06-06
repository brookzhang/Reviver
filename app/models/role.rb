class Role < ActiveRecord::Base
  attr_accessible :code, :name ,:description ,:current_url
end
