require 'spec_helper'

describe "regleites/index" do
  before(:each) do
    assign(:regleites, [
      stub_model(Regleite,
        :presidente => nil,
        :cooperado => nil,
        :qtdleite => "Qtdleite",
        :semana => "Semana"
      ),
      stub_model(Regleite,
        :presidente => nil,
        :cooperado => nil,
        :qtdleite => "Qtdleite",
        :semana => "Semana"
      )
    ])
  end

  it "renders a list of regleites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Qtdleite".to_s, :count => 2
    assert_select "tr>td", :text => "Semana".to_s, :count => 2
  end
end
