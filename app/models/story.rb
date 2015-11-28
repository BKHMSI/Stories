class Story < ActiveRecord::Base
  has_many :messages
end
