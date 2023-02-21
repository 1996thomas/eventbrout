User.delete_all
Event.delete_all
Attendance.delete_all


5.times do 
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4), email: Faker::Name.last_name+"@yopmail.com", password:"testtest")
end

duration_time = [5,10,15,20,30,60]
price = [12,21,30]
users = User.all

5.times do 
  Event.create!(start_date: Faker::Date.between(from: '2023-09-23', to: '2024-09-25'), duration: duration_time[rand(0..5)], price: price[rand(0..2)], admin_id: users[rand(0..4)].id, location: Faker::Address.city, description: Faker::Lorem.sentence(word_count: 20, supplemental: true, random_words_to_add: 4), title:Faker::Lorem.sentence(word_count: 5, supplemental: true, random_words_to_add: 4))
end

users = User.all
events = Event.all

5.times do 
  Attendance.create!(strip_customer_id: Faker::IDNumber.valid, participant_id: users[rand(0..4)].id, event_id: events[rand(0..4)].id)
end