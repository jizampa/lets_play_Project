class CreatePlayerBattleArenas < ActiveRecord::Migration[5.2]
  def change
    create_table :player_battle_arenas do |t|

      t.timestamps
    end
  end
end
