class Player < ApplicationRecord
    has_many :arena
    has_many :parks, through: :arena
    validates :name, :age, :email, presence: true
    validates :name, uniqueness: true

end
