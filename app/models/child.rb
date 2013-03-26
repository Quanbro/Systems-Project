class Child < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_many :programs
  validates :first_name, :presence => {:message => 'cannot be blank'}
  validates :last_name, :presence => {:message => 'cannot be blank'}   
end
