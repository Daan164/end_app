class CreateSvaks < ActiveRecord::Migration
  def self.up
    create_table :svaks do |t|
      t.string :name_student
      t.string :name_vak
      t.integer :aantal_punten

      t.timestamps
    end
  end

  def self.down
    drop_table :svaks
  end
end
