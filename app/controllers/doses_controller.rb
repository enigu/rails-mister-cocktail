class DosesController < ApplicationController
  def new
  	@cocktail = Cocktail.find(params[:cocktail_id])
  	@dose = Dose.new
  end

  def delete
  	@cocktail = Cocktail.find(params[:cocktail_id])
  	@doses = Dose.destroy
  end

  def create
  	@cocktail = Cocktail.find(params[:cocktail_id])
  	@dose = Dose.new(dose_params)
  	@dose.cocktail = @cocktail
  	if @dose.save
  	  redirect_to cocktail_path(@cocktail)
  	else
  	  render :new
  end	
  
  def doses_params
  	params.require(:ingredient).permit(:ingredient)
  end	
end
