class CreateTees < ActiveRecord::Migration
  def change
    create_table :tees do |t|
      t.integer :course_hole_id
      t.integer :pro
      t.integer :mens
      t.integer :womens
      t.references :course_hole, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
