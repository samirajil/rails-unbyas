class InputsController < ApplicationController
  def new
    @input = Input.new
  end

  def create
    @input = Input.find(params[:input_id])
    if @input.save
      redirect_to 
    else
      render :new
    end
  end

end
