# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i = 0
while i < 100
    new_player = Player.create( :name => Faker::FunnyName.name,
                   :age => Faker::Number.between(10, 70),
                   :email => Faker::SiliconValley.email,
                   :phone => Faker::PhoneNumber.cell_phone)
    i += 1
    end