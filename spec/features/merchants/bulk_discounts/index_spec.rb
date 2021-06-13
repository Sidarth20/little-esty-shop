require 'rails_helper'

RSpec.describe 'The merchant bulk_discounts index' do
  before :each do
    allow(GithubService).to receive(:contributors_info).and_return([
      {id: 26797256, name: 'Molly', contributions: 7},
      {id: 78388882, name: 'Sa', contributions: 80}
    ])
    allow(GithubService).to receive(:closed_pulls).and_return([
      {id: 0101010011, name: 'Molly', merged_at: 7},
      {id: 01011230011, name: 'Sa',merged_at: 80},
      {id: 01011230011, name: 'Sa', merged_at: nil}
    ])
    allow(GithubService).to receive(:repo_info).and_return({
        name: 'little-esty-shop'
    })
  end

  it 'can see a link to view all discounts' do

    
    visit "/merchants/#{merchant.id}/dashboard"
  end
end
