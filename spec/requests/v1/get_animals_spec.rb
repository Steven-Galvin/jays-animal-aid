require 'rails_helper'

describe "v1 || get all animals route", type: :request do
  let!(:animals) { FactoryGirl.create_list(:animal, 30)}

  before { get '/v1/animals'}

  it 'returns all animals' do
    expect(jsonParse.size).to eq(30)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
