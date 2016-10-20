require 'rails_helper'

describe "New Author Page", :type => :feature do
  
  it "should render'" do
    visit new_author_path
    expect(page).to have_text("New Author")
  end
end