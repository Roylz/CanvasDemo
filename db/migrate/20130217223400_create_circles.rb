class CreateCircles < ActiveRecord::Migration
  def up
    create_table :circles do |t|
      t.integer :radius, :null => false
    end
    create_citier_view(Circle)
  end

  def down
    drop_citier_view(Circle)
    drop_table :circles
  end
end
