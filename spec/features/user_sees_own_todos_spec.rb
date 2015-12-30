require "rails_helper"

feature "User sees only their todos" do 
  scenario "can't see others todos" do
    Todo.create!(title: "Buy milk", email: "someone_else@example.com")

    sign_in_as "someone@example.com"

    expect(page).not_to have_css ".todos li", text: "Buy apples"
  end
end