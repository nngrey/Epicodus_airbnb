require 'spec_helper'

describe Property do
  context 'home' do
    it 'allows the user to return to the home page' do
      property = FactoryGirl.create :property
      visit property_path(property)
      save_and_open_page
      click_link 'Airbnb'
      page.should have_content 'Available Properties'
    end
  end

  context 'viewing' do
    it 'allows the user to get to the property show page after creation' do
      property = FactoryGirl.create :property
      visit properties_path
      click_link 'Great House'
      save_and_open_page
      page.should have_content 'nice place'
    end
  end

  context 'creating' do
    it 'allows a user to add a new property' do
      visit properties_path
      click_link "Add new property"
      fill_in 'Title', with: "A new house"
      fill_in "Address", with: "456 Elm St"
      fill_in "Description", with: "Beaootiful new place"
      fill_in "Price", with: 60
      click_button "Create Property"
      save_and_open_page
      page.should have_content "Property created!"
    end
  end
end
