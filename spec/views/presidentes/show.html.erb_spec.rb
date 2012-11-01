require 'spec_helper'

describe "presidentes/show" do
  before(:each) do
    @presidente = assign(:presidente, stub_model(Presidente,
      :nome => "Nome",
      :telefone => "Telefone",
      :endereco => "Endereco",
      :data => "Data"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Telefone/)
    rendered.should match(/Endereco/)
    rendered.should match(/Data/)
  end
end
