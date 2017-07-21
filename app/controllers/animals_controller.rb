class AnimalsController < ApplicationController

  def index
    @animals = {"type": "cat"}
    json_response(@quotes)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
