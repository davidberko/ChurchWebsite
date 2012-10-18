class BlogsController < ApplicationController
  def index
    @blogs = Blog.order("created_at DESC")
  end

  def new
    @blog = Blog.new(admin_id: current_user.id)
  end

  def create
    @blog = Blog.new(params[:blog])
    if @blog.save
      redirect_to blogs_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @blog = Blog.find(params[:id])
    if @blog.destroy
      redirect_to blogs_path
    end
  end
end
