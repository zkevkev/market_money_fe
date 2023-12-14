require 'rails_helper'

RSpec.describe 'Market Show Page', type: :feature do
  it 'displays market name and address' do
    visit '/markets/322458'

    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content('1400 U Street NW')
    expect(page).to have_content('Washington, District of Columbia 20009')
  end

  it "displays market's vendors' names as links to their show page" do
    visit '/markets/322458'

    expect(page).to have_link('The Charcuterie Corner')

    click_link 'The Charcuterie Corner'

    expect(current_path).to eq('/vendors/55823')
  end
end
