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
PADDING = 0.5

def generate_coordinate
  latitudes = [HERE[0] - rand(0..PADDING), HERE[0] + rand(0..PADDING)]
  longitudes = [HERE[1] - rand(0..PADDING), HERE[1] + rand(0..PADDING)]

  [latitudes.sample, longitudes.sample]
end


# USERS ----------------------------

puts "Creating users..."

damian = User.create!(
    username: "Damian Le Nouaille",
    remote_photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/kwwqtvqbs8tb8vhhcpy2.jpg",
    birthdate: 30.years.ago,
    email: "a@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

marco = User.create!(
    username: "Marco Ranieri",
    remote_photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/oum9xg0ts92fabm4ticw.jpg",
    birthdate: 29.years.ago,
    email: "b@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

francesco = User.create!(
    username: "Francesco Ecclesie",
    remote_photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/ulwgqfs7blnmycgmowqu.jpg",
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
    remote_photo_url: "https://thumbor.forbes.com/thumbor/200x200/filters%3Aformat%28jpg%29/https://specials-images.forbesimg.com/dam/imageserve/974773028/0x0.jpg?fit=scale",
    birthdate: 40.years.ago,
    email: "e@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

steve = User.create!(
    username: "Steve Jobs",
    remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRen3hG7WFTdhQNU1q7D4bWLfoq5CcJtlXYJqlHoqq_SQNUn9i3",
    birthdate: 50.years.ago,
    email: "f@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

bill = User.create!(
    username: "Bill Gates",
    remote_photo_url: "https://media.licdn.com/dms/image/C5603AQHv9IK9Ts0dFA/profile-displayphoto-shrink_200_200/0?e=1542240000&v=beta&t=uO7-rCoZJ68jCnwNG76pxxdFRkI785Ys9ZTeNBzrQIE",
    birthdate: 60.years.ago,
    email: "g@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

jeff = User.create!(
    username: "Jeff Besos",
    remote_photo_url: "https://media.licdn.com/dms/image/C560BAQGbsqZVDyPAlw/company-logo_200_200/0?e=2159024400&v=beta&t=DbMQLMx4NdZ2uTPCpkW_LTWxCKuqH6HqEWkNoiLNJ7k",
    birthdate: 50.years.ago,
    email: "h@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

jeff_ = User.create!(
    username: "Jeff Weiner",
    remote_photo_url: "https://cdn.lynda.com/authors/4873327_200x200_thumb.jpg",
    birthdate: 45.years.ago,
    email: "i@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

sundar = User.create!(
    username: "Sundar Pichai",
    remote_photo_url: "https://cdn.japantimes.2xx.jp/wp-content/uploads/2018/11/b-alphabet-a-20181102-200x200.jpg",
    birthdate: 55.years.ago,
    email: "j@closerapp.life",
    password: '123456',
    latitude: generate_coordinate[0],
    longitude: generate_coordinate[1],
  )

# QUESTIONS ----------------------------

puts "Creating questions..."


# INTERESTS ----------------------------

puts "Creating interests..."

User.all.each do |user|
  5.times do
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
    from_user: jeff,
    to_user: marco
    )

Match.create!(
    from_user: elon,
    to_user: marco
    )

Match.create!(
    from_user: jeff_,
    to_user: marco
    )
