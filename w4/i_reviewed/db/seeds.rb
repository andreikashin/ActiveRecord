# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all
Reviewer.destroy_all

Book.create! [
  { name: "Eloquent Ruby", author: "A" },
  { name: "Beginning Ruby", author: "B" },
  { name: "Metaprog Ruby", author: "C" },
  { name: "Design paterns", author: "D" },
  { name: "The ruby prog lang", author: "E" }
]

100.times { |index| Book.create! name: "Book#{index}", author: "Author#{index}"}

eloquent = Book.find_by name: "Eloquent Ruby"
eloquent.notes.create! [
  { title: "wow", note: "Great book WOW" },
  { title: "woohoo", note: "Great book woohoo" }
]

reviewers = Reviewer.create! [
  { name: "Joe", password: "abc123" },
  { name: "Jim", password: "123abc" }
]

Book.all.each do |book|
  book.reviewer = reviewers.sample
  book.save!
end
