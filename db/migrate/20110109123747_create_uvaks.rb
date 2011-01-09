class CreateUvaks < ActiveRecord::Migration
  def self.up
    create_table :uvaks do |t|
      t.string :name_user
      t.string :name_vak
      t.integer :aantal_uren

      t.timestamps
    end
  end

  def self.down
    drop_table :uvaks
  end
end
