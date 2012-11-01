require 'spec_helper'

describe "regleites/show" do
  before(:each) do
    @regleite = assign(:regleite, stub_model(Regleite,
      :presidente => nil,
      :cooperado => nil,
      :qtdleite => "Qtdleite",
      :semana => "Semana"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Qtdleite/)
    rendered.should match(/Semana/)
  end
end
