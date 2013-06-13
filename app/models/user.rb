class User < ActiveRecord::Base
  # Attrs accessible
  attr_accessible :name, :email, :age, :gender

  # Constants
  MALE    = 1
  FEMALE  = 2
  OTHER   = 3

  # Validations
  validates :name, :presence => true, :allow_blank => false
  validates :email, :presence => true, :allow_blank => false
  validates :gender, :presence => true, :if => :adulthood

  # Associations

  # Scopes

  # Públic methods
  def adulthood
    age >= 18
  end

end