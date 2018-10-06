class CreateArenas < ActiveRecord::Migration[5.2]
  def change
    create_table :arenas do |t|
      t.integer :player_id
      t.integer :park_id

      t.timestamps
    end
  end
end
