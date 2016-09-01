class Person < ActiveRecord::Base
  has_attached_file :resume
  do_not_validate_attachment_file_type :resume
  validates :email, :presence => true
  validates :affil, :presence => true

end
