# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@prng = Random.new
15.times do
    User.create([{
        email: Faker::Internet.email,
        full_name: Faker::Name.name,
        password: "password",
        organization_id: @prng.rand(4)
    }])

    Kudo.create([{
        message: Faker::PrincessBride.quote,
        sender_id: @prng.rand(5),
        receiver_id: @prng.rand(10)
    }])


    Organization.create([{
        name: Faker::Job.field,
        description: Faker::Company.bs,
        user_id: @prng.rand(3)
    }])
end