# coding: utf-8

User.create!(name: "管理者",
             email: "sample@email.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

50.times do |n|             
  name = Faker::Movies::StarWars.character
  email = "sample#{n+1}@email.com"
  password = "password"

  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end