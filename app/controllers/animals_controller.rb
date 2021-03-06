class AnimalsController < ApplicationController

  def new
    render :new
  end

  def create
    animal_params = params.require(:animal).permit(:name, :species, :description, :image, :exhibit_id)
    animal = Animal.create(animal_params)
    redirect_to "/animals/#{animal.id}"
  end

  def show
    # get and set animal id from url params
    animal_id = params[:id]

    # find animal in db by id
    @animal = Animal.find(animal_id)

    @exhibit = Exhibit.find(@animal.exhibit_id)

    render :show
  end

  def edit
    animal_id = params[:id]
    @animal = Animal.find(animal_id)
    render :edit
  end

  def update
    animal_id = params[:id]
    @animal = Animal.find(animal_id)
    animal_params = params.require(:animal).permit(:name, :species, :description, :image, :exhibit_id)
    @animal.update_attributes(animal_params)
    redirect_to "/animals/#{@animal.id}"
  end

  # def delete
  #   @animal = Animal.find(params[:id])
  # end

  def destroy
    animal = Animal.find(params[:id])
    animal.destroy
    redirect_to "/animals"
  end

end
