# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
params1 = { list: { name: '生管', sublists_attributes: [{ name: 'subA' }] } }
params2 = { list: { name: '倉管', sublists_attributes: [{ name: 'subB' }] } }
#params3 = { list: { name: '會計', sublists: { name: 'subC', sublists: { name: 'subCC' } } } }
List.create!(params1[:list])
List.create!(params2[:list])
#List.create!(params3[:list])

List.all.each do |list|
  3.times do
    list.posts.create( { title: BetterLorem.w(1, true, true), content: BetterLorem.p(2, true, true) } )
  end
end