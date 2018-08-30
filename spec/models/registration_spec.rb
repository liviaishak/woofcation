require 'rails_helper'

feature "members registers for site" do

  scenario "host registers" do
    visit root_path
    clink_link "Become A Host"
    fill_in_registration_fields
    expect(page).to have_content("Welcome!")
  end

  def fill_in_registration_fields
    fill_in "member[name]", with: FFaker::Name
