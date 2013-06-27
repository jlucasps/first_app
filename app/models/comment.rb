class Comment < ActiveRecord::Base
  # Attrs accessible
  attr_accessible :content, :bill_id  

  # Validations
  validates :content, :presence => true, :allow_blank => false
  validates :commentable_id, :presence => true
  validates :commentable_type, :presence => true

  # Associations
  belongs_to :commentable, :polymorphic => true

  # Scopes
  default_scope order("comments.created_at DESC")
  
  # Públic methods

end
