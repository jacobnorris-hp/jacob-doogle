require 'spec_helper'

describe "the main search page" do

  it "displays the definition of the word entered" do
    visit '/'

    fill_in "entry_word", with: "spelunking"
    click_button "Doogle search"

    # wait_for_ajax - might eventually need

    expect(page).to have_content('the hobby or practice of exploring caves')
  end
end