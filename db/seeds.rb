User.delete_all
Event.delete_all


20.times do 
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4), email: "test@yopmail.com")
end

duration_time = [5,10,15,20,30,60]
price = [10,20,30]

10.times do 
  Event.create(start_date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'), duration: duration_time[rand(0..5)], price: price[rand(0..2)], location: Faker::Address.city, description: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4), title:Faker::Music::RockBand.name )
end

users = User.all
events = Event.all

10.times do 
  Attendance.create(strip_customer_id: Faker::IDNumber.valid, user_id: users[rand(0..19)].id, event_id: events[rand(0..9)].id)
end