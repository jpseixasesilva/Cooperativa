require 'spec_helper'

describe "cooperados/index" do
  before(:each) do
    assign(:cooperados, [
      stub_model(Cooperado,
        :nome => "Nome",
        :telefone => "Telefone",
        :endereco => "Endereco",
        :data => "Data"
      ),
      stub_model(Cooperado,
        :nome => "Nome",
        :telefone => "Telefone",
        :endereco => "Endereco",
        :data => "Data"
      )
    ])
  end

  it "renders a list of cooperados" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
  end
end
