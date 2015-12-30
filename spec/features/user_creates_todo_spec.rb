require "rails_helper"

feature "User creates a todo" do 
  scenario "successfully" do
    sign_in
    click_on "Add a new todo"
    fill_in "Title", with: "Buy apples"
    click_on "Submit"

    expect(page).to have_css ".todos li", text: 'Buy apples'
  end
  
end