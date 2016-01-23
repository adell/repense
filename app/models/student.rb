class Student < ActiveRecord::Base
  validates_presence_of :name, :register_number, :on => :create, :message => "can't be blank"
  validates_length_of :name, :register_number, :within => 3..45, :on => :create, :message => "must be present"
end
