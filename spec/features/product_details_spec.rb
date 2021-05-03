require 'rails_helper'

RSpec.feature "Visitor navigates from home page to the product detail page by clicking on a product", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(word_count:3),
        description: Faker::Hipster.paragraph(sentence_count: 4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

 scenario "They see details on product page" do
    # ACT
    visit root_path

    click_link('Details »')
    go_forward
    # DEBUG
    expect(page).to have_css 'article.product-detail'
  end
end
