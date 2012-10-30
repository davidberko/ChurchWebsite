class SermonsController < ApplicationController
  def index
  	@sermons = Sermon.all
  end

  def new
  	@sermon = Sermon.new
  end

  def create
  	@sermon = Sermon.new(params[:sermon])
  	if @sermon.save
  		redirect_to @sermon
  	else
  		render :new
  	end
  end

  def show
  	@sermon = Sermon.find(params[:id])
  end

  def edit
  	@sermon = Sermon.find(params[:id])
  end

  def update
  	@sermon = Sermon.find(params[:id])
  	if @sermon.update_attributes(params[:sermon])
  		redirect_to @sermon
  	else
  		render :edit
  	end
  end

  def destroy
  	@sermon = Sermon.find(params[:id])
  	if @sermon.destroy
  		redirect_to sermons_path
  	end
  end
end
