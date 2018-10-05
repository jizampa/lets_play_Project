class Player < ApplicationRecord
    has_many :park
    validates :name, :age, :email, presence: true

end
