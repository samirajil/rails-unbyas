class MistakesController < ApplicationController

  def new
    @mistake = Mistake.new
  end

  def show
    @mistake = Mistake.find(params[:id])
  end

  def index
    @mistakes = Mistake.all
  end

  private

  def mistake_params
    params.require(:mistake).permit(:mistaken_word)
  end

end
