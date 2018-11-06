# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS ----------------------------

puts "Creating users..."

User.create!(
    username: "Damian Le Nouaille",
    picture_url: "https://www.google.it/imgres?imgurl=https%3A%2F%2Fres.cloudinary.com%2Fwagon%2Fimage%2Fupload%2Fc_fill%2Cg_face%2Ch_200%2Cw_200%2Fkwwqtvqbs8tb8vhhcpy2.jpg&imgrefurl=https%3A%2F%2Fwww.lewagon.com%2Fmilan%3Ftestimonial_page%3D4&docid=LG7MeOcfuL6-tM&tbnid=esCLRGOVugQpFM%3A&vet=10ahUKEwiG5NPR97_eAhXNyIUKHR-DDowQMwg7KAgwCA..i&w=200&h=200&bih=589&biw=1299&q=francesco%20ecclesie%20linkedin%20le%20wagon&ved=0ahUKEwiG5NPR97_eAhXNyIUKHR-DDowQMwg7KAgwCA&iact=mrc&uact=8",
    birthdate: 30.years.ago,
    email: "a@closerapp.life",
    password: '123456',
  )

User.create!(
    username: "Marco Ranieri",
    picture_url: "https://www.google.it/imgres?imgurl=https%3A%2F%2Fres.cloudinary.com%2Fwagon%2Fimage%2Fupload%2Fc_fill%2Cg_face%2Ch_200%2Cw_200%2Foum9xg0ts92fabm4ticw.jpg&imgrefurl=https%3A%2F%2Fwww.lewagon.com%2Fdemoday%2F131&docid=xUxGMpiQbnh0lM&tbnid=_GISiW4pBBKF0M%3A&vet=10ahUKEwjOjP2j-L_eAhWmzoUKHczMD5cQMwg6KAIwAg..i&w=200&h=200&bih=589&biw=1299&q=marco%20ranieri%20linkedin%20le%20wagon&ved=0ahUKEwjOjP2j-L_eAhWmzoUKHczMD5cQMwg6KAIwAg&iact=mrc&uact=8",
    birthdate: 29.years.ago,
    email: "b@closerapp.life",
    password: '123456',
  )

User.create!(
    username: "Francesco Ecclesie",
    picture_url: "https://www.google.it/imgres?imgurl=https%3A%2F%2Fres.cloudinary.com%2Fwagon%2Fimage%2Fupload%2Fc_fill%2Cg_face%2Ch_200%2Cw_200%2Fulwgqfs7blnmycgmowqu.jpg&imgrefurl=https%3A%2F%2Fwww.lewagon.com%2Fmilan&docid=u4RUSstlJ_kCUM&tbnid=GR0BWQwfcOxltM%3A&vet=10ahUKEwi01ZSv-L_eAhXNyIUKHR-DDowQMwhDKBAwEA..i&w=200&h=200&bih=589&biw=1299&q=francesco%20ecclesie%20linkedin%20le%20wagon&ved=0ahUKEwi01ZSv-L_eAhXNyIUKHR-DDowQMwhDKBAwEA&iact=mrc&uact=8",
    birthdate: 28.years.ago,
    email: "c@closerapp.life",
    password: '123456',
  )

User.create!(
    username: "Arbi Velaj",
    picture_url: "https://www.google.it/imgres?imgurl=https%3A%2F%2Fmedia.licdn.com%2Fdms%2Fimage%2FC5603AQFPQCncNKk7CQ%2Fprofile-displayphoto-shrink_200_200%2F0%3Fe%3D1545868800%26v%3Dbeta%26t%3DXykQg1Vrf2p7pOYGlaVrdECqaqNNK8pQCsoR1wa5s7U&imgrefurl=https%3A%2F%2Fie.linkedin.com%2Fpub%2Fdir%2F%2B%2FVelaj&docid=0xB6uML5VS4_fM&tbnid=CFT2bImbuo_MLM%3A&vet=10ahUKEwjjxdO7-L_eAhUryoUKHSRkAq8QMwgyKAEwAQ..i&w=200&h=200&bih=589&biw=1299&q=arbi%20velaj%20linkedin%20le%20wagon&ved=0ahUKEwjjxdO7-L_eAhUryoUKHSRkAq8QMwgyKAEwAQ&iact=mrc&uact=8",
    birthdate: 27.years.ago,
    email: "d@closerapp.life",
    password: '123456',
  )

User.create!(
    username: "Elon Musk",
    picture_url: "https://www.google.it/imgres?imgurl=https%3A%2F%2Fthumbor.forbes.com%2Fthumbor%2F200x200%2Ffilters%253Aformat%2528jpg%2529%2Fhttps%3A%2F%2Fspecials-images.forbesimg.com%2Fdam%2Fimageserve%2F974773028%2F0x0.jpg%3Ffit%3Dscale&imgrefurl=https%3A%2F%2Fwww.forbes.com%2Fprofile%2Flee-fixel%2F&docid=KZh7Upn6c0i5eM&tbnid=q4NixR5kpCNyAM%3A&vet=10ahUKEwjpvMX3-L_eAhUQmRoKHReyAbMQMwhMKA0wDQ..i&w=200&h=200&bih=589&biw=1299&q=elon%20musk%20linkedin%20le%20wagon%20200x200&ved=0ahUKEwjpvMX3-L_eAhUQmRoKHReyAbMQMwhMKA0wDQ&iact=mrc&uact=8",
    birthdate: 40.years.ago,
    email: "e@closerapp.life",
    password: '123456',
  )

User.create!(
    username: "Steve Jobs",
    picture_url: "https://www.google.it/imgres?imgurl=https%3A%2F%2Fmedia.licdn.com%2Fdms%2Fimage%2FC5603AQEPXE_MNPrIdg%2Fprofile-displayphoto-shrink_200_200%2F0%3Fe%3D1530748800%26v%3Dbeta%26t%3DLV_qvfhNnJoZ-JJyAxhjLWX6b_5-cIrDmaSOrmL72X8&imgrefurl=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fsteve-jobs-47358646&docid=sWGAfNW6sgpXrM&tbnid=BDzuEbizV8gEVM%3A&vet=10ahUKEwjUsKnO-b_eAhUdgM4BHbnLAZQQMwgpKAAwAA..i&w=200&h=200&itg=1&bih=589&biw=1299&q=steve%20jobs%20linkedin%20200x200&ved=0ahUKEwjUsKnO-b_eAhUdgM4BHbnLAZQQMwgpKAAwAA&iact=mrc&uact=8",
    birthdate: 50.years.ago,
    email: "f@closerapp.life",
    password: '123456',
  )

User.create!(
    username: "Bill Gates",
    picture_url: "https://www.google.it/imgres?imgurl=https%3A%2F%2Fmedia.licdn.com%2Fdms%2Fimage%2FC5603AQHv9IK9Ts0dFA%2Fprofile-displayphoto-shrink_200_200%2F0%3Fe%3D1542240000%26v%3Dbeta%26t%3DuO7-rCoZJ68jCnwNG76pxxdFRkI785Ys9ZTeNBzrQIE&imgrefurl=https%3A%2F%2Fsz.linkedin.com%2Fpub%2Fbill-gates%2F70%2F388%2F115%3Ftrk%3Dseokp-post-author-name&docid=7QOtdtpxgjsZPM&tbnid=RDQjND_408mKMM%3A&vet=10ahUKEwjGtPjb-b_eAhUCxIUKHa7BDbcQMwg0KAAwAA..i&w=200&h=200&itg=1&bih=589&biw=1299&q=bill%20gates%20linkedin%20200x200&ved=0ahUKEwjGtPjb-b_eAhUCxIUKHa7BDbcQMwg0KAAwAA&iact=mrc&uact=8",
    birthdate: 60.years.ago,
    email: "g@closerapp.life",
    password: '123456',
  )

User.create!(
    username: "Jeff Besos",
    picture_url: "https://www.google.it/imgres?imgurl=https%3A%2F%2Fmedia.licdn.com%2Fdms%2Fimage%2FC560BAQGbsqZVDyPAlw%2Fcompany-logo_200_200%2F0%3Fe%3D2159024400%26v%3Dbeta%26t%3DDbMQLMx4NdZ2uTPCpkW_LTWxCKuqH6HqEWkNoiLNJ7k&imgrefurl=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2Fjeff-bezos-news&docid=58t-yHT81Bc46M&tbnid=HNB-Scv-AWapAM%3A&vet=10ahUKEwjXiJ7w-b_eAhUN3xoKHbtDD4AQMwhHKAcwBw..i&w=200&h=200&bih=589&biw=1299&q=jeff%20besos%20linkedin%20200x200&ved=0ahUKEwjXiJ7w-b_eAhUN3xoKHbtDD4AQMwhHKAcwBw&iact=mrc&uact=8",
    birthdate: 50.years.ago,
    email: "h@closerapp.life",
    password: '123456',
  )

User.create!(
    username: "Jeff Weiner",
    picture_url: "https://www.google.it/imgres?imgurl=https%3A%2F%2Fcdn.lynda.com%2Fauthors%2F4873327_200x200_thumb.jpg&imgrefurl=https%3A%2F%2Fwww.linkedin.com%2Flearning%2Finstructors%2Fjeff-weiner&docid=wbHA9XkWcdMIgM&tbnid=ozglcZzTXXhG4M%3A&vet=10ahUKEwiir_XI-r_eAhWDgM4BHUMjAR0QMwg5KAAwAA..i&w=200&h=200&bih=589&biw=1299&q=jeff%20weiner%20linkedin%20200x200&ved=0ahUKEwiir_XI-r_eAhWDgM4BHUMjAR0QMwg5KAAwAA&iact=mrc&uact=8",
    birthdate: 45.years.ago,
    email: "i@closerapp.life",
    password: '123456',
  )

User.create!(
    username: "Sundar Pichai",
    picture_url: "https://www.google.it/imgres?imgurl=https%3A%2F%2Fcdn.japantimes.2xx.jp%2Fwp-content%2Fuploads%2F2018%2F11%2Fb-alphabet-a-20181102-200x200.jpg&imgrefurl=https%3A%2F%2Fwww.japantimes.co.jp%2Fnews%2F2018%2F11%2F01%2Fbusiness%2Fanother-exec-minus-golden-parachute-amid-sex-harassment-tension-google%2F&docid=jUe2Z1oPFwZ3KM&tbnid=KK7APPJ1ihiR_M%3A&vet=10ahUKEwiE7fTu-r_eAhUIdxoKHZTVBZgQMwg7KAIwAg..i&w=200&h=200&bih=589&biw=1299&q=sundar%20pichai%20linkedin%20200x200&ved=0ahUKEwiE7fTu-r_eAhUIdxoKHZTVBZgQMwg7KAIwAg&iact=mrc&uact=8",
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
  Interest.create!(
    user: User.all.sample,
    question_id: QUESTIONS[(0...QUESTIONS.size).to_a.sample],
    answer: [true,false].sample
  )
end

