class StaticPagesController < ApplicationController
  def team
   respond_to do |format|
     format.html { render :team }
   end
  end
end
