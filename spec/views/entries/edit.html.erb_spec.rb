require 'spec_helper'

describe "entries/edit" do
  before(:each) do
    @entry = assign(:entry, stub_model(Entry,
      :word => "MyString",
      :definition => ""
    ))
  end

  it "renders the edit entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do
      assert_select "input#entry_word[name=?]", "entry[word]"
      assert_select "input#entry_definition[name=?]", "entry[definition]"
    end
  end
end
