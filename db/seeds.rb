# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Event.destroy_all

User.create!(name: "Stormy", 'admin@admin.com', password: "Password8*")


dig = %w[vomiting hungry bloated normal]
flow = ['light', 'moderate', 'heavy', 'super_heavy']
energy = %w[tired normal energetic]

100.times do |i|
  Events::FlowEvent.create!(user: User.first, value: flow.sample, date: (rand(1..10) * i).days.ago)
  Events::DigestionEvent.create!(user: User.first, value: dig.sample, date: (rand(1..10) * i).days.ago)
  Events::EnergyEvent.create!(user: User.first, value: energy.sample, date: (rand(1..10) * i).days.ago)
end