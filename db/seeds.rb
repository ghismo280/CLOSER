# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# DELETE -------------------------------
puts 'Deleting database'

Match.delete_all
Interest.delete_all
User.delete_all


# This is a way to generate random coordinates in a certain range (padding)
HERE = [45.465803, 9.174176]
PADDING = 0.2

def generate_coordinate
  latitudes = [HERE[0] - rand(0..PADDING), HERE[0] + rand(0..PADDING)]
  longitudes = [HERE[1] - rand(0..PADDING), HERE[1] + rand(0..PADDING)]

  [latitudes.sample, longitudes.sample]
end


# USERS ----------------------------

puts "Creating users..."

damian = User.create!(
    username: "Damian Le Nouaille",
    remote_photo_url: "https://res.cloudinary.com/wagon/image/upload/kwwqtvqbs8tb8vhhcpy2.jpg",
    birthdate: 29.years.ago,
    email: "a@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

marco = User.create!(
    username: "Marco Ranieri",
    remote_photo_url: "https://res.cloudinary.com/wagon/image/upload/oum9xg0ts92fabm4ticw.jpg",
    birthdate: 29.years.ago,
    email: "b@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

francesco = User.create!(
    username: "Francesco Ecclesie",
    remote_photo_url: "https://res.cloudinary.com/wagon/image/upload/ulwgqfs7blnmycgmowqu.jpg",
    birthdate: 28.years.ago,
    email: "c@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

arbi = User.create!(
    username: "Arbi Velaj",
    remote_photo_url: "https://media.licdn.com/dms/image/C5603AQFPQCncNKk7CQ/profile-displayphoto-shrink_200_200/0?e=1545868800&v=beta&t=XykQg1Vrf2p7pOYGlaVrdECqaqNNK8pQCsoR1wa5s7U",
    birthdate: 27.years.ago,
    email: "d@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

elon = User.create!(
    username: "Elon Musk",
    remote_photo_url: "https://s.yimg.com/ny/api/res/1.2/lseK7hX2FbGJM94BuezbHg--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/en-US/homerun/businessinsider.com/9ea607142652ea3bbd2f0792b3f6b821",
    birthdate: 40.years.ago,
    email: "e@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )


bill = User.create!(
    username: "Bill Gates",
    remote_photo_url: "https://www.105.net/resizer/659/-1/true/1495102372074.jpg--bill_gates_ai_giovani__ecco_come_migliorare_la_propria_vita.jpg?1495102376000",
    birthdate: 60.years.ago,
    email: "f@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

montemagno = User.create!(
    username: "Marco Montemagno",
    remote_photo_url: "https://www.newsly.it/wp-content/uploads/2017/02/marco-montemagno.jpg",
    birthdate: 42.years.ago,
    email: "g@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

elvia = User.create!(
    username: "Elvia Garcia",
    remote_photo_url: "https://avatars2.githubusercontent.com/u/42932791?v=4",
    birthdate: 24.years.ago,
    email: "h@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

luis = User.create!(
    username: "Luis Chagas",
    remote_photo_url: "https://avatars3.githubusercontent.com/u/42444184?v=4",
    birthdate: 37.years.ago,
    email: "i@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

angelo = User.create!(
    username: "Angelo Callari",
    remote_photo_url: "https://avatars2.githubusercontent.com/u/42140856?s=460&v=4",
    birthdate: 25.years.ago,
    email: "j@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

# INTERESTS ----------------------------

puts "Creating interests..."

User.all.each do |user|
  10.times do
    random = (0...Interest::QUESTIONS.size).to_a.sample
    if Interest.where(user: user, question_id:random).empty?
      Interest.create!(
        user: user,
        question_id: random,
        answer: "true",
      )
    end
  end
end


# MATCHES -----------------------------

puts "Creating matches..."

Match.create!(
    from_user: marco,
    to_user: francesco
    )

Match.create!(
    from_user: marco,
    to_user: arbi
    )

Match.create!(
    from_user: damian,
    to_user: marco
    )

Match.create!(
    from_user: angelo,
    to_user: marco
    )

Match.create!(
    from_user: elon,
    to_user: marco
    )

Match.create!(
    from_user: montemagno,
    to_user: marco
    )
