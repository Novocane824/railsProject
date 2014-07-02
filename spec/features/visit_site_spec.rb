require 'rails_helper'

feature 'visit the site' do
  scenario 'Hello World!' do
    visit '/'
    expect(page).to have_content 'Hi, There!'
  end
  scenario 'Privacy' do
    visit '/privacy'
    expect(page).to have_content 'Privacy'
  end
  scenario 'Terms' do
    visit '/terms'
    expect(page).to have_content 'Terms'
  end
  scenario 'SUP!' do
    visit '/'
    expect(page).to have_content 'SUP!'
  end
  scenario 'Contact' do
    visit '/contact'
    expect(page).to have_content 'Contact'
  end
end