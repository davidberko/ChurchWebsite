class AdminsController < ApplicationController
  def new
  	@admin = Admin.new
  end

  def create
  	@admin = Admin.new(params[:admin])
  	if @admin.save
  		redirect_to new_admin_path
  		flash[:success] = "Welcome aboard!"
  	else 
  		render :new
  	end
  end
end
