# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130217223817) do

  create_table "circles", :force => true do |t|
    t.integer "radius", :null => false
  end

  create_table "graphs", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rectangles", :force => true do |t|
    t.integer "width",  :null => false
    t.integer "height", :null => false
  end

  create_table "shapes", :force => true do |t|
    t.string   "type",       :null => false
    t.integer  "posx",       :null => false
    t.integer  "posy",       :null => false
    t.string   "fill"
    t.integer  "graph_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_view "view_circles", "CREATE VIEW \"view_circles\" AS SELECT shapes.id, type,posx,posy,fill,graph_id,created_at,updated_at,radius FROM shapes, circles WHERE shapes.id = circles.id", :force => true do |v|
    v.column :id
    v.column :type
    v.column :posx
    v.column :posy
    v.column :fill
    v.column :graph_id
    v.column :created_at
    v.column :updated_at
    v.column :radius
  end

  create_view "view_rectangles", "CREATE VIEW \"view_rectangles\" AS SELECT shapes.id, type,posx,posy,fill,graph_id,created_at,updated_at,width,height FROM shapes, rectangles WHERE shapes.id = rectangles.id", :force => true do |v|
    v.column :id
    v.column :type
    v.column :posx
    v.column :posy
    v.column :fill
    v.column :graph_id
    v.column :created_at
    v.column :updated_at
    v.column :width
    v.column :height
  end

end
