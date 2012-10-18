class Blog < ActiveRecord::Base
  attr_accessible :admin_id, :body
  has_many :admins
end
