class ComputersController < ApplicationController
  def index
    @computers = Computer.all
    render :index
  end

  def create
    @computer = Computer.create(
      make: params[:make],
      model: params[:model],
      year: params[:year]
    )
    render :show
  end

  def show
    @computer = Computer.find_by(id: params[:id])
    render :show
  end 
end
