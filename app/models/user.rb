class User < ApplicationRecord
  attr_accessible :name, :username, :email

  validate_presence_of :name, :username, :email
  validate_uniqueness_of :username
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
