class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build()
  end

  def create
  end
end


  def new
    @person = Person.new
    @person.addresses.build(address_type: 'work')
    @person.addresses.build(address_type: 'home')
  end
 
  def create
    person = Person.create(person_params)
    redirect_to people_path
  end
 
  def index
    @people = Person.all
  end
 
  private
 
  def person_params
    params.require(:person).permit(:name)
  end