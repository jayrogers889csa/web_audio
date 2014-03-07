require 'faker'

User.delete_all
Event.delete_all

# Create 500 users
users = 50.times.map do
  User.create!( :first_name => Faker::Name.first_name,
                :last_name  => Faker::Name.last_name,
                :email      => Faker::Internet.email,
                :birthdate  => Date.today - 15.years - rand(20000).days,
                :password => "test",
                :password_confirmation => "test" )
end

10.times do
  start_time = Time.now + (rand(61) - 30).days
  end_time   = start_time + (1 + rand(6)).hours

  Event.create!( :creator_id => users[rand(users.length)].id,
                 :name       => Faker::Company.name,
                 :location   => "#{Faker::Address.city}, #{Faker::Address.state_abbr}",
                 :starts_at  => start_time,
                 :ends_at    => end_time )
end

EventAttendance.create!(attendee_id: 1, event_id: 5)
EventAttendance.create!(attendee_id: 1, event_id: 7)
EventAttendance.create!(attendee_id: 1, event_id: 4)
EventAttendance.create!(attendee_id: 1, event_id: 3)
EventAttendance.create!(attendee_id: 1, event_id: 9)
EventAttendance.create!(attendee_id: 1, event_id: 8)
EventAttendance.create!(attendee_id: 1, event_id: 13)
