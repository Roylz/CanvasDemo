class Rectangle < Shape
  attr_accessible :width, :height
  acts_as_citier
  validates_presence_of :width, :height
end
