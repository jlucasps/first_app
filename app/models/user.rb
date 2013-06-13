class User < ActiveRecord::Base
  # Attrs accessible
  attr_accessible :name, :email, :age

  # Validations
  validates :name, :presence => true, :allow_blank => false
  validates :email, :presence => true, :allow_blank => false

  # Associations

  # Scopes

  # Públic methods

end