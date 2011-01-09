class CreateAanwezighedens < ActiveRecord::Migration
  def self.up
    create_table :aanwezighedens do |t|
      t.string :student_name
      t.string :aanwezig
      t.string :vak
      t.date :datum

      t.timestamps
    end
  end

  def self.down
    drop_table :aanwezighedens
  end
end
