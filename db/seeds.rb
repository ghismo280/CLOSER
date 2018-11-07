# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# DELETE -------------------------------
puts 'Deleting database'

Match.destroy_all
Interest.destroy_all
User.destroy_all

# USERS ----------------------------

puts "Creating users..."

damian = User.create!(
    username: "Damian Le Nouaille",
    picture_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/kwwqtvqbs8tb8vhhcpy2.jpg",
    birthdate: 30.years.ago,
    email: "a@closerapp.life",
    password: '123456',
  )

marco = User.create!(
    username: "Marco Ranieri",
    picture_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/oum9xg0ts92fabm4ticw.jpg",
    birthdate: 29.years.ago,
    email: "b@closerapp.life",
    password: '123456',
  )

francesco = User.create!(
    username: "Francesco Ecclesie",
    picture_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/ulwgqfs7blnmycgmowqu.jpg",
    birthdate: 28.years.ago,
    email: "c@closerapp.life",
    password: '123456',
  )

arbi = User.create!(
    username: "Arbi Velaj",
    picture_url: "https://media.licdn.com/dms/image/C5603AQFPQCncNKk7CQ/profile-displayphoto-shrink_200_200/0?e=1545868800&v=beta&t=XykQg1Vrf2p7pOYGlaVrdECqaqNNK8pQCsoR1wa5s7U",
    birthdate: 27.years.ago,
    email: "d@closerapp.life",
    password: '123456',
  )

elon = User.create!(
    username: "Elon Musk",
    picture_url: "https://thumbor.forbes.com/thumbor/200x200/filters%3Aformat%28jpg%29/https://specials-images.forbesimg.com/dam/imageserve/974773028/0x0.jpg?fit=scale",
    birthdate: 40.years.ago,
    email: "e@closerapp.life",
    password: '123456',
  )

User.create!(
    username: "Steve Jobs",
    picture_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRen3hG7WFTdhQNU1q7D4bWLfoq5CcJtlXYJqlHoqq_SQNUn9i3",
    birthdate: 50.years.ago,
    email: "f@closerapp.life",
    password: '123456',
  )

bill = User.create!(
    username: "Bill Gates",
    picture_url: "https://media.licdn.com/dms/image/C5603AQHv9IK9Ts0dFA/profile-displayphoto-shrink_200_200/0?e=1542240000&v=beta&t=uO7-rCoZJ68jCnwNG76pxxdFRkI785Ys9ZTeNBzrQIE",
    birthdate: 60.years.ago,
    email: "g@closerapp.life",
    password: '123456',
  )

jeff = User.create!(
    username: "Jeff Besos",
    picture_url: "https://media.licdn.com/dms/image/C560BAQGbsqZVDyPAlw/company-logo_200_200/0?e=2159024400&v=beta&t=DbMQLMx4NdZ2uTPCpkW_LTWxCKuqH6HqEWkNoiLNJ7k",
    birthdate: 50.years.ago,
    email: "h@closerapp.life",
    password: '123456',
  )

jeff_ = User.create!(
    username: "Jeff Weiner",
    picture_url: "https://cdn.lynda.com/authors/4873327_200x200_thumb.jpg",
    birthdate: 45.years.ago,
    email: "i@closerapp.life",
    password: '123456',
  )

sundar = User.create!(
    username: "Sundar Pichai",
    picture_url: "https://cdn.japantimes.2xx.jp/wp-content/uploads/2018/11/b-alphabet-a-20181102-200x200.jpg",
    birthdate: 55.years.ago,
    email: "j@closerapp.life",
    password: '123456',
  )

# QUESTIONS ----------------------------

puts "Creating questions..."

QUESTIONS = [
  {
  question: "Are you looking for a flatmate?", # question_id = 0
  display: "I'm looking for a flatmate"
  },
  {
  question: "Do you have a house to share?", # question_id = 1
  display: "I have a house to share"
  },
  {
  question: "Are you looking for a parking spot to rent?", # question_id = 2
  display: "I'm looking for a parking spot to rent"
  },
  {
  question: "Do you have a parking spot to rent?", # question_id = 3
  display: "I have a parking spot to rent"
  },
  {
  question: "Do you feel like talking about Red dead redemption?", # question_id = 4
  display: "I feel like talking about Red dead redemption"
  },
  {
  question: "Do you feel like talking about Artificial Intelligence?", # question_id = 5
  display: "I feel like talking about Artificial Intelligence"
  },
  {
  question: "Do you feel like talking about Black Mirror?", # question_id = 6
  display: "I feel like talking about Black Mirror"
  },
  {
  question: "Do you feel like talking about The Simpsons?", # question_id = 7
  display: "I feel like talking about The Simpsons"
  },
  {
  question: "Do you feel like talking about Cars", # question_id = 8
  display: "I feel like talking about Cars"
  },
  {
  question: "Are you looking for someone to play PlayStation 4 with?", # question_id = 9
  display: "I'm looking for someone to play PlayStation 4 with"
  },
  {
  question: "Are you looking for someone to go dancing with?", # question_id = 10
  display: "I'm looking for someone to go dancing with"
  },
  {
  question: "Are you looking for someone to do sports with?", # question_id = 11
  display: "I'm looking for someone to do sports with"
  },
  {
  question: "Are you looking for someone to go to the gym with?", # question_id = 12
  display: "I'm looking for someone to go to the gym with"
  },
  {
  question: "Are you looking for someone to go running with?", # question_id = 13
  display: "I'm looking for someone to go running with"
  },
  {
  question: "Are you looking for an investor for a project you are working on?", # question_id = 14
  display: "I'm looking for an investor for a project you are working on"
  },
  {
  question: "Are you looking for a business partner?", # question_id = 15
  display: "I'm looking for a business partner"
  },
]

# INTERESTS ----------------------------

puts "Creating interests..."

50.times do
  random = (0...QUESTIONS.size).to_a.sample
  Interest.create!(
    user: User.all.sample,
    question_id: random,
    answer: QUESTIONS[random][:display]
  )
end


# MATCHES -----------------------------

puts "Creating matches"

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
