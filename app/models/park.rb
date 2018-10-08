class Park < ApplicationRecord
    validates :name, presence: true
    # validates :name, uniqueness: true
    
    has_many :players, through: :arena
    has_many :arena
    
end
