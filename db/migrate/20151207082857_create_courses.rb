class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :par
      t.float :rating
      t.integer :holes
      t.text :notes

      t.timestamps null: false
    end
  end
end
