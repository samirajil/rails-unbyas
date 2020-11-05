class InputsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @input = Input.new
  end

  def create
    @input = Input.find(params[:input_id])
    if @input.save
      redirect_to root_path
    else
      render :new
    end
  end

end
