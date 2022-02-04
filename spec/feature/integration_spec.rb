# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K Rowling'
    fill_in 'Price', with: '29'
    select '2020', :from => 'book_publisheddate_1i'
    select 'January', :from => 'book_publisheddate_2i'
    select '21', :from => 'book_publisheddate_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J.K Rowling')
    expect(page).to have_content('29')
    expect(page).to have_content('2020')
    expect(page).to have_content('01')
    expect(page).to have_content('21')
  end
end