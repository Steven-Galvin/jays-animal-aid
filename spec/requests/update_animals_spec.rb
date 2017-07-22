require 'rails_helper'

describe "update animal request", type: :request do
  before do
    animal = FactoryGirl.create(:animal)
    put "/animals/#{animal.id}/?name=tom cat"
  end

  it 'should return status 200' do
    expect(response.status).to eq 200
  end

  it 'should return status 200' do
    animal = Animal.first
    expect(animal.name).to eq "tom cat"
  end

end
