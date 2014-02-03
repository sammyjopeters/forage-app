# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
	name: 'Sam P',
	email_address: 'sretepmas@gmail.com',
	username: 'Sammyjo',
	password: 'generalassembly',
	home_location: 'Lane Cove',
	home_state: 'NSW',
	merchant_type: 'Home Grower',
	avatar: 'http://lorempixel.com/150/150/',
	purchases: nil

	)

Listing.create(
	goods_type: 'Vegetables',
	amount: 6,
	description: 'My carrot crop has done really well this year, and I\'ve got a 6 spare! They\'re an heirloom variety and are grown in a pesticide free environment! Pick up from my office.',
	location: 'Ultimo',
	location_state: 'NSW',
	transaction_type: 'Grab',
	cost: nil,
	expiry: "#{1.week.from_now}",
	user_id: 1,
	pictures: 'http://zoebakes.com/wp-content/uploads/2008/04/carrot-cake01.jpg',
	sold: false,
	sold_to: nil

	)

Category.create(
	name: 'Vegetables'
	)

Category.create(
	name: 'Fruit'
	)