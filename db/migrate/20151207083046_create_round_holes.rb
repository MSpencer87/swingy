class CreateRoundHoles < ActiveRecord::Migration
  def change
    create_table :round_holes do |t|
      t.integer :round_id
      t.integer :course_id
      t.integer :number
      t.integer :score
      t.integer :strokes
      t.integer :putts
      t.text :notes
      t.references :round
      t.references :course_hole, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
