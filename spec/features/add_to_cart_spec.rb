require 'rails_helper'

RSpec.feature "click the 'Add to Cart' button for a product on the home page and their cart increases by one", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end


  scenario "the Cart being updated after click the 'Add to Cart' button" do
    # ACT
    visit root_path

    click_button('Add')
    # DEBUG
    expect(page).to have_text 'My Cart (1)'
  end
end
