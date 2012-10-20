class Blog < ActiveRecord::Base
  attr_accessible :admin_id, :body
  has_many :admins

  def self.most_recent
  	t = Time.now
  	@blog = Blog.find_by_admin_id(3)
  	if @blog != t
  	@blog
  	end
  end
end
