class CreateCourseNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :course_notes do |t|
      t.references :course, null: false, foreign_key: true
      t.references :note, null: false, foreign_key: true

      t.timestamps
    end
  end
end
