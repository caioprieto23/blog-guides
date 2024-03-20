class VinylsController < ApplicationController
  def new
  end

  def index
    return @vinyls = Vinyl.where(id: number_query) if number_query.present?
    return @vinyls = Vinyl.where(name: query) if query.present?

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

  def query
    params[:query]
  end

  def number_query
    params[:number_query]
  end

  def vinyls_params 
    params.require(:vinyl).permit(:id, :name, :description, :author_id)
  end
end