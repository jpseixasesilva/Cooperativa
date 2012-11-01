require 'spec_helper'

describe "regtransportes/show" do
  before(:each) do
    @regtransporte = assign(:regtransporte, stub_model(Regtransporte,
      :presidente => nil,
      :funcionario => nil,
      :transporte => nil,
      :produto => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
