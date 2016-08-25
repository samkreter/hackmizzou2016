class Person < ActiveRecord::Base

  validates :email, :presence => true
  validates :affil, :presence => true

end
