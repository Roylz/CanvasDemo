class CreateRectangles < ActiveRecord::Migration
  def up
    create_table :rectangles do |t|
      t.integer :width, :null => false
      t.integer :height, :null => false
    end
    create_citier_view(Rectangle)
  end

  def down
    drop_citier_view(Rectangle)
    drop_table :rectangles
  end
end
