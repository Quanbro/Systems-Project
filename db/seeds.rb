# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   Mayor.create(name: 'Emanuel', city: cities.first)

programs = Program.create([{ name: 'Cut With a Knife' }, { name: 'Count Out Objects From Set' }, { name: 'Cut With Scissors' }])


admin = User.create(
    :first_name => "Super",
    :last_name => "Admin",
    :email => "admin@gmail.com",
    :password => "12345678a",
    :password_confirmation => "12345678a",
    :login_count => 0,
    :role => "Admin"
)

admin = User.create(
    :first_name => "Dylan",
    :last_name => "Scott",
    :email => "dylan@gmail.com",
    :password => "12345678a",
    :password_confirmation => "12345678a",
    :login_count => 0
)

user = User.create(
    :first_name => "Paul",
    :last_name => "Bialo",
    :email => "p@gmail.com",
    :password => "12345678a",
    :password_confirmation => "12345678a",
    :login_count => 0
)

