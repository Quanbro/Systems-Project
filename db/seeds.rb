# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   Mayor.create(name: 'Emanuel', city: cities.first)

program = Program.create(
    :name => "Count out objects from a set",
    :child_id => 1,
    :sd => "Take/Count/Make #",
    :stimuli => "Various objects: counters, cars, etc.",
    :cr => "T. will take # of objects one at a time and place on template",
    :mastery_criteria => "M=2p/2d @ 80% or >"
)

program = Program.create(
    :name => "Cuts with a knife",
    :child_id => 1,
    :sd => "Cut",
    :stimuli => "Knife, bread, plate",
    :cr => "T. will pick up knife, hold knife correctly, and cut through bread",
    :mastery_criteria => "M=2p/2d @ 80% or >"
)

program = Program.create(
    :name => "Cut with scissors",
    :child_id => 1,
    :sd => "Cut",
    :stimuli => "Construction paper, scissors",
    :cr => "T will hold scissors, paper correctly, and move up the paper as he cuts",
    :mastery_criteria => "M=2p/2d @ 80% or >"
)

program = Program.create(
    :name => "Go to location and get item",
    :child_id => 1,
    :sd => "Go to the (location) and get the (item)",
    :stimuli => "Items clearly visible",
    :cr => "T will go the location and get the requested item and bring to ...",
    :mastery_criteria => "M=2p/2d @ 80% or >"
)

program = Program.create(
    :name => "Intraverbal associations",
    :child_id => 1,
    :sd => "What goes with _______?",
    :stimuli => "Things that go together tin & label cards",
    :cr => "T will label which item goes with item named",
    :mastery_criteria => "M=2p/2d @ 80% or >"
)

program = Program.create(
    :name => "Label actions (pic)",
    :child_id => 1,
    :sd => "(Show pic) What is he/she doing?",
    :stimuli => "Action cards",
    :cr => "T will label action",
    :mastery_criteria => "M=2p/2d @ 80% or >"
)

program = Program.create(
    :name => "Count out objects from a set",
    :child_id => 2,
    :sd => "Take/Count/Make #",
    :stimuli => "Various objects: counters, cars, etc.",
    :cr => "T. will take # of objects one at a time and place on template",
    :mastery_criteria => "M=2p/2d @ 50% or >"
)

admin = User.create(
    :first_name => "Super",
    :last_name => "Admin",
    :email => "admin@gmail.com",
    :password => "12345678a",
    :password_confirmation => "12345678a",
    :login_count => 0,
    :role => "Admin"
)

user = User.create(
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

child = Child.create(
    :first_name => "Sarah",
    :last_name => "Lyman"
)

child = Child.create(
    :first_name => "Richard",
    :last_name => "Simpson"
)

child = Child.create(
    :first_name => "Ian",
    :last_name => "Gill"
)

child = Child.create(
    :first_name => "Lisa",
    :last_name => "MacLeod"
)

child = Child.create(
    :first_name => "William",
    :last_name => "Reid"
)

child = Child.create(
    :first_name => "Mary",
    :last_name => "Parsons"
)

child = Child.create(
    :first_name => "Emma",
    :last_name => "Coleman"
)

child = Child.create(
    :first_name => "Jack",
    :last_name => "Bailey"
)

child = Child.create(
    :first_name => "Phil",
    :last_name => "Grant"
)

child = Child.create(
    :first_name => "Molly",
    :last_name => "Harris"
)

child = Child.create(
    :first_name => "Brian",
    :last_name => "Pullman"
)

child = Child.create(
    :first_name => "John",
    :last_name => "Bower"
)