class CreateLeerlingens < ActiveRecord::Migration
  def self.up
    create_table :leerlingens do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :leerlingens
  end
end
