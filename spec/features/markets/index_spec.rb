require 'rails_helper'

RSpec.describe 'Market Index Page', type: :feature do
  it 'displays a list of all markets and their info' do
    visit '/markets'

    expect(page).to have_content('Name')
    expect(page).to have_content('City')
    expect(page).to have_content('State')
    within('#322458-index') do
      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content('Washington')
      expect(page).to have_content('District of Columbia')
    end
  end

  it 'has buttons next to each market to that market show page' do
    visit '/markets'

    within('#322458-index') do
      expect(page).to have_button('More Info')

      click_button 'More Info'

      expect(current_path).to eq("/markets/322458")
    end

    visit '/markets'

    within('#322474-index') do
      expect(page).to have_button('More Info')

      click_button 'More Info'

      expect(current_path).to eq("/markets/322474")
    end
  end
end
