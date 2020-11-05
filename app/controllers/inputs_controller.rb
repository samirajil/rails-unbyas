class InputsController < ApplicationController
  def new
    @input = Input.new
  end

  def create
    @input = Input.find(params[:input_id])
  end

end
