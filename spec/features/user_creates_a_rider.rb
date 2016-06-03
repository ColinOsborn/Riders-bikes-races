require 'rails_helper'

RSpec.feature "User submits a new rider" do
  scenario "they see the page for the individual rider" do
    rider_name    = "Fredrik Kessiakoff"
    rider_image_path = "http://2.bp.blogspot.com/-l3tFRGqrohc/T-wglW-TTBI/AAAAAAAAAeQ/XXHNxDyHgVM/s1600/Fredik_Kessiakoff_C-Cycling.jpg"

    visit riders_path
    click_on "New Rider"
    fill_in "rider_name", with: rider_name
    fill_in "rider_image_path", with: rider_image_path
    click_on "Create Rider"

    expect(page).to have_content rider_name
    expect(page).to have_css("img[src\"#{rider_image_path}\"]")
  end

  context "the submitted data is invalid" do
    scenario "they see an error message" do
      rider_image_path = "http://2.bp.blogspot.com/-l3tFRGqrohc/T-wglW-TTBI/AAAAAAAAAeQ/XXHNxDyHgVM/s1600/Fredik_Kessiakoff_C-Cycling.jpg"

      visit rider_path
      click_on "New rider"
      fill_in "rider_image_path", with: rider_image_path
      click_on "Create Rider"

      expect(page).to have_content "Name can't be blank"
    end
  end
end
