class Course < ActiveRecord::Base
  validates_presence_of :name, :description, :on => :create, :message => "can't be blank"
  validates_length_of :name, :within => 3..45, :on => :create, :message => "must be present"
end
