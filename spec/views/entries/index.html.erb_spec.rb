require 'spec_helper'

describe "entries/index" do
  before(:each) do
    assign(:entries, [
      stub_model(Entry,
        :word => "Word",
        :definition => ""
      ),
      stub_model(Entry,
        :word => "Word",
        :definition => ""
      )
    ])
  end

  it "renders a list of entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Word".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
