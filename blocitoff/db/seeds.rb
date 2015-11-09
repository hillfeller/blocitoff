include RandomData

10.times do
  user = User.create!(

    name:     RandomData.random_name,
    email:    RandomData.random_email,
    password: RandomData.random_sentence
  )

end

users = User.all

50.times do
  Item.create!(
    user: users.sample,
    name:  RandomData.random_sentence
  )
end
items = Item.all



puts "Seed finished"
puts "#{Item.count} items created."
puts "#{User.count} users created."
