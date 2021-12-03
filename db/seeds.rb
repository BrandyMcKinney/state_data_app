# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
CSV.foreach(Rails.root.join("lib/tasks/abbreviations.csv"), headers: true) do |row|
  State.create({
    name: row[0],
    abbreviation: row[2],
  })
end
