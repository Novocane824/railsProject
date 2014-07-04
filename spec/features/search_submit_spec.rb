require 'rails_helper'

feature 'convert search' do
  scenario 'Search criterea' do
    visit '/'
    expect(find('#criterea')).to have_button('Go')
  end

  scenario 'Search progressbar' do
    visit '/'
    expect(find('.progress')).to have_css('.sr-only')
  end
  scenario 'Search id' do
    visit '/'
    expect(find('#slider')).to have_css('.carousel-inner')
  end
  scenario 'Search result'do
    visit '/'
    within('#criterea') do
      fill_in 'location', :with => "central"
      fill_in 'time', :with => "now"
      fill_in 'date', :with => "today"
      click_on 'Go'
    end
    expect(current_path).to eq('/result')
    expect(page).to have_content('Result')
  end

end