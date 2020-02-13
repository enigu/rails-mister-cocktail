class CocktailsController < ApplicationController
  def index
  	@cocktails = Cocktail.all
  end

  def show
  	@ccktail = Cocktail.find(params[:id])
  end

  def new
  	@cocktail = Cocktail.new
  end

  def create
	@cocktail = Cocktail.new(cocktail_params)
	@cockatail.save

	redirect_to cocktail_path(@cocktail)
  end

  def edit
	@cocktail = Cocktail.find(params[:id]) 	 
  end

  def update
  	cocktail = Cocktail.find(params[:id])
  	cocktail.update(cocktail_params)

    redirect_to cocktail_path(@cocktail)
  end   

  def destroy
  	cocktail = Cocktail.find(params[:id])
  	cocktail.destroy(cocktail_params)

    redirect_to cocktail_path(@cocktail)
  end	

  def cocktail_params
  	params.require(:cocktail).permit(:name, :doses, :ingredients)
  end
end
