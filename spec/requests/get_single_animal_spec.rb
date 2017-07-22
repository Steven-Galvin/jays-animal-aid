require 'rails_helper'

describe "get one animal route", type: :request do

  before do
    @animal1 = FactoryGirl.create(:animal)
    @animal2 = FactoryGirl.create(:animal)
    @animal3 = FactoryGirl.create(:animal, name: "This One")
    get "/animals/#{@animal3.id}"
  end

  it 'returns a single animal' do
    expect(jsonParse['name']).to eq("This One")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
