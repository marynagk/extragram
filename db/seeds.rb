# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development? then
    User.destroy_all # vs. .delete_all
    user = User.create! \
        username: 'world_of_engineering',
        email: 'world_of_engineering@example.com',
        password: 'password',
        password_confirmation: 'password'

    user.posts.create! description: 'world_of_engineering Industry Architecture #engineering'
end

if Rails.env.production? then
end
