namespace :users do

  desc 'Creating test data'
  task create: :environment do
    [*1..10].each do |i|
      User.create(name: Faker::Name.first_name, email: "user_#{i}@gmail.com",  password: '123123')
    end
  end

end