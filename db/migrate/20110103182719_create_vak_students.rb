class CreateVakStudents < ActiveRecord::Migration
  def self.up
    create_table :vak_students do |t|
      t.string :name_vak
      t.string :name_student
      t.integer :punten_student/vak

      t.timestamps
    end
  end

  def self.down
    drop_table :vak_students
  end
end
