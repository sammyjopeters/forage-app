# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
	name: 'Sam P',
	email: 'sretepmas@gmail.com',
	username: 'Sammyjo',
	password: 'fredfred',
	home_location: 'Sydney',
	home_state: 'NSW',
	merchant_type: 'Home Grower',
	avatar: 'http://lorempixel.com/150/150/',
	purchases: nil

	)

User.create(
	name: 'Fred Z',
	email: 'fred@mailinator.com',
	username: 'Fredd13',
	password: 'fredfred',
	home_location: 'Ultimo',
	home_state: 'NSW',
	merchant_type: 'Corporate Agriculture Spy',
	avatar: 'http://lorempixel.com/150/150/',
	purchases: nil

	)

Category.create(
	name: 'Vegetables'
	)

Category.create(
	name: 'Fruit'
	)

Category.create(
	name: 'Dairy'
	)



Listing.create(
	name: 'Carrots',
	amount: 6,
	description: 'My carrot crop has done really well this year, and I\'ve got a 6 spare! They\'re an heirloom variety and are grown in a pesticide free environment! Pick up from my office.',
	location: 'Panania',
	location_state: 'NSW',
	transaction_type: 'Grab',
	cost: nil,
	expiry: "#{1.week.from_now}",
	user_id: 1,
	pictures: 'http://zoebakes.com/wp-content/uploads/2008/04/carrot-cake01.jpg',
	sold: false,
	sold_to: nil,
	category_id: 1

	)

Listing.create(
	name: 'Cheese wheels',
	amount: 486,
	description: 'I have 3 cheese factories I run in my spare time, and I\'m selling the excess!',
	location: 'Ultimo',
	location_state: 'NSW',
	transaction_type: 'Buy',
	cost: 80,
	expiry: "#{1.week.from_now}",
	user_id: 2,
	pictures: 'http://www.thelarder489.com.au/thumbnaillarge/cheese45.jpg',
	sold: false,
	sold_to: nil,
	category_id: 3

	)

