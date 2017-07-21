FactoryGirl.define do
  factory(:animal) do
    specie(["cat", "dog"].sample)
    breed(Faker::StarWars.specie)
    name(Faker::Zelda.character)
    age{rand(1..16)}
    bio(Faker::RickAndMorty.quote)
    likes(Faker::HitchhikersGuideToTheGalaxy.quote)
    dislikes(Faker::Simpsons.location)
    picture("/images/faker.png")
  end
end
