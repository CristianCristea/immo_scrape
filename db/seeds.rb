# frozen_string_literal: true

puts 'Cleaning DB'
User.destroy_all
RealEstate.destroy_all
UserRealEstate.destroy_all

puts 'Seeding'
users_data = (1..10).to_a.map { |n| { name: "Cris #{n}", age: 30 + n } }
real_estates_data = (1..20).to_a.map { |n| { address: "Home nr. #{n}", price: 100_000 + n } }

User.create!(users_data)
RealEstate.create!(real_estates_data)
User.all.each do |user|
  UserRealEstate.create(user: user, real_estate: RealEstate.all.sample)
end
puts 'Done!'
