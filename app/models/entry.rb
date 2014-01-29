class Entry < ActiveRecord::Base
  attr_accessible :word

  has_many :definition
end
