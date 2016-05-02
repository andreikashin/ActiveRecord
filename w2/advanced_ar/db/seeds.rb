# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.destroy_all

Person.create! [
  { first_name: "a", last_name: "A", age: 0, login: "AA", pass: "0"},
  { first_name: "b", last_name: "B", age: 1, login: "BB", pass: "1"},
  { first_name: "c", last_name: "C", age: 2, login: "CC", pass: "2"},
  { first_name: "d", last_name: "D", age: 3, login: "DD", pass: "3"},
  { first_name: "e", last_name: "E", age: 4, login: "EE", pass: "4"},
  { first_name: "f", last_name: "D", age: 5, login: "FF", pass: "5"},
  { first_name: "g", last_name: "G", age: 6, login: "GG", pass: "6"}
]

Person.first.jobs.create! [
  { title: "Developer", company: "MS", position_id: "#1234" },
  { title: "Developer", company: "MS", position_id: "#1235" }
]

Person.last.jobs.create! [
  { title: "Developer", company: "MS", position_id: "#5432" },
  { title: "Developer", company: "MS", position_id: "#5433" }
]
