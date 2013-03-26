class User < ActiveRecord::Base

  acts_as_authentic do |c|
    c.merge_validates_length_of_password_field_options :within => 8..24
  end # the configuration block is optional  

  attr_accessible  :email, :password, :password_confirmation, :perishable_token, :created_at, :role, :first_name, :last_name, :login_count, :active
  validates :password, :format => {:with => /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/, :message => 'must have at least one number and one letter in it'}, :allow_blank => true
  validates :first_name, :presence => {:message => 'cannot be blank'}
  validates :last_name, :presence => {:message => 'cannot be blank'} 
end
