class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :surname
end
