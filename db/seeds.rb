User.create!(name:  "Tuan Tran",
             email: "tuantv.nhnd@gmail.com",
             password:              "tuantuan",
             password_confirmation: "tuantuan",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end