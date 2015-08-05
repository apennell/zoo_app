class ExhibitsController < ApplicationController
  def desert
    @animals = Animal.where(exhibit_id: 2)
    render :desert
  end

  def forest
    @animals = Animal.where(exhibit_id: 1)
    render :forest
  end

  def town
    @animals = Animal.where(exhibit_id: 3)
    render :town
  end


end