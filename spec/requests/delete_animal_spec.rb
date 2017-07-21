require 'rails_helper'

describe "destroy animal route", type: :request do

  before do
    @animal1 = FactoryGirl.create(:animal)
    @animal2 = FactoryGirl.create(:animal)
    delete "/animals/#{@animal1.id}"
  end

  it 'should return status 200' do
    expect(response.status).to eq 202
  end

  it 'should delete the animal' do
    expect(Animal.all[0]).to eq @animal2
  end

end
