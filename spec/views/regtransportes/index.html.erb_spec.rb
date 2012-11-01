require 'spec_helper'

describe "regtransportes/index" do
  before(:each) do
    assign(:regtransportes, [
      stub_model(Regtransporte,
        :presidente => nil,
        :funcionario => nil,
        :transporte => nil,
        :produto => nil
      ),
      stub_model(Regtransporte,
        :presidente => nil,
        :funcionario => nil,
        :transporte => nil,
        :produto => nil
      )
    ])
  end

  it "renders a list of regtransportes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
