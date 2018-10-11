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
    Park.find_or_create_by(name: dieson[i_parks]["park_name"])
#   new_park = Park.new( :name => dieson[i_parks]["park_name"])
    i_parks += 1
    # new_park.save!
end

i = 0
while i < 100
    new_player = Player.new( :name => Faker::FunnyName.unique.name,
                   :age => Faker::Number.between(10, 70),
                   :email => Faker::SiliconValley.email,
                   :phone => Faker::PhoneNumber.cell_phone)
    new_player.save!
    i += 1
    
end

players = Player.all
    
3.times do 
    players.each do |item|
    playerId = item.id
    parkId = Park.all.sample.id
    
    arena_new = Arena.new(:player_id => playerId,
        :park_id => parkId)
    arena_new.save!
        
    end
end