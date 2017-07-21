Animal.destroy_all

25.times do |index|
  Animal.create!(specie: ["cat", "dog"].sample,
                 breed: Faker::StarWars.specie,
                 name: Faker::Zelda.character,
                 age: rand(1..18),
                 bio: Faker::RickAndMorty.quote,
                 likes: Faker::HitchhikersGuideToTheGalaxy.quote,
                 dislikes: Faker::Simpsons.location,
                 picture: "/images/faker.png"
                 )
end

p "Made #{Animal.all.length} animals"
