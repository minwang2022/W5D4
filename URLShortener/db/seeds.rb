# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
    user1 = User.create!(email: 'CJ@gmail.com')
    user2 = User.create!(email: 'Flarnie@gmail.com')
    user3 = User.create!(email: 'Jeff@aol.com')
    user4 = User.create!(email: 'Georges@yahoo.com')
    user5 = User.create!(email: 'Ned@msn.com')

    shorturl1 = ShortenedUrl.create_short_url!(user1, "www.google.com")
    shorturl2 = ShortenedUrl.create_short_url!(user1, "www.yahoo.com")
    shorturl3 = ShortenedUrl.create_short_url!(user2, "www.appacademy.com")
    shorturl4 = ShortenedUrl.create_short_url!(user3, "www.reddit.com")
end