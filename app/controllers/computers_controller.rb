class ComputersController < ApplicationController
  def index
    @computers = Computer.all
    render :index
  end
end
