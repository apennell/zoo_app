class ExhibitsController < ApplicationController
  def index
    @animals = Animal.all
    render :index
  end

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

  def asia
    @animals = Animal.where(exhibit_id: 8)
    render :asia
  end

  def birdland
    @animals = Animal.where(exhibit_id: 6)
    render :birdland
  end

  def down_under
    @animals = Animal.where(exhibit_id: 10)
    render :down_under
  end

  def jungle
    @animals = Animal.where(exhibit_id: 7)
    render :jungle
  end

  def oceanlandia
    @animals = Animal.where(name: 9)
    render :oceanlandia
  end

  def reptile_city
    @animals = Animal.where(exhibit_id: 11)
    render :reptile_city
  end

  def savanna
    @animals = Animal.where(exhibit_id: 4)
    render :savanna
  end

  def south_america
    @animals = Animal.where(exhibit_id: 5)
    render :south_america
  end

end