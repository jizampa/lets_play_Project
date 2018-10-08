class Arena < ApplicationRecord
    belongs_to :park
    belongs_to :player

    validates :player_id, presence: true
    validates :park_id, presence: true
 
end
