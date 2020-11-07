gem 'byebug'

class InputsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @input = Input.new
  end

  def create
    @input = Input.new(text: input_params[:text])
    if @input.save
      redirect_to input_path(@input)
    else
      render :new
    end
  end

  def show
    @input = Input.find(params[:id])
    @mistakes = Mistake.all
    @alternatives = Alternative.all
  end

  private

  def input_params
    params.require(:input).permit(:text)
  end
end
