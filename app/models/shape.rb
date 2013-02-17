class Shape < ActiveRecord::Base
  attr_accessible :type, :posx, :posy
  acts_as_citier
  validates_presence_of :type, :posx, :posy
  belongs_to :graph
end
