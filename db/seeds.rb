require 'open-uri'
puts 'Destroying viri'
Virus.destroy_all

puts "creating viri"
virus = Virus.create!(
  name: 'Corona',
  banner_url: 'https://themindunleashed.com/wp-content/uploads/2020/01/coronavirus-and-corona-beer.png'
)

puts "creating hosts..."
10.times do
  url = open('http://le-wagon-tokyo.herokuapp.com/batches/363/student').read
  Host.create!(
    name: Faker::Name.name,
    infected_on: (Date.today - rand(1..10)),
    image_url: url,
    virus: virus
  )
end

puts "creating symptoms..."
symptoms = ['coughing', 'fever', 'sore throat', 'kidney failure', 'headache', 'libido loss']

symptoms.each do |symptom|
  Symptom.create!(name: symptom)
end



puts 'finished'
