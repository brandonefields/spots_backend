# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# t.string :name
# t.string :color
# t.string :breed
# t.integer :aggressivebehavior
# t.integer :speed
# t.float :size
# t.integer :sensitive
# t.datetime :lastupdated
# t.integer :sociability
# t.text :notes
# t.boolean :bitehistory
# t.boolean :reactive
# t.string :image

# t.timestamps

require 'faker'

Dog.destroy_all

50.times do 
    Dog.create(
        name: Faker::Creature::Dog.name,
        color: Faker::Color.color_name,
        breed: Faker::Creature::Dog.breed,
        aggressivebehavior: Faker::Number.between(from: 1, to: 10),
        speed: Faker::Number.between(from: 1, to: 10),
        size: Faker::Number.decimal(l_digits: 3, r_digits: 3),
        sensitive: Faker::Number.between(from: 1, to: 10),
        lastupdated: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
        sociability: Faker::Number.between(from: 1, to: 10),
        notes: Faker::Lorem.paragraph(sentence_count: 3),
        bitehistory: Faker::Boolean.boolean,
        reactive: Faker::Boolean.boolean,
        image: Faker::Movie.title
    )
end

