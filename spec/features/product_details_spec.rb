require 'rails_helper'

RSpec.feature "Visitor navigates from home page to product detail page", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
  end

  scenario "They see details of a specific product" do
    # ACT
    visit root_path

    body = page.find('.product')
    body.find('header a').click
    page.find('.products-show')

    # DEBUG
    save_screenshot

    # VERIFY
    expect(page).to have_css '.product-detail'
  end

end 