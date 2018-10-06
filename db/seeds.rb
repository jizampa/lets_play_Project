# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all
Park.destroy_all
Arena.destroy_all

json = File.read('/vagrant/rails/lets_play_Project/storage/tennis.json')
dieson = JSON.parse(json)
    
i_parks = 0
60.times do
    new_park = Park.create( :name => dieson[i_parks]["park_name"])
    i_parks += 1
end

i = 0
while i < 100
    new_player = Player.create( :name => Faker::FunnyName.name,
                   :age => Faker::Number.between(10, 70),
                   :email => Faker::SiliconValley.email,
                   :phone => Faker::PhoneNumber.cell_phone)
    i += 1
    end

    players = Player.all
    
    3.times do 
        players.each do |item|
        playerId = item.id
        parkId = Park.all.sample.id
       
        Arena.create(player_id: playerId,
            park_id: parkId)
            
      end
    end