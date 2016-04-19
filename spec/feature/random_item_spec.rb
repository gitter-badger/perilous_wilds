require 'roda_helper'

RSpec.describe "The app", type: :feature do
  it 'returns a random item' do
    Kernel.srand(1337)

    visit '/'
    click_on 'Random item'

    expect(page).to have_content('armor/shield/helm')
  end
end
