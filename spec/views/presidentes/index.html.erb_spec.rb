require 'spec_helper'

describe "presidentes/index" do
  before(:each) do
    assign(:presidentes, [
      stub_model(Presidente,
        :nome => "Nome",
        :telefone => "Telefone",
        :endereco => "Endereco",
        :data => "Data"
      ),
      stub_model(Presidente,
        :nome => "Nome",
        :telefone => "Telefone",
        :endereco => "Endereco",
        :data => "Data"
      )
    ])
  end

  it "renders a list of presidentes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
  end
end
