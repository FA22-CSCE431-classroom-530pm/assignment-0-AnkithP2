
# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 13.0
    fill_in 'Publishdate', with: '1990-01-01'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 13.0
    fill_in 'Publishdate', with: '1990-01-01'
    click_on 'Create Book'
    expect(page).to have_content('jk rowling')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 13.0
    fill_in 'Publishdate', with: '1990-01-01'
    click_on 'Create Book'
    expect(page).to have_content(13.0)
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'jk rowling'
    fill_in 'Price', with: 13.0
    fill_in 'Publishdate', with: '1990-01-01'
    click_on 'Create Book'
    expect(page).to have_content(Date.new(1990,1,1))
  end
end


