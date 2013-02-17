class Circle < Shape
  attr_accessible :radius 
  acts_as_citier

  validates_presence_of :radius
end
