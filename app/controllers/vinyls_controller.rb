class VinylsController < ApplicationController
  def new
  end

  def index
    @vinyls = Vinyl.all
  end

  def create
    @vinyl = Vinyl.new(vinyls_params)

    if @vinyl.save
      redirect_to vinyls_path
    else
      redirect_to root_path
    end
  end

  private

  def vinyls_params 
    params.require(:vinyl).permit(:id, :name, :description, :author_id)
  end
end