require 'rails_helper'

describe "New Author Page", :type => :feature do
  before(:each) do
    visit new_author_path
  end
  
  it "should render'" do
    expect(page).to have_text("New Author")
  end

  it "should have input for firstname, lastname, homepage" do
    expect(page).to have_field("first name")
    expect(page).to have_field("last name")
    expect(page).to have_field("homepage")
  end
end