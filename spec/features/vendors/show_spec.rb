require 'rails_helper'

RSpec.describe 'Vendor Show Page', type: :feature do
  it 'displays vendor information' do
    visit '/vendors/55823'

    expect(page).to have_content('The Charcuterie Corner')
    expect(page).to have_content('Claudie Langworth III')
    expect(page).to have_content('1-147-179-9747')
    expect(page).to have_content('Vendor selling a variety of artisanal cured meats and sausages.')
    expect(page).to have_content('false')
  end
end
