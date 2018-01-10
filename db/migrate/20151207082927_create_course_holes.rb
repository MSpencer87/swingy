class CreateCourseHoles < ActiveRecord::Migration
  def change
    create_table :course_holes do |t|
      t.integer :course_id
      t.integer :number
      t.integer :par
      t.integer :distance
      t.integer :rating
      t.text :notes
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
