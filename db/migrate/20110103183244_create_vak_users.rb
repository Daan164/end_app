class CreateVakUsers < ActiveRecord::Migration
  def self.up
    create_table :vak_users do |t|
      t.string :name_vak
      t.string :name_docent

      t.timestamps
    end
  end

  def self.down
    drop_table :vak_users
  end
end
