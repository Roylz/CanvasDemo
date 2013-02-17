class CreateGraphs < ActiveRecord::Migration
  def change
    create_table :graphs do |t|
      t.string :name, :null => false
      t.timestamps
    end
  end
end
