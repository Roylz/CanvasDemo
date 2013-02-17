class CreateShapes < ActiveRecord::Migration
  def change
    create_table :shapes do |t|
      t.string :type, :null => false
      t.integer :posx, :null => false
      t.integer :posy, :null => false
      t.string :fill
      t.references :graph
      t.timestamps
    end
  end
end
