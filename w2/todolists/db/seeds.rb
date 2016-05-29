# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Profile.destroy_all
TodoList.destroy_all

User.create! [
  { id: 1, username: "Fiorina", password_digest: "0000"},
  { id: 2,username: "Trump", password_digest: "0000"},
  { id: 3,username: "Carson", password_digest: "0000"},
  { id: 4,username: "Clinton", password_digest: "0000"},
]

Profile.create! [
  { gender: "female",	birth_year: 1954,	first_name: "Carly", last_name: "Fiorina", user_id: 1 },
  { gender: "male",	birth_year: 1946,	first_name: "Donald",	last_name: "Trump", user_id: 2},
  { gender: "male",	birth_year: 1951,	first_name: "Ben",	last_name: "Carson", user_id: 3},
  { gender: "female",	birth_year: 1947,	first_name: "Hillary",	last_name: "Clinton", user_id: 4},
]

TodoList.create! [
  {id: 1, list_name: "Alist", list_due_date: Date.today+1.year, user_id: 1},
  {id: 2, list_name: "Blist", list_due_date: Date.today+1.year, user_id: 2},
  {id: 3, list_name: "Clist", list_due_date: Date.today+1.year, user_id: 3},
  {id: 4, list_name: "Dlist", list_due_date: Date.today+1.year, user_id: 4},
]

TodoItem.create! [
  { id: 1, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 1 },
  { id: 2, due_date: Date.today+1.year, title: "A", description: "a", completed: true, todo_list_id: 1 },
  { id: 3, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 1 },
  { id: 4, due_date: Date.today+1.year, title: "A", description: "a", completed: true, todo_list_id: 1 },
  { id: 5, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 1 },
  { id: 6, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 2 },
  { id: 7, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 2 },
  { id: 8, due_date: Date.today+1.year, title: "A", description: "a", completed: true, todo_list_id: 2 },
  { id: 9, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 2 },
  { id: 10, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 2 },
  { id: 11, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 3 },
  { id: 12, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 3 },
  { id: 13, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 3 },
  { id: 14, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 3 },
  { id: 15, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 3 },
  { id: 16, due_date: Date.today+1.year, title: "A", description: "a", completed: true, todo_list_id: 4 },
  { id: 17, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 4 },
  { id: 18, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 4 },
  { id: 19, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 4 },
  { id: 20, due_date: Date.today+1.year, title: "A", description: "a", completed: Date.today+1.year, todo_list_id: 4 },

]
