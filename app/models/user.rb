class User < ActiveRecord::Base
	acts_as_authentic
  attr_accessible :email, :password, :password_confirmation, :perishable_token, :created_at, :role
end
