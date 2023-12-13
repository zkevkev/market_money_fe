require 'rails_helper'

RSpec.describe 'Market Index Page', type: :feature do
  it 'displays a list of all markets and their info' do
    visit '/markets'

    expect(page).to have_content('Name')
    expect(page).to have_content('City')
    expect(page).to have_content('State')
    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content('Washington')
    expect(page).to have_content('District of Columbia')
  end

  it 'has buttons next to each market to that market show page' do
    visit '/markets'

    within('#market-1') do
      expect(page).to have_button('More Info')
    end

    within('#market-2') do
      expect(page).to have_button('More Info')

      click_button 'More Info'

      expect(current_path).to eq("/markets/#{params[:id]}")
    end
  end
end
