require 'spec_helper'

describe "entries/new" do
  before(:each) do
    assign(:entry, stub_model(Entry,
      :word => "MyString",
      :definition => ""
    ).as_new_record)
  end

  it "renders new entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", entries_path, "post" do
      assert_select "input#entry_word[name=?]", "entry[word]"
      assert_select "input#entry_definition[name=?]", "entry[definition]"
    end
  end
end
