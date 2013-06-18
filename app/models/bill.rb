class Bill < ActiveRecord::Base
  # Attrs accessible
  attr_accessible :name, :description, :user_id, :date, :value  

  # Validations
  validates :name, :presence => true, :allow_blank => false
  validates :user_id, :presence => true
  validates :date, :presence => true
  validates :value, :presence => true

  # Associations
  belongs_to :user, :dependent => :destroy

  # Scopes
  default_scope order("bills.date DESC")
  scope :recents, order("bills.date DESC").limit(5)
  scope :recents_by_date, lambda {|date|
    where("bills.date <= '#{date.strftime('%Y-%m-%d %H:%M:%S.000000')}'").order("bills.date DESC").limit(5)
  }

  # Públic methods
  
end