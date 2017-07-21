class AnimalsController < ApplicationController
  include Response
  def index
      @animals = Animal.all
      json_response(@animals)
    end

    def show
      @animal = Animal.find(params[:id])
      json_response(@animal)
    end

    def create
      if @animal = Animal.create!(animal_params)
        render status: 201, json: {
           message: "Your animal has been created successfully."
        }
      end
    end

    def update
      @animal = Animal.find(params[:id])
      if @animal.update!(animal_params)
        render status: 200, json: {
           message: "Your animal has been updated successfully."
        }
      end
    end

    def destroy
      @animal = Animal.find(params[:id])
      if @animal.destroy
        render status: 202, json: {
           message: "Your animal has been destroyed successfully."
        }
      end
    end

    private

    def animal_params
      params.permit(:specie, :breed, :name, :age, :bio, :likes, :dislikes, :picture)
    end
  end
