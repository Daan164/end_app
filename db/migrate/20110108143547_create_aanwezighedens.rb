class CreateAanwezighedens < ActiveRecord::Migration
  def self.up
    create_table :aanwezighedens do |t|
      t.string :name_student
      t.string :vak
      t.string :aanwezig
      t.date :datume

      t.timestamps
    end
  end

  def self.down
    drop_table :aanwezighedens
  end
end
