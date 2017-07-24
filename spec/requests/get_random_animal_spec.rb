require 'rails_helper'

describe "get random animal route", type: :request do
  let!(:animals) { FactoryGirl.create_list(:animal, 30)}

  before { get '/random'}

  it 'returns random animal' do
    expect(jsonParse.size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
