class CreateVaks < ActiveRecord::Migration
  def self.up
    create_table :vaks do |t|
      t.string :name
      t.string :tot_punten

      t.timestamps
    end
  end

  def self.down
    drop_table :vaks
  end
end
