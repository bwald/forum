class Topic < ActiveRecord::Base

  has_many :posts
  validates :subject, :presence => :true

end
