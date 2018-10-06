class Park < ApplicationRecord
    validates :name, presence: true
    has_many :players, through: :player_battle_arena
    has_many :player_battle_arena
    
end
