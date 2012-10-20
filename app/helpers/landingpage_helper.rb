module LandingpageHelper
	def self.most_recent
  	t = Time.now
  	@blog = Blog.find_by_admin_id(3)
  	if @blog == t
  	@blog
  	end
  end
end
