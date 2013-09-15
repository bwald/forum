class Topic < ActiveRecord::Base

  validates :subject, :presence => :true

end
