class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps
	    t.string  "email",             :null => false
	    t.string  "crypted_password",  :null => false
	    t.string  "password_salt",     :null => false
	    t.string  "persistence_token", :null => false
	    t.string  "perishable_token",  :null => false
	    t.integer "login_count",       :null => false
	    t.string "role",               :default => 'Therapist'      
    end
  end
end