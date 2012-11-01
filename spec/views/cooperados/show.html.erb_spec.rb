require 'spec_helper'

describe "cooperados/show" do
  before(:each) do
    @cooperado = assign(:cooperado, stub_model(Cooperado,
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
