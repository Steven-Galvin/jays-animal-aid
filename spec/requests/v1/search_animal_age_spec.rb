require 'rails_helper'

describe "v1 || search animals by age route", type: :request do

  before do
    @animal = FactoryGirl.create(:animal)
    get "/v1/search?age=#{@animal.age}"
  end

  it 'returns animal matching age' do
    expect(jsonParse[0]['name']).to eq(@animal.name)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
