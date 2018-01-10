class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.boolean :private
      t.integer :course_id
      t.integer :holes
      t.integer :score
      t.integer :best
      t.text :notes
      t.references :course, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
