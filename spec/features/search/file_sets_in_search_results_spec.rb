require "rails_helper"

describe "FileSets in search results", :type => :feature do
  scenario "FileSet objects are returne in search results" do
    # TODO: remove pending
    pending "Need to populate test app with test data before trying to search for it"

    visit "/"
    fill_in "q", :with => "test video"
    click_button "keyword-search-submit"
    expect(page).to have_css('h4.index_title a:contains("test video")')
  end
end
