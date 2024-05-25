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

  def update
    @computer = Computer.find_by(id: params[:id])
    @computer.update(
      make: params[:make] || @computer.make,
      model: params[:model] || @computer.model,
      year: params[:year] || @computer.year
    )
    render :show
  end

  def destroy
    @computer = Computer.find_by(id: params[:id])
    @computer.destroy
    render json: { message: "Computer destroyed!" }
  end
end
