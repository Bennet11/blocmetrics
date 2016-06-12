5.times do
  User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
end
users = User.all

10.times do
  RegisteredApplication.create!(
  user: users.sample,
  name: Faker::Lorem.sentence,
  url: Faker::Internet.url
  )
end
registered_applications = RegisteredApplication.all

40.times do
  Event.create!(
  registered_application: registered_applications.sample,
  name: Faker::Lorem.sentence
  )
end
events = Event.all
