class Player < ApplicationRecord
    has_many :player_battle_arena
    has_many :parks, through: :player_battle_arena
    validates :name, :age, :email, presence: true

end
