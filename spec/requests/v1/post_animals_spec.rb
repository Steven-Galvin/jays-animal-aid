require 'rails_helper'

describe "v1 || post an animal route", type: :request do

  before do
    @animal = FactoryGirl.build(:animal)
      post "/v1/animals", params: {
        specie: @animal.specie,
        breed: @animal.breed,
        name: @animal.name,
        age: @animal.age,
        bio: @animal.bio,
        likes: @animal.likes,
        dislikes: @animal.dislikes,
        picture: @animal.picture
       }
  end

  it 'creates animal successfully' do
    expect(jsonParse).to include("message" => "Your animal has been created successfully.")
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
