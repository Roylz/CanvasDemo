class Graph < ActiveRecord::Base
  attr_accessible :name
  has_many :shapes

  validates_presence_of :name
end
