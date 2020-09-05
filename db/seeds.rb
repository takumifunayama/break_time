# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
30.times do |n|
  # usersのダミーデータの生成
  id = n+1
  email = Faker::Internet.email
  name = Gimei.unique.name.kanji
  password = "pass"

  User.create!(
    id: id,
    email: email,
    name: name,
    password: password,
    password_confirmation: password
  )

  content = Faker::Games::Pokemon.name
  user_id = User.offset(rand(User.count)).first.id

    Post.create!(
      id: id,
      content: content,
      user_id: user_id
    )
end