class LandingpageController < ApplicationController
  def index
  	@blogs = Blog.all
  end
end
