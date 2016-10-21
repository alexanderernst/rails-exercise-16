require 'rails_helper'

describe "New Author Page", :type => :feature do
  
  it "should render'" do
    visit new_author_path
    expect(page).to have_text("New Author")
  end

  it "should have input for firstname, lastname, homepage" do
    visit new_author_path
    expect(page).to have_field("first name")
    expect(page).to have_field("last name")
    expect(page).to have_field("homepage")
  end
end