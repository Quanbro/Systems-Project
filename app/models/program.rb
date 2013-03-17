class Program < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name

  belongs_to :child
  
  def self.search(search)
    if search
      find(:all, :conditions => ['lower(name) LIKE ?', "%#{search.downcase}%"])
    else 
      find(:all)
    end 
  end   
end
