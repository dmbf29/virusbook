puts 'Destroying viri'
Virus.destroy_all

puts "creating viri"
virus = Virus.create!(
  name: 'Corona',
  banner_url: 'https://themindunleashed.com/wp-content/uploads/2020/01/coronavirus-and-corona-beer.png'
)

10.times do
  Host.create!(
    name: Faker::Name.name,
    infected_on: (Date.today - rand(1..10)),
    image_url: 'https://www.thispersondoesnotexist.com/image.jpg',
    virus: virus
  )
end

puts 'finished'
