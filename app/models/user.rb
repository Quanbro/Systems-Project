class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible  :email, :password, :password_confirmation, :perishable_token, :created_at, :role, :first_name, :last_name
  validates :first_name, :presence => {:message => 'cannot be blank'}
  validates :last_name, :presence => {:message => 'cannot be blank'}

end
